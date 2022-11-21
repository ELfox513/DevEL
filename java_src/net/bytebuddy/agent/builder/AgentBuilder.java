package net.bytebuddy.agent.builder;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.File;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintStream;
import java.io.Serializable;
import java.lang.instrument.ClassDefinition;
import java.lang.instrument.ClassFileTransformer;
import java.lang.instrument.Instrumentation;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.security.AccessControlContext;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.ProtectionDomain;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import net.bytebuddy.ByteBuddy;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.agent.builder.ResettableClassFileTransformer;
import net.bytebuddy.asm.Advice;
import net.bytebuddy.asm.AsmVisitorWrapper;
import net.bytebuddy.build.AccessControllerPlugin;
import net.bytebuddy.build.EntryPoint;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.build.Plugin;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.modifier.FieldManifestation;
import net.bytebuddy.description.modifier.MethodManifestation;
import net.bytebuddy.description.modifier.ModifierContributor;
import net.bytebuddy.description.modifier.Ownership;
import net.bytebuddy.description.modifier.TypeManifestation;
import net.bytebuddy.description.modifier.Visibility;
import net.bytebuddy.description.type.PackageDescription;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.ClassFileLocator;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.dynamic.NexusAccessor;
import net.bytebuddy.dynamic.TypeResolutionStrategy;
import net.bytebuddy.dynamic.VisibilityBridgeStrategy;
import net.bytebuddy.dynamic.loading.ClassInjector;
import net.bytebuddy.dynamic.loading.ClassLoadingStrategy;
import net.bytebuddy.dynamic.loading.ClassReloadingStrategy;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.dynamic.scaffold.TypeValidation;
import net.bytebuddy.dynamic.scaffold.inline.MethodNameTransformer;
import net.bytebuddy.dynamic.scaffold.subclass.ConstructorStrategy;
import net.bytebuddy.implementation.ExceptionMethod;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.LoadedTypeInitializer;
import net.bytebuddy.implementation.MethodCall;
import net.bytebuddy.implementation.auxiliary.AuxiliaryType;
import net.bytebuddy.implementation.auxiliary.TypeProxy;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.Duplication;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.TypeCreation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.assign.TypeCasting;
import net.bytebuddy.implementation.bytecode.collection.ArrayFactory;
import net.bytebuddy.implementation.bytecode.constant.ClassConstant;
import net.bytebuddy.implementation.bytecode.constant.IntegerConstant;
import net.bytebuddy.implementation.bytecode.constant.TextConstant;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.implementation.bytecode.member.MethodReturn;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.ConstantDynamic;
import net.bytebuddy.jar.asm.Handle;
import net.bytebuddy.jar.asm.Label;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.jar.asm.Opcodes;
import net.bytebuddy.jar.asm.Type;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.matcher.LatentMatcher;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.JavaConstant;
import net.bytebuddy.utility.JavaModule;
import net.bytebuddy.utility.JavaType;
import net.bytebuddy.utility.dispatcher.JavaDispatcher;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface AgentBuilder {

    /* loaded from: classes2.dex */
    public interface CircularityLock {

        /* loaded from: classes2.dex */
        public static class Default implements CircularityLock {
            private final ConcurrentMap<Thread, Boolean> threads = new ConcurrentHashMap();

            @Override // net.bytebuddy.agent.builder.AgentBuilder.CircularityLock
            public boolean acquire() {
                return this.threads.putIfAbsent(Thread.currentThread(), Boolean.TRUE) == null;
            }

            public boolean isLocked() {
                return this.threads.containsKey(Thread.currentThread());
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.CircularityLock
            public void release() {
                this.threads.remove(Thread.currentThread());
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Global implements CircularityLock {
            private final Lock lock;
            private final long time;
            private final TimeUnit timeUnit;

            public Global() {
                this(0L, TimeUnit.MILLISECONDS);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Global global = (Global) obj;
                    return this.time == global.time && this.timeUnit.equals(global.timeUnit) && this.lock.equals(global.lock);
                }
                return false;
            }

            public int hashCode() {
                long j = this.time;
                return (((((getClass().hashCode() * 31) + this.lock.hashCode()) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + this.timeUnit.hashCode();
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.CircularityLock
            public void release() {
                this.lock.unlock();
            }

            public Global(long j, TimeUnit timeUnit) {
                this.lock = new ReentrantLock();
                this.time = j;
                this.timeUnit = timeUnit;
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.CircularityLock
            public boolean acquire() {
                try {
                    long j = this.time;
                    if (j == 0) {
                        return this.lock.tryLock();
                    }
                    return this.lock.tryLock(j, this.timeUnit);
                } catch (InterruptedException unused) {
                    return false;
                }
            }
        }

        /* loaded from: classes2.dex */
        public enum Inactive implements CircularityLock {
            INSTANCE;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.CircularityLock
            public boolean acquire() {
                return true;
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.CircularityLock
            public void release() {
            }
        }

        boolean acquire();

        void release();
    }

    /* loaded from: classes2.dex */
    public interface ClassFileBufferStrategy {

        /* loaded from: classes2.dex */
        public enum Default implements ClassFileBufferStrategy {
            RETAINING { // from class: net.bytebuddy.agent.builder.AgentBuilder.ClassFileBufferStrategy.Default.1
                @Override // net.bytebuddy.agent.builder.AgentBuilder.ClassFileBufferStrategy
                public ClassFileLocator resolve(String str, byte[] bArr, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, ProtectionDomain protectionDomain) {
                    return ClassFileLocator.Simple.m15166of(str, bArr);
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.ClassFileBufferStrategy
                public TypePool typePool(PoolStrategy poolStrategy, ClassFileLocator classFileLocator, @MaybeNull ClassLoader classLoader, String str) {
                    return poolStrategy.typePool(classFileLocator, classLoader, str);
                }
            },
            DISCARDING { // from class: net.bytebuddy.agent.builder.AgentBuilder.ClassFileBufferStrategy.Default.2
                @Override // net.bytebuddy.agent.builder.AgentBuilder.ClassFileBufferStrategy
                public ClassFileLocator resolve(String str, byte[] bArr, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, ProtectionDomain protectionDomain) {
                    return ClassFileLocator.NoOp.INSTANCE;
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.ClassFileBufferStrategy
                public TypePool typePool(PoolStrategy poolStrategy, ClassFileLocator classFileLocator, @MaybeNull ClassLoader classLoader, String str) {
                    return poolStrategy.typePool(classFileLocator, classLoader);
                }
            }
        }

        ClassFileLocator resolve(String str, byte[] bArr, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, ProtectionDomain protectionDomain);

        TypePool typePool(PoolStrategy poolStrategy, ClassFileLocator classFileLocator, @MaybeNull ClassLoader classLoader, String str);
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Default implements AgentBuilder {
        private static final boolean ACCESS_CONTROLLER;
        private static final CircularityLock DEFAULT_LOCK;
        private static final Dispatcher DISPATCHER;
        private static final String INSTALLER_GETTER = "getInstrumentation";
        private static final String INSTALLER_TYPE = "net.bytebuddy.agent.Installer";
        @AlwaysNull
        private static final Class<?> NOT_PREVIOUSLY_DEFINED;
        @AlwaysNull
        private static final byte[] NO_TRANSFORMATION;
        public final ByteBuddy byteBuddy;
        public final CircularityLock circularityLock;
        public final ClassFileBufferStrategy classFileBufferStrategy;
        public final DescriptionStrategy descriptionStrategy;
        public final FallbackStrategy fallbackStrategy;
        public final RawMatcher ignoreMatcher;
        public final InitializationStrategy initializationStrategy;
        public final InjectionStrategy injectionStrategy;
        public final InstallationListener installationListener;
        public final LambdaInstrumentationStrategy lambdaInstrumentationStrategy;
        public final Listener listener;
        public final LocationStrategy locationStrategy;
        public final NativeMethodStrategy nativeMethodStrategy;
        public final PoolStrategy poolStrategy;
        public final RedefinitionStrategy.BatchAllocator redefinitionBatchAllocator;
        public final RedefinitionStrategy.DiscoveryStrategy redefinitionDiscoveryStrategy;
        public final RedefinitionStrategy.Listener redefinitionListener;
        public final RedefinitionStrategy.ResubmissionStrategy redefinitionResubmissionStrategy;
        public final RedefinitionStrategy redefinitionStrategy;
        public final List<Transformation> transformations;
        public final TransformerDecorator transformerDecorator;
        public final TypeStrategy typeStrategy;
        public final WarmupStrategy warmupStrategy;

        /* loaded from: classes2.dex */
        public static abstract class Delegator implements AgentBuilder {

            /* loaded from: classes2.dex */
            public static abstract class Matchable<S extends Matchable<S>> extends Delegator implements Matchable<S> {
                @Override // net.bytebuddy.agent.builder.AgentBuilder.Matchable
                public S and(ElementMatcher<? super TypeDescription> elementMatcher) {
                    return and(elementMatcher, ElementMatchers.any());
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.Matchable
                /* renamed from: or */
                public S mo15356or(ElementMatcher<? super TypeDescription> elementMatcher) {
                    return mo15355or(elementMatcher, ElementMatchers.any());
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.Matchable
                public S and(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2) {
                    return and(elementMatcher, elementMatcher2, ElementMatchers.any());
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.Matchable
                /* renamed from: or */
                public S mo15355or(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2) {
                    return mo15354or(elementMatcher, elementMatcher2, ElementMatchers.any());
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.Matchable
                public S and(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2, ElementMatcher<? super JavaModule> elementMatcher3) {
                    return (S) and(new RawMatcher.ForElementMatchers(elementMatcher, elementMatcher2, elementMatcher3));
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.Matchable
                /* renamed from: or */
                public S mo15354or(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2, ElementMatcher<? super JavaModule> elementMatcher3) {
                    return (S) mo15357or(new RawMatcher.ForElementMatchers(elementMatcher, elementMatcher2, elementMatcher3));
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder assureReadEdgeFromAndTo(Instrumentation instrumentation, Class<?>... clsArr) {
                return materialize().assureReadEdgeFromAndTo(instrumentation, clsArr);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder assureReadEdgeTo(Instrumentation instrumentation, Class<?>... clsArr) {
                return materialize().assureReadEdgeTo(instrumentation, clsArr);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder disableClassFormatChanges() {
                return materialize().disableClassFormatChanges();
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder disableNativeMethodPrefix() {
                return materialize().disableNativeMethodPrefix();
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder enableNativeMethodPrefix(String str) {
                return materialize().enableNativeMethodPrefix(str);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public Ignored ignore(ElementMatcher<? super TypeDescription> elementMatcher) {
                return materialize().ignore(elementMatcher);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public ResettableClassFileTransformer installOn(Instrumentation instrumentation) {
                return materialize().installOn(instrumentation);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public ResettableClassFileTransformer installOnByteBuddyAgent() {
                return materialize().installOnByteBuddyAgent();
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public ClassFileTransformer makeRaw() {
                return materialize().makeRaw();
            }

            public abstract AgentBuilder materialize();

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public ResettableClassFileTransformer patchOn(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer) {
                return materialize().patchOn(instrumentation, resettableClassFileTransformer);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public ResettableClassFileTransformer patchOnByteBuddyAgent(ResettableClassFileTransformer resettableClassFileTransformer) {
                return materialize().patchOnByteBuddyAgent(resettableClassFileTransformer);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public Identified.Narrowable type(ElementMatcher<? super TypeDescription> elementMatcher) {
                return materialize().type(elementMatcher);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder warmUp(Class<?>... clsArr) {
                return materialize().warmUp(clsArr);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder with(ByteBuddy byteBuddy) {
                return materialize().with(byteBuddy);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder assureReadEdgeFromAndTo(Instrumentation instrumentation, JavaModule... javaModuleArr) {
                return materialize().assureReadEdgeFromAndTo(instrumentation, javaModuleArr);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder assureReadEdgeTo(Instrumentation instrumentation, JavaModule... javaModuleArr) {
                return materialize().assureReadEdgeTo(instrumentation, javaModuleArr);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public Ignored ignore(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2) {
                return materialize().ignore(elementMatcher, elementMatcher2);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public Identified.Narrowable type(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2) {
                return materialize().type(elementMatcher, elementMatcher2);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder warmUp(Collection<Class<?>> collection) {
                return materialize().warmUp(collection);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder with(Listener listener) {
                return materialize().with(listener);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder assureReadEdgeFromAndTo(Instrumentation instrumentation, Collection<? extends JavaModule> collection) {
                return materialize().assureReadEdgeFromAndTo(instrumentation, collection);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder assureReadEdgeTo(Instrumentation instrumentation, Collection<? extends JavaModule> collection) {
                return materialize().assureReadEdgeTo(instrumentation, collection);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public Ignored ignore(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2, ElementMatcher<? super JavaModule> elementMatcher3) {
                return materialize().ignore(elementMatcher, elementMatcher2, elementMatcher3);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public Identified.Narrowable type(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2, ElementMatcher<? super JavaModule> elementMatcher3) {
                return materialize().type(elementMatcher, elementMatcher2, elementMatcher3);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder with(CircularityLock circularityLock) {
                return materialize().with(circularityLock);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public Ignored ignore(RawMatcher rawMatcher) {
                return materialize().ignore(rawMatcher);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public Identified.Narrowable type(RawMatcher rawMatcher) {
                return materialize().type(rawMatcher);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder with(TypeStrategy typeStrategy) {
                return materialize().with(typeStrategy);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder with(PoolStrategy poolStrategy) {
                return materialize().with(poolStrategy);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder with(LocationStrategy locationStrategy) {
                return materialize().with(locationStrategy);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder with(InitializationStrategy initializationStrategy) {
                return materialize().with(initializationStrategy);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public RedefinitionListenable.WithoutBatchStrategy with(RedefinitionStrategy redefinitionStrategy) {
                return materialize().with(redefinitionStrategy);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder with(LambdaInstrumentationStrategy lambdaInstrumentationStrategy) {
                return materialize().with(lambdaInstrumentationStrategy);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder with(DescriptionStrategy descriptionStrategy) {
                return materialize().with(descriptionStrategy);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder with(FallbackStrategy fallbackStrategy) {
                return materialize().with(fallbackStrategy);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder with(ClassFileBufferStrategy classFileBufferStrategy) {
                return materialize().with(classFileBufferStrategy);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder with(InstallationListener installationListener) {
                return materialize().with(installationListener);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder with(InjectionStrategy injectionStrategy) {
                return materialize().with(injectionStrategy);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder
            public AgentBuilder with(TransformerDecorator transformerDecorator) {
                return materialize().with(transformerDecorator);
            }
        }

        @JavaDispatcher.Proxied("java.lang.instrument.Instrumentation")
        /* loaded from: classes2.dex */
        public interface Dispatcher {
            @JavaDispatcher.Proxied("addTransformer")
            void addTransformer(Instrumentation instrumentation, ClassFileTransformer classFileTransformer, boolean z);

            @JavaDispatcher.Defaults
            @JavaDispatcher.Proxied("isNativeMethodPrefixSupported")
            boolean isNativeMethodPrefixSupported(Instrumentation instrumentation);

            @JavaDispatcher.Proxied("setNativeMethodPrefix")
            void setNativeMethodPrefix(Instrumentation instrumentation, ClassFileTransformer classFileTransformer, String str);
        }

        /* loaded from: classes2.dex */
        public static class ExecutingTransformer extends ResettableClassFileTransformer.AbstractBase {
            private static final boolean ACCESS_CONTROLLER;
            public static final Factory FACTORY;
            @MaybeNull
            private final Object accessControlContext = getContext();
            private final ByteBuddy byteBuddy;
            private final CircularityLock circularityLock;
            private final ClassFileBufferStrategy classFileBufferStrategy;
            private final DescriptionStrategy descriptionStrategy;
            private final FallbackStrategy fallbackStrategy;
            private final RawMatcher ignoreMatcher;
            private final InitializationStrategy initializationStrategy;
            private final InjectionStrategy injectionStrategy;
            private final InstallationListener installationListener;
            private final LambdaInstrumentationStrategy lambdaInstrumentationStrategy;
            private final Listener listener;
            private final LocationStrategy locationStrategy;
            private final NativeMethodStrategy nativeMethodStrategy;
            private final PoolStrategy poolStrategy;
            private final RedefinitionStrategy.ResubmissionEnforcer resubmissionEnforcer;
            private final List<Transformation> transformations;
            private final TypeStrategy typeStrategy;

            /* loaded from: classes2.dex */
            public interface Factory {

                /* loaded from: classes2.dex */
                public enum CreationAction implements PrivilegedAction<Factory> {
                    INSTANCE;

                    @Override // java.security.PrivilegedAction
                    @SuppressFBWarnings(justification = "Exception should not be rethrown but trigger a fallback.", value = {"REC_CATCH_EXCEPTION"})
                    public Factory run() {
                        try {
                            DynamicType.Builder subclass = new ByteBuddy().with(TypeValidation.DISABLED).subclass(ExecutingTransformer.class);
                            return new ForJava9CapableVm(subclass.name(ExecutingTransformer.class.getName() + "$ByteBuddy$ModuleSupport").method(ElementMatchers.named("transform").and(ElementMatchers.takesArgument(0, JavaType.MODULE.load()))).intercept(MethodCall.invoke(ExecutingTransformer.class.getDeclaredMethod("transform", Object.class, ClassLoader.class, String.class, Class.class, ProtectionDomain.class, byte[].class)).onSuper().withAllArguments()).make().load(ExecutingTransformer.class.getClassLoader(), ClassLoadingStrategy.Default.WRAPPER_PERSISTENT.with(ExecutingTransformer.class.getProtectionDomain())).getLoaded().getDeclaredConstructor(ByteBuddy.class, Listener.class, PoolStrategy.class, TypeStrategy.class, LocationStrategy.class, NativeMethodStrategy.class, InitializationStrategy.class, InjectionStrategy.class, LambdaInstrumentationStrategy.class, DescriptionStrategy.class, FallbackStrategy.class, ClassFileBufferStrategy.class, InstallationListener.class, RawMatcher.class, RedefinitionStrategy.ResubmissionEnforcer.class, List.class, CircularityLock.class));
                        } catch (Exception unused) {
                            return ForLegacyVm.INSTANCE;
                        }
                    }
                }

                /* loaded from: classes2.dex */
                public enum ForLegacyVm implements Factory {
                    INSTANCE;

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.Default.ExecutingTransformer.Factory
                    public ResettableClassFileTransformer make(ByteBuddy byteBuddy, Listener listener, PoolStrategy poolStrategy, TypeStrategy typeStrategy, LocationStrategy locationStrategy, NativeMethodStrategy nativeMethodStrategy, InitializationStrategy initializationStrategy, InjectionStrategy injectionStrategy, LambdaInstrumentationStrategy lambdaInstrumentationStrategy, DescriptionStrategy descriptionStrategy, FallbackStrategy fallbackStrategy, ClassFileBufferStrategy classFileBufferStrategy, InstallationListener installationListener, RawMatcher rawMatcher, RedefinitionStrategy.ResubmissionEnforcer resubmissionEnforcer, List<Transformation> list, CircularityLock circularityLock) {
                        return new ExecutingTransformer(byteBuddy, listener, poolStrategy, typeStrategy, locationStrategy, nativeMethodStrategy, initializationStrategy, injectionStrategy, lambdaInstrumentationStrategy, descriptionStrategy, fallbackStrategy, classFileBufferStrategy, installationListener, rawMatcher, resubmissionEnforcer, list, circularityLock);
                    }
                }

                ResettableClassFileTransformer make(ByteBuddy byteBuddy, Listener listener, PoolStrategy poolStrategy, TypeStrategy typeStrategy, LocationStrategy locationStrategy, NativeMethodStrategy nativeMethodStrategy, InitializationStrategy initializationStrategy, InjectionStrategy injectionStrategy, LambdaInstrumentationStrategy lambdaInstrumentationStrategy, DescriptionStrategy descriptionStrategy, FallbackStrategy fallbackStrategy, ClassFileBufferStrategy classFileBufferStrategy, InstallationListener installationListener, RawMatcher rawMatcher, RedefinitionStrategy.ResubmissionEnforcer resubmissionEnforcer, List<Transformation> list, CircularityLock circularityLock);

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForJava9CapableVm implements Factory {
                    private final Constructor<? extends ResettableClassFileTransformer> executingTransformer;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.executingTransformer.equals(((ForJava9CapableVm) obj).executingTransformer);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.executingTransformer.hashCode();
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.Default.ExecutingTransformer.Factory
                    public ResettableClassFileTransformer make(ByteBuddy byteBuddy, Listener listener, PoolStrategy poolStrategy, TypeStrategy typeStrategy, LocationStrategy locationStrategy, NativeMethodStrategy nativeMethodStrategy, InitializationStrategy initializationStrategy, InjectionStrategy injectionStrategy, LambdaInstrumentationStrategy lambdaInstrumentationStrategy, DescriptionStrategy descriptionStrategy, FallbackStrategy fallbackStrategy, ClassFileBufferStrategy classFileBufferStrategy, InstallationListener installationListener, RawMatcher rawMatcher, RedefinitionStrategy.ResubmissionEnforcer resubmissionEnforcer, List<Transformation> list, CircularityLock circularityLock) {
                        try {
                            return this.executingTransformer.newInstance(byteBuddy, listener, poolStrategy, typeStrategy, locationStrategy, nativeMethodStrategy, initializationStrategy, injectionStrategy, lambdaInstrumentationStrategy, descriptionStrategy, fallbackStrategy, classFileBufferStrategy, installationListener, rawMatcher, resubmissionEnforcer, list, circularityLock);
                        } catch (IllegalAccessException e) {
                            throw new IllegalStateException("Cannot access " + this.executingTransformer, e);
                        } catch (InstantiationException e2) {
                            throw new IllegalStateException("Cannot instantiate " + this.executingTransformer.getDeclaringClass(), e2);
                        } catch (InvocationTargetException e3) {
                            throw new IllegalStateException("Cannot invoke " + this.executingTransformer, e3.getTargetException());
                        }
                    }

                    public ForJava9CapableVm(Constructor<? extends ResettableClassFileTransformer> constructor) {
                        this.executingTransformer = constructor;
                    }
                }
            }

            @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
            /* loaded from: classes.dex */
            public class Java9CapableVmDispatcher implements PrivilegedAction<byte[]> {
                private final byte[] binaryRepresentation;
                @MaybeNull
                @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
                private final Class<?> classBeingRedefined;
                @MaybeNull
                @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
                private final ClassLoader classLoader;
                @MaybeNull
                @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
                private final String internalTypeName;
                private final ProtectionDomain protectionDomain;
                private final Object rawModule;

                /* JADX WARN: Code restructure failed: missing block: B:17:0x0024, code lost:
                    if (r2 != null) goto L46;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:28:0x0041, code lost:
                    if (r2 != null) goto L44;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:36:0x0053, code lost:
                    if (r2 != null) goto L42;
                 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public boolean equals(@net.bytebuddy.utility.nullability.MaybeNull java.lang.Object r5) {
                    /*
                        r4 = this;
                        r0 = 1
                        if (r4 != r5) goto L4
                        return r0
                    L4:
                        r1 = 0
                        if (r5 != 0) goto L8
                        return r1
                    L8:
                        java.lang.Class r2 = r4.getClass()
                        java.lang.Class r3 = r5.getClass()
                        if (r2 == r3) goto L13
                        return r1
                    L13:
                        java.lang.String r2 = r4.internalTypeName
                        net.bytebuddy.agent.builder.AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher r5 = (net.bytebuddy.agent.builder.AgentBuilder.Default.ExecutingTransformer.Java9CapableVmDispatcher) r5
                        java.lang.String r3 = r5.internalTypeName
                        if (r3 == 0) goto L24
                        if (r2 == 0) goto L26
                        boolean r2 = r2.equals(r3)
                        if (r2 != 0) goto L27
                        return r1
                    L24:
                        if (r2 == 0) goto L27
                    L26:
                        return r1
                    L27:
                        java.lang.Object r2 = r4.rawModule
                        java.lang.Object r3 = r5.rawModule
                        boolean r2 = r2.equals(r3)
                        if (r2 != 0) goto L32
                        return r1
                    L32:
                        java.lang.ClassLoader r2 = r4.classLoader
                        java.lang.ClassLoader r3 = r5.classLoader
                        if (r3 == 0) goto L41
                        if (r2 == 0) goto L43
                        boolean r2 = r2.equals(r3)
                        if (r2 != 0) goto L44
                        return r1
                    L41:
                        if (r2 == 0) goto L44
                    L43:
                        return r1
                    L44:
                        java.lang.Class<?> r2 = r4.classBeingRedefined
                        java.lang.Class<?> r3 = r5.classBeingRedefined
                        if (r3 == 0) goto L53
                        if (r2 == 0) goto L55
                        boolean r2 = r2.equals(r3)
                        if (r2 != 0) goto L56
                        return r1
                    L53:
                        if (r2 == 0) goto L56
                    L55:
                        return r1
                    L56:
                        java.security.ProtectionDomain r2 = r4.protectionDomain
                        java.security.ProtectionDomain r3 = r5.protectionDomain
                        boolean r2 = r2.equals(r3)
                        if (r2 != 0) goto L61
                        return r1
                    L61:
                        byte[] r2 = r4.binaryRepresentation
                        byte[] r3 = r5.binaryRepresentation
                        boolean r2 = java.util.Arrays.equals(r2, r3)
                        if (r2 != 0) goto L6c
                        return r1
                    L6c:
                        net.bytebuddy.agent.builder.AgentBuilder$Default$ExecutingTransformer r2 = net.bytebuddy.agent.builder.AgentBuilder.Default.ExecutingTransformer.this
                        net.bytebuddy.agent.builder.AgentBuilder$Default$ExecutingTransformer r5 = net.bytebuddy.agent.builder.AgentBuilder.Default.ExecutingTransformer.this
                        boolean r5 = r2.equals(r5)
                        if (r5 != 0) goto L77
                        return r1
                    L77:
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.agent.builder.AgentBuilder.Default.ExecutingTransformer.Java9CapableVmDispatcher.equals(java.lang.Object):boolean");
                }

                public int hashCode() {
                    int hashCode = ((getClass().hashCode() * 31) + this.rawModule.hashCode()) * 31;
                    ClassLoader classLoader = this.classLoader;
                    if (classLoader != null) {
                        hashCode += classLoader.hashCode();
                    }
                    int i = hashCode * 31;
                    String str = this.internalTypeName;
                    if (str != null) {
                        i += str.hashCode();
                    }
                    int i2 = i * 31;
                    Class<?> cls = this.classBeingRedefined;
                    if (cls != null) {
                        i2 += cls.hashCode();
                    }
                    return (((((i2 * 31) + this.protectionDomain.hashCode()) * 31) + Arrays.hashCode(this.binaryRepresentation)) * 31) + ExecutingTransformer.this.hashCode();
                }

                public Java9CapableVmDispatcher(Object obj, @MaybeNull ClassLoader classLoader, @MaybeNull String str, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain, byte[] bArr) {
                    this.rawModule = obj;
                    this.classLoader = classLoader;
                    this.internalTypeName = str;
                    this.classBeingRedefined = cls;
                    this.protectionDomain = protectionDomain;
                    this.binaryRepresentation = bArr;
                }

                @Override // java.security.PrivilegedAction
                @MaybeNull
                public byte[] run() {
                    return ExecutingTransformer.this.transform(JavaModule.m14759of(this.rawModule), this.classLoader, this.internalTypeName, this.classBeingRedefined, this.protectionDomain, this.binaryRepresentation);
                }
            }

            @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
            /* loaded from: classes.dex */
            public class LegacyVmDispatcher implements PrivilegedAction<byte[]> {
                private final byte[] binaryRepresentation;
                @MaybeNull
                @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
                private final Class<?> classBeingRedefined;
                @MaybeNull
                @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
                private final ClassLoader classLoader;
                @MaybeNull
                @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
                private final String internalTypeName;
                private final ProtectionDomain protectionDomain;

                /* JADX WARN: Code restructure failed: missing block: B:17:0x0024, code lost:
                    if (r2 != null) goto L43;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:25:0x0036, code lost:
                    if (r2 != null) goto L41;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:33:0x0048, code lost:
                    if (r2 != null) goto L39;
                 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public boolean equals(@net.bytebuddy.utility.nullability.MaybeNull java.lang.Object r5) {
                    /*
                        r4 = this;
                        r0 = 1
                        if (r4 != r5) goto L4
                        return r0
                    L4:
                        r1 = 0
                        if (r5 != 0) goto L8
                        return r1
                    L8:
                        java.lang.Class r2 = r4.getClass()
                        java.lang.Class r3 = r5.getClass()
                        if (r2 == r3) goto L13
                        return r1
                    L13:
                        java.lang.String r2 = r4.internalTypeName
                        net.bytebuddy.agent.builder.AgentBuilder$Default$ExecutingTransformer$LegacyVmDispatcher r5 = (net.bytebuddy.agent.builder.AgentBuilder.Default.ExecutingTransformer.LegacyVmDispatcher) r5
                        java.lang.String r3 = r5.internalTypeName
                        if (r3 == 0) goto L24
                        if (r2 == 0) goto L26
                        boolean r2 = r2.equals(r3)
                        if (r2 != 0) goto L27
                        return r1
                    L24:
                        if (r2 == 0) goto L27
                    L26:
                        return r1
                    L27:
                        java.lang.ClassLoader r2 = r4.classLoader
                        java.lang.ClassLoader r3 = r5.classLoader
                        if (r3 == 0) goto L36
                        if (r2 == 0) goto L38
                        boolean r2 = r2.equals(r3)
                        if (r2 != 0) goto L39
                        return r1
                    L36:
                        if (r2 == 0) goto L39
                    L38:
                        return r1
                    L39:
                        java.lang.Class<?> r2 = r4.classBeingRedefined
                        java.lang.Class<?> r3 = r5.classBeingRedefined
                        if (r3 == 0) goto L48
                        if (r2 == 0) goto L4a
                        boolean r2 = r2.equals(r3)
                        if (r2 != 0) goto L4b
                        return r1
                    L48:
                        if (r2 == 0) goto L4b
                    L4a:
                        return r1
                    L4b:
                        java.security.ProtectionDomain r2 = r4.protectionDomain
                        java.security.ProtectionDomain r3 = r5.protectionDomain
                        boolean r2 = r2.equals(r3)
                        if (r2 != 0) goto L56
                        return r1
                    L56:
                        byte[] r2 = r4.binaryRepresentation
                        byte[] r3 = r5.binaryRepresentation
                        boolean r2 = java.util.Arrays.equals(r2, r3)
                        if (r2 != 0) goto L61
                        return r1
                    L61:
                        net.bytebuddy.agent.builder.AgentBuilder$Default$ExecutingTransformer r2 = net.bytebuddy.agent.builder.AgentBuilder.Default.ExecutingTransformer.this
                        net.bytebuddy.agent.builder.AgentBuilder$Default$ExecutingTransformer r5 = net.bytebuddy.agent.builder.AgentBuilder.Default.ExecutingTransformer.this
                        boolean r5 = r2.equals(r5)
                        if (r5 != 0) goto L6c
                        return r1
                    L6c:
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.agent.builder.AgentBuilder.Default.ExecutingTransformer.LegacyVmDispatcher.equals(java.lang.Object):boolean");
                }

                public int hashCode() {
                    int hashCode = getClass().hashCode() * 31;
                    ClassLoader classLoader = this.classLoader;
                    if (classLoader != null) {
                        hashCode += classLoader.hashCode();
                    }
                    int i = hashCode * 31;
                    String str = this.internalTypeName;
                    if (str != null) {
                        i += str.hashCode();
                    }
                    int i2 = i * 31;
                    Class<?> cls = this.classBeingRedefined;
                    if (cls != null) {
                        i2 += cls.hashCode();
                    }
                    return (((((i2 * 31) + this.protectionDomain.hashCode()) * 31) + Arrays.hashCode(this.binaryRepresentation)) * 31) + ExecutingTransformer.this.hashCode();
                }

                public LegacyVmDispatcher(@MaybeNull ClassLoader classLoader, @MaybeNull String str, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain, byte[] bArr) {
                    this.classLoader = classLoader;
                    this.internalTypeName = str;
                    this.classBeingRedefined = cls;
                    this.protectionDomain = protectionDomain;
                    this.binaryRepresentation = bArr;
                }

                @Override // java.security.PrivilegedAction
                @MaybeNull
                public byte[] run() {
                    return ExecutingTransformer.this.transform(JavaModule.UNSUPPORTED, this.classLoader, this.internalTypeName, this.classBeingRedefined, this.protectionDomain, this.binaryRepresentation);
                }
            }

            static {
                boolean z = false;
                try {
                    Class.forName("java.security.AccessController", false, null);
                    ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
                } catch (ClassNotFoundException unused) {
                    ACCESS_CONTROLLER = z;
                    FACTORY = (Factory) Default.doPrivileged(Factory.CreationAction.INSTANCE);
                } catch (SecurityException unused2) {
                    z = true;
                    ACCESS_CONTROLLER = z;
                    FACTORY = (Factory) Default.doPrivileged(Factory.CreationAction.INSTANCE);
                }
                FACTORY = (Factory) Default.doPrivileged(Factory.CreationAction.INSTANCE);
            }

            public ExecutingTransformer(ByteBuddy byteBuddy, Listener listener, PoolStrategy poolStrategy, TypeStrategy typeStrategy, LocationStrategy locationStrategy, NativeMethodStrategy nativeMethodStrategy, InitializationStrategy initializationStrategy, InjectionStrategy injectionStrategy, LambdaInstrumentationStrategy lambdaInstrumentationStrategy, DescriptionStrategy descriptionStrategy, FallbackStrategy fallbackStrategy, ClassFileBufferStrategy classFileBufferStrategy, InstallationListener installationListener, RawMatcher rawMatcher, RedefinitionStrategy.ResubmissionEnforcer resubmissionEnforcer, List<Transformation> list, CircularityLock circularityLock) {
                this.byteBuddy = byteBuddy;
                this.typeStrategy = typeStrategy;
                this.poolStrategy = poolStrategy;
                this.locationStrategy = locationStrategy;
                this.listener = listener;
                this.nativeMethodStrategy = nativeMethodStrategy;
                this.initializationStrategy = initializationStrategy;
                this.injectionStrategy = injectionStrategy;
                this.lambdaInstrumentationStrategy = lambdaInstrumentationStrategy;
                this.descriptionStrategy = descriptionStrategy;
                this.fallbackStrategy = fallbackStrategy;
                this.classFileBufferStrategy = classFileBufferStrategy;
                this.installationListener = installationListener;
                this.ignoreMatcher = rawMatcher;
                this.resubmissionEnforcer = resubmissionEnforcer;
                this.transformations = list;
                this.circularityLock = circularityLock;
            }

            @AccessControllerPlugin.Enhance
            private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction, @MaybeNull Object obj) {
                return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction, (AccessControlContext) obj) : privilegedAction.run();
            }

            @MaybeNull
            private byte[] doTransform(@MaybeNull JavaModule javaModule, @MaybeNull ClassLoader classLoader, String str, @MaybeNull Class<?> cls, boolean z, ProtectionDomain protectionDomain, TypePool typePool, ClassFileLocator classFileLocator) {
                TypeDescription apply = this.descriptionStrategy.apply(str, cls, typePool, this.circularityLock, classLoader, javaModule);
                ArrayList<Transformer> arrayList = new ArrayList();
                if (!this.ignoreMatcher.matches(apply, classLoader, javaModule, cls, protectionDomain)) {
                    for (Transformation transformation : this.transformations) {
                        if (transformation.getMatcher().matches(apply, classLoader, javaModule, cls, protectionDomain)) {
                            arrayList.addAll(transformation.getTransformers());
                            if (transformation.isTerminal()) {
                                break;
                            }
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    this.listener.onIgnored(apply, classLoader, javaModule, z);
                    return Transformation.NONE;
                }
                DynamicType.Builder<?> builder = this.typeStrategy.builder(apply, this.byteBuddy, classFileLocator, this.nativeMethodStrategy.resolve(), classLoader, javaModule, protectionDomain);
                InitializationStrategy.Dispatcher dispatcher = this.initializationStrategy.dispatcher();
                DynamicType.Builder<?> builder2 = builder;
                for (Transformer transformer : arrayList) {
                    builder2 = transformer.transform(builder2, apply, classLoader, javaModule, protectionDomain);
                }
                DynamicType.Unloaded<?> make = dispatcher.apply(builder2).make(TypeResolutionStrategy.Disabled.INSTANCE, typePool);
                dispatcher.register(make, classLoader, protectionDomain, this.injectionStrategy);
                this.listener.onTransformation(apply, classLoader, javaModule, z, make);
                return make.getBytes();
            }

            @MaybeNull
            @AccessControllerPlugin.Enhance
            private static Object getContext() {
                if (ACCESS_CONTROLLER) {
                    return AccessController.getContext();
                }
                return null;
            }

            @Override // net.bytebuddy.agent.builder.ResettableClassFileTransformer
            public synchronized boolean reset(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer, RedefinitionStrategy redefinitionStrategy, RedefinitionStrategy.DiscoveryStrategy discoveryStrategy, RedefinitionStrategy.BatchAllocator batchAllocator, RedefinitionStrategy.Listener listener) {
                if (instrumentation.removeTransformer(resettableClassFileTransformer)) {
                    redefinitionStrategy.apply(instrumentation, this.poolStrategy, this.locationStrategy, this.descriptionStrategy, this.fallbackStrategy, discoveryStrategy, this.lambdaInstrumentationStrategy, Listener.NoOp.INSTANCE, listener, new Transformation.SimpleMatcher(this.ignoreMatcher, this.transformations), batchAllocator, CircularityLock.Inactive.INSTANCE);
                    this.installationListener.onReset(instrumentation, resettableClassFileTransformer);
                    return true;
                }
                return false;
            }

            @MaybeNull
            public byte[] transform(@MaybeNull ClassLoader classLoader, @MaybeNull String str, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain, byte[] bArr) {
                if (this.circularityLock.acquire()) {
                    try {
                        return (byte[]) doPrivileged(new LegacyVmDispatcher(classLoader, str, cls, protectionDomain, bArr), this.accessControlContext);
                    } finally {
                        this.circularityLock.release();
                    }
                }
                return Default.NO_TRANSFORMATION;
            }

            @Override // net.bytebuddy.agent.builder.ResettableClassFileTransformer
            public Iterator<Transformer> iterator(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain) {
                if (this.ignoreMatcher.matches(typeDescription, classLoader, javaModule, cls, protectionDomain)) {
                    return Collections.emptySet().iterator();
                }
                return new Transformation.TransformerIterator(typeDescription, classLoader, javaModule, cls, protectionDomain, this.transformations);
            }

            @MaybeNull
            public byte[] transform(Object obj, @MaybeNull ClassLoader classLoader, @MaybeNull String str, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain, byte[] bArr) {
                if (this.circularityLock.acquire()) {
                    try {
                        return (byte[]) doPrivileged(new Java9CapableVmDispatcher(obj, classLoader, str, cls, protectionDomain, bArr), this.accessControlContext);
                    } finally {
                        this.circularityLock.release();
                    }
                }
                return Default.NO_TRANSFORMATION;
            }

            /* JADX INFO: Access modifiers changed from: private */
            @MaybeNull
            public byte[] transform(@MaybeNull JavaModule javaModule, @MaybeNull ClassLoader classLoader, @MaybeNull String str, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain, byte[] bArr) {
                String str2;
                Throwable th;
                String str3;
                boolean z;
                if (str != null && this.lambdaInstrumentationStrategy.isInstrumented(cls)) {
                    String replace = str.replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
                    try {
                        if (this.resubmissionEnforcer.isEnforced(replace, classLoader, javaModule, cls)) {
                            try {
                                return Default.NO_TRANSFORMATION;
                            } catch (Throwable th2) {
                                th = th2;
                                str2 = "Failed transformation of ";
                                try {
                                    this.listener.onDiscovery(replace, classLoader, javaModule, cls != null);
                                    this.listener.onError(replace, classLoader, javaModule, cls != null, th);
                                    throw new IllegalStateException(str2 + replace, th);
                                } catch (Throwable th3) {
                                    this.listener.onError(replace, classLoader, javaModule, cls != null, th);
                                    throw th3;
                                }
                            }
                        }
                        try {
                            this.listener.onDiscovery(replace, classLoader, javaModule, cls != null);
                            ClassFileLocator.Compound compound = new ClassFileLocator.Compound(this.classFileBufferStrategy.resolve(replace, bArr, classLoader, javaModule, protectionDomain), this.locationStrategy.classFileLocator(classLoader, javaModule));
                            TypePool typePool = this.classFileBufferStrategy.typePool(this.poolStrategy, compound, classLoader, replace);
                            str3 = "Failed transformation of ";
                            z = true;
                            try {
                                return doTransform(javaModule, classLoader, replace, cls, cls != null, protectionDomain, typePool, compound);
                            } catch (Throwable th4) {
                                if (cls != null) {
                                    try {
                                        if (this.descriptionStrategy.isLoadedFirst() && this.fallbackStrategy.isFallback(cls, th4)) {
                                            byte[] doTransform = doTransform(javaModule, classLoader, replace, Default.NOT_PREVIOUSLY_DEFINED, true, protectionDomain, typePool, compound);
                                            this.listener.onComplete(replace, classLoader, javaModule, true);
                                            return doTransform;
                                        }
                                    } catch (Throwable th5) {
                                        th = th5;
                                        try {
                                            this.listener.onError(replace, classLoader, javaModule, cls != null, th);
                                            throw new IllegalStateException(str3 + replace, th);
                                        } finally {
                                            Listener listener = this.listener;
                                            if (cls == null) {
                                                z = false;
                                            }
                                            listener.onComplete(replace, classLoader, javaModule, z);
                                        }
                                    }
                                }
                                throw th4;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            str3 = "Failed transformation of ";
                            z = true;
                        }
                    } catch (Throwable th7) {
                        str2 = "Failed transformation of ";
                        th = th7;
                    }
                } else {
                    return Default.NO_TRANSFORMATION;
                }
            }
        }

        @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
        /* loaded from: classes.dex */
        public class Ignoring extends Delegator.Matchable<Ignored> implements Ignored {
            private final RawMatcher rawMatcher;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Ignoring ignoring = (Ignoring) obj;
                    return this.rawMatcher.equals(ignoring.rawMatcher) && Default.this.equals(Default.this);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.rawMatcher.hashCode()) * 31) + Default.this.hashCode();
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Default.Delegator
            public AgentBuilder materialize() {
                Default r15 = Default.this;
                return new Default(r15.byteBuddy, r15.listener, r15.circularityLock, r15.poolStrategy, r15.typeStrategy, r15.locationStrategy, r15.nativeMethodStrategy, r15.warmupStrategy, r15.transformerDecorator, r15.initializationStrategy, r15.redefinitionStrategy, r15.redefinitionDiscoveryStrategy, r15.redefinitionBatchAllocator, r15.redefinitionListener, r15.redefinitionResubmissionStrategy, r15.injectionStrategy, r15.lambdaInstrumentationStrategy, r15.descriptionStrategy, r15.fallbackStrategy, r15.classFileBufferStrategy, r15.installationListener, this.rawMatcher, r15.transformations);
            }

            public Ignoring(RawMatcher rawMatcher) {
                this.rawMatcher = rawMatcher;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // net.bytebuddy.agent.builder.AgentBuilder.Matchable
            public Ignored and(RawMatcher rawMatcher) {
                return new Ignoring(new RawMatcher.Conjunction(this.rawMatcher, rawMatcher));
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // net.bytebuddy.agent.builder.AgentBuilder.Matchable
            /* renamed from: or */
            public Ignored mo15357or(RawMatcher rawMatcher) {
                return new Ignoring(new RawMatcher.Disjunction(this.rawMatcher, rawMatcher));
            }
        }

        /* loaded from: classes2.dex */
        public interface NativeMethodStrategy {

            /* loaded from: classes2.dex */
            public enum Disabled implements NativeMethodStrategy {
                INSTANCE;

                @Override // net.bytebuddy.agent.builder.AgentBuilder.Default.NativeMethodStrategy
                public void apply(Instrumentation instrumentation, ClassFileTransformer classFileTransformer) {
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.Default.NativeMethodStrategy
                public MethodNameTransformer resolve() {
                    return MethodNameTransformer.Suffixing.withRandomSuffix();
                }
            }

            void apply(Instrumentation instrumentation, ClassFileTransformer classFileTransformer);

            MethodNameTransformer resolve();

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForPrefix implements NativeMethodStrategy {
                private final String prefix;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.prefix.equals(((ForPrefix) obj).prefix);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.prefix.hashCode();
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.Default.NativeMethodStrategy
                public MethodNameTransformer resolve() {
                    return new MethodNameTransformer.Prefixing(this.prefix);
                }

                public ForPrefix(String str) {
                    this.prefix = str;
                }

                /* renamed from: of */
                public static NativeMethodStrategy m15363of(String str) {
                    if (str.length() != 0) {
                        return new ForPrefix(str);
                    }
                    throw new IllegalArgumentException("A method name prefix must not be the empty string");
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.Default.NativeMethodStrategy
                public void apply(Instrumentation instrumentation, ClassFileTransformer classFileTransformer) {
                    if (Default.DISPATCHER.isNativeMethodPrefixSupported(instrumentation)) {
                        Default.DISPATCHER.setNativeMethodPrefix(instrumentation, classFileTransformer, this.prefix);
                        return;
                    }
                    throw new IllegalArgumentException("A prefix for native methods is not supported: " + instrumentation);
                }
            }
        }

        /* loaded from: classes2.dex */
        public static class Redefining extends Default implements RedefinitionListenable.WithoutBatchStrategy {

            /* loaded from: classes2.dex */
            public class WithResubmission extends Delegator implements RedefinitionListenable.WithResubmissionSpecification {
                private final RedefinitionListenable.ResubmissionImmediateMatcher resubmissionImmediateMatcher;
                private final RedefinitionListenable.ResubmissionOnErrorMatcher resubmissionOnErrorMatcher;
                private final RedefinitionStrategy.ResubmissionScheduler resubmissionScheduler;

                @Override // net.bytebuddy.agent.builder.AgentBuilder.Default.Delegator
                public AgentBuilder materialize() {
                    Redefining redefining = Redefining.this;
                    ByteBuddy byteBuddy = redefining.byteBuddy;
                    Listener listener = redefining.listener;
                    CircularityLock circularityLock = redefining.circularityLock;
                    PoolStrategy poolStrategy = redefining.poolStrategy;
                    TypeStrategy typeStrategy = redefining.typeStrategy;
                    LocationStrategy locationStrategy = redefining.locationStrategy;
                    NativeMethodStrategy nativeMethodStrategy = redefining.nativeMethodStrategy;
                    WarmupStrategy warmupStrategy = redefining.warmupStrategy;
                    TransformerDecorator transformerDecorator = redefining.transformerDecorator;
                    InitializationStrategy initializationStrategy = redefining.initializationStrategy;
                    RedefinitionStrategy redefinitionStrategy = redefining.redefinitionStrategy;
                    RedefinitionStrategy.DiscoveryStrategy discoveryStrategy = redefining.redefinitionDiscoveryStrategy;
                    RedefinitionStrategy.BatchAllocator batchAllocator = redefining.redefinitionBatchAllocator;
                    RedefinitionStrategy.Listener listener2 = redefining.redefinitionListener;
                    RedefinitionStrategy.ResubmissionStrategy.Enabled enabled = new RedefinitionStrategy.ResubmissionStrategy.Enabled(this.resubmissionScheduler, this.resubmissionOnErrorMatcher, this.resubmissionImmediateMatcher);
                    Redefining redefining2 = Redefining.this;
                    return new Default(byteBuddy, listener, circularityLock, poolStrategy, typeStrategy, locationStrategy, nativeMethodStrategy, warmupStrategy, transformerDecorator, initializationStrategy, redefinitionStrategy, discoveryStrategy, batchAllocator, listener2, enabled, redefining2.injectionStrategy, redefining2.lambdaInstrumentationStrategy, redefining2.descriptionStrategy, redefining2.fallbackStrategy, redefining2.classFileBufferStrategy, redefining2.installationListener, redefining2.ignoreMatcher, redefining2.transformations);
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.WithoutResubmissionSpecification
                public RedefinitionListenable.WithResubmissionSpecification resubmitImmediate() {
                    return resubmitImmediate(ElementMatchers.any());
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.WithoutResubmissionSpecification
                public RedefinitionListenable.WithResubmissionSpecification resubmitOnError() {
                    return resubmitOnError(ElementMatchers.any());
                }

                public WithResubmission(RedefinitionStrategy.ResubmissionScheduler resubmissionScheduler, RedefinitionListenable.ResubmissionOnErrorMatcher resubmissionOnErrorMatcher, RedefinitionListenable.ResubmissionImmediateMatcher resubmissionImmediateMatcher) {
                    this.resubmissionScheduler = resubmissionScheduler;
                    this.resubmissionOnErrorMatcher = resubmissionOnErrorMatcher;
                    this.resubmissionImmediateMatcher = resubmissionImmediateMatcher;
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.WithoutResubmissionSpecification
                public RedefinitionListenable.WithResubmissionSpecification resubmitImmediate(ElementMatcher<String> elementMatcher) {
                    return resubmitImmediate(elementMatcher, ElementMatchers.any());
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.WithoutResubmissionSpecification
                public RedefinitionListenable.WithResubmissionSpecification resubmitOnError(ElementMatcher<? super Throwable> elementMatcher) {
                    return resubmitOnError(elementMatcher, ElementMatchers.any());
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.WithoutResubmissionSpecification
                public RedefinitionListenable.WithResubmissionSpecification resubmitImmediate(ElementMatcher<String> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2) {
                    return resubmitImmediate(elementMatcher, elementMatcher2, ElementMatchers.any());
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.WithoutResubmissionSpecification
                public RedefinitionListenable.WithResubmissionSpecification resubmitOnError(ElementMatcher<? super Throwable> elementMatcher, ElementMatcher<String> elementMatcher2) {
                    return resubmitOnError(elementMatcher, elementMatcher2, ElementMatchers.any());
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.WithoutResubmissionSpecification
                public RedefinitionListenable.WithResubmissionSpecification resubmitImmediate(ElementMatcher<String> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2, ElementMatcher<? super JavaModule> elementMatcher3) {
                    return resubmitImmediate(new RedefinitionListenable.ResubmissionImmediateMatcher.ForElementMatchers(elementMatcher, elementMatcher2, elementMatcher3));
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.WithoutResubmissionSpecification
                public RedefinitionListenable.WithResubmissionSpecification resubmitOnError(ElementMatcher<? super Throwable> elementMatcher, ElementMatcher<String> elementMatcher2, ElementMatcher<? super ClassLoader> elementMatcher3) {
                    return resubmitOnError(elementMatcher, elementMatcher2, elementMatcher3, ElementMatchers.any());
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.WithoutResubmissionSpecification
                public RedefinitionListenable.WithResubmissionSpecification resubmitImmediate(RedefinitionListenable.ResubmissionImmediateMatcher resubmissionImmediateMatcher) {
                    return new WithResubmission(this.resubmissionScheduler, this.resubmissionOnErrorMatcher, new RedefinitionListenable.ResubmissionImmediateMatcher.Disjunction(this.resubmissionImmediateMatcher, resubmissionImmediateMatcher));
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.WithoutResubmissionSpecification
                public RedefinitionListenable.WithResubmissionSpecification resubmitOnError(ElementMatcher<? super Throwable> elementMatcher, ElementMatcher<String> elementMatcher2, ElementMatcher<? super ClassLoader> elementMatcher3, ElementMatcher<? super JavaModule> elementMatcher4) {
                    return resubmitOnError(new RedefinitionListenable.ResubmissionOnErrorMatcher.ForElementMatchers(elementMatcher, elementMatcher2, elementMatcher3, elementMatcher4));
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.WithoutResubmissionSpecification
                public RedefinitionListenable.WithResubmissionSpecification resubmitOnError(RedefinitionListenable.ResubmissionOnErrorMatcher resubmissionOnErrorMatcher) {
                    return new WithResubmission(this.resubmissionScheduler, new RedefinitionListenable.ResubmissionOnErrorMatcher.Disjunction(this.resubmissionOnErrorMatcher, resubmissionOnErrorMatcher), this.resubmissionImmediateMatcher);
                }
            }

            public Redefining(ByteBuddy byteBuddy, Listener listener, CircularityLock circularityLock, PoolStrategy poolStrategy, TypeStrategy typeStrategy, LocationStrategy locationStrategy, NativeMethodStrategy nativeMethodStrategy, WarmupStrategy warmupStrategy, TransformerDecorator transformerDecorator, InitializationStrategy initializationStrategy, RedefinitionStrategy redefinitionStrategy, RedefinitionStrategy.DiscoveryStrategy discoveryStrategy, RedefinitionStrategy.BatchAllocator batchAllocator, RedefinitionStrategy.Listener listener2, RedefinitionStrategy.ResubmissionStrategy resubmissionStrategy, InjectionStrategy injectionStrategy, LambdaInstrumentationStrategy lambdaInstrumentationStrategy, DescriptionStrategy descriptionStrategy, FallbackStrategy fallbackStrategy, ClassFileBufferStrategy classFileBufferStrategy, InstallationListener installationListener, RawMatcher rawMatcher, List<Transformation> list) {
                super(byteBuddy, listener, circularityLock, poolStrategy, typeStrategy, locationStrategy, nativeMethodStrategy, warmupStrategy, transformerDecorator, initializationStrategy, redefinitionStrategy, discoveryStrategy, batchAllocator, listener2, resubmissionStrategy, injectionStrategy, lambdaInstrumentationStrategy, descriptionStrategy, fallbackStrategy, classFileBufferStrategy, installationListener, rawMatcher, list);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Default, net.bytebuddy.agent.builder.AgentBuilder
            public /* bridge */ /* synthetic */ ClassFileTransformer makeRaw() {
                return super.makeRaw();
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.WithImplicitDiscoveryStrategy
            public RedefinitionListenable redefineOnly(Class<?>... clsArr) {
                return with(new RedefinitionStrategy.DiscoveryStrategy.Explicit(clsArr));
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.WithoutBatchStrategy
            public RedefinitionListenable.WithImplicitDiscoveryStrategy with(RedefinitionStrategy.BatchAllocator batchAllocator) {
                if (this.redefinitionStrategy.isEnabled()) {
                    return new Redefining(this.byteBuddy, this.listener, this.circularityLock, this.poolStrategy, this.typeStrategy, this.locationStrategy, this.nativeMethodStrategy, this.warmupStrategy, this.transformerDecorator, this.initializationStrategy, this.redefinitionStrategy, this.redefinitionDiscoveryStrategy, batchAllocator, this.redefinitionListener, this.redefinitionResubmissionStrategy, this.injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
                }
                throw new IllegalStateException("Cannot set redefinition batch allocator when redefinition is disabled");
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable
            public RedefinitionListenable.WithoutResubmissionSpecification withResubmission(RedefinitionStrategy.ResubmissionScheduler resubmissionScheduler) {
                if (this.redefinitionStrategy.isEnabled()) {
                    return new WithResubmission(resubmissionScheduler, RedefinitionListenable.ResubmissionOnErrorMatcher.Trivial.NON_MATCHING, RedefinitionListenable.ResubmissionImmediateMatcher.Trivial.NON_MATCHING);
                }
                throw new IllegalStateException("Cannot enable resubmission when redefinition is disabled");
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.WithImplicitDiscoveryStrategy
            public RedefinitionListenable with(RedefinitionStrategy.DiscoveryStrategy discoveryStrategy) {
                if (this.redefinitionStrategy.isEnabled()) {
                    return new Redefining(this.byteBuddy, this.listener, this.circularityLock, this.poolStrategy, this.typeStrategy, this.locationStrategy, this.nativeMethodStrategy, this.warmupStrategy, this.transformerDecorator, this.initializationStrategy, this.redefinitionStrategy, discoveryStrategy, this.redefinitionBatchAllocator, this.redefinitionListener, this.redefinitionResubmissionStrategy, this.injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
                }
                throw new IllegalStateException("Cannot set redefinition discovery strategy when redefinition is disabled");
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable
            public RedefinitionListenable with(RedefinitionStrategy.Listener listener) {
                if (this.redefinitionStrategy.isEnabled()) {
                    return new Redefining(this.byteBuddy, this.listener, this.circularityLock, this.poolStrategy, this.typeStrategy, this.locationStrategy, this.nativeMethodStrategy, this.warmupStrategy, this.transformerDecorator, this.initializationStrategy, this.redefinitionStrategy, this.redefinitionDiscoveryStrategy, this.redefinitionBatchAllocator, new RedefinitionStrategy.Listener.Compound(this.redefinitionListener, listener), this.redefinitionResubmissionStrategy, this.injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
                }
                throw new IllegalStateException("Cannot set redefinition listener when redefinition is disabled");
            }
        }

        @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
        /* loaded from: classes.dex */
        public class Transforming extends Delegator.Matchable<Identified.Narrowable> implements Identified.Extendable, Identified.Narrowable {
            private final RawMatcher rawMatcher;
            private final boolean terminal;
            private final List<Transformer> transformers;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Identified.Extendable
            public AgentBuilder asTerminalTransformation() {
                return new Transforming(this.rawMatcher, this.transformers, true);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Transforming transforming = (Transforming) obj;
                    return this.terminal == transforming.terminal && this.rawMatcher.equals(transforming.rawMatcher) && this.transformers.equals(transforming.transformers) && Default.this.equals(Default.this);
                }
                return false;
            }

            public int hashCode() {
                return (((((((getClass().hashCode() * 31) + this.rawMatcher.hashCode()) * 31) + this.transformers.hashCode()) * 31) + (this.terminal ? 1 : 0)) * 31) + Default.this.hashCode();
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Identified
            public Identified.Extendable transform(Transformer transformer) {
                return new Transforming(this.rawMatcher, CompoundList.m14777of(this.transformers, transformer), this.terminal);
            }

            public Transforming(RawMatcher rawMatcher, List<Transformer> list, boolean z) {
                this.rawMatcher = rawMatcher;
                this.transformers = list;
                this.terminal = z;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // net.bytebuddy.agent.builder.AgentBuilder.Matchable
            public Identified.Narrowable and(RawMatcher rawMatcher) {
                return new Transforming(new RawMatcher.Conjunction(this.rawMatcher, rawMatcher), this.transformers, this.terminal);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Default.Delegator
            public AgentBuilder materialize() {
                Default r15 = Default.this;
                return new Default(r15.byteBuddy, r15.listener, r15.circularityLock, r15.poolStrategy, r15.typeStrategy, r15.locationStrategy, r15.nativeMethodStrategy, r15.warmupStrategy, r15.transformerDecorator, r15.initializationStrategy, r15.redefinitionStrategy, r15.redefinitionDiscoveryStrategy, r15.redefinitionBatchAllocator, r15.redefinitionListener, r15.redefinitionResubmissionStrategy, r15.injectionStrategy, r15.lambdaInstrumentationStrategy, r15.descriptionStrategy, r15.fallbackStrategy, r15.classFileBufferStrategy, r15.installationListener, r15.ignoreMatcher, CompoundList.m14777of(r15.transformations, new Transformation(this.rawMatcher, this.transformers, this.terminal)));
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // net.bytebuddy.agent.builder.AgentBuilder.Matchable
            /* renamed from: or */
            public Identified.Narrowable mo15357or(RawMatcher rawMatcher) {
                return new Transforming(new RawMatcher.Disjunction(this.rawMatcher, rawMatcher), this.transformers, this.terminal);
            }
        }

        /* loaded from: classes2.dex */
        public interface WarmupStrategy {

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Enabled implements WarmupStrategy {
                private static final Dispatcher DISPATCHER = (Dispatcher) Default.doPrivileged(JavaDispatcher.m14754of(Dispatcher.class));
                private final Set<Class<?>> types;

                @JavaDispatcher.Proxied("java.lang.instrument.ClassFileTransformer")
                /* loaded from: classes2.dex */
                public interface Dispatcher {
                    @MaybeNull
                    @JavaDispatcher.Proxied("transform")
                    byte[] transform(ClassFileTransformer classFileTransformer, @MaybeNull @JavaDispatcher.Proxied("java.lang.Module") Object obj, @MaybeNull ClassLoader classLoader, String str, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain, byte[] bArr);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.types.equals(((Enabled) obj).types);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.types.hashCode();
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.Default.WarmupStrategy
                public void apply(ResettableClassFileTransformer resettableClassFileTransformer, LocationStrategy locationStrategy, RedefinitionStrategy redefinitionStrategy, CircularityLock circularityLock, InstallationListener installationListener) {
                    Class<?> cls;
                    byte[] transform;
                    boolean z;
                    boolean z2;
                    installationListener.onBeforeWarmUp(this.types, resettableClassFileTransformer);
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    boolean z3 = false;
                    for (Class<?> cls2 : this.types) {
                        try {
                            JavaModule ofType = JavaModule.ofType(cls2);
                            byte[] resolve = locationStrategy.classFileLocator(cls2.getClassLoader(), ofType).locate(cls2.getName()).resolve();
                            circularityLock.release();
                            boolean z4 = true;
                            if (ofType == null) {
                                try {
                                    transform = resettableClassFileTransformer.transform(cls2.getClassLoader(), Type.getInternalName(cls2), Default.NOT_PREVIOUSLY_DEFINED, cls2.getProtectionDomain(), resolve);
                                    if (transform != null) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    z3 |= z;
                                    if (redefinitionStrategy.isEnabled()) {
                                        transform = resettableClassFileTransformer.transform(cls2.getClassLoader(), Type.getInternalName(cls2), cls2, cls2.getProtectionDomain(), resolve);
                                        if (transform == null) {
                                            z4 = false;
                                        }
                                        z3 |= z4;
                                    }
                                    cls = cls2;
                                } catch (Throwable th) {
                                    th = th;
                                    cls = cls2;
                                    circularityLock.acquire();
                                    throw th;
                                    break;
                                }
                            } else {
                                Dispatcher dispatcher = DISPATCHER;
                                try {
                                    byte[] transform2 = dispatcher.transform(resettableClassFileTransformer, ofType.unwrap(), cls2.getClassLoader(), Type.getInternalName(cls2), Default.NOT_PREVIOUSLY_DEFINED, cls2.getProtectionDomain(), resolve);
                                    if (transform2 != null) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    z3 |= z2;
                                    if (redefinitionStrategy.isEnabled()) {
                                        transform = dispatcher.transform(resettableClassFileTransformer, ofType.unwrap(), cls2.getClassLoader(), Type.getInternalName(cls2), cls2, cls2.getProtectionDomain(), resolve);
                                        if (transform == null) {
                                            z4 = false;
                                        }
                                        z3 |= z4;
                                    } else {
                                        transform = transform2;
                                    }
                                    cls = cls2;
                                } catch (Throwable th2) {
                                    th = th2;
                                    cls = cls2;
                                    circularityLock.acquire();
                                    throw th;
                                    break;
                                    break;
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            cls = cls2;
                        }
                        try {
                            linkedHashMap.put(cls, transform);
                            try {
                                circularityLock.acquire();
                            } catch (Throwable th4) {
                                th = th4;
                                installationListener.onWarmUpError(cls, resettableClassFileTransformer, th);
                                linkedHashMap.put(cls, Default.NO_TRANSFORMATION);
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            circularityLock.acquire();
                            throw th;
                            break;
                            break;
                        }
                    }
                    installationListener.onAfterWarmUp(linkedHashMap, resettableClassFileTransformer, z3);
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.Default.WarmupStrategy
                public WarmupStrategy with(Collection<Class<?>> collection) {
                    LinkedHashSet linkedHashSet = new LinkedHashSet(this.types);
                    linkedHashSet.addAll(collection);
                    return new Enabled(linkedHashSet);
                }

                public Enabled(Set<Class<?>> set) {
                    this.types = set;
                }
            }

            /* loaded from: classes2.dex */
            public enum NoOp implements WarmupStrategy {
                INSTANCE;

                @Override // net.bytebuddy.agent.builder.AgentBuilder.Default.WarmupStrategy
                public void apply(ResettableClassFileTransformer resettableClassFileTransformer, LocationStrategy locationStrategy, RedefinitionStrategy redefinitionStrategy, CircularityLock circularityLock, InstallationListener installationListener) {
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.Default.WarmupStrategy
                public WarmupStrategy with(Collection<Class<?>> collection) {
                    return new Enabled(new LinkedHashSet(collection));
                }
            }

            void apply(ResettableClassFileTransformer resettableClassFileTransformer, LocationStrategy locationStrategy, RedefinitionStrategy redefinitionStrategy, CircularityLock circularityLock, InstallationListener installationListener);

            WarmupStrategy with(Collection<Class<?>> collection);
        }

        static {
            boolean z = false;
            try {
                Class.forName("java.security.AccessController", false, null);
                ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
            } catch (ClassNotFoundException unused) {
                ACCESS_CONTROLLER = z;
                NO_TRANSFORMATION = null;
                NOT_PREVIOUSLY_DEFINED = null;
                DISPATCHER = (Dispatcher) doPrivileged(JavaDispatcher.m14754of(Dispatcher.class));
                DEFAULT_LOCK = new CircularityLock.Default();
            } catch (SecurityException unused2) {
                z = true;
                ACCESS_CONTROLLER = z;
                NO_TRANSFORMATION = null;
                NOT_PREVIOUSLY_DEFINED = null;
                DISPATCHER = (Dispatcher) doPrivileged(JavaDispatcher.m14754of(Dispatcher.class));
                DEFAULT_LOCK = new CircularityLock.Default();
            }
            NO_TRANSFORMATION = null;
            NOT_PREVIOUSLY_DEFINED = null;
            DISPATCHER = (Dispatcher) doPrivileged(JavaDispatcher.m14754of(Dispatcher.class));
            DEFAULT_LOCK = new CircularityLock.Default();
        }

        public Default() {
            this(new ByteBuddy());
        }

        /* JADX INFO: Access modifiers changed from: private */
        @AccessControllerPlugin.Enhance
        public static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
        }

        /* renamed from: of */
        public static AgentBuilder m15365of(Plugin... pluginArr) {
            return m15372of(Arrays.asList(pluginArr));
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder assureReadEdgeFromAndTo(Instrumentation instrumentation, Class<?>... clsArr) {
            return JavaModule.isSupported() ? with(Listener.ModuleReadEdgeCompleting.m15358of(instrumentation, true, clsArr)) : this;
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder assureReadEdgeTo(Instrumentation instrumentation, Class<?>... clsArr) {
            return JavaModule.isSupported() ? with(Listener.ModuleReadEdgeCompleting.m15358of(instrumentation, false, clsArr)) : this;
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder disableClassFormatChanges() {
            ByteBuddy with = this.byteBuddy.with(Implementation.Context.Disabled.Factory.INSTANCE);
            Listener listener = this.listener;
            CircularityLock circularityLock = this.circularityLock;
            PoolStrategy poolStrategy = this.poolStrategy;
            TypeStrategy typeStrategy = this.typeStrategy;
            TypeStrategy.Default r6 = TypeStrategy.Default.DECORATE;
            if (typeStrategy != r6) {
                r6 = TypeStrategy.Default.REDEFINE_FROZEN;
            }
            return new Default(with, listener, circularityLock, poolStrategy, r6, this.locationStrategy, NativeMethodStrategy.Disabled.INSTANCE, this.warmupStrategy, this.transformerDecorator, InitializationStrategy.NoOp.INSTANCE, this.redefinitionStrategy, this.redefinitionDiscoveryStrategy, this.redefinitionBatchAllocator, this.redefinitionListener, this.redefinitionResubmissionStrategy, this.injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder disableNativeMethodPrefix() {
            return new Default(this.byteBuddy, this.listener, this.circularityLock, this.poolStrategy, this.typeStrategy, this.locationStrategy, NativeMethodStrategy.Disabled.INSTANCE, this.warmupStrategy, this.transformerDecorator, this.initializationStrategy, this.redefinitionStrategy, this.redefinitionDiscoveryStrategy, this.redefinitionBatchAllocator, this.redefinitionListener, this.redefinitionResubmissionStrategy, this.injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Default r5 = (Default) obj;
                return this.redefinitionStrategy.equals(r5.redefinitionStrategy) && this.lambdaInstrumentationStrategy.equals(r5.lambdaInstrumentationStrategy) && this.byteBuddy.equals(r5.byteBuddy) && this.listener.equals(r5.listener) && this.circularityLock.equals(r5.circularityLock) && this.poolStrategy.equals(r5.poolStrategy) && this.typeStrategy.equals(r5.typeStrategy) && this.locationStrategy.equals(r5.locationStrategy) && this.nativeMethodStrategy.equals(r5.nativeMethodStrategy) && this.warmupStrategy.equals(r5.warmupStrategy) && this.transformerDecorator.equals(r5.transformerDecorator) && this.initializationStrategy.equals(r5.initializationStrategy) && this.redefinitionDiscoveryStrategy.equals(r5.redefinitionDiscoveryStrategy) && this.redefinitionBatchAllocator.equals(r5.redefinitionBatchAllocator) && this.redefinitionListener.equals(r5.redefinitionListener) && this.redefinitionResubmissionStrategy.equals(r5.redefinitionResubmissionStrategy) && this.injectionStrategy.equals(r5.injectionStrategy) && this.descriptionStrategy.equals(r5.descriptionStrategy) && this.fallbackStrategy.equals(r5.fallbackStrategy) && this.classFileBufferStrategy.equals(r5.classFileBufferStrategy) && this.installationListener.equals(r5.installationListener) && this.ignoreMatcher.equals(r5.ignoreMatcher) && this.transformations.equals(r5.transformations);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((((((((((((((((((((((((((((((getClass().hashCode() * 31) + this.byteBuddy.hashCode()) * 31) + this.listener.hashCode()) * 31) + this.circularityLock.hashCode()) * 31) + this.poolStrategy.hashCode()) * 31) + this.typeStrategy.hashCode()) * 31) + this.locationStrategy.hashCode()) * 31) + this.nativeMethodStrategy.hashCode()) * 31) + this.warmupStrategy.hashCode()) * 31) + this.transformerDecorator.hashCode()) * 31) + this.initializationStrategy.hashCode()) * 31) + this.redefinitionStrategy.hashCode()) * 31) + this.redefinitionDiscoveryStrategy.hashCode()) * 31) + this.redefinitionBatchAllocator.hashCode()) * 31) + this.redefinitionListener.hashCode()) * 31) + this.redefinitionResubmissionStrategy.hashCode()) * 31) + this.injectionStrategy.hashCode()) * 31) + this.lambdaInstrumentationStrategy.hashCode()) * 31) + this.descriptionStrategy.hashCode()) * 31) + this.fallbackStrategy.hashCode()) * 31) + this.classFileBufferStrategy.hashCode()) * 31) + this.installationListener.hashCode()) * 31) + this.ignoreMatcher.hashCode()) * 31) + this.transformations.hashCode();
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public Ignored ignore(ElementMatcher<? super TypeDescription> elementMatcher) {
            return ignore(elementMatcher, ElementMatchers.any());
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public ResettableClassFileTransformer installOnByteBuddyAgent() {
            return installOn(resolveByteBuddyAgentInstrumentation());
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public ResettableClassFileTransformer patchOnByteBuddyAgent(ResettableClassFileTransformer resettableClassFileTransformer) {
            return patchOn(resolveByteBuddyAgentInstrumentation(), resettableClassFileTransformer);
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public Identified.Narrowable type(RawMatcher rawMatcher) {
            return new Transforming(rawMatcher, Collections.emptyList(), false);
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder warmUp(Class<?>... clsArr) {
            return warmUp(Arrays.asList(clsArr));
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder with(ByteBuddy byteBuddy) {
            return new Default(byteBuddy, this.listener, this.circularityLock, this.poolStrategy, this.typeStrategy, this.locationStrategy, this.nativeMethodStrategy, this.warmupStrategy, this.transformerDecorator, this.initializationStrategy, this.redefinitionStrategy, this.redefinitionDiscoveryStrategy, this.redefinitionBatchAllocator, this.redefinitionListener, this.redefinitionResubmissionStrategy, this.injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Transformation {
            @AlwaysNull
            private static final byte[] NONE = null;
            private final RawMatcher matcher;
            private final boolean terminal;
            private final List<Transformer> transformers;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class DifferentialMatcher implements RawMatcher {
                private final ResettableClassFileTransformer classFileTransformer;
                private final RawMatcher ignoreMatcher;
                private final List<Transformation> transformations;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        DifferentialMatcher differentialMatcher = (DifferentialMatcher) obj;
                        return this.ignoreMatcher.equals(differentialMatcher.ignoreMatcher) && this.transformations.equals(differentialMatcher.transformations) && this.classFileTransformer.equals(differentialMatcher.classFileTransformer);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((getClass().hashCode() * 31) + this.ignoreMatcher.hashCode()) * 31) + this.transformations.hashCode()) * 31) + this.classFileTransformer.hashCode();
                }

                /* JADX WARN: Removed duplicated region for block: B:14:0x004c  */
                @Override // net.bytebuddy.agent.builder.AgentBuilder.RawMatcher
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public boolean matches(net.bytebuddy.description.type.TypeDescription r10, @net.bytebuddy.utility.nullability.MaybeNull java.lang.ClassLoader r11, @net.bytebuddy.utility.nullability.MaybeNull net.bytebuddy.utility.JavaModule r12, @net.bytebuddy.utility.nullability.MaybeNull java.lang.Class<?> r13, java.security.ProtectionDomain r14) {
                    /*
                        r9 = this;
                        net.bytebuddy.agent.builder.ResettableClassFileTransformer r0 = r9.classFileTransformer
                        r1 = r10
                        r2 = r11
                        r3 = r12
                        r4 = r13
                        r5 = r14
                        java.util.Iterator r0 = r0.iterator(r1, r2, r3, r4, r5)
                        net.bytebuddy.agent.builder.AgentBuilder$RawMatcher r1 = r9.ignoreMatcher
                        r2 = r10
                        r3 = r11
                        r4 = r12
                        r5 = r13
                        r6 = r14
                        boolean r1 = r1.matches(r2, r3, r4, r5, r6)
                        if (r1 == 0) goto L1d
                        boolean r10 = r0.hasNext()
                        return r10
                    L1d:
                        java.util.List<net.bytebuddy.agent.builder.AgentBuilder$Default$Transformation> r1 = r9.transformations
                        java.util.Iterator r1 = r1.iterator()
                    L23:
                        boolean r2 = r1.hasNext()
                        if (r2 == 0) goto L66
                        java.lang.Object r2 = r1.next()
                        net.bytebuddy.agent.builder.AgentBuilder$Default$Transformation r2 = (net.bytebuddy.agent.builder.AgentBuilder.Default.Transformation) r2
                        net.bytebuddy.agent.builder.AgentBuilder$RawMatcher r3 = r2.getMatcher()
                        r4 = r10
                        r5 = r11
                        r6 = r12
                        r7 = r13
                        r8 = r14
                        boolean r3 = r3.matches(r4, r5, r6, r7, r8)
                        if (r3 == 0) goto L23
                        java.util.List r2 = r2.getTransformers()
                        java.util.Iterator r2 = r2.iterator()
                    L46:
                        boolean r3 = r2.hasNext()
                        if (r3 == 0) goto L23
                        java.lang.Object r3 = r2.next()
                        net.bytebuddy.agent.builder.AgentBuilder$Transformer r3 = (net.bytebuddy.agent.builder.AgentBuilder.Transformer) r3
                        boolean r4 = r0.hasNext()
                        if (r4 == 0) goto L64
                        java.lang.Object r4 = r0.next()
                        net.bytebuddy.agent.builder.AgentBuilder$Transformer r4 = (net.bytebuddy.agent.builder.AgentBuilder.Transformer) r4
                        boolean r3 = r4.equals(r3)
                        if (r3 != 0) goto L46
                    L64:
                        r10 = 1
                        return r10
                    L66:
                        boolean r10 = r0.hasNext()
                        return r10
                    */
                    throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.agent.builder.AgentBuilder.Default.Transformation.DifferentialMatcher.matches(net.bytebuddy.description.type.TypeDescription, java.lang.ClassLoader, net.bytebuddy.utility.JavaModule, java.lang.Class, java.security.ProtectionDomain):boolean");
                }

                public DifferentialMatcher(RawMatcher rawMatcher, List<Transformation> list, ResettableClassFileTransformer resettableClassFileTransformer) {
                    this.ignoreMatcher = rawMatcher;
                    this.transformations = list;
                    this.classFileTransformer = resettableClassFileTransformer;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class SimpleMatcher implements RawMatcher {
                private final RawMatcher ignoreMatcher;
                private final List<Transformation> transformations;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        SimpleMatcher simpleMatcher = (SimpleMatcher) obj;
                        return this.ignoreMatcher.equals(simpleMatcher.ignoreMatcher) && this.transformations.equals(simpleMatcher.transformations);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.ignoreMatcher.hashCode()) * 31) + this.transformations.hashCode();
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RawMatcher
                public boolean matches(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain) {
                    if (this.ignoreMatcher.matches(typeDescription, classLoader, javaModule, cls, protectionDomain)) {
                        return false;
                    }
                    for (Transformation transformation : this.transformations) {
                        if (transformation.getMatcher().matches(typeDescription, classLoader, javaModule, cls, protectionDomain)) {
                            return true;
                        }
                    }
                    return false;
                }

                public SimpleMatcher(RawMatcher rawMatcher, List<Transformation> list) {
                    this.ignoreMatcher = rawMatcher;
                    this.transformations = list;
                }
            }

            /* loaded from: classes2.dex */
            public static class TransformerIterator implements Iterator<Transformer> {
                @MaybeNull
                private final Class<?> classBeingRedefined;
                @MaybeNull
                private final ClassLoader classLoader;
                @MaybeNull
                private final JavaModule module;
                private final ProtectionDomain protectionDomain;
                private final Iterator<Transformation> transformations;
                private Iterator<Transformer> transformers;
                private final TypeDescription typeDescription;

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return this.transformers.hasNext();
                }

                @Override // java.util.Iterator
                public void remove() {
                    throw new UnsupportedOperationException("remove");
                }

                @Override // java.util.Iterator
                public Transformer next() {
                    boolean hasNext;
                    boolean hasNext2;
                    try {
                        while (true) {
                            if (!hasNext) {
                                if (!hasNext2) {
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                        return this.transformers.next();
                    } finally {
                        while (!this.transformers.hasNext() && this.transformations.hasNext()) {
                            Transformation next = this.transformations.next();
                            if (next.getMatcher().matches(this.typeDescription, this.classLoader, this.module, this.classBeingRedefined, this.protectionDomain)) {
                                this.transformers = next.getTransformers().iterator();
                            }
                        }
                    }
                }

                public TransformerIterator(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain, List<Transformation> list) {
                    this.typeDescription = typeDescription;
                    this.classLoader = classLoader;
                    this.module = javaModule;
                    this.classBeingRedefined = cls;
                    this.protectionDomain = protectionDomain;
                    this.transformations = list.iterator();
                    this.transformers = Collections.emptySet().iterator();
                    while (!this.transformers.hasNext() && this.transformations.hasNext()) {
                        Transformation next = this.transformations.next();
                        if (next.getMatcher().matches(typeDescription, classLoader, javaModule, cls, protectionDomain)) {
                            this.transformers = next.getTransformers().iterator();
                        }
                    }
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Transformation transformation = (Transformation) obj;
                    return this.terminal == transformation.terminal && this.matcher.equals(transformation.matcher) && this.transformers.equals(transformation.transformers);
                }
                return false;
            }

            public RawMatcher getMatcher() {
                return this.matcher;
            }

            public List<Transformer> getTransformers() {
                return this.transformers;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.matcher.hashCode()) * 31) + this.transformers.hashCode()) * 31) + (this.terminal ? 1 : 0);
            }

            public boolean isTerminal() {
                return this.terminal;
            }

            public Transformation(RawMatcher rawMatcher, List<Transformer> list, boolean z) {
                this.matcher = rawMatcher;
                this.transformers = list;
                this.terminal = z;
            }
        }

        public Default(ByteBuddy byteBuddy) {
            this(byteBuddy, Listener.NoOp.INSTANCE, DEFAULT_LOCK, PoolStrategy.Default.FAST, TypeStrategy.Default.REBASE, LocationStrategy.ForClassLoader.STRONG, NativeMethodStrategy.Disabled.INSTANCE, WarmupStrategy.NoOp.INSTANCE, TransformerDecorator.NoOp.INSTANCE, new InitializationStrategy.SelfInjection.Split(), RedefinitionStrategy.DISABLED, RedefinitionStrategy.DiscoveryStrategy.SinglePass.INSTANCE, RedefinitionStrategy.BatchAllocator.ForTotal.INSTANCE, RedefinitionStrategy.Listener.NoOp.INSTANCE, RedefinitionStrategy.ResubmissionStrategy.Disabled.INSTANCE, InjectionStrategy.UsingReflection.INSTANCE, LambdaInstrumentationStrategy.DISABLED, DescriptionStrategy.Default.HYBRID, FallbackStrategy.ByThrowableType.ofOptionalTypes(), ClassFileBufferStrategy.Default.RETAINING, InstallationListener.NoOp.INSTANCE, new RawMatcher.Disjunction(new RawMatcher.ForElementMatchers(ElementMatchers.any(), ElementMatchers.isBootstrapClassLoader().mo14830or(ElementMatchers.isExtensionClassLoader())), new RawMatcher.ForElementMatchers(ElementMatchers.nameStartsWith("net.bytebuddy.").and(ElementMatchers.not(ElementMatchers.nameStartsWith("net.bytebuddy.renamed."))).mo14830or(ElementMatchers.nameStartsWith("sun.reflect.").mo14830or(ElementMatchers.nameStartsWith("jdk.internal.reflect."))).mo14830or(ElementMatchers.isSynthetic()))), Collections.emptyList());
        }

        private ResettableClassFileTransformer doInstall(Instrumentation instrumentation, RawMatcher rawMatcher) {
            ResettableClassFileTransformer resettableClassFileTransformer;
            RedefinitionStrategy.ResubmissionStrategy.Installation apply = this.redefinitionResubmissionStrategy.apply(instrumentation, this.poolStrategy, this.locationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.listener, this.installationListener, this.circularityLock, new Transformation.SimpleMatcher(this.ignoreMatcher, this.transformations), this.redefinitionStrategy, this.redefinitionBatchAllocator, this.redefinitionListener);
            ResettableClassFileTransformer decorate = this.transformerDecorator.decorate(makeRaw(apply.getListener(), apply.getInstallationListener(), apply.getResubmissionEnforcer()));
            apply.getInstallationListener().onBeforeInstall(instrumentation, decorate);
            try {
                this.warmupStrategy.apply(decorate, this.locationStrategy, this.redefinitionStrategy, this.circularityLock, apply.getInstallationListener());
                if (this.redefinitionStrategy.isRetransforming()) {
                    DISPATCHER.addTransformer(instrumentation, decorate, true);
                } else {
                    instrumentation.addTransformer(decorate);
                }
                this.nativeMethodStrategy.apply(instrumentation, decorate);
                this.lambdaInstrumentationStrategy.apply(this.byteBuddy, instrumentation, decorate);
                resettableClassFileTransformer = decorate;
                try {
                    this.redefinitionStrategy.apply(instrumentation, this.poolStrategy, this.locationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.redefinitionDiscoveryStrategy, this.lambdaInstrumentationStrategy, apply.getListener(), this.redefinitionListener, rawMatcher, this.redefinitionBatchAllocator, this.circularityLock);
                } catch (Throwable th) {
                    th = th;
                    Throwable onError = apply.getInstallationListener().onError(instrumentation, resettableClassFileTransformer, th);
                    if (onError != null) {
                        instrumentation.removeTransformer(resettableClassFileTransformer);
                        throw new IllegalStateException("Could not install class file transformer", onError);
                    }
                    apply.getInstallationListener().onInstall(instrumentation, resettableClassFileTransformer);
                    return resettableClassFileTransformer;
                }
            } catch (Throwable th2) {
                th = th2;
                resettableClassFileTransformer = decorate;
            }
            apply.getInstallationListener().onInstall(instrumentation, resettableClassFileTransformer);
            return resettableClassFileTransformer;
        }

        /* renamed from: of */
        public static AgentBuilder m15372of(List<? extends Plugin> list) {
            return m15369of(EntryPoint.Default.REBASE, list);
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder enableNativeMethodPrefix(String str) {
            return new Default(this.byteBuddy, this.listener, this.circularityLock, this.poolStrategy, this.typeStrategy, this.locationStrategy, NativeMethodStrategy.ForPrefix.m15363of(str), this.warmupStrategy, this.transformerDecorator, this.initializationStrategy, this.redefinitionStrategy, this.redefinitionDiscoveryStrategy, this.redefinitionBatchAllocator, this.redefinitionListener, this.redefinitionResubmissionStrategy, this.injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public Ignored ignore(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2) {
            return ignore(elementMatcher, elementMatcher2, ElementMatchers.any());
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public ResettableClassFileTransformer installOn(Instrumentation instrumentation) {
            if (this.circularityLock.acquire()) {
                try {
                    return doInstall(instrumentation, new Transformation.SimpleMatcher(this.ignoreMatcher, this.transformations));
                } finally {
                    this.circularityLock.release();
                }
            }
            throw new IllegalStateException("Could not acquire the circularity lock upon installation.");
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public ResettableClassFileTransformer makeRaw() {
            return makeRaw(this.listener, InstallationListener.NoOp.INSTANCE, RedefinitionStrategy.ResubmissionEnforcer.Disabled.INSTANCE);
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public ResettableClassFileTransformer patchOn(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer) {
            if (this.circularityLock.acquire()) {
                try {
                    if (resettableClassFileTransformer.reset(instrumentation, RedefinitionStrategy.DISABLED)) {
                        return doInstall(instrumentation, new Transformation.DifferentialMatcher(this.ignoreMatcher, this.transformations, resettableClassFileTransformer));
                    }
                    throw new IllegalArgumentException("Cannot patch unregistered class file transformer: " + resettableClassFileTransformer);
                } finally {
                    this.circularityLock.release();
                }
            }
            throw new IllegalStateException("Could not acquire the circularity lock upon installation.");
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public Identified.Narrowable type(ElementMatcher<? super TypeDescription> elementMatcher) {
            return type(elementMatcher, ElementMatchers.any());
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x0013  */
        @Override // net.bytebuddy.agent.builder.AgentBuilder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public net.bytebuddy.agent.builder.AgentBuilder warmUp(java.util.Collection<java.lang.Class<?>> r28) {
            /*
                r27 = this;
                r0 = r27
                boolean r1 = r28.isEmpty()
                if (r1 == 0) goto L9
                return r0
            L9:
                java.util.Iterator r1 = r28.iterator()
            Ld:
                boolean r2 = r1.hasNext()
                if (r2 == 0) goto L3d
                java.lang.Object r2 = r1.next()
                java.lang.Class r2 = (java.lang.Class) r2
                boolean r3 = r2.isPrimitive()
                if (r3 != 0) goto L26
                boolean r3 = r2.isArray()
                if (r3 != 0) goto L26
                goto Ld
            L26:
                java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r3.<init>()
                java.lang.String r4 = "Cannot warm up primitive or array type: "
                r3.append(r4)
                r3.append(r2)
                java.lang.String r2 = r3.toString()
                r1.<init>(r2)
                throw r1
            L3d:
                net.bytebuddy.agent.builder.AgentBuilder$Default r1 = new net.bytebuddy.agent.builder.AgentBuilder$Default
                r3 = r1
                net.bytebuddy.ByteBuddy r4 = r0.byteBuddy
                net.bytebuddy.agent.builder.AgentBuilder$Listener r5 = r0.listener
                net.bytebuddy.agent.builder.AgentBuilder$CircularityLock r6 = r0.circularityLock
                net.bytebuddy.agent.builder.AgentBuilder$PoolStrategy r7 = r0.poolStrategy
                net.bytebuddy.agent.builder.AgentBuilder$TypeStrategy r8 = r0.typeStrategy
                net.bytebuddy.agent.builder.AgentBuilder$LocationStrategy r9 = r0.locationStrategy
                net.bytebuddy.agent.builder.AgentBuilder$Default$NativeMethodStrategy r10 = r0.nativeMethodStrategy
                net.bytebuddy.agent.builder.AgentBuilder$Default$WarmupStrategy r2 = r0.warmupStrategy
                r11 = r28
                net.bytebuddy.agent.builder.AgentBuilder$Default$WarmupStrategy r11 = r2.with(r11)
                net.bytebuddy.agent.builder.AgentBuilder$TransformerDecorator r12 = r0.transformerDecorator
                net.bytebuddy.agent.builder.AgentBuilder$InitializationStrategy r13 = r0.initializationStrategy
                net.bytebuddy.agent.builder.AgentBuilder$RedefinitionStrategy r14 = r0.redefinitionStrategy
                net.bytebuddy.agent.builder.AgentBuilder$RedefinitionStrategy$DiscoveryStrategy r15 = r0.redefinitionDiscoveryStrategy
                net.bytebuddy.agent.builder.AgentBuilder$RedefinitionStrategy$BatchAllocator r2 = r0.redefinitionBatchAllocator
                r16 = r2
                net.bytebuddy.agent.builder.AgentBuilder$RedefinitionStrategy$Listener r2 = r0.redefinitionListener
                r17 = r2
                net.bytebuddy.agent.builder.AgentBuilder$RedefinitionStrategy$ResubmissionStrategy r2 = r0.redefinitionResubmissionStrategy
                r18 = r2
                net.bytebuddy.agent.builder.AgentBuilder$InjectionStrategy r2 = r0.injectionStrategy
                r19 = r2
                net.bytebuddy.agent.builder.AgentBuilder$LambdaInstrumentationStrategy r2 = r0.lambdaInstrumentationStrategy
                r20 = r2
                net.bytebuddy.agent.builder.AgentBuilder$DescriptionStrategy r2 = r0.descriptionStrategy
                r21 = r2
                net.bytebuddy.agent.builder.AgentBuilder$FallbackStrategy r2 = r0.fallbackStrategy
                r22 = r2
                net.bytebuddy.agent.builder.AgentBuilder$ClassFileBufferStrategy r2 = r0.classFileBufferStrategy
                r23 = r2
                net.bytebuddy.agent.builder.AgentBuilder$InstallationListener r2 = r0.installationListener
                r24 = r2
                net.bytebuddy.agent.builder.AgentBuilder$RawMatcher r2 = r0.ignoreMatcher
                r25 = r2
                java.util.List<net.bytebuddy.agent.builder.AgentBuilder$Default$Transformation> r2 = r0.transformations
                r26 = r2
                r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.agent.builder.AgentBuilder.Default.warmUp(java.util.Collection):net.bytebuddy.agent.builder.AgentBuilder");
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder with(Listener listener) {
            return new Default(this.byteBuddy, new Listener.Compound(this.listener, listener), this.circularityLock, this.poolStrategy, this.typeStrategy, this.locationStrategy, this.nativeMethodStrategy, this.warmupStrategy, this.transformerDecorator, this.initializationStrategy, this.redefinitionStrategy, this.redefinitionDiscoveryStrategy, this.redefinitionBatchAllocator, this.redefinitionListener, this.redefinitionResubmissionStrategy, this.injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
        }

        private ResettableClassFileTransformer makeRaw(Listener listener, InstallationListener installationListener, RedefinitionStrategy.ResubmissionEnforcer resubmissionEnforcer) {
            return ExecutingTransformer.FACTORY.make(this.byteBuddy, listener, this.poolStrategy, this.typeStrategy, this.locationStrategy, this.nativeMethodStrategy, this.initializationStrategy, this.injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, installationListener, this.ignoreMatcher, resubmissionEnforcer, this.transformations, this.circularityLock);
        }

        /* renamed from: of */
        public static AgentBuilder m15366of(EntryPoint entryPoint, Plugin... pluginArr) {
            return m15369of(entryPoint, Arrays.asList(pluginArr));
        }

        private static Instrumentation resolveByteBuddyAgentInstrumentation() {
            try {
                Class<?> loadClass = ClassLoader.getSystemClassLoader().loadClass(INSTALLER_TYPE);
                JavaModule ofType = JavaModule.ofType(AgentBuilder.class);
                JavaModule ofType2 = JavaModule.ofType(loadClass);
                if (ofType != null && !ofType.canRead(ofType2)) {
                    Class<?> cls = Class.forName("java.lang.Module");
                    cls.getMethod("addReads", cls).invoke(ofType.unwrap(), ofType2.unwrap());
                }
                return (Instrumentation) loadClass.getMethod(INSTALLER_GETTER, new Class[0]).invoke(null, new Object[0]);
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new IllegalStateException("The Byte Buddy agent is not installed or not accessible", e2);
            }
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder assureReadEdgeFromAndTo(Instrumentation instrumentation, JavaModule... javaModuleArr) {
            return assureReadEdgeFromAndTo(instrumentation, Arrays.asList(javaModuleArr));
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder assureReadEdgeTo(Instrumentation instrumentation, JavaModule... javaModuleArr) {
            return assureReadEdgeTo(instrumentation, Arrays.asList(javaModuleArr));
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public Ignored ignore(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2, ElementMatcher<? super JavaModule> elementMatcher3) {
            return ignore(new RawMatcher.ForElementMatchers(elementMatcher, elementMatcher2, ElementMatchers.not(ElementMatchers.supportsModules()).mo14830or(elementMatcher3)));
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public Identified.Narrowable type(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2) {
            return type(elementMatcher, elementMatcher2, ElementMatchers.any());
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder with(CircularityLock circularityLock) {
            return new Default(this.byteBuddy, this.listener, circularityLock, this.poolStrategy, this.typeStrategy, this.locationStrategy, this.nativeMethodStrategy, this.warmupStrategy, this.transformerDecorator, this.initializationStrategy, this.redefinitionStrategy, this.redefinitionDiscoveryStrategy, this.redefinitionBatchAllocator, this.redefinitionListener, this.redefinitionResubmissionStrategy, this.injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
        }

        /* renamed from: of */
        public static AgentBuilder m15369of(EntryPoint entryPoint, List<? extends Plugin> list) {
            return m15368of(entryPoint, ClassFileVersion.ofThisVm(ClassFileVersion.JAVA_V5), list);
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder assureReadEdgeFromAndTo(Instrumentation instrumentation, Collection<? extends JavaModule> collection) {
            return with(new Listener.ModuleReadEdgeCompleting(instrumentation, true, new HashSet(collection)));
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder assureReadEdgeTo(Instrumentation instrumentation, Collection<? extends JavaModule> collection) {
            return with(new Listener.ModuleReadEdgeCompleting(instrumentation, false, new HashSet(collection)));
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public Ignored ignore(RawMatcher rawMatcher) {
            return new Ignoring(rawMatcher);
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public Identified.Narrowable type(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2, ElementMatcher<? super JavaModule> elementMatcher3) {
            return type(new RawMatcher.ForElementMatchers(elementMatcher, elementMatcher2, ElementMatchers.not(ElementMatchers.supportsModules()).mo14830or(elementMatcher3)));
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder with(TypeStrategy typeStrategy) {
            return new Default(this.byteBuddy, this.listener, this.circularityLock, this.poolStrategy, typeStrategy, this.locationStrategy, this.nativeMethodStrategy, this.warmupStrategy, this.transformerDecorator, this.initializationStrategy, this.redefinitionStrategy, this.redefinitionDiscoveryStrategy, this.redefinitionBatchAllocator, this.redefinitionListener, this.redefinitionResubmissionStrategy, this.injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
        }

        /* renamed from: of */
        public static AgentBuilder m15370of(ClassFileVersion classFileVersion, Plugin... pluginArr) {
            return m15371of(classFileVersion, Arrays.asList(pluginArr));
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder with(PoolStrategy poolStrategy) {
            return new Default(this.byteBuddy, this.listener, this.circularityLock, poolStrategy, this.typeStrategy, this.locationStrategy, this.nativeMethodStrategy, this.warmupStrategy, this.transformerDecorator, this.initializationStrategy, this.redefinitionStrategy, this.redefinitionDiscoveryStrategy, this.redefinitionBatchAllocator, this.redefinitionListener, this.redefinitionResubmissionStrategy, this.injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
        }

        /* renamed from: of */
        public static AgentBuilder m15371of(ClassFileVersion classFileVersion, List<? extends Plugin> list) {
            return m15368of(EntryPoint.Default.REBASE, classFileVersion, list);
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder with(LocationStrategy locationStrategy) {
            return new Default(this.byteBuddy, this.listener, this.circularityLock, this.poolStrategy, this.typeStrategy, locationStrategy, this.nativeMethodStrategy, this.warmupStrategy, this.transformerDecorator, this.initializationStrategy, this.redefinitionStrategy, this.redefinitionDiscoveryStrategy, this.redefinitionBatchAllocator, this.redefinitionListener, this.redefinitionResubmissionStrategy, this.injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
        }

        /* renamed from: of */
        public static AgentBuilder m15367of(EntryPoint entryPoint, ClassFileVersion classFileVersion, Plugin... pluginArr) {
            return m15368of(entryPoint, classFileVersion, Arrays.asList(pluginArr));
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder with(TransformerDecorator transformerDecorator) {
            return new Default(this.byteBuddy, this.listener, this.circularityLock, this.poolStrategy, this.typeStrategy, this.locationStrategy, this.nativeMethodStrategy, this.warmupStrategy, new TransformerDecorator.Compound(this.transformerDecorator, transformerDecorator), this.initializationStrategy, this.redefinitionStrategy, this.redefinitionDiscoveryStrategy, this.redefinitionBatchAllocator, this.redefinitionListener, this.redefinitionResubmissionStrategy, this.injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
        }

        /* renamed from: of */
        public static AgentBuilder m15368of(EntryPoint entryPoint, ClassFileVersion classFileVersion, List<? extends Plugin> list) {
            AgentBuilder with = new Default(entryPoint.byteBuddy(classFileVersion)).with(new TypeStrategy.ForBuildEntryPoint(entryPoint));
            for (Plugin plugin : list) {
                with = with.type(plugin).transform(new Transformer.ForBuildPlugin(plugin));
            }
            return with;
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public RedefinitionListenable.WithoutBatchStrategy with(RedefinitionStrategy redefinitionStrategy) {
            return new Redefining(this.byteBuddy, this.listener, this.circularityLock, this.poolStrategy, this.typeStrategy, this.locationStrategy, this.nativeMethodStrategy, this.warmupStrategy, this.transformerDecorator, this.initializationStrategy, redefinitionStrategy, RedefinitionStrategy.DiscoveryStrategy.SinglePass.INSTANCE, RedefinitionStrategy.BatchAllocator.ForTotal.INSTANCE, RedefinitionStrategy.Listener.NoOp.INSTANCE, RedefinitionStrategy.ResubmissionStrategy.Disabled.INSTANCE, this.injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder with(InitializationStrategy initializationStrategy) {
            return new Default(this.byteBuddy, this.listener, this.circularityLock, this.poolStrategy, this.typeStrategy, this.locationStrategy, this.nativeMethodStrategy, this.warmupStrategy, this.transformerDecorator, initializationStrategy, this.redefinitionStrategy, this.redefinitionDiscoveryStrategy, this.redefinitionBatchAllocator, this.redefinitionListener, this.redefinitionResubmissionStrategy, this.injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder with(LambdaInstrumentationStrategy lambdaInstrumentationStrategy) {
            return new Default(this.byteBuddy, this.listener, this.circularityLock, this.poolStrategy, this.typeStrategy, this.locationStrategy, this.nativeMethodStrategy, this.warmupStrategy, this.transformerDecorator, this.initializationStrategy, this.redefinitionStrategy, this.redefinitionDiscoveryStrategy, this.redefinitionBatchAllocator, this.redefinitionListener, this.redefinitionResubmissionStrategy, this.injectionStrategy, lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
        }

        public Default(ByteBuddy byteBuddy, Listener listener, CircularityLock circularityLock, PoolStrategy poolStrategy, TypeStrategy typeStrategy, LocationStrategy locationStrategy, NativeMethodStrategy nativeMethodStrategy, WarmupStrategy warmupStrategy, TransformerDecorator transformerDecorator, InitializationStrategy initializationStrategy, RedefinitionStrategy redefinitionStrategy, RedefinitionStrategy.DiscoveryStrategy discoveryStrategy, RedefinitionStrategy.BatchAllocator batchAllocator, RedefinitionStrategy.Listener listener2, RedefinitionStrategy.ResubmissionStrategy resubmissionStrategy, InjectionStrategy injectionStrategy, LambdaInstrumentationStrategy lambdaInstrumentationStrategy, DescriptionStrategy descriptionStrategy, FallbackStrategy fallbackStrategy, ClassFileBufferStrategy classFileBufferStrategy, InstallationListener installationListener, RawMatcher rawMatcher, List<Transformation> list) {
            this.byteBuddy = byteBuddy;
            this.listener = listener;
            this.circularityLock = circularityLock;
            this.poolStrategy = poolStrategy;
            this.typeStrategy = typeStrategy;
            this.locationStrategy = locationStrategy;
            this.nativeMethodStrategy = nativeMethodStrategy;
            this.warmupStrategy = warmupStrategy;
            this.transformerDecorator = transformerDecorator;
            this.initializationStrategy = initializationStrategy;
            this.redefinitionStrategy = redefinitionStrategy;
            this.redefinitionDiscoveryStrategy = discoveryStrategy;
            this.redefinitionBatchAllocator = batchAllocator;
            this.redefinitionListener = listener2;
            this.redefinitionResubmissionStrategy = resubmissionStrategy;
            this.injectionStrategy = injectionStrategy;
            this.lambdaInstrumentationStrategy = lambdaInstrumentationStrategy;
            this.descriptionStrategy = descriptionStrategy;
            this.fallbackStrategy = fallbackStrategy;
            this.classFileBufferStrategy = classFileBufferStrategy;
            this.installationListener = installationListener;
            this.ignoreMatcher = rawMatcher;
            this.transformations = list;
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder with(DescriptionStrategy descriptionStrategy) {
            return new Default(this.byteBuddy, this.listener, this.circularityLock, this.poolStrategy, this.typeStrategy, this.locationStrategy, this.nativeMethodStrategy, this.warmupStrategy, this.transformerDecorator, this.initializationStrategy, this.redefinitionStrategy, this.redefinitionDiscoveryStrategy, this.redefinitionBatchAllocator, this.redefinitionListener, this.redefinitionResubmissionStrategy, this.injectionStrategy, this.lambdaInstrumentationStrategy, descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder with(FallbackStrategy fallbackStrategy) {
            return new Default(this.byteBuddy, this.listener, this.circularityLock, this.poolStrategy, this.typeStrategy, this.locationStrategy, this.nativeMethodStrategy, this.warmupStrategy, this.transformerDecorator, this.initializationStrategy, this.redefinitionStrategy, this.redefinitionDiscoveryStrategy, this.redefinitionBatchAllocator, this.redefinitionListener, this.redefinitionResubmissionStrategy, this.injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, fallbackStrategy, this.classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder with(ClassFileBufferStrategy classFileBufferStrategy) {
            return new Default(this.byteBuddy, this.listener, this.circularityLock, this.poolStrategy, this.typeStrategy, this.locationStrategy, this.nativeMethodStrategy, this.warmupStrategy, this.transformerDecorator, this.initializationStrategy, this.redefinitionStrategy, this.redefinitionDiscoveryStrategy, this.redefinitionBatchAllocator, this.redefinitionListener, this.redefinitionResubmissionStrategy, this.injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder with(InstallationListener installationListener) {
            return new Default(this.byteBuddy, this.listener, this.circularityLock, this.poolStrategy, this.typeStrategy, this.locationStrategy, this.nativeMethodStrategy, this.warmupStrategy, this.transformerDecorator, this.initializationStrategy, this.redefinitionStrategy, this.redefinitionDiscoveryStrategy, this.redefinitionBatchAllocator, this.redefinitionListener, this.redefinitionResubmissionStrategy, this.injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, new InstallationListener.Compound(this.installationListener, installationListener), this.ignoreMatcher, this.transformations);
        }

        @Override // net.bytebuddy.agent.builder.AgentBuilder
        public AgentBuilder with(InjectionStrategy injectionStrategy) {
            return new Default(this.byteBuddy, this.listener, this.circularityLock, this.poolStrategy, this.typeStrategy, this.locationStrategy, this.nativeMethodStrategy, this.warmupStrategy, this.transformerDecorator, this.initializationStrategy, this.redefinitionStrategy, this.redefinitionDiscoveryStrategy, this.redefinitionBatchAllocator, this.redefinitionListener, this.redefinitionResubmissionStrategy, injectionStrategy, this.lambdaInstrumentationStrategy, this.descriptionStrategy, this.fallbackStrategy, this.classFileBufferStrategy, this.installationListener, this.ignoreMatcher, this.transformations);
        }
    }

    /* loaded from: classes2.dex */
    public interface DescriptionStrategy {

        /* loaded from: classes2.dex */
        public enum Default implements DescriptionStrategy {
            HYBRID(true) { // from class: net.bytebuddy.agent.builder.AgentBuilder.DescriptionStrategy.Default.1
                @Override // net.bytebuddy.agent.builder.AgentBuilder.DescriptionStrategy
                public TypeDescription apply(String str, @MaybeNull Class<?> cls, TypePool typePool, CircularityLock circularityLock, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule) {
                    if (cls == null) {
                        return typePool.describe(str).resolve();
                    }
                    return TypeDescription.ForLoadedType.m15196of(cls);
                }
            },
            POOL_ONLY(false) { // from class: net.bytebuddy.agent.builder.AgentBuilder.DescriptionStrategy.Default.2
                @Override // net.bytebuddy.agent.builder.AgentBuilder.DescriptionStrategy
                public TypeDescription apply(String str, @MaybeNull Class<?> cls, TypePool typePool, CircularityLock circularityLock, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule) {
                    return typePool.describe(str).resolve();
                }
            },
            POOL_FIRST(false) { // from class: net.bytebuddy.agent.builder.AgentBuilder.DescriptionStrategy.Default.3
                @Override // net.bytebuddy.agent.builder.AgentBuilder.DescriptionStrategy
                public TypeDescription apply(String str, @MaybeNull Class<?> cls, TypePool typePool, CircularityLock circularityLock, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule) {
                    TypePool.Resolution describe = typePool.describe(str);
                    if (!describe.isResolved() && cls != null) {
                        return TypeDescription.ForLoadedType.m15196of(cls);
                    }
                    return describe.resolve();
                }
            };
            
            private final boolean loadedFirst;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.DescriptionStrategy
            public boolean isLoadedFirst() {
                return this.loadedFirst;
            }

            public DescriptionStrategy withSuperTypeLoading() {
                return new SuperTypeLoading(this);
            }

            Default(boolean z) {
                this.loadedFirst = z;
            }

            public DescriptionStrategy withSuperTypeLoading(ExecutorService executorService) {
                return new SuperTypeLoading.Asynchronous(this, executorService);
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class SuperTypeLoading implements DescriptionStrategy {
            private final DescriptionStrategy delegate;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Asynchronous implements DescriptionStrategy {
                private final DescriptionStrategy delegate;
                private final ExecutorService executorService;

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ThreadSwitchingClassLoadingDelegate implements TypeDescription.SuperTypeLoading.ClassLoadingDelegate {
                    private final ExecutorService executorService;

                    @HashCodeAndEqualsPlugin.Enhance
                    /* loaded from: classes.dex */
                    public static class NotifyingClassLoadingAction implements Callable<Class<?>> {
                        private final ClassLoader classLoader;
                        private final String name;
                        private final AtomicBoolean signal;

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            if (obj != null && getClass() == obj.getClass()) {
                                NotifyingClassLoadingAction notifyingClassLoadingAction = (NotifyingClassLoadingAction) obj;
                                return this.name.equals(notifyingClassLoadingAction.name) && this.classLoader.equals(notifyingClassLoadingAction.classLoader) && this.signal.equals(notifyingClassLoadingAction.signal);
                            }
                            return false;
                        }

                        public int hashCode() {
                            return (((((getClass().hashCode() * 31) + this.name.hashCode()) * 31) + this.classLoader.hashCode()) * 31) + this.signal.hashCode();
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // java.util.concurrent.Callable
                        public Class<?> call() {
                            Class<?> cls;
                            synchronized (this.classLoader) {
                                cls = Class.forName(this.name, false, this.classLoader);
                                this.signal.set(false);
                                this.classLoader.notifyAll();
                            }
                            return cls;
                        }

                        public NotifyingClassLoadingAction(String str, ClassLoader classLoader, AtomicBoolean atomicBoolean) {
                            this.name = str;
                            this.classLoader = classLoader;
                            this.signal = atomicBoolean;
                        }
                    }

                    @HashCodeAndEqualsPlugin.Enhance
                    /* loaded from: classes.dex */
                    public static class SimpleClassLoadingAction implements Callable<Class<?>> {
                        @MaybeNull
                        @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
                        private final ClassLoader classLoader;
                        private final String name;

                        /* JADX WARN: Removed duplicated region for block: B:22:0x0032 A[RETURN] */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public boolean equals(@net.bytebuddy.utility.nullability.MaybeNull java.lang.Object r5) {
                            /*
                                r4 = this;
                                r0 = 1
                                if (r4 != r5) goto L4
                                return r0
                            L4:
                                r1 = 0
                                if (r5 != 0) goto L8
                                return r1
                            L8:
                                java.lang.Class r2 = r4.getClass()
                                java.lang.Class r3 = r5.getClass()
                                if (r2 == r3) goto L13
                                return r1
                            L13:
                                java.lang.String r2 = r4.name
                                net.bytebuddy.agent.builder.AgentBuilder$DescriptionStrategy$SuperTypeLoading$Asynchronous$ThreadSwitchingClassLoadingDelegate$SimpleClassLoadingAction r5 = (net.bytebuddy.agent.builder.AgentBuilder.DescriptionStrategy.SuperTypeLoading.Asynchronous.ThreadSwitchingClassLoadingDelegate.SimpleClassLoadingAction) r5
                                java.lang.String r3 = r5.name
                                boolean r2 = r2.equals(r3)
                                if (r2 != 0) goto L20
                                return r1
                            L20:
                                java.lang.ClassLoader r2 = r4.classLoader
                                java.lang.ClassLoader r5 = r5.classLoader
                                if (r5 == 0) goto L2f
                                if (r2 == 0) goto L31
                                boolean r5 = r2.equals(r5)
                                if (r5 != 0) goto L32
                                return r1
                            L2f:
                                if (r2 == 0) goto L32
                            L31:
                                return r1
                            L32:
                                return r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.agent.builder.AgentBuilder.DescriptionStrategy.SuperTypeLoading.Asynchronous.ThreadSwitchingClassLoadingDelegate.SimpleClassLoadingAction.equals(java.lang.Object):boolean");
                        }

                        public int hashCode() {
                            int hashCode = ((getClass().hashCode() * 31) + this.name.hashCode()) * 31;
                            ClassLoader classLoader = this.classLoader;
                            return classLoader != null ? hashCode + classLoader.hashCode() : hashCode;
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // java.util.concurrent.Callable
                        public Class<?> call() {
                            return Class.forName(this.name, false, this.classLoader);
                        }

                        public SimpleClassLoadingAction(String str, @MaybeNull ClassLoader classLoader) {
                            this.name = str;
                            this.classLoader = classLoader;
                        }
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.executorService.equals(((ThreadSwitchingClassLoadingDelegate) obj).executorService);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.executorService.hashCode();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.SuperTypeLoading.ClassLoadingDelegate
                    public Class<?> load(String str, @MaybeNull ClassLoader classLoader) {
                        boolean z;
                        Callable simpleClassLoadingAction;
                        if (classLoader != null && Thread.holdsLock(classLoader)) {
                            z = true;
                        } else {
                            z = false;
                        }
                        AtomicBoolean atomicBoolean = new AtomicBoolean(z);
                        ExecutorService executorService = this.executorService;
                        if (z) {
                            simpleClassLoadingAction = new NotifyingClassLoadingAction(str, classLoader, atomicBoolean);
                        } else {
                            simpleClassLoadingAction = new SimpleClassLoadingAction(str, classLoader);
                        }
                        Future submit = executorService.submit(simpleClassLoadingAction);
                        while (z) {
                            try {
                                if (!atomicBoolean.get()) {
                                    break;
                                }
                                classLoader.wait();
                            } catch (ExecutionException e) {
                                throw new IllegalStateException("Could not load " + str + " asynchronously", e.getCause());
                            } catch (Exception e2) {
                                throw new IllegalStateException("Could not load " + str + " asynchronously", e2);
                            }
                        }
                        return (Class) submit.get();
                    }

                    public ThreadSwitchingClassLoadingDelegate(ExecutorService executorService) {
                        this.executorService = executorService;
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Asynchronous asynchronous = (Asynchronous) obj;
                        return this.delegate.equals(asynchronous.delegate) && this.executorService.equals(asynchronous.executorService);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.delegate.hashCode()) * 31) + this.executorService.hashCode();
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.DescriptionStrategy
                public boolean isLoadedFirst() {
                    return this.delegate.isLoadedFirst();
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.DescriptionStrategy
                public TypeDescription apply(String str, @MaybeNull Class<?> cls, TypePool typePool, CircularityLock circularityLock, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule) {
                    TypeDescription apply = this.delegate.apply(str, cls, typePool, circularityLock, classLoader, javaModule);
                    if (!(apply instanceof TypeDescription.ForLoadedType)) {
                        return new TypeDescription.SuperTypeLoading(apply, classLoader, new ThreadSwitchingClassLoadingDelegate(this.executorService));
                    }
                    return apply;
                }

                public Asynchronous(DescriptionStrategy descriptionStrategy, ExecutorService executorService) {
                    this.delegate = descriptionStrategy;
                    this.executorService = executorService;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class UnlockingClassLoadingDelegate implements TypeDescription.SuperTypeLoading.ClassLoadingDelegate {
                private final CircularityLock circularityLock;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.circularityLock.equals(((UnlockingClassLoadingDelegate) obj).circularityLock);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.circularityLock.hashCode();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.SuperTypeLoading.ClassLoadingDelegate
                public Class<?> load(String str, @MaybeNull ClassLoader classLoader) {
                    this.circularityLock.release();
                    try {
                        return Class.forName(str, false, classLoader);
                    } finally {
                        this.circularityLock.acquire();
                    }
                }

                public UnlockingClassLoadingDelegate(CircularityLock circularityLock) {
                    this.circularityLock = circularityLock;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.delegate.equals(((SuperTypeLoading) obj).delegate);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.delegate.hashCode();
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.DescriptionStrategy
            public boolean isLoadedFirst() {
                return this.delegate.isLoadedFirst();
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.DescriptionStrategy
            public TypeDescription apply(String str, @MaybeNull Class<?> cls, TypePool typePool, CircularityLock circularityLock, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule) {
                TypeDescription apply = this.delegate.apply(str, cls, typePool, circularityLock, classLoader, javaModule);
                if (!(apply instanceof TypeDescription.ForLoadedType)) {
                    return new TypeDescription.SuperTypeLoading(apply, classLoader, new UnlockingClassLoadingDelegate(circularityLock));
                }
                return apply;
            }

            public SuperTypeLoading(DescriptionStrategy descriptionStrategy) {
                this.delegate = descriptionStrategy;
            }
        }

        TypeDescription apply(String str, @MaybeNull Class<?> cls, TypePool typePool, CircularityLock circularityLock, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule);

        boolean isLoadedFirst();
    }

    /* loaded from: classes2.dex */
    public interface FallbackStrategy {

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ByThrowableType implements FallbackStrategy {
            private final Set<? extends Class<? extends Throwable>> types;

            public ByThrowableType(Class<? extends Throwable>... clsArr) {
                this(new HashSet(Arrays.asList(clsArr)));
            }

            public static FallbackStrategy ofOptionalTypes() {
                return new ByThrowableType(LinkageError.class, TypeNotPresentException.class);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.types.equals(((ByThrowableType) obj).types);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.types.hashCode();
            }

            public ByThrowableType(Set<? extends Class<? extends Throwable>> set) {
                this.types = set;
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.FallbackStrategy
            public boolean isFallback(Class<?> cls, Throwable th) {
                for (Class<? extends Throwable> cls2 : this.types) {
                    if (cls2.isInstance(th)) {
                        return true;
                    }
                }
                return false;
            }
        }

        boolean isFallback(Class<?> cls, Throwable th);

        /* loaded from: classes2.dex */
        public enum Simple implements FallbackStrategy {
            ENABLED(true),
            DISABLED(false);
            
            private final boolean enabled;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.FallbackStrategy
            public boolean isFallback(Class<?> cls, Throwable th) {
                return this.enabled;
            }

            Simple(boolean z) {
                this.enabled = z;
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface Identified {

        /* loaded from: classes2.dex */
        public interface Extendable extends AgentBuilder, Identified {
            AgentBuilder asTerminalTransformation();
        }

        /* loaded from: classes2.dex */
        public interface Narrowable extends Matchable<Narrowable>, Identified {
        }

        Extendable transform(Transformer transformer);
    }

    /* loaded from: classes2.dex */
    public interface Ignored extends Matchable<Ignored>, AgentBuilder {
    }

    /* loaded from: classes2.dex */
    public interface InitializationStrategy {

        /* loaded from: classes2.dex */
        public interface Dispatcher {
            DynamicType.Builder<?> apply(DynamicType.Builder<?> builder);

            void register(DynamicType dynamicType, @MaybeNull ClassLoader classLoader, @MaybeNull ProtectionDomain protectionDomain, InjectionStrategy injectionStrategy);
        }

        /* loaded from: classes2.dex */
        public enum NoOp implements InitializationStrategy, Dispatcher {
            INSTANCE;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InitializationStrategy.Dispatcher
            public DynamicType.Builder<?> apply(DynamicType.Builder<?> builder) {
                return builder;
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InitializationStrategy
            public Dispatcher dispatcher() {
                return this;
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InitializationStrategy.Dispatcher
            public void register(DynamicType dynamicType, @MaybeNull ClassLoader classLoader, @MaybeNull ProtectionDomain protectionDomain, InjectionStrategy injectionStrategy) {
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static abstract class SelfInjection implements InitializationStrategy {
            public final NexusAccessor nexusAccessor;

            /* loaded from: classes2.dex */
            public static class Eager extends SelfInjection {
                public Eager() {
                    this(new NexusAccessor());
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.InitializationStrategy.SelfInjection
                public Dispatcher dispatcher(int i) {
                    return new Dispatcher(this.nexusAccessor, i);
                }

                /* loaded from: classes2.dex */
                public static class Dispatcher extends Dispatcher {
                    public Dispatcher(NexusAccessor nexusAccessor, int i) {
                        super(nexusAccessor, i);
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.InitializationStrategy.Dispatcher
                    public void register(DynamicType dynamicType, @MaybeNull ClassLoader classLoader, @MaybeNull ProtectionDomain protectionDomain, InjectionStrategy injectionStrategy) {
                        Map<TypeDescription, byte[]> auxiliaryTypes = dynamicType.getAuxiliaryTypes();
                        Map<TypeDescription, LoadedTypeInitializer> loadedTypeInitializers = dynamicType.getLoadedTypeInitializers();
                        if (!auxiliaryTypes.isEmpty()) {
                            for (Map.Entry<TypeDescription, Class<?>> entry : injectionStrategy.resolve(classLoader, protectionDomain).inject(auxiliaryTypes).entrySet()) {
                                loadedTypeInitializers.get(entry.getKey()).onLoad(entry.getValue());
                            }
                        }
                        this.nexusAccessor.register(dynamicType.getTypeDescription().getName(), classLoader, this.identification, loadedTypeInitializers.get(dynamicType.getTypeDescription()));
                    }
                }

                public Eager(NexusAccessor nexusAccessor) {
                    super(nexusAccessor);
                }
            }

            /* loaded from: classes2.dex */
            public static class Lazy extends SelfInjection {
                public Lazy() {
                    this(new NexusAccessor());
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.InitializationStrategy.SelfInjection
                public Dispatcher dispatcher(int i) {
                    return new Dispatcher(this.nexusAccessor, i);
                }

                /* loaded from: classes2.dex */
                public static class Dispatcher extends Dispatcher {
                    public Dispatcher(NexusAccessor nexusAccessor, int i) {
                        super(nexusAccessor, i);
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.InitializationStrategy.Dispatcher
                    public void register(DynamicType dynamicType, @MaybeNull ClassLoader classLoader, @MaybeNull ProtectionDomain protectionDomain, InjectionStrategy injectionStrategy) {
                        LoadedTypeInitializer injectingInitializer;
                        Map<TypeDescription, byte[]> auxiliaryTypes = dynamicType.getAuxiliaryTypes();
                        if (auxiliaryTypes.isEmpty()) {
                            injectingInitializer = dynamicType.getLoadedTypeInitializers().get(dynamicType.getTypeDescription());
                        } else {
                            injectingInitializer = new Dispatcher.InjectingInitializer(dynamicType.getTypeDescription(), auxiliaryTypes, dynamicType.getLoadedTypeInitializers(), injectionStrategy.resolve(classLoader, protectionDomain));
                        }
                        this.nexusAccessor.register(dynamicType.getTypeDescription().getName(), classLoader, this.identification, injectingInitializer);
                    }
                }

                public Lazy(NexusAccessor nexusAccessor) {
                    super(nexusAccessor);
                }
            }

            /* loaded from: classes2.dex */
            public static class Split extends SelfInjection {
                public Split() {
                    this(new NexusAccessor());
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.InitializationStrategy.SelfInjection
                public Dispatcher dispatcher(int i) {
                    return new Dispatcher(this.nexusAccessor, i);
                }

                /* loaded from: classes2.dex */
                public static class Dispatcher extends Dispatcher {
                    public Dispatcher(NexusAccessor nexusAccessor, int i) {
                        super(nexusAccessor, i);
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.InitializationStrategy.Dispatcher
                    public void register(DynamicType dynamicType, @MaybeNull ClassLoader classLoader, @MaybeNull ProtectionDomain protectionDomain, InjectionStrategy injectionStrategy) {
                        LoadedTypeInitializer loadedTypeInitializer;
                        LinkedHashMap linkedHashMap;
                        Map<TypeDescription, byte[]> auxiliaryTypes = dynamicType.getAuxiliaryTypes();
                        if (!auxiliaryTypes.isEmpty()) {
                            TypeDescription typeDescription = dynamicType.getTypeDescription();
                            ClassInjector resolve = injectionStrategy.resolve(classLoader, protectionDomain);
                            LinkedHashMap linkedHashMap2 = new LinkedHashMap(auxiliaryTypes);
                            LinkedHashMap linkedHashMap3 = new LinkedHashMap(auxiliaryTypes);
                            for (TypeDescription typeDescription2 : auxiliaryTypes.keySet()) {
                                if (typeDescription2.getDeclaredAnnotations().isAnnotationPresent(AuxiliaryType.SignatureRelevant.class)) {
                                    linkedHashMap = linkedHashMap3;
                                } else {
                                    linkedHashMap = linkedHashMap2;
                                }
                                linkedHashMap.remove(typeDescription2);
                            }
                            Map<TypeDescription, LoadedTypeInitializer> loadedTypeInitializers = dynamicType.getLoadedTypeInitializers();
                            if (!linkedHashMap2.isEmpty()) {
                                for (Map.Entry<TypeDescription, Class<?>> entry : resolve.inject(linkedHashMap2).entrySet()) {
                                    loadedTypeInitializers.get(entry.getKey()).onLoad(entry.getValue());
                                }
                            }
                            HashMap hashMap = new HashMap(loadedTypeInitializers);
                            loadedTypeInitializers.keySet().removeAll(linkedHashMap2.keySet());
                            if (hashMap.size() > 1) {
                                loadedTypeInitializer = new Dispatcher.InjectingInitializer(typeDescription, linkedHashMap3, hashMap, resolve);
                            } else {
                                loadedTypeInitializer = (LoadedTypeInitializer) hashMap.get(typeDescription);
                            }
                        } else {
                            loadedTypeInitializer = dynamicType.getLoadedTypeInitializers().get(dynamicType.getTypeDescription());
                        }
                        this.nexusAccessor.register(dynamicType.getTypeDescription().getName(), classLoader, this.identification, loadedTypeInitializer);
                    }
                }

                public Split(NexusAccessor nexusAccessor) {
                    super(nexusAccessor);
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InitializationStrategy
            @SuppressFBWarnings(justification = "Avoids thread-contention.", value = {"DMI_RANDOM_USED_ONLY_ONCE"})
            public Dispatcher dispatcher() {
                return dispatcher(new Random().nextInt());
            }

            public abstract Dispatcher dispatcher(int i);

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.nexusAccessor.equals(((SelfInjection) obj).nexusAccessor);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.nexusAccessor.hashCode();
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static abstract class Dispatcher implements Dispatcher {
                public final int identification;
                public final NexusAccessor nexusAccessor;

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class InjectingInitializer implements LoadedTypeInitializer {
                    private final ClassInjector classInjector;
                    private final TypeDescription instrumentedType;
                    private final Map<TypeDescription, LoadedTypeInitializer> loadedTypeInitializers;
                    private final Map<TypeDescription, byte[]> rawAuxiliaryTypes;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            InjectingInitializer injectingInitializer = (InjectingInitializer) obj;
                            return this.instrumentedType.equals(injectingInitializer.instrumentedType) && this.rawAuxiliaryTypes.equals(injectingInitializer.rawAuxiliaryTypes) && this.loadedTypeInitializers.equals(injectingInitializer.loadedTypeInitializers) && this.classInjector.equals(injectingInitializer.classInjector);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((((((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31) + this.rawAuxiliaryTypes.hashCode()) * 31) + this.loadedTypeInitializers.hashCode()) * 31) + this.classInjector.hashCode();
                    }

                    @Override // net.bytebuddy.implementation.LoadedTypeInitializer
                    public boolean isAlive() {
                        return true;
                    }

                    @Override // net.bytebuddy.implementation.LoadedTypeInitializer
                    public void onLoad(Class<?> cls) {
                        for (Map.Entry<TypeDescription, Class<?>> entry : this.classInjector.inject(this.rawAuxiliaryTypes).entrySet()) {
                            this.loadedTypeInitializers.get(entry.getKey()).onLoad(entry.getValue());
                        }
                        this.loadedTypeInitializers.get(this.instrumentedType).onLoad(cls);
                    }

                    public InjectingInitializer(TypeDescription typeDescription, Map<TypeDescription, byte[]> map, Map<TypeDescription, LoadedTypeInitializer> map2, ClassInjector classInjector) {
                        this.instrumentedType = typeDescription;
                        this.rawAuxiliaryTypes = map;
                        this.loadedTypeInitializers = map2;
                        this.classInjector = classInjector;
                    }
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.InitializationStrategy.Dispatcher
                public DynamicType.Builder<?> apply(DynamicType.Builder<?> builder) {
                    return builder.initializer(new NexusAccessor.InitializationAppender(this.identification));
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Dispatcher dispatcher = (Dispatcher) obj;
                        return this.identification == dispatcher.identification && this.nexusAccessor.equals(dispatcher.nexusAccessor);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.nexusAccessor.hashCode()) * 31) + this.identification;
                }

                public Dispatcher(NexusAccessor nexusAccessor, int i) {
                    this.nexusAccessor = nexusAccessor;
                    this.identification = i;
                }
            }

            public SelfInjection(NexusAccessor nexusAccessor) {
                this.nexusAccessor = nexusAccessor;
            }
        }

        Dispatcher dispatcher();

        /* loaded from: classes2.dex */
        public enum Minimal implements InitializationStrategy, Dispatcher {
            INSTANCE;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InitializationStrategy.Dispatcher
            public DynamicType.Builder<?> apply(DynamicType.Builder<?> builder) {
                return builder;
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InitializationStrategy
            public Dispatcher dispatcher() {
                return this;
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InitializationStrategy.Dispatcher
            public void register(DynamicType dynamicType, @MaybeNull ClassLoader classLoader, @MaybeNull ProtectionDomain protectionDomain, InjectionStrategy injectionStrategy) {
                Map<TypeDescription, byte[]> auxiliaryTypes = dynamicType.getAuxiliaryTypes();
                Map<? extends TypeDescription, byte[]> linkedHashMap = new LinkedHashMap<>(auxiliaryTypes);
                for (TypeDescription typeDescription : auxiliaryTypes.keySet()) {
                    if (!typeDescription.getDeclaredAnnotations().isAnnotationPresent(AuxiliaryType.SignatureRelevant.class)) {
                        linkedHashMap.remove(typeDescription);
                    }
                }
                if (!linkedHashMap.isEmpty()) {
                    ClassInjector resolve = injectionStrategy.resolve(classLoader, protectionDomain);
                    Map<TypeDescription, LoadedTypeInitializer> loadedTypeInitializers = dynamicType.getLoadedTypeInitializers();
                    for (Map.Entry<TypeDescription, Class<?>> entry : resolve.inject(linkedHashMap).entrySet()) {
                        loadedTypeInitializers.get(entry.getKey()).onLoad(entry.getValue());
                    }
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface InjectionStrategy {

        /* loaded from: classes2.dex */
        public enum Disabled implements InjectionStrategy {
            INSTANCE;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InjectionStrategy
            public ClassInjector resolve(@MaybeNull ClassLoader classLoader, @MaybeNull ProtectionDomain protectionDomain) {
                throw new IllegalStateException("Class injection is disabled");
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class UsingInstrumentation implements InjectionStrategy {
            private final File folder;
            private final Instrumentation instrumentation;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    UsingInstrumentation usingInstrumentation = (UsingInstrumentation) obj;
                    return this.instrumentation.equals(usingInstrumentation.instrumentation) && this.folder.equals(usingInstrumentation.folder);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.instrumentation.hashCode()) * 31) + this.folder.hashCode();
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InjectionStrategy
            public ClassInjector resolve(@MaybeNull ClassLoader classLoader, @MaybeNull ProtectionDomain protectionDomain) {
                if (classLoader == null) {
                    return ClassInjector.UsingInstrumentation.m15150of(this.folder, ClassInjector.UsingInstrumentation.Target.BOOTSTRAP, this.instrumentation);
                }
                return UsingReflection.INSTANCE.resolve(classLoader, protectionDomain);
            }

            public UsingInstrumentation(Instrumentation instrumentation, File file) {
                this.instrumentation = instrumentation;
                this.folder = file;
            }
        }

        /* loaded from: classes2.dex */
        public enum UsingReflection implements InjectionStrategy {
            INSTANCE;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InjectionStrategy
            public ClassInjector resolve(@MaybeNull ClassLoader classLoader, @MaybeNull ProtectionDomain protectionDomain) {
                if (classLoader != null) {
                    if (ClassInjector.UsingReflection.isAvailable()) {
                        return new ClassInjector.UsingReflection(classLoader, protectionDomain);
                    }
                    throw new IllegalStateException("Reflection-based injection is not available on the current VM");
                }
                throw new IllegalStateException("Cannot inject auxiliary class into bootstrap loader using reflection");
            }
        }

        /* loaded from: classes2.dex */
        public enum UsingUnsafe implements InjectionStrategy {
            INSTANCE;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class OfFactory implements InjectionStrategy {
                private final ClassInjector.UsingUnsafe.Factory factory;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.factory.equals(((OfFactory) obj).factory);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.factory.hashCode();
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.InjectionStrategy
                public ClassInjector resolve(@MaybeNull ClassLoader classLoader, @MaybeNull ProtectionDomain protectionDomain) {
                    return this.factory.make(classLoader, protectionDomain);
                }

                public OfFactory(ClassInjector.UsingUnsafe.Factory factory) {
                    this.factory = factory;
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InjectionStrategy
            public ClassInjector resolve(@MaybeNull ClassLoader classLoader, @MaybeNull ProtectionDomain protectionDomain) {
                if (ClassInjector.UsingUnsafe.isAvailable()) {
                    return new ClassInjector.UsingUnsafe(classLoader, protectionDomain);
                }
                throw new IllegalStateException("Unsafe-based injection is not available on the current VM");
            }
        }

        ClassInjector resolve(@MaybeNull ClassLoader classLoader, @MaybeNull ProtectionDomain protectionDomain);

        /* loaded from: classes2.dex */
        public enum UsingJna implements InjectionStrategy {
            INSTANCE;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InjectionStrategy
            public ClassInjector resolve(@MaybeNull ClassLoader classLoader, @MaybeNull ProtectionDomain protectionDomain) {
                if (ClassInjector.UsingJna.isAvailable()) {
                    return new ClassInjector.UsingJna(classLoader, protectionDomain);
                }
                throw new IllegalStateException("JNA-based injection is not available on the current VM");
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface InstallationListener {
        @AlwaysNull
        public static final Throwable SUPPRESS_ERROR = null;

        /* loaded from: classes2.dex */
        public static abstract class Adapter implements InstallationListener {
            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onAfterWarmUp(Map<Class<?>, byte[]> map, ResettableClassFileTransformer resettableClassFileTransformer, boolean z) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onBeforeInstall(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onBeforeWarmUp(Set<Class<?>> set, ResettableClassFileTransformer resettableClassFileTransformer) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public Throwable onError(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer, Throwable th) {
                return th;
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onInstall(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onReset(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onWarmUpError(Class<?> cls, ResettableClassFileTransformer resettableClassFileTransformer, Throwable th) {
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Compound implements InstallationListener {
            private final List<InstallationListener> installationListeners;

            public Compound(InstallationListener... installationListenerArr) {
                this(Arrays.asList(installationListenerArr));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.installationListeners.equals(((Compound) obj).installationListeners);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.installationListeners.hashCode();
            }

            public Compound(List<? extends InstallationListener> list) {
                this.installationListeners = new ArrayList();
                for (InstallationListener installationListener : list) {
                    if (installationListener instanceof Compound) {
                        this.installationListeners.addAll(((Compound) installationListener).installationListeners);
                    } else if (!(installationListener instanceof NoOp)) {
                        this.installationListeners.add(installationListener);
                    }
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onAfterWarmUp(Map<Class<?>, byte[]> map, ResettableClassFileTransformer resettableClassFileTransformer, boolean z) {
                for (InstallationListener installationListener : this.installationListeners) {
                    installationListener.onAfterWarmUp(map, resettableClassFileTransformer, z);
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onBeforeInstall(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer) {
                for (InstallationListener installationListener : this.installationListeners) {
                    installationListener.onBeforeInstall(instrumentation, resettableClassFileTransformer);
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onBeforeWarmUp(Set<Class<?>> set, ResettableClassFileTransformer resettableClassFileTransformer) {
                for (InstallationListener installationListener : this.installationListeners) {
                    installationListener.onBeforeWarmUp(set, resettableClassFileTransformer);
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            @MaybeNull
            public Throwable onError(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer, Throwable th) {
                for (InstallationListener installationListener : this.installationListeners) {
                    Throwable th2 = InstallationListener.SUPPRESS_ERROR;
                    if (th == th2) {
                        return th2;
                    }
                    th = installationListener.onError(instrumentation, resettableClassFileTransformer, th);
                }
                return th;
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onInstall(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer) {
                for (InstallationListener installationListener : this.installationListeners) {
                    installationListener.onInstall(instrumentation, resettableClassFileTransformer);
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onReset(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer) {
                for (InstallationListener installationListener : this.installationListeners) {
                    installationListener.onReset(instrumentation, resettableClassFileTransformer);
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onWarmUpError(Class<?> cls, ResettableClassFileTransformer resettableClassFileTransformer, Throwable th) {
                for (InstallationListener installationListener : this.installationListeners) {
                    installationListener.onWarmUpError(cls, resettableClassFileTransformer, th);
                }
            }
        }

        /* loaded from: classes2.dex */
        public enum ErrorSuppressing implements InstallationListener {
            INSTANCE;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onAfterWarmUp(Map<Class<?>, byte[]> map, ResettableClassFileTransformer resettableClassFileTransformer, boolean z) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onBeforeInstall(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onBeforeWarmUp(Set<Class<?>> set, ResettableClassFileTransformer resettableClassFileTransformer) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            @MaybeNull
            public Throwable onError(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer, Throwable th) {
                return InstallationListener.SUPPRESS_ERROR;
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onInstall(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onReset(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onWarmUpError(Class<?> cls, ResettableClassFileTransformer resettableClassFileTransformer, Throwable th) {
            }
        }

        /* loaded from: classes2.dex */
        public enum NoOp implements InstallationListener {
            INSTANCE;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onAfterWarmUp(Map<Class<?>, byte[]> map, ResettableClassFileTransformer resettableClassFileTransformer, boolean z) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onBeforeInstall(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onBeforeWarmUp(Set<Class<?>> set, ResettableClassFileTransformer resettableClassFileTransformer) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public Throwable onError(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer, Throwable th) {
                return th;
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onInstall(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onReset(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onWarmUpError(Class<?> cls, ResettableClassFileTransformer resettableClassFileTransformer, Throwable th) {
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class StreamWriting implements InstallationListener {
            public static final String PREFIX = "[Byte Buddy]";
            private final PrintStream printStream;

            public static InstallationListener toSystemError() {
                return new StreamWriting(System.err);
            }

            public static InstallationListener toSystemOut() {
                return new StreamWriting(System.out);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.printStream.equals(((StreamWriting) obj).printStream);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.printStream.hashCode();
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onAfterWarmUp(Map<Class<?>, byte[]> map, ResettableClassFileTransformer resettableClassFileTransformer, boolean z) {
                PrintStream printStream = this.printStream;
                Object[] objArr = new Object[3];
                objArr[0] = z ? "transformed" : "not transformed";
                objArr[1] = resettableClassFileTransformer;
                objArr[2] = map.keySet();
                printStream.printf("[Byte Buddy] AFTER_WARMUP %s %s on %s%n", objArr);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onBeforeInstall(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer) {
                this.printStream.printf("[Byte Buddy] BEFORE_INSTALL %s on %s%n", resettableClassFileTransformer, instrumentation);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onBeforeWarmUp(Set<Class<?>> set, ResettableClassFileTransformer resettableClassFileTransformer) {
                this.printStream.printf("[Byte Buddy] BEFORE_WARMUP %s on %s%n", resettableClassFileTransformer, set);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onInstall(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer) {
                this.printStream.printf("[Byte Buddy] INSTALL %s on %s%n", resettableClassFileTransformer, instrumentation);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onReset(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer) {
                this.printStream.printf("[Byte Buddy] RESET %s on %s%n", resettableClassFileTransformer, instrumentation);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public Throwable onError(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer, Throwable th) {
                synchronized (this.printStream) {
                    this.printStream.printf("[Byte Buddy] ERROR %s on %s%n", resettableClassFileTransformer, instrumentation);
                    th.printStackTrace(this.printStream);
                }
                return th;
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
            public void onWarmUpError(Class<?> cls, ResettableClassFileTransformer resettableClassFileTransformer, Throwable th) {
                synchronized (this.printStream) {
                    this.printStream.printf("[Byte Buddy] ERROR_WARMUP %s on %s%n", resettableClassFileTransformer, cls);
                    th.printStackTrace(this.printStream);
                }
            }

            public StreamWriting(PrintStream printStream) {
                this.printStream = printStream;
            }
        }

        void onAfterWarmUp(Map<Class<?>, byte[]> map, ResettableClassFileTransformer resettableClassFileTransformer, boolean z);

        void onBeforeInstall(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer);

        void onBeforeWarmUp(Set<Class<?>> set, ResettableClassFileTransformer resettableClassFileTransformer);

        @MaybeNull
        Throwable onError(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer, Throwable th);

        void onInstall(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer);

        void onReset(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer);

        void onWarmUpError(Class<?> cls, ResettableClassFileTransformer resettableClassFileTransformer, Throwable th);
    }

    /* loaded from: classes2.dex */
    public interface Listener {
        public static final boolean LOADED = true;

        /* loaded from: classes2.dex */
        public static abstract class Adapter implements Listener {
            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onComplete(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onDiscovery(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onError(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z, Throwable th) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onIgnored(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onTransformation(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z, DynamicType dynamicType) {
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Compound implements Listener {
            private final List<Listener> listeners;

            public Compound(Listener... listenerArr) {
                this(Arrays.asList(listenerArr));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.listeners.equals(((Compound) obj).listeners);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.listeners.hashCode();
            }

            public Compound(List<? extends Listener> list) {
                this.listeners = new ArrayList();
                for (Listener listener : list) {
                    if (listener instanceof Compound) {
                        this.listeners.addAll(((Compound) listener).listeners);
                    } else if (!(listener instanceof NoOp)) {
                        this.listeners.add(listener);
                    }
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onComplete(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z) {
                for (Listener listener : this.listeners) {
                    listener.onComplete(str, classLoader, javaModule, z);
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onDiscovery(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z) {
                for (Listener listener : this.listeners) {
                    listener.onDiscovery(str, classLoader, javaModule, z);
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onError(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z, Throwable th) {
                for (Listener listener : this.listeners) {
                    listener.onError(str, classLoader, javaModule, z, th);
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onIgnored(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z) {
                for (Listener listener : this.listeners) {
                    listener.onIgnored(typeDescription, classLoader, javaModule, z);
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onTransformation(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z, DynamicType dynamicType) {
                for (Listener listener : this.listeners) {
                    listener.onTransformation(typeDescription, classLoader, javaModule, z, dynamicType);
                }
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Filtering implements Listener {
            private final Listener delegate;
            private final ElementMatcher<? super String> matcher;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Filtering filtering = (Filtering) obj;
                    return this.matcher.equals(filtering.matcher) && this.delegate.equals(filtering.delegate);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.matcher.hashCode()) * 31) + this.delegate.hashCode();
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onComplete(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z) {
                if (this.matcher.matches(str)) {
                    this.delegate.onComplete(str, classLoader, javaModule, z);
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onDiscovery(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z) {
                if (this.matcher.matches(str)) {
                    this.delegate.onDiscovery(str, classLoader, javaModule, z);
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onError(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z, Throwable th) {
                if (this.matcher.matches(str)) {
                    this.delegate.onError(str, classLoader, javaModule, z, th);
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onIgnored(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z) {
                if (this.matcher.matches(typeDescription.getName())) {
                    this.delegate.onIgnored(typeDescription, classLoader, javaModule, z);
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onTransformation(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z, DynamicType dynamicType) {
                if (this.matcher.matches(typeDescription.getName())) {
                    this.delegate.onTransformation(typeDescription, classLoader, javaModule, z, dynamicType);
                }
            }

            public Filtering(ElementMatcher<? super String> elementMatcher, Listener listener) {
                this.matcher = elementMatcher;
                this.delegate = listener;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ModuleReadEdgeCompleting extends Adapter {
            private final boolean addTargetEdge;
            private final Instrumentation instrumentation;
            private final Set<? extends JavaModule> modules;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ModuleReadEdgeCompleting moduleReadEdgeCompleting = (ModuleReadEdgeCompleting) obj;
                    return this.addTargetEdge == moduleReadEdgeCompleting.addTargetEdge && this.instrumentation.equals(moduleReadEdgeCompleting.instrumentation) && this.modules.equals(moduleReadEdgeCompleting.modules);
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.instrumentation.hashCode()) * 31) + (this.addTargetEdge ? 1 : 0)) * 31) + this.modules.hashCode();
            }

            /* renamed from: of */
            public static Listener m15358of(Instrumentation instrumentation, boolean z, Class<?>... clsArr) {
                HashSet hashSet = new HashSet();
                for (Class<?> cls : clsArr) {
                    hashSet.add(JavaModule.ofType(cls));
                }
                if (hashSet.isEmpty()) {
                    return NoOp.INSTANCE;
                }
                return new ModuleReadEdgeCompleting(instrumentation, z, hashSet);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener.Adapter, net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onTransformation(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z, DynamicType dynamicType) {
                Map emptyMap;
                if (javaModule != JavaModule.UNSUPPORTED && javaModule.isNamed()) {
                    for (JavaModule javaModule2 : this.modules) {
                        if (!javaModule.canRead(javaModule2) || (this.addTargetEdge && !javaModule.isOpened(typeDescription.getPackage(), javaModule2))) {
                            PackageDescription packageDescription = typeDescription.getPackage();
                            Instrumentation instrumentation = this.instrumentation;
                            Set singleton = Collections.singleton(javaModule2);
                            Map emptyMap2 = Collections.emptyMap();
                            if (this.addTargetEdge && packageDescription != null) {
                                emptyMap = Collections.singletonMap(packageDescription.getName(), Collections.singleton(javaModule2));
                            } else {
                                emptyMap = Collections.emptyMap();
                            }
                            ClassInjector.UsingInstrumentation.redefineModule(instrumentation, javaModule, singleton, emptyMap2, emptyMap, Collections.emptySet(), Collections.emptyMap());
                        }
                        if (this.addTargetEdge && !javaModule2.canRead(javaModule)) {
                            ClassInjector.UsingInstrumentation.redefineModule(this.instrumentation, javaModule2, Collections.singleton(javaModule), Collections.emptyMap(), Collections.emptyMap(), Collections.emptySet(), Collections.emptyMap());
                        }
                    }
                }
            }

            public ModuleReadEdgeCompleting(Instrumentation instrumentation, boolean z, Set<? extends JavaModule> set) {
                this.instrumentation = instrumentation;
                this.addTargetEdge = z;
                this.modules = set;
            }
        }

        /* loaded from: classes2.dex */
        public enum NoOp implements Listener {
            INSTANCE;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onComplete(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onDiscovery(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onError(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z, Throwable th) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onIgnored(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onTransformation(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z, DynamicType dynamicType) {
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class StreamWriting implements Listener {
            public static final String PREFIX = "[Byte Buddy]";
            private final PrintStream printStream;

            public static StreamWriting toSystemError() {
                return new StreamWriting(System.err);
            }

            public static StreamWriting toSystemOut() {
                return new StreamWriting(System.out);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.printStream.equals(((StreamWriting) obj).printStream);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.printStream.hashCode();
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onComplete(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z) {
                this.printStream.printf("[Byte Buddy] COMPLETE %s [%s, %s, %s, loaded=%b]%n", str, classLoader, javaModule, Thread.currentThread(), Boolean.valueOf(z));
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onDiscovery(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z) {
                this.printStream.printf("[Byte Buddy] DISCOVERY %s [%s, %s, %s, loaded=%b]%n", str, classLoader, javaModule, Thread.currentThread(), Boolean.valueOf(z));
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onIgnored(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z) {
                this.printStream.printf("[Byte Buddy] IGNORE %s [%s, %s, %s, loaded=%b]%n", typeDescription.getName(), classLoader, javaModule, Thread.currentThread(), Boolean.valueOf(z));
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onTransformation(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z, DynamicType dynamicType) {
                this.printStream.printf("[Byte Buddy] TRANSFORM %s [%s, %s, %s, loaded=%b]%n", typeDescription.getName(), classLoader, javaModule, Thread.currentThread(), Boolean.valueOf(z));
            }

            public Listener withErrorsOnly() {
                return new WithErrorsOnly(this);
            }

            public Listener withTransformationsOnly() {
                return new WithTransformationsOnly(this);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onError(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z, Throwable th) {
                synchronized (this.printStream) {
                    this.printStream.printf("[Byte Buddy] ERROR %s [%s, %s, %s, loaded=%b]%n", str, classLoader, javaModule, Thread.currentThread(), Boolean.valueOf(z));
                    th.printStackTrace(this.printStream);
                }
            }

            public StreamWriting(PrintStream printStream) {
                this.printStream = printStream;
            }
        }

        void onComplete(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z);

        void onDiscovery(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z);

        void onError(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z, Throwable th);

        void onIgnored(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z);

        void onTransformation(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z, DynamicType dynamicType);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class WithErrorsOnly extends Adapter {
            private final Listener delegate;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.delegate.equals(((WithErrorsOnly) obj).delegate);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.delegate.hashCode();
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener.Adapter, net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onError(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z, Throwable th) {
                this.delegate.onError(str, classLoader, javaModule, z, th);
            }

            public WithErrorsOnly(Listener listener) {
                this.delegate = listener;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class WithTransformationsOnly extends Adapter {
            private final Listener delegate;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.delegate.equals(((WithTransformationsOnly) obj).delegate);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.delegate.hashCode();
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener.Adapter, net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onError(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z, Throwable th) {
                this.delegate.onError(str, classLoader, javaModule, z, th);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener.Adapter, net.bytebuddy.agent.builder.AgentBuilder.Listener
            public void onTransformation(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z, DynamicType dynamicType) {
                this.delegate.onTransformation(typeDescription, classLoader, javaModule, z, dynamicType);
            }

            public WithTransformationsOnly(Listener listener) {
                this.delegate = listener;
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface LocationStrategy {

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Compound implements LocationStrategy {
            private final List<LocationStrategy> locationStrategies;

            public Compound(LocationStrategy... locationStrategyArr) {
                this(Arrays.asList(locationStrategyArr));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.locationStrategies.equals(((Compound) obj).locationStrategies);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.locationStrategies.hashCode();
            }

            public Compound(List<? extends LocationStrategy> list) {
                this.locationStrategies = new ArrayList();
                for (LocationStrategy locationStrategy : list) {
                    if (locationStrategy instanceof Compound) {
                        this.locationStrategies.addAll(((Compound) locationStrategy).locationStrategies);
                    } else if (!(locationStrategy instanceof NoOp)) {
                        this.locationStrategies.add(locationStrategy);
                    }
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.LocationStrategy
            public ClassFileLocator classFileLocator(@MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule) {
                ArrayList arrayList = new ArrayList(this.locationStrategies.size());
                for (LocationStrategy locationStrategy : this.locationStrategies) {
                    arrayList.add(locationStrategy.classFileLocator(classLoader, javaModule));
                }
                return new ClassFileLocator.Compound(arrayList);
            }
        }

        /* loaded from: classes2.dex */
        public enum ForClassLoader implements LocationStrategy {
            STRONG { // from class: net.bytebuddy.agent.builder.AgentBuilder.LocationStrategy.ForClassLoader.1
                @Override // net.bytebuddy.agent.builder.AgentBuilder.LocationStrategy
                public ClassFileLocator classFileLocator(@MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule) {
                    return ClassFileLocator.ForClassLoader.m15176of(classLoader);
                }
            },
            WEAK { // from class: net.bytebuddy.agent.builder.AgentBuilder.LocationStrategy.ForClassLoader.2
                @Override // net.bytebuddy.agent.builder.AgentBuilder.LocationStrategy
                public ClassFileLocator classFileLocator(@MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule) {
                    return ClassFileLocator.ForClassLoader.WeaklyReferenced.m15175of(classLoader);
                }
            };

            public LocationStrategy withFallbackTo(ClassFileLocator... classFileLocatorArr) {
                return withFallbackTo((Collection<? extends ClassFileLocator>) Arrays.asList(classFileLocatorArr));
            }

            public LocationStrategy withFallbackTo(Collection<? extends ClassFileLocator> collection) {
                ArrayList arrayList = new ArrayList(collection.size());
                for (ClassFileLocator classFileLocator : collection) {
                    arrayList.add(new Simple(classFileLocator));
                }
                return withFallbackTo((List<? extends LocationStrategy>) arrayList);
            }

            public LocationStrategy withFallbackTo(LocationStrategy... locationStrategyArr) {
                return withFallbackTo(Arrays.asList(locationStrategyArr));
            }

            public LocationStrategy withFallbackTo(List<? extends LocationStrategy> list) {
                ArrayList arrayList = new ArrayList(list.size() + 1);
                arrayList.add(this);
                arrayList.addAll(list);
                return new Compound(arrayList);
            }
        }

        /* loaded from: classes2.dex */
        public enum NoOp implements LocationStrategy {
            INSTANCE;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.LocationStrategy
            public ClassFileLocator classFileLocator(@MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule) {
                return ClassFileLocator.NoOp.INSTANCE;
            }
        }

        ClassFileLocator classFileLocator(@MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Simple implements LocationStrategy {
            private final ClassFileLocator classFileLocator;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.LocationStrategy
            public ClassFileLocator classFileLocator(@MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule) {
                return this.classFileLocator;
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.classFileLocator.equals(((Simple) obj).classFileLocator);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.classFileLocator.hashCode();
            }

            public Simple(ClassFileLocator classFileLocator) {
                this.classFileLocator = classFileLocator;
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface Matchable<T extends Matchable<T>> {
        T and(RawMatcher rawMatcher);

        T and(ElementMatcher<? super TypeDescription> elementMatcher);

        T and(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2);

        T and(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2, ElementMatcher<? super JavaModule> elementMatcher3);

        /* renamed from: or */
        T mo15357or(RawMatcher rawMatcher);

        /* renamed from: or */
        T mo15356or(ElementMatcher<? super TypeDescription> elementMatcher);

        /* renamed from: or */
        T mo15355or(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2);

        /* renamed from: or */
        T mo15354or(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2, ElementMatcher<? super JavaModule> elementMatcher3);
    }

    /* loaded from: classes2.dex */
    public interface PoolStrategy {

        /* loaded from: classes2.dex */
        public enum ClassLoading implements PoolStrategy {
            EXTENDED(TypePool.Default.ReaderMode.EXTENDED),
            FAST(TypePool.Default.ReaderMode.FAST);
            
            private final TypePool.Default.ReaderMode readerMode;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.PoolStrategy
            public TypePool typePool(ClassFileLocator classFileLocator, @MaybeNull ClassLoader classLoader) {
                return TypePool.ClassLoading.m14816of(classLoader, new TypePool.Default.WithLazyResolution(TypePool.CacheProvider.Simple.withObjectType(), classFileLocator, this.readerMode));
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.PoolStrategy
            public TypePool typePool(ClassFileLocator classFileLocator, @MaybeNull ClassLoader classLoader, String str) {
                return typePool(classFileLocator, classLoader);
            }

            ClassLoading(TypePool.Default.ReaderMode readerMode) {
                this.readerMode = readerMode;
            }
        }

        /* loaded from: classes2.dex */
        public enum Default implements PoolStrategy {
            EXTENDED(TypePool.Default.ReaderMode.EXTENDED),
            FAST(TypePool.Default.ReaderMode.FAST);
            
            private final TypePool.Default.ReaderMode readerMode;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.PoolStrategy
            public TypePool typePool(ClassFileLocator classFileLocator, @MaybeNull ClassLoader classLoader) {
                return new TypePool.Default.WithLazyResolution(TypePool.CacheProvider.Simple.withObjectType(), classFileLocator, this.readerMode);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.PoolStrategy
            public TypePool typePool(ClassFileLocator classFileLocator, @MaybeNull ClassLoader classLoader, String str) {
                return typePool(classFileLocator, classLoader);
            }

            Default(TypePool.Default.ReaderMode readerMode) {
                this.readerMode = readerMode;
            }
        }

        /* loaded from: classes2.dex */
        public enum Eager implements PoolStrategy {
            EXTENDED(TypePool.Default.ReaderMode.EXTENDED),
            FAST(TypePool.Default.ReaderMode.FAST);
            
            private final TypePool.Default.ReaderMode readerMode;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.PoolStrategy
            public TypePool typePool(ClassFileLocator classFileLocator, @MaybeNull ClassLoader classLoader) {
                return new TypePool.Default(TypePool.CacheProvider.Simple.withObjectType(), classFileLocator, this.readerMode);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.PoolStrategy
            public TypePool typePool(ClassFileLocator classFileLocator, @MaybeNull ClassLoader classLoader, String str) {
                return typePool(classFileLocator, classLoader);
            }

            Eager(TypePool.Default.ReaderMode readerMode) {
                this.readerMode = readerMode;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static abstract class WithTypePoolCache implements PoolStrategy {
            public final TypePool.Default.ReaderMode readerMode;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Simple extends WithTypePoolCache {
                private final ConcurrentMap<? super ClassLoader, TypePool.CacheProvider> cacheProviders;

                public Simple(ConcurrentMap<? super ClassLoader, TypePool.CacheProvider> concurrentMap) {
                    this(TypePool.Default.ReaderMode.FAST, concurrentMap);
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.PoolStrategy.WithTypePoolCache
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.cacheProviders.equals(((Simple) obj).cacheProviders);
                    }
                    return false;
                }

                public ClassLoader getBootstrapMarkerLoader() {
                    return ClassLoader.getSystemClassLoader();
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.PoolStrategy.WithTypePoolCache
                public int hashCode() {
                    return (super.hashCode() * 31) + this.cacheProviders.hashCode();
                }

                public Simple(TypePool.Default.ReaderMode readerMode, ConcurrentMap<? super ClassLoader, TypePool.CacheProvider> concurrentMap) {
                    super(readerMode);
                    this.cacheProviders = concurrentMap;
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.PoolStrategy.WithTypePoolCache
                public TypePool.CacheProvider locate(@MaybeNull ClassLoader classLoader) {
                    if (classLoader == null) {
                        classLoader = getBootstrapMarkerLoader();
                    }
                    TypePool.CacheProvider cacheProvider = this.cacheProviders.get(classLoader);
                    while (cacheProvider == null) {
                        cacheProvider = TypePool.CacheProvider.Simple.withObjectType();
                        TypePool.CacheProvider putIfAbsent = this.cacheProviders.putIfAbsent(classLoader, cacheProvider);
                        if (putIfAbsent != null) {
                            cacheProvider = putIfAbsent;
                        }
                    }
                    return cacheProvider;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.readerMode.equals(((WithTypePoolCache) obj).readerMode);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.readerMode.hashCode();
            }

            public abstract TypePool.CacheProvider locate(@MaybeNull ClassLoader classLoader);

            @Override // net.bytebuddy.agent.builder.AgentBuilder.PoolStrategy
            public TypePool typePool(ClassFileLocator classFileLocator, @MaybeNull ClassLoader classLoader) {
                return new TypePool.Default.WithLazyResolution(locate(classLoader), classFileLocator, this.readerMode);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.PoolStrategy
            public TypePool typePool(ClassFileLocator classFileLocator, @MaybeNull ClassLoader classLoader, String str) {
                return new TypePool.Default.WithLazyResolution(new TypePool.CacheProvider.Discriminating(ElementMatchers.m14829is(str), new TypePool.CacheProvider.Simple(), locate(classLoader)), classFileLocator, this.readerMode);
            }

            public WithTypePoolCache(TypePool.Default.ReaderMode readerMode) {
                this.readerMode = readerMode;
            }
        }

        TypePool typePool(ClassFileLocator classFileLocator, @MaybeNull ClassLoader classLoader);

        TypePool typePool(ClassFileLocator classFileLocator, @MaybeNull ClassLoader classLoader, String str);
    }

    /* loaded from: classes2.dex */
    public interface RawMatcher {

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Conjunction implements RawMatcher {
            private final List<RawMatcher> matchers;

            public Conjunction(RawMatcher... rawMatcherArr) {
                this(Arrays.asList(rawMatcherArr));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.matchers.equals(((Conjunction) obj).matchers);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.matchers.hashCode();
            }

            public Conjunction(List<? extends RawMatcher> list) {
                this.matchers = new ArrayList(list.size());
                for (RawMatcher rawMatcher : list) {
                    if (rawMatcher instanceof Conjunction) {
                        this.matchers.addAll(((Conjunction) rawMatcher).matchers);
                    } else if (rawMatcher != Trivial.MATCHING) {
                        this.matchers.add(rawMatcher);
                    }
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.RawMatcher
            public boolean matches(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain) {
                for (RawMatcher rawMatcher : this.matchers) {
                    if (!rawMatcher.matches(typeDescription, classLoader, javaModule, cls, protectionDomain)) {
                        return false;
                    }
                }
                return true;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Disjunction implements RawMatcher {
            private final List<RawMatcher> matchers;

            public Disjunction(RawMatcher... rawMatcherArr) {
                this(Arrays.asList(rawMatcherArr));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.matchers.equals(((Disjunction) obj).matchers);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.matchers.hashCode();
            }

            public Disjunction(List<? extends RawMatcher> list) {
                this.matchers = new ArrayList(list.size());
                for (RawMatcher rawMatcher : list) {
                    if (rawMatcher instanceof Disjunction) {
                        this.matchers.addAll(((Disjunction) rawMatcher).matchers);
                    } else if (rawMatcher != Trivial.NON_MATCHING) {
                        this.matchers.add(rawMatcher);
                    }
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.RawMatcher
            public boolean matches(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain) {
                for (RawMatcher rawMatcher : this.matchers) {
                    if (rawMatcher.matches(typeDescription, classLoader, javaModule, cls, protectionDomain)) {
                        return true;
                    }
                }
                return false;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForElementMatchers implements RawMatcher {
            private final ElementMatcher<? super ClassLoader> classLoaderMatcher;
            private final ElementMatcher<? super JavaModule> moduleMatcher;
            private final ElementMatcher<? super TypeDescription> typeMatcher;

            public ForElementMatchers(ElementMatcher<? super TypeDescription> elementMatcher) {
                this(elementMatcher, ElementMatchers.any());
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForElementMatchers forElementMatchers = (ForElementMatchers) obj;
                    return this.typeMatcher.equals(forElementMatchers.typeMatcher) && this.classLoaderMatcher.equals(forElementMatchers.classLoaderMatcher) && this.moduleMatcher.equals(forElementMatchers.moduleMatcher);
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.typeMatcher.hashCode()) * 31) + this.classLoaderMatcher.hashCode()) * 31) + this.moduleMatcher.hashCode();
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.RawMatcher
            public boolean matches(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain) {
                return this.moduleMatcher.matches(javaModule) && this.classLoaderMatcher.matches(classLoader) && this.typeMatcher.matches(typeDescription);
            }

            public ForElementMatchers(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2) {
                this(elementMatcher, elementMatcher2, ElementMatchers.any());
            }

            public ForElementMatchers(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2, ElementMatcher<? super JavaModule> elementMatcher3) {
                this.typeMatcher = elementMatcher;
                this.classLoaderMatcher = elementMatcher2;
                this.moduleMatcher = elementMatcher3;
            }
        }

        /* loaded from: classes2.dex */
        public enum ForResolvableTypes implements RawMatcher {
            INSTANCE;

            public RawMatcher inverted() {
                return new Inversion(this);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.RawMatcher
            public boolean matches(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain) {
                if (cls != null) {
                    try {
                        return Class.forName(cls.getName(), true, classLoader) == cls;
                    } catch (Throwable unused) {
                        return false;
                    }
                }
                return true;
            }
        }

        boolean matches(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain);

        /* loaded from: classes2.dex */
        public enum ForLoadState implements RawMatcher {
            LOADED(false),
            UNLOADED(true);
            
            private final boolean unloaded;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.RawMatcher
            public boolean matches(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain) {
                return (cls == null) == this.unloaded;
            }

            ForLoadState(boolean z) {
                this.unloaded = z;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Inversion implements RawMatcher {
            private final RawMatcher matcher;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.matcher.equals(((Inversion) obj).matcher);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.matcher.hashCode();
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.RawMatcher
            public boolean matches(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain) {
                return !this.matcher.matches(typeDescription, classLoader, javaModule, cls, protectionDomain);
            }

            public Inversion(RawMatcher rawMatcher) {
                this.matcher = rawMatcher;
            }
        }

        /* loaded from: classes2.dex */
        public enum Trivial implements RawMatcher {
            MATCHING(true),
            NON_MATCHING(false);
            
            private final boolean matches;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.RawMatcher
            public boolean matches(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain) {
                return this.matches;
            }

            Trivial(boolean z) {
                this.matches = z;
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface RedefinitionListenable extends AgentBuilder {

        /* loaded from: classes2.dex */
        public interface ResubmissionImmediateMatcher {

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Conjunction implements ResubmissionImmediateMatcher {
                private final List<ResubmissionImmediateMatcher> matchers;

                public Conjunction(ResubmissionImmediateMatcher... resubmissionImmediateMatcherArr) {
                    this(Arrays.asList(resubmissionImmediateMatcherArr));
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.matchers.equals(((Conjunction) obj).matchers);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.matchers.hashCode();
                }

                public Conjunction(List<? extends ResubmissionImmediateMatcher> list) {
                    this.matchers = new ArrayList(list.size());
                    for (ResubmissionImmediateMatcher resubmissionImmediateMatcher : list) {
                        if (resubmissionImmediateMatcher instanceof Conjunction) {
                            this.matchers.addAll(((Conjunction) resubmissionImmediateMatcher).matchers);
                        } else if (resubmissionImmediateMatcher != Trivial.NON_MATCHING) {
                            this.matchers.add(resubmissionImmediateMatcher);
                        }
                    }
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.ResubmissionImmediateMatcher
                public boolean matches(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule) {
                    for (ResubmissionImmediateMatcher resubmissionImmediateMatcher : this.matchers) {
                        if (!resubmissionImmediateMatcher.matches(str, classLoader, javaModule)) {
                            return false;
                        }
                    }
                    return true;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Disjunction implements ResubmissionImmediateMatcher {
                private final List<ResubmissionImmediateMatcher> matchers;

                public Disjunction(ResubmissionImmediateMatcher... resubmissionImmediateMatcherArr) {
                    this(Arrays.asList(resubmissionImmediateMatcherArr));
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.matchers.equals(((Disjunction) obj).matchers);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.matchers.hashCode();
                }

                public Disjunction(List<? extends ResubmissionImmediateMatcher> list) {
                    this.matchers = new ArrayList(list.size());
                    for (ResubmissionImmediateMatcher resubmissionImmediateMatcher : list) {
                        if (resubmissionImmediateMatcher instanceof Disjunction) {
                            this.matchers.addAll(((Disjunction) resubmissionImmediateMatcher).matchers);
                        } else if (resubmissionImmediateMatcher != Trivial.NON_MATCHING) {
                            this.matchers.add(resubmissionImmediateMatcher);
                        }
                    }
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.ResubmissionImmediateMatcher
                public boolean matches(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule) {
                    for (ResubmissionImmediateMatcher resubmissionImmediateMatcher : this.matchers) {
                        if (resubmissionImmediateMatcher.matches(str, classLoader, javaModule)) {
                            return true;
                        }
                    }
                    return false;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForElementMatchers implements ResubmissionImmediateMatcher {
                private final ElementMatcher<? super ClassLoader> classLoaderMatcher;
                private final ElementMatcher<? super JavaModule> moduleMatcher;
                private final ElementMatcher<String> typeNameMatcher;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        ForElementMatchers forElementMatchers = (ForElementMatchers) obj;
                        return this.typeNameMatcher.equals(forElementMatchers.typeNameMatcher) && this.classLoaderMatcher.equals(forElementMatchers.classLoaderMatcher) && this.moduleMatcher.equals(forElementMatchers.moduleMatcher);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((getClass().hashCode() * 31) + this.typeNameMatcher.hashCode()) * 31) + this.classLoaderMatcher.hashCode()) * 31) + this.moduleMatcher.hashCode();
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.ResubmissionImmediateMatcher
                public boolean matches(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule) {
                    if (this.typeNameMatcher.matches(str) && this.classLoaderMatcher.matches(classLoader) && this.moduleMatcher.matches(javaModule)) {
                        return true;
                    }
                    return false;
                }

                public ForElementMatchers(ElementMatcher<String> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2, ElementMatcher<? super JavaModule> elementMatcher3) {
                    this.typeNameMatcher = elementMatcher;
                    this.classLoaderMatcher = elementMatcher2;
                    this.moduleMatcher = elementMatcher3;
                }
            }

            boolean matches(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule);

            /* loaded from: classes2.dex */
            public enum Trivial implements ResubmissionImmediateMatcher {
                MATCHING(true),
                NON_MATCHING(false);
                
                private final boolean matching;

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.ResubmissionImmediateMatcher
                public boolean matches(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule) {
                    return this.matching;
                }

                Trivial(boolean z) {
                    this.matching = z;
                }
            }
        }

        /* loaded from: classes2.dex */
        public interface ResubmissionOnErrorMatcher {

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Conjunction implements ResubmissionOnErrorMatcher {
                private final List<ResubmissionOnErrorMatcher> matchers;

                public Conjunction(ResubmissionOnErrorMatcher... resubmissionOnErrorMatcherArr) {
                    this(Arrays.asList(resubmissionOnErrorMatcherArr));
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.matchers.equals(((Conjunction) obj).matchers);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.matchers.hashCode();
                }

                public Conjunction(List<? extends ResubmissionOnErrorMatcher> list) {
                    this.matchers = new ArrayList(list.size());
                    for (ResubmissionOnErrorMatcher resubmissionOnErrorMatcher : list) {
                        if (resubmissionOnErrorMatcher instanceof Conjunction) {
                            this.matchers.addAll(((Conjunction) resubmissionOnErrorMatcher).matchers);
                        } else if (resubmissionOnErrorMatcher != Trivial.MATCHING) {
                            this.matchers.add(resubmissionOnErrorMatcher);
                        }
                    }
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.ResubmissionOnErrorMatcher
                public boolean matches(Throwable th, String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule) {
                    for (ResubmissionOnErrorMatcher resubmissionOnErrorMatcher : this.matchers) {
                        if (!resubmissionOnErrorMatcher.matches(th, str, classLoader, javaModule)) {
                            return false;
                        }
                    }
                    return true;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Disjunction implements ResubmissionOnErrorMatcher {
                private final List<ResubmissionOnErrorMatcher> matchers;

                public Disjunction(ResubmissionOnErrorMatcher... resubmissionOnErrorMatcherArr) {
                    this(Arrays.asList(resubmissionOnErrorMatcherArr));
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.matchers.equals(((Disjunction) obj).matchers);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.matchers.hashCode();
                }

                public Disjunction(List<? extends ResubmissionOnErrorMatcher> list) {
                    this.matchers = new ArrayList(list.size());
                    for (ResubmissionOnErrorMatcher resubmissionOnErrorMatcher : list) {
                        if (resubmissionOnErrorMatcher instanceof Disjunction) {
                            this.matchers.addAll(((Disjunction) resubmissionOnErrorMatcher).matchers);
                        } else if (resubmissionOnErrorMatcher != Trivial.NON_MATCHING) {
                            this.matchers.add(resubmissionOnErrorMatcher);
                        }
                    }
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.ResubmissionOnErrorMatcher
                public boolean matches(Throwable th, String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule) {
                    for (ResubmissionOnErrorMatcher resubmissionOnErrorMatcher : this.matchers) {
                        if (resubmissionOnErrorMatcher.matches(th, str, classLoader, javaModule)) {
                            return true;
                        }
                    }
                    return false;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForElementMatchers implements ResubmissionOnErrorMatcher {
                private final ElementMatcher<? super ClassLoader> classLoaderMatcher;
                private final ElementMatcher<? super Throwable> exceptionMatcher;
                private final ElementMatcher<? super JavaModule> moduleMatcher;
                private final ElementMatcher<String> typeNameMatcher;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        ForElementMatchers forElementMatchers = (ForElementMatchers) obj;
                        return this.exceptionMatcher.equals(forElementMatchers.exceptionMatcher) && this.typeNameMatcher.equals(forElementMatchers.typeNameMatcher) && this.classLoaderMatcher.equals(forElementMatchers.classLoaderMatcher) && this.moduleMatcher.equals(forElementMatchers.moduleMatcher);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((((getClass().hashCode() * 31) + this.exceptionMatcher.hashCode()) * 31) + this.typeNameMatcher.hashCode()) * 31) + this.classLoaderMatcher.hashCode()) * 31) + this.moduleMatcher.hashCode();
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.ResubmissionOnErrorMatcher
                public boolean matches(Throwable th, String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule) {
                    if (this.exceptionMatcher.matches(th) && this.typeNameMatcher.matches(str) && this.classLoaderMatcher.matches(classLoader) && this.moduleMatcher.matches(javaModule)) {
                        return true;
                    }
                    return false;
                }

                public ForElementMatchers(ElementMatcher<? super Throwable> elementMatcher, ElementMatcher<String> elementMatcher2, ElementMatcher<? super ClassLoader> elementMatcher3, ElementMatcher<? super JavaModule> elementMatcher4) {
                    this.exceptionMatcher = elementMatcher;
                    this.typeNameMatcher = elementMatcher2;
                    this.classLoaderMatcher = elementMatcher3;
                    this.moduleMatcher = elementMatcher4;
                }
            }

            boolean matches(Throwable th, String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule);

            /* loaded from: classes2.dex */
            public enum Trivial implements ResubmissionOnErrorMatcher {
                MATCHING(true),
                NON_MATCHING(false);
                
                private final boolean matching;

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionListenable.ResubmissionOnErrorMatcher
                public boolean matches(Throwable th, String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule) {
                    return this.matching;
                }

                Trivial(boolean z) {
                    this.matching = z;
                }
            }
        }

        /* loaded from: classes2.dex */
        public interface WithImplicitDiscoveryStrategy extends RedefinitionListenable {
            RedefinitionListenable redefineOnly(Class<?>... clsArr);

            RedefinitionListenable with(RedefinitionStrategy.DiscoveryStrategy discoveryStrategy);
        }

        /* loaded from: classes2.dex */
        public interface WithResubmissionSpecification extends WithoutResubmissionSpecification, AgentBuilder {
        }

        /* loaded from: classes2.dex */
        public interface WithoutBatchStrategy extends WithImplicitDiscoveryStrategy {
            WithImplicitDiscoveryStrategy with(RedefinitionStrategy.BatchAllocator batchAllocator);
        }

        /* loaded from: classes2.dex */
        public interface WithoutResubmissionSpecification {
            WithResubmissionSpecification resubmitImmediate();

            WithResubmissionSpecification resubmitImmediate(ResubmissionImmediateMatcher resubmissionImmediateMatcher);

            WithResubmissionSpecification resubmitImmediate(ElementMatcher<String> elementMatcher);

            WithResubmissionSpecification resubmitImmediate(ElementMatcher<String> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2);

            WithResubmissionSpecification resubmitImmediate(ElementMatcher<String> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2, ElementMatcher<? super JavaModule> elementMatcher3);

            WithResubmissionSpecification resubmitOnError();

            WithResubmissionSpecification resubmitOnError(ResubmissionOnErrorMatcher resubmissionOnErrorMatcher);

            WithResubmissionSpecification resubmitOnError(ElementMatcher<? super Throwable> elementMatcher);

            WithResubmissionSpecification resubmitOnError(ElementMatcher<? super Throwable> elementMatcher, ElementMatcher<String> elementMatcher2);

            WithResubmissionSpecification resubmitOnError(ElementMatcher<? super Throwable> elementMatcher, ElementMatcher<String> elementMatcher2, ElementMatcher<? super ClassLoader> elementMatcher3);

            WithResubmissionSpecification resubmitOnError(ElementMatcher<? super Throwable> elementMatcher, ElementMatcher<String> elementMatcher2, ElementMatcher<? super ClassLoader> elementMatcher3, ElementMatcher<? super JavaModule> elementMatcher4);
        }

        RedefinitionListenable with(RedefinitionStrategy.Listener listener);

        WithoutResubmissionSpecification withResubmission(RedefinitionStrategy.ResubmissionScheduler resubmissionScheduler);
    }

    /* loaded from: classes2.dex */
    public enum RedefinitionStrategy {
        DISABLED(false, false) { // from class: net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.1
            @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy
            public void apply(Instrumentation instrumentation, PoolStrategy poolStrategy, LocationStrategy locationStrategy, DescriptionStrategy descriptionStrategy, FallbackStrategy fallbackStrategy, DiscoveryStrategy discoveryStrategy, LambdaInstrumentationStrategy lambdaInstrumentationStrategy, Listener listener, Listener listener2, RawMatcher rawMatcher, BatchAllocator batchAllocator, CircularityLock circularityLock) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy
            public void check(Instrumentation instrumentation) {
                throw new IllegalStateException("Cannot apply redefinition on disabled strategy");
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy
            public Collector make(PoolStrategy poolStrategy, LocationStrategy locationStrategy, DescriptionStrategy descriptionStrategy, FallbackStrategy fallbackStrategy, Listener listener, RawMatcher rawMatcher, CircularityLock circularityLock) {
                throw new IllegalStateException("A disabled redefinition strategy cannot create a collector");
            }
        },
        REDEFINITION(true, false) { // from class: net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.2
            @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy
            public Collector make(PoolStrategy poolStrategy, LocationStrategy locationStrategy, DescriptionStrategy descriptionStrategy, FallbackStrategy fallbackStrategy, Listener listener, RawMatcher rawMatcher, CircularityLock circularityLock) {
                return new Collector.ForRedefinition(rawMatcher, poolStrategy, locationStrategy, descriptionStrategy, listener, fallbackStrategy, circularityLock);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy
            public void check(Instrumentation instrumentation) {
                if (instrumentation.isRedefineClassesSupported()) {
                    return;
                }
                throw new IllegalStateException("Cannot apply redefinition on " + instrumentation);
            }
        },
        RETRANSFORMATION(true, true) { // from class: net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.3
            @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy
            public Collector make(PoolStrategy poolStrategy, LocationStrategy locationStrategy, DescriptionStrategy descriptionStrategy, FallbackStrategy fallbackStrategy, Listener listener, RawMatcher rawMatcher, CircularityLock circularityLock) {
                return new Collector.ForRetransformation(rawMatcher, poolStrategy, locationStrategy, descriptionStrategy, listener, fallbackStrategy, circularityLock);
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy
            public void check(Instrumentation instrumentation) {
                if (RedefinitionStrategy.DISPATCHER.isRetransformClassesSupported(instrumentation)) {
                    return;
                }
                throw new IllegalStateException("Cannot apply retransformation on " + instrumentation);
            }
        };
        
        public static final Dispatcher DISPATCHER = (Dispatcher) Default.doPrivileged(JavaDispatcher.m14754of(Dispatcher.class));
        private final boolean enabled;
        private final boolean retransforming;

        /* loaded from: classes2.dex */
        public interface BatchAllocator {
            public static final int FIRST_BATCH = 0;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForFixedSize implements BatchAllocator {
                private final int size;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.size == ((ForFixedSize) obj).size;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.size;
                }

                public static BatchAllocator ofSize(int i) {
                    if (i > 0) {
                        return new ForFixedSize(i);
                    }
                    if (i == 0) {
                        return ForTotal.INSTANCE;
                    }
                    throw new IllegalArgumentException("Cannot define a batch with a negative size: " + i);
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.BatchAllocator
                public Iterable<? extends List<Class<?>>> batch(List<Class<?>> list) {
                    ArrayList arrayList = new ArrayList();
                    int i = 0;
                    while (i < list.size()) {
                        arrayList.add(new ArrayList(list.subList(i, Math.min(list.size(), this.size + i))));
                        i += this.size;
                    }
                    return arrayList;
                }

                public ForFixedSize(int i) {
                    this.size = i;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForMatchedGrouping implements BatchAllocator {
                private final Collection<? extends ElementMatcher<? super TypeDescription>> matchers;

                public ForMatchedGrouping(ElementMatcher<? super TypeDescription>... elementMatcherArr) {
                    this(new LinkedHashSet(Arrays.asList(elementMatcherArr)));
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.matchers.equals(((ForMatchedGrouping) obj).matchers);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.matchers.hashCode();
                }

                public BatchAllocator withMaximum(int i) {
                    return Slicing.withMaximum(i, this);
                }

                public BatchAllocator withMinimum(int i) {
                    return Slicing.withMinimum(i, this);
                }

                public BatchAllocator withinRange(int i, int i2) {
                    return Slicing.withinRange(i, i2, this);
                }

                public ForMatchedGrouping(Collection<? extends ElementMatcher<? super TypeDescription>> collection) {
                    this.matchers = collection;
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.BatchAllocator
                public Iterable<? extends List<Class<?>>> batch(List<Class<?>> list) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    ArrayList arrayList = new ArrayList();
                    for (ElementMatcher<? super TypeDescription> elementMatcher : this.matchers) {
                        linkedHashMap.put(elementMatcher, new ArrayList());
                    }
                    for (Class<?> cls : list) {
                        Iterator<? extends ElementMatcher<? super TypeDescription>> it = this.matchers.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                ElementMatcher<? super TypeDescription> next = it.next();
                                if (next.matches(TypeDescription.ForLoadedType.m15196of(cls))) {
                                    ((List) linkedHashMap.get(next)).add(cls);
                                    break;
                                }
                            } else {
                                arrayList.add(cls);
                                break;
                            }
                        }
                    }
                    ArrayList arrayList2 = new ArrayList(this.matchers.size() + 1);
                    for (List list2 : linkedHashMap.values()) {
                        if (!list2.isEmpty()) {
                            arrayList2.add(list2);
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        arrayList2.add(arrayList);
                    }
                    return arrayList2;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Slicing implements BatchAllocator {
                private final BatchAllocator batchAllocator;
                private final int maximum;
                private final int minimum;

                public static BatchAllocator withMaximum(int i, BatchAllocator batchAllocator) {
                    return withinRange(1, i, batchAllocator);
                }

                public static BatchAllocator withMinimum(int i, BatchAllocator batchAllocator) {
                    return withinRange(i, Integer.MAX_VALUE, batchAllocator);
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.BatchAllocator
                public Iterable<? extends List<Class<?>>> batch(List<Class<?>> list) {
                    return new SlicingIterable(this.minimum, this.maximum, this.batchAllocator.batch(list));
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Slicing slicing = (Slicing) obj;
                        return this.minimum == slicing.minimum && this.maximum == slicing.maximum && this.batchAllocator.equals(slicing.batchAllocator);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((getClass().hashCode() * 31) + this.minimum) * 31) + this.maximum) * 31) + this.batchAllocator.hashCode();
                }

                /* loaded from: classes2.dex */
                public static class SlicingIterable implements Iterable<List<Class<?>>> {
                    private final Iterable<? extends List<Class<?>>> iterable;
                    private final int maximum;
                    private final int minimum;

                    /* loaded from: classes2.dex */
                    public static class SlicingIterator implements Iterator<List<Class<?>>> {
                        private List<Class<?>> buffer = new ArrayList();
                        private final Iterator<? extends List<Class<?>>> iterator;
                        private final int maximum;
                        private final int minimum;

                        @Override // java.util.Iterator
                        public boolean hasNext() {
                            return !this.buffer.isEmpty() || this.iterator.hasNext();
                        }

                        @Override // java.util.Iterator
                        public void remove() {
                            throw new UnsupportedOperationException("remove");
                        }

                        @Override // java.util.Iterator
                        public List<Class<?>> next() {
                            if (this.buffer.isEmpty()) {
                                this.buffer = this.iterator.next();
                            }
                            while (this.buffer.size() < this.minimum && this.iterator.hasNext()) {
                                this.buffer.addAll(this.iterator.next());
                            }
                            int size = this.buffer.size();
                            int i = this.maximum;
                            if (size > i) {
                                try {
                                    return this.buffer.subList(0, i);
                                } finally {
                                    List<Class<?>> list = this.buffer;
                                    this.buffer = new ArrayList(list.subList(this.maximum, list.size()));
                                }
                            }
                            try {
                                return this.buffer;
                            } finally {
                                this.buffer = new ArrayList();
                            }
                        }

                        public SlicingIterator(int i, int i2, Iterator<? extends List<Class<?>>> it) {
                            this.minimum = i;
                            this.maximum = i2;
                            this.iterator = it;
                        }
                    }

                    @Override // java.lang.Iterable
                    public Iterator<List<Class<?>>> iterator() {
                        return new SlicingIterator(this.minimum, this.maximum, this.iterable.iterator());
                    }

                    public SlicingIterable(int i, int i2, Iterable<? extends List<Class<?>>> iterable) {
                        this.minimum = i;
                        this.maximum = i2;
                        this.iterable = iterable;
                    }
                }

                public static BatchAllocator withinRange(int i, int i2, BatchAllocator batchAllocator) {
                    if (i > 0) {
                        if (i <= i2) {
                            return new Slicing(i, i2, batchAllocator);
                        }
                        throw new IllegalArgumentException("Minimum must not be bigger than maximum: " + i + " >" + i2);
                    }
                    throw new IllegalArgumentException("Minimum must be a positive number: " + i);
                }

                public Slicing(int i, int i2, BatchAllocator batchAllocator) {
                    this.minimum = i;
                    this.maximum = i2;
                    this.batchAllocator = batchAllocator;
                }
            }

            Iterable<? extends List<Class<?>>> batch(List<Class<?>> list);

            /* loaded from: classes2.dex */
            public enum ForTotal implements BatchAllocator {
                INSTANCE;

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.BatchAllocator
                public Iterable<? extends List<Class<?>>> batch(List<Class<?>> list) {
                    if (list.isEmpty()) {
                        return Collections.emptySet();
                    }
                    return Collections.singleton(list);
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Partitioning implements BatchAllocator {
                private final int parts;

                /* renamed from: of */
                public static BatchAllocator m15353of(int i) {
                    if (i >= 1) {
                        return new Partitioning(i);
                    }
                    throw new IllegalArgumentException("A batch size must be positive: " + i);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.parts == ((Partitioning) obj).parts;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.parts;
                }

                public Partitioning(int i) {
                    this.parts = i;
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.BatchAllocator
                public Iterable<? extends List<Class<?>>> batch(List<Class<?>> list) {
                    if (list.isEmpty()) {
                        return Collections.emptyList();
                    }
                    ArrayList arrayList = new ArrayList();
                    int size = list.size() / this.parts;
                    int size2 = list.size() % this.parts;
                    int i = size2;
                    while (i < list.size()) {
                        int i2 = i + size;
                        arrayList.add(new ArrayList(list.subList(i, i2)));
                        i = i2;
                    }
                    if (arrayList.isEmpty()) {
                        return Collections.singletonList(list);
                    }
                    ((List) arrayList.get(0)).addAll(0, list.subList(0, size2));
                    return arrayList;
                }
            }
        }

        /* loaded from: classes2.dex */
        public static abstract class Collector {
            public final CircularityLock circularityLock;
            private final DescriptionStrategy descriptionStrategy;
            private final FallbackStrategy fallbackStrategy;
            public final Listener listener;
            public final LocationStrategy locationStrategy;
            private final RawMatcher matcher;
            private final PoolStrategy poolStrategy;
            public final List<Class<?>> types = new ArrayList();

            /* loaded from: classes2.dex */
            public static class ForRedefinition extends Collector {
                public ForRedefinition(RawMatcher rawMatcher, PoolStrategy poolStrategy, LocationStrategy locationStrategy, DescriptionStrategy descriptionStrategy, Listener listener, FallbackStrategy fallbackStrategy, CircularityLock circularityLock) {
                    super(rawMatcher, poolStrategy, locationStrategy, descriptionStrategy, listener, fallbackStrategy, circularityLock);
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Collector
                public void doApply(Instrumentation instrumentation, List<Class<?>> list) {
                    ArrayList arrayList = new ArrayList(list.size());
                    for (Class<?> cls : list) {
                        try {
                            arrayList.add(new ClassDefinition(cls, this.locationStrategy.classFileLocator(cls.getClassLoader(), JavaModule.ofType(cls)).locate(TypeDescription.ForLoadedType.getName(cls)).resolve()));
                        } catch (Throwable th) {
                            try {
                                JavaModule ofType = JavaModule.ofType(cls);
                                this.listener.onDiscovery(TypeDescription.ForLoadedType.getName(cls), cls.getClassLoader(), ofType, true);
                                this.listener.onError(TypeDescription.ForLoadedType.getName(cls), cls.getClassLoader(), ofType, true, th);
                                this.listener.onComplete(TypeDescription.ForLoadedType.getName(cls), cls.getClassLoader(), ofType, true);
                            } catch (Throwable unused) {
                            }
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        this.circularityLock.release();
                        try {
                            instrumentation.redefineClasses((ClassDefinition[]) arrayList.toArray(new ClassDefinition[0]));
                        } finally {
                            this.circularityLock.acquire();
                        }
                    }
                }
            }

            /* loaded from: classes2.dex */
            public static class PrependableIterator implements Iterator<List<Class<?>>> {
                private final List<Iterator<? extends List<Class<?>>>> backlog = new ArrayList();
                private Iterator<? extends List<Class<?>>> current;

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return this.current.hasNext();
                }

                @Override // java.util.Iterator
                public void remove() {
                    throw new UnsupportedOperationException("remove");
                }

                @Override // java.util.Iterator
                public List<Class<?>> next() {
                    boolean hasNext;
                    boolean isEmpty;
                    try {
                        while (true) {
                            if (!hasNext) {
                                if (isEmpty) {
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                        return this.current.next();
                    } finally {
                        while (!this.current.hasNext() && !this.backlog.isEmpty()) {
                            List<Iterator<? extends List<Class<?>>>> list = this.backlog;
                            this.current = list.remove(list.size() - 1);
                        }
                    }
                }

                public PrependableIterator(Iterable<? extends List<Class<?>>> iterable) {
                    this.current = iterable.iterator();
                }

                public void prepend(Iterable<? extends List<Class<?>>> iterable) {
                    Iterator<? extends List<Class<?>>> it = iterable.iterator();
                    if (it.hasNext()) {
                        if (this.current.hasNext()) {
                            this.backlog.add(this.current);
                        }
                        this.current = it;
                    }
                }
            }

            public abstract void doApply(Instrumentation instrumentation, List<Class<?>> list);

            /* loaded from: classes2.dex */
            public static class ForRetransformation extends Collector {
                public ForRetransformation(RawMatcher rawMatcher, PoolStrategy poolStrategy, LocationStrategy locationStrategy, DescriptionStrategy descriptionStrategy, Listener listener, FallbackStrategy fallbackStrategy, CircularityLock circularityLock) {
                    super(rawMatcher, poolStrategy, locationStrategy, descriptionStrategy, listener, fallbackStrategy, circularityLock);
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Collector
                public void doApply(Instrumentation instrumentation, List<Class<?>> list) {
                    if (!list.isEmpty()) {
                        this.circularityLock.release();
                        try {
                            RedefinitionStrategy.DISPATCHER.retransformClasses(instrumentation, (Class[]) list.toArray(new Class[0]));
                        } finally {
                            this.circularityLock.acquire();
                        }
                    }
                }
            }

            private void doConsider(RawMatcher rawMatcher, Listener listener, TypeDescription typeDescription, Class<?> cls, @MaybeNull Class<?> cls2, @MaybeNull JavaModule javaModule, boolean z) {
                boolean z2;
                boolean z3;
                if (z && rawMatcher.matches(typeDescription, cls.getClassLoader(), javaModule, cls2, cls.getProtectionDomain())) {
                    this.types.add(cls);
                    return;
                }
                boolean z4 = true;
                try {
                    String name = TypeDescription.ForLoadedType.getName(cls);
                    ClassLoader classLoader = cls.getClassLoader();
                    if (cls2 != null) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    listener.onDiscovery(name, classLoader, javaModule, z2);
                    ClassLoader classLoader2 = cls.getClassLoader();
                    if (cls2 != null) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    listener.onIgnored(typeDescription, classLoader2, javaModule, z3);
                    String name2 = TypeDescription.ForLoadedType.getName(cls);
                    ClassLoader classLoader3 = cls.getClassLoader();
                    if (cls2 == null) {
                        z4 = false;
                    }
                    listener.onComplete(name2, classLoader3, javaModule, z4);
                } catch (Throwable unused) {
                }
            }

            public int apply(Instrumentation instrumentation, BatchAllocator batchAllocator, Listener listener, int i) {
                HashMap hashMap = new HashMap();
                PrependableIterator prependableIterator = new PrependableIterator(batchAllocator.batch(this.types));
                while (prependableIterator.hasNext()) {
                    List<Class<?>> next = prependableIterator.next();
                    listener.onBatch(i, next, this.types);
                    try {
                        doApply(instrumentation, next);
                    } catch (Throwable th) {
                        prependableIterator.prepend(listener.onError(i, next, th, this.types));
                        hashMap.put(next, th);
                    }
                    i++;
                }
                listener.onComplete(i, this.types, hashMap);
                return i;
            }

            public Collector(RawMatcher rawMatcher, PoolStrategy poolStrategy, LocationStrategy locationStrategy, DescriptionStrategy descriptionStrategy, Listener listener, FallbackStrategy fallbackStrategy, CircularityLock circularityLock) {
                this.matcher = rawMatcher;
                this.poolStrategy = poolStrategy;
                this.locationStrategy = locationStrategy;
                this.descriptionStrategy = descriptionStrategy;
                this.listener = listener;
                this.fallbackStrategy = fallbackStrategy;
                this.circularityLock = circularityLock;
            }

            public void consider(Class<?> cls, boolean z) {
                JavaModule ofType = JavaModule.ofType(cls);
                try {
                    doConsider(this.matcher, this.listener, this.descriptionStrategy.apply(TypeDescription.ForLoadedType.getName(cls), cls, this.poolStrategy.typePool(this.locationStrategy.classFileLocator(cls.getClassLoader(), ofType), cls.getClassLoader()), this.circularityLock, cls.getClassLoader(), ofType), cls, cls, ofType, z);
                } catch (Throwable th) {
                    try {
                        this.listener.onDiscovery(TypeDescription.ForLoadedType.getName(cls), cls.getClassLoader(), ofType, true);
                        this.listener.onError(TypeDescription.ForLoadedType.getName(cls), cls.getClassLoader(), ofType, true, th);
                        this.listener.onComplete(TypeDescription.ForLoadedType.getName(cls), cls.getClassLoader(), ofType, true);
                    } catch (Throwable unused) {
                    }
                }
            }
        }

        /* loaded from: classes2.dex */
        public interface DiscoveryStrategy {

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Explicit implements DiscoveryStrategy {
                private final Set<Class<?>> types;

                public Explicit(Class<?>... clsArr) {
                    this(new LinkedHashSet(Arrays.asList(clsArr)));
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.types.equals(((Explicit) obj).types);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.types.hashCode();
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.DiscoveryStrategy
                public Iterable<Iterable<Class<?>>> resolve(Instrumentation instrumentation) {
                    return Collections.singleton(this.types);
                }

                public Explicit(Set<Class<?>> set) {
                    this.types = set;
                }
            }

            /* loaded from: classes2.dex */
            public enum Reiterating implements DiscoveryStrategy {
                INSTANCE;

                /* loaded from: classes2.dex */
                public static class ReiteratingIterator implements Iterator<Iterable<Class<?>>> {
                    private final Instrumentation instrumentation;
                    private final Set<Class<?>> processed = new HashSet();
                    @MaybeNull
                    private List<Class<?>> types;

                    @Override // java.util.Iterator
                    public void remove() {
                        throw new UnsupportedOperationException("remove");
                    }

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        Class<?>[] allLoadedClasses;
                        if (this.types == null) {
                            this.types = new ArrayList();
                            for (Class<?> cls : this.instrumentation.getAllLoadedClasses()) {
                                if (cls != null && this.processed.add(cls)) {
                                    this.types.add(cls);
                                }
                            }
                        }
                        return !this.types.isEmpty();
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // java.util.Iterator
                    public Iterable<Class<?>> next() {
                        if (hasNext()) {
                            try {
                                return this.types;
                            } finally {
                                this.types = null;
                            }
                        }
                        throw new NoSuchElementException();
                    }

                    public ReiteratingIterator(Instrumentation instrumentation) {
                        this.instrumentation = instrumentation;
                    }
                }

                /* loaded from: classes2.dex */
                public enum WithSortOrderAssumption implements DiscoveryStrategy {
                    INSTANCE;

                    /* loaded from: classes2.dex */
                    public static class OrderedReiteratingIterator implements Iterator<Iterable<Class<?>>> {
                        private int index = 0;
                        private final Instrumentation instrumentation;
                        @MaybeNull
                        private List<Class<?>> types;

                        @Override // java.util.Iterator
                        public void remove() {
                            throw new UnsupportedOperationException("remove");
                        }

                        @Override // java.util.Iterator
                        public boolean hasNext() {
                            if (this.types == null) {
                                Class[] allLoadedClasses = this.instrumentation.getAllLoadedClasses();
                                this.types = new ArrayList(Arrays.asList(allLoadedClasses).subList(this.index, allLoadedClasses.length));
                                this.index = allLoadedClasses.length;
                            }
                            return !this.types.isEmpty();
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // java.util.Iterator
                        public Iterable<Class<?>> next() {
                            if (hasNext()) {
                                try {
                                    return this.types;
                                } finally {
                                    this.types = null;
                                }
                            }
                            throw new NoSuchElementException();
                        }

                        public OrderedReiteratingIterator(Instrumentation instrumentation) {
                            this.instrumentation = instrumentation;
                        }
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.DiscoveryStrategy
                    public Iterable<Iterable<Class<?>>> resolve(Instrumentation instrumentation) {
                        return new OrderedReiteratingIterable(instrumentation);
                    }

                    @HashCodeAndEqualsPlugin.Enhance
                    /* loaded from: classes.dex */
                    public static class OrderedReiteratingIterable implements Iterable<Iterable<Class<?>>> {
                        private final Instrumentation instrumentation;

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.instrumentation.equals(((OrderedReiteratingIterable) obj).instrumentation);
                        }

                        public int hashCode() {
                            return (getClass().hashCode() * 31) + this.instrumentation.hashCode();
                        }

                        @Override // java.lang.Iterable
                        public Iterator<Iterable<Class<?>>> iterator() {
                            return new OrderedReiteratingIterator(this.instrumentation);
                        }

                        public OrderedReiteratingIterable(Instrumentation instrumentation) {
                            this.instrumentation = instrumentation;
                        }
                    }
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.DiscoveryStrategy
                public Iterable<Iterable<Class<?>>> resolve(Instrumentation instrumentation) {
                    return new ReiteratingIterable(instrumentation);
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ReiteratingIterable implements Iterable<Iterable<Class<?>>> {
                    private final Instrumentation instrumentation;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.instrumentation.equals(((ReiteratingIterable) obj).instrumentation);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.instrumentation.hashCode();
                    }

                    @Override // java.lang.Iterable
                    public Iterator<Iterable<Class<?>>> iterator() {
                        return new ReiteratingIterator(this.instrumentation);
                    }

                    public ReiteratingIterable(Instrumentation instrumentation) {
                        this.instrumentation = instrumentation;
                    }
                }
            }

            /* loaded from: classes2.dex */
            public enum SinglePass implements DiscoveryStrategy {
                INSTANCE;

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.DiscoveryStrategy
                public Iterable<Iterable<Class<?>>> resolve(Instrumentation instrumentation) {
                    return Collections.singleton(Arrays.asList(instrumentation.getAllLoadedClasses()));
                }
            }

            Iterable<Iterable<Class<?>>> resolve(Instrumentation instrumentation);
        }

        @JavaDispatcher.Proxied("java.lang.instrument.Instrumentation")
        /* loaded from: classes2.dex */
        public interface Dispatcher {
            @JavaDispatcher.Proxied("isModifiableClass")
            boolean isModifiableClass(Instrumentation instrumentation, Class<?> cls);

            @JavaDispatcher.Defaults
            @JavaDispatcher.Proxied("isRetransformClassesSupported")
            boolean isRetransformClassesSupported(Instrumentation instrumentation);

            @JavaDispatcher.Proxied("retransformClasses")
            void retransformClasses(Instrumentation instrumentation, Class<?>[] clsArr);
        }

        /* loaded from: classes2.dex */
        public interface Listener {

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static abstract class Adapter implements Listener {
                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass();
                }

                public int hashCode() {
                    return getClass().hashCode();
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                public void onBatch(int i, List<Class<?>> list, List<Class<?>> list2) {
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                public void onComplete(int i, List<Class<?>> list, Map<List<Class<?>>, Throwable> map) {
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                public Iterable<? extends List<Class<?>>> onError(int i, List<Class<?>> list, Throwable th, List<Class<?>> list2) {
                    return Collections.emptyList();
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Compound implements Listener {
                private final List<Listener> listeners;

                public Compound(Listener... listenerArr) {
                    this(Arrays.asList(listenerArr));
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.listeners.equals(((Compound) obj).listeners);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.listeners.hashCode();
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class CompoundIterable implements Iterable<List<Class<?>>> {
                    private final List<Iterable<? extends List<Class<?>>>> iterables;

                    /* loaded from: classes2.dex */
                    public static class CompoundIterator implements Iterator<List<Class<?>>> {
                        private final List<Iterable<? extends List<Class<?>>>> backlog;
                        @MaybeNull
                        private Iterator<? extends List<Class<?>>> current;

                        @Override // java.util.Iterator
                        public boolean hasNext() {
                            Iterator<? extends List<Class<?>>> it = this.current;
                            return it != null && it.hasNext();
                        }

                        @Override // java.util.Iterator
                        public void remove() {
                            throw new UnsupportedOperationException("remove");
                        }

                        private void forward() {
                            while (true) {
                                Iterator<? extends List<Class<?>>> it = this.current;
                                if ((it == null || !it.hasNext()) && !this.backlog.isEmpty()) {
                                    this.current = this.backlog.remove(0).iterator();
                                } else {
                                    return;
                                }
                            }
                        }

                        @Override // java.util.Iterator
                        public List<Class<?>> next() {
                            try {
                                Iterator<? extends List<Class<?>>> it = this.current;
                                if (it != null) {
                                    return it.next();
                                }
                                throw new NoSuchElementException();
                            } finally {
                                forward();
                            }
                        }

                        public CompoundIterator(List<Iterable<? extends List<Class<?>>>> list) {
                            this.backlog = list;
                            forward();
                        }
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.iterables.equals(((CompoundIterable) obj).iterables);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.iterables.hashCode();
                    }

                    @Override // java.lang.Iterable
                    public Iterator<List<Class<?>>> iterator() {
                        return new CompoundIterator(new ArrayList(this.iterables));
                    }

                    public CompoundIterable(List<Iterable<? extends List<Class<?>>>> list) {
                        this.iterables = list;
                    }
                }

                public Compound(List<? extends Listener> list) {
                    this.listeners = new ArrayList();
                    for (Listener listener : list) {
                        if (listener instanceof Compound) {
                            this.listeners.addAll(((Compound) listener).listeners);
                        } else if (!(listener instanceof NoOp)) {
                            this.listeners.add(listener);
                        }
                    }
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                public void onBatch(int i, List<Class<?>> list, List<Class<?>> list2) {
                    for (Listener listener : this.listeners) {
                        listener.onBatch(i, list, list2);
                    }
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                public void onComplete(int i, List<Class<?>> list, Map<List<Class<?>>, Throwable> map) {
                    for (Listener listener : this.listeners) {
                        listener.onComplete(i, list, map);
                    }
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                public Iterable<? extends List<Class<?>>> onError(int i, List<Class<?>> list, Throwable th, List<Class<?>> list2) {
                    ArrayList arrayList = new ArrayList();
                    for (Listener listener : this.listeners) {
                        arrayList.add(listener.onError(i, list, th, list2));
                    }
                    return new CompoundIterable(arrayList);
                }
            }

            /* loaded from: classes2.dex */
            public enum ErrorEscalating implements Listener {
                FAIL_FAST { // from class: net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener.ErrorEscalating.1
                    @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                    public void onComplete(int i, List<Class<?>> list, Map<List<Class<?>>, Throwable> map) {
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                    public Iterable<? extends List<Class<?>>> onError(int i, List<Class<?>> list, Throwable th, List<Class<?>> list2) {
                        throw new IllegalStateException("Could not transform any of " + list, th);
                    }
                },
                FAIL_LAST { // from class: net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener.ErrorEscalating.2
                    @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                    public Iterable<? extends List<Class<?>>> onError(int i, List<Class<?>> list, Throwable th, List<Class<?>> list2) {
                        return Collections.emptyList();
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                    public void onComplete(int i, List<Class<?>> list, Map<List<Class<?>>, Throwable> map) {
                        if (map.isEmpty()) {
                            return;
                        }
                        throw new IllegalStateException("Could not transform any of " + map);
                    }
                };

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                public void onBatch(int i, List<Class<?>> list, List<Class<?>> list2) {
                }
            }

            /* loaded from: classes2.dex */
            public enum NoOp implements Listener {
                INSTANCE;

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                public void onBatch(int i, List<Class<?>> list, List<Class<?>> list2) {
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                public void onComplete(int i, List<Class<?>> list, Map<List<Class<?>>, Throwable> map) {
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                public Iterable<? extends List<Class<?>>> onError(int i, List<Class<?>> list, Throwable th, List<Class<?>> list2) {
                    return Collections.emptyList();
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Pausing extends Adapter {
                private final long value;

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener.Adapter
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.value == ((Pausing) obj).value;
                    }
                    return false;
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener.Adapter
                public int hashCode() {
                    long j = this.value;
                    return (super.hashCode() * 31) + ((int) (j ^ (j >>> 32)));
                }

                /* renamed from: of */
                public static Listener m15352of(long j, TimeUnit timeUnit) {
                    if (j > 0) {
                        return new Pausing(timeUnit.toMillis(j));
                    }
                    if (j == 0) {
                        return NoOp.INSTANCE;
                    }
                    throw new IllegalArgumentException("Cannot sleep for a non-positive amount of time: " + j);
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener.Adapter, net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                public void onBatch(int i, List<Class<?>> list, List<Class<?>> list2) {
                    if (i > 0) {
                        try {
                            Thread.sleep(this.value);
                        } catch (InterruptedException e) {
                            Thread.currentThread().interrupt();
                            throw new IllegalStateException(e);
                        }
                    }
                }

                public Pausing(long j) {
                    this.value = j;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class StreamWriting implements Listener {
                private final PrintStream printStream;

                public static Listener toSystemError() {
                    return new StreamWriting(System.err);
                }

                public static Listener toSystemOut() {
                    return new StreamWriting(System.out);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.printStream.equals(((StreamWriting) obj).printStream);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.printStream.hashCode();
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                public void onBatch(int i, List<Class<?>> list, List<Class<?>> list2) {
                    this.printStream.printf("[Byte Buddy] REDEFINE BATCH #%d [%d of %d type(s)]%n", Integer.valueOf(i), Integer.valueOf(list.size()), Integer.valueOf(list2.size()));
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                public void onComplete(int i, List<Class<?>> list, Map<List<Class<?>>, Throwable> map) {
                    this.printStream.printf("[Byte Buddy] REDEFINE COMPLETE %d batch(es) containing %d types [%d failed batch(es)]%n", Integer.valueOf(i), Integer.valueOf(list.size()), Integer.valueOf(map.size()));
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                public Iterable<? extends List<Class<?>>> onError(int i, List<Class<?>> list, Throwable th, List<Class<?>> list2) {
                    synchronized (this.printStream) {
                        this.printStream.printf("[Byte Buddy] REDEFINE ERROR #%d [%d of %d type(s)]%n", Integer.valueOf(i), Integer.valueOf(list.size()), Integer.valueOf(list2.size()));
                        th.printStackTrace(this.printStream);
                    }
                    return Collections.emptyList();
                }

                public StreamWriting(PrintStream printStream) {
                    this.printStream = printStream;
                }
            }

            /* loaded from: classes2.dex */
            public enum Yielding implements Listener {
                INSTANCE;

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                public void onBatch(int i, List<Class<?>> list, List<Class<?>> list2) {
                    if (i > 0) {
                        Thread.yield();
                    }
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                public void onComplete(int i, List<Class<?>> list, Map<List<Class<?>>, Throwable> map) {
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                public Iterable<? extends List<Class<?>>> onError(int i, List<Class<?>> list, Throwable th, List<Class<?>> list2) {
                    return Collections.emptyList();
                }
            }

            void onBatch(int i, List<Class<?>> list, List<Class<?>> list2);

            void onComplete(int i, List<Class<?>> list, Map<List<Class<?>>, Throwable> map);

            Iterable<? extends List<Class<?>>> onError(int i, List<Class<?>> list, Throwable th, List<Class<?>> list2);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class BatchReallocator extends Adapter {
                private final BatchAllocator batchAllocator;

                public static Listener splitting() {
                    return new BatchReallocator(new BatchAllocator.Partitioning(2));
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener.Adapter
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.batchAllocator.equals(((BatchReallocator) obj).batchAllocator);
                    }
                    return false;
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener.Adapter
                public int hashCode() {
                    return (super.hashCode() * 31) + this.batchAllocator.hashCode();
                }

                public BatchReallocator(BatchAllocator batchAllocator) {
                    this.batchAllocator = batchAllocator;
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener.Adapter, net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.Listener
                public Iterable<? extends List<Class<?>>> onError(int i, List<Class<?>> list, Throwable th, List<Class<?>> list2) {
                    if (list.size() < 2) {
                        return Collections.emptyList();
                    }
                    return this.batchAllocator.batch(list);
                }
            }
        }

        /* loaded from: classes2.dex */
        public interface ResubmissionEnforcer {

            /* loaded from: classes2.dex */
            public enum Disabled implements ResubmissionEnforcer {
                INSTANCE;

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.ResubmissionEnforcer
                public boolean isEnforced(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull Class<?> cls) {
                    return false;
                }
            }

            boolean isEnforced(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull Class<?> cls);
        }

        /* loaded from: classes2.dex */
        public interface ResubmissionScheduler {

            /* loaded from: classes2.dex */
            public interface Cancelable {

                /* loaded from: classes2.dex */
                public enum NoOp implements Cancelable {
                    INSTANCE;

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.ResubmissionScheduler.Cancelable
                    public void cancel() {
                    }
                }

                void cancel();

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForFuture implements Cancelable {
                    private final Future<?> future;

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.ResubmissionScheduler.Cancelable
                    public void cancel() {
                        this.future.cancel(true);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.future.equals(((ForFuture) obj).future);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.future.hashCode();
                    }

                    public ForFuture(Future<?> future) {
                        this.future = future;
                    }
                }
            }

            /* loaded from: classes2.dex */
            public enum NoOp implements ResubmissionScheduler {
                INSTANCE;

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.ResubmissionScheduler
                public boolean isAlive() {
                    return false;
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.ResubmissionScheduler
                public Cancelable schedule(Runnable runnable) {
                    return Cancelable.NoOp.INSTANCE;
                }
            }

            boolean isAlive();

            Cancelable schedule(Runnable runnable);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class AtFixedRate implements ResubmissionScheduler {
                private final ScheduledExecutorService scheduledExecutorService;
                private final long time;
                private final TimeUnit timeUnit;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        AtFixedRate atFixedRate = (AtFixedRate) obj;
                        return this.time == atFixedRate.time && this.timeUnit.equals(atFixedRate.timeUnit) && this.scheduledExecutorService.equals(atFixedRate.scheduledExecutorService);
                    }
                    return false;
                }

                public int hashCode() {
                    long j = this.time;
                    return (((((getClass().hashCode() * 31) + this.scheduledExecutorService.hashCode()) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + this.timeUnit.hashCode();
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.ResubmissionScheduler
                public boolean isAlive() {
                    return !this.scheduledExecutorService.isShutdown();
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.ResubmissionScheduler
                public Cancelable schedule(Runnable runnable) {
                    ScheduledExecutorService scheduledExecutorService = this.scheduledExecutorService;
                    long j = this.time;
                    return new Cancelable.ForFuture(scheduledExecutorService.scheduleAtFixedRate(runnable, j, j, this.timeUnit));
                }

                public AtFixedRate(ScheduledExecutorService scheduledExecutorService, long j, TimeUnit timeUnit) {
                    this.scheduledExecutorService = scheduledExecutorService;
                    this.time = j;
                    this.timeUnit = timeUnit;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class WithFixedDelay implements ResubmissionScheduler {
                private final ScheduledExecutorService scheduledExecutorService;
                private final long time;
                private final TimeUnit timeUnit;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        WithFixedDelay withFixedDelay = (WithFixedDelay) obj;
                        return this.time == withFixedDelay.time && this.timeUnit.equals(withFixedDelay.timeUnit) && this.scheduledExecutorService.equals(withFixedDelay.scheduledExecutorService);
                    }
                    return false;
                }

                public int hashCode() {
                    long j = this.time;
                    return (((((getClass().hashCode() * 31) + this.scheduledExecutorService.hashCode()) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + this.timeUnit.hashCode();
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.ResubmissionScheduler
                public boolean isAlive() {
                    return !this.scheduledExecutorService.isShutdown();
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.ResubmissionScheduler
                public Cancelable schedule(Runnable runnable) {
                    ScheduledExecutorService scheduledExecutorService = this.scheduledExecutorService;
                    long j = this.time;
                    return new Cancelable.ForFuture(scheduledExecutorService.scheduleWithFixedDelay(runnable, j, j, this.timeUnit));
                }

                public WithFixedDelay(ScheduledExecutorService scheduledExecutorService, long j, TimeUnit timeUnit) {
                    this.scheduledExecutorService = scheduledExecutorService;
                    this.time = j;
                    this.timeUnit = timeUnit;
                }
            }
        }

        /* loaded from: classes2.dex */
        public interface ResubmissionStrategy {

            /* loaded from: classes2.dex */
            public enum Disabled implements ResubmissionStrategy {
                INSTANCE;

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.ResubmissionStrategy
                public Installation apply(Instrumentation instrumentation, PoolStrategy poolStrategy, LocationStrategy locationStrategy, DescriptionStrategy descriptionStrategy, FallbackStrategy fallbackStrategy, Listener listener, InstallationListener installationListener, CircularityLock circularityLock, RawMatcher rawMatcher, RedefinitionStrategy redefinitionStrategy, BatchAllocator batchAllocator, Listener listener2) {
                    return new Installation(listener, installationListener, ResubmissionEnforcer.Disabled.INSTANCE);
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Enabled implements ResubmissionStrategy {
                private final RedefinitionListenable.ResubmissionImmediateMatcher resubmissionImmediateMatcher;
                private final RedefinitionListenable.ResubmissionOnErrorMatcher resubmissionOnErrorMatcher;
                private final ResubmissionScheduler resubmissionScheduler;

                /* loaded from: classes2.dex */
                public static class ResubmissionInstallationListener extends InstallationListener.Adapter implements Runnable {
                    @MaybeNull
                    private volatile ResubmissionScheduler.Cancelable cancelable;
                    private final CircularityLock circularityLock;
                    private final DescriptionStrategy descriptionStrategy;
                    private final FallbackStrategy fallbackStrategy;
                    private final Instrumentation instrumentation;
                    private final Listener listener;
                    private final LocationStrategy locationStrategy;
                    private final RawMatcher matcher;
                    private final PoolStrategy poolStrategy;
                    private final BatchAllocator redefinitionBatchAllocator;
                    private final Listener redefinitionBatchListener;
                    private final RedefinitionStrategy redefinitionStrategy;
                    private final ResubmissionScheduler resubmissionScheduler;
                    private final ConcurrentMap<StorageKey, Set<String>> types;

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener.Adapter, net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
                    public void onInstall(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer) {
                        this.cancelable = this.resubmissionScheduler.schedule(this);
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.InstallationListener.Adapter, net.bytebuddy.agent.builder.AgentBuilder.InstallationListener
                    public void onReset(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer) {
                        ResubmissionScheduler.Cancelable cancelable = this.cancelable;
                        if (cancelable != null) {
                            cancelable.cancel();
                        }
                    }

                    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a6, code lost:
                        if (net.bytebuddy.ClassFileVersion.ofThisVm(r7).isAtMost(r7) != false) goto L28;
                     */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public void run() {
                        /*
                            r9 = this;
                            net.bytebuddy.agent.builder.AgentBuilder$CircularityLock r0 = r9.circularityLock
                            boolean r0 = r0.acquire()
                            net.bytebuddy.agent.builder.AgentBuilder$RedefinitionStrategy r1 = r9.redefinitionStrategy     // Catch: java.lang.Throwable -> Lc3
                            net.bytebuddy.agent.builder.AgentBuilder$PoolStrategy r2 = r9.poolStrategy     // Catch: java.lang.Throwable -> Lc3
                            net.bytebuddy.agent.builder.AgentBuilder$LocationStrategy r3 = r9.locationStrategy     // Catch: java.lang.Throwable -> Lc3
                            net.bytebuddy.agent.builder.AgentBuilder$DescriptionStrategy r4 = r9.descriptionStrategy     // Catch: java.lang.Throwable -> Lc3
                            net.bytebuddy.agent.builder.AgentBuilder$FallbackStrategy r5 = r9.fallbackStrategy     // Catch: java.lang.Throwable -> Lc3
                            net.bytebuddy.agent.builder.AgentBuilder$Listener r6 = r9.listener     // Catch: java.lang.Throwable -> Lc3
                            net.bytebuddy.agent.builder.AgentBuilder$RawMatcher r7 = r9.matcher     // Catch: java.lang.Throwable -> Lc3
                            net.bytebuddy.agent.builder.AgentBuilder$CircularityLock r8 = r9.circularityLock     // Catch: java.lang.Throwable -> Lc3
                            net.bytebuddy.agent.builder.AgentBuilder$RedefinitionStrategy$Collector r1 = r1.make(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> Lc3
                            java.util.concurrent.ConcurrentMap<net.bytebuddy.agent.builder.AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey, java.util.Set<java.lang.String>> r2 = r9.types     // Catch: java.lang.Throwable -> Lc3
                            java.util.Set r2 = r2.entrySet()     // Catch: java.lang.Throwable -> Lc3
                            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> Lc3
                        L24:
                            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> Lc3
                            r4 = 0
                            if (r3 == 0) goto Lb2
                            boolean r3 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> Lc3
                            if (r3 == 0) goto L39
                            if (r0 == 0) goto L38
                            net.bytebuddy.agent.builder.AgentBuilder$CircularityLock r0 = r9.circularityLock
                            r0.release()
                        L38:
                            return
                        L39:
                            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> Lc3
                            java.util.Map$Entry r3 = (java.util.Map.Entry) r3     // Catch: java.lang.Throwable -> Lc3
                            java.lang.Object r5 = r3.getKey()     // Catch: java.lang.Throwable -> Lc3
                            net.bytebuddy.agent.builder.AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey r5 = (net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.ResubmissionStrategy.Enabled.StorageKey) r5     // Catch: java.lang.Throwable -> Lc3
                            java.lang.Object r5 = r5.get()     // Catch: java.lang.Throwable -> Lc3
                            java.lang.ClassLoader r5 = (java.lang.ClassLoader) r5     // Catch: java.lang.Throwable -> Lc3
                            if (r5 != 0) goto L5e
                            java.lang.Object r6 = r3.getKey()     // Catch: java.lang.Throwable -> Lc3
                            net.bytebuddy.agent.builder.AgentBuilder$RedefinitionStrategy$ResubmissionStrategy$Enabled$StorageKey r6 = (net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.ResubmissionStrategy.Enabled.StorageKey) r6     // Catch: java.lang.Throwable -> Lc3
                            boolean r6 = r6.isBootstrapLoader()     // Catch: java.lang.Throwable -> Lc3
                            if (r6 == 0) goto L5a
                            goto L5e
                        L5a:
                            r2.remove()     // Catch: java.lang.Throwable -> Lc3
                            goto L24
                        L5e:
                            java.lang.Object r3 = r3.getValue()     // Catch: java.lang.Throwable -> Lc3
                            java.util.Set r3 = (java.util.Set) r3     // Catch: java.lang.Throwable -> Lc3
                            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> Lc3
                        L68:
                            boolean r6 = r3.hasNext()     // Catch: java.lang.Throwable -> Lc3
                            if (r6 == 0) goto L24
                            boolean r6 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> Lc3
                            if (r6 == 0) goto L7c
                            if (r0 == 0) goto L7b
                            net.bytebuddy.agent.builder.AgentBuilder$CircularityLock r0 = r9.circularityLock
                            r0.release()
                        L7b:
                            return
                        L7c:
                            java.lang.Object r6 = r3.next()     // Catch: java.lang.Throwable -> Lae
                            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Throwable -> Lae
                            java.lang.Class r6 = java.lang.Class.forName(r6, r4, r5)     // Catch: java.lang.Throwable -> Lae
                            boolean r7 = r6.isArray()     // Catch: java.lang.Throwable -> Lae
                            if (r7 != 0) goto Laa
                            boolean r7 = r6.isPrimitive()     // Catch: java.lang.Throwable -> Lae
                            if (r7 != 0) goto Laa
                            net.bytebuddy.agent.builder.AgentBuilder$RedefinitionStrategy$Dispatcher r7 = net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.DISPATCHER     // Catch: java.lang.Throwable -> Lae
                            java.lang.instrument.Instrumentation r8 = r9.instrumentation     // Catch: java.lang.Throwable -> Lae
                            boolean r7 = r7.isModifiableClass(r8, r6)     // Catch: java.lang.Throwable -> Lae
                            if (r7 != 0) goto La8
                            net.bytebuddy.ClassFileVersion r7 = net.bytebuddy.ClassFileVersion.JAVA_V5     // Catch: java.lang.Throwable -> Lae
                            net.bytebuddy.ClassFileVersion r8 = net.bytebuddy.ClassFileVersion.ofThisVm(r7)     // Catch: java.lang.Throwable -> Lae
                            boolean r7 = r8.isAtMost(r7)     // Catch: java.lang.Throwable -> Lae
                            if (r7 == 0) goto Laa
                        La8:
                            r7 = 1
                            goto Lab
                        Laa:
                            r7 = 0
                        Lab:
                            r1.consider(r6, r7)     // Catch: java.lang.Throwable -> Lae
                        Lae:
                            r3.remove()     // Catch: java.lang.Throwable -> Lc3
                            goto L68
                        Lb2:
                            java.lang.instrument.Instrumentation r2 = r9.instrumentation     // Catch: java.lang.Throwable -> Lc3
                            net.bytebuddy.agent.builder.AgentBuilder$RedefinitionStrategy$BatchAllocator r3 = r9.redefinitionBatchAllocator     // Catch: java.lang.Throwable -> Lc3
                            net.bytebuddy.agent.builder.AgentBuilder$RedefinitionStrategy$Listener r5 = r9.redefinitionBatchListener     // Catch: java.lang.Throwable -> Lc3
                            r1.apply(r2, r3, r5, r4)     // Catch: java.lang.Throwable -> Lc3
                            if (r0 == 0) goto Lc2
                            net.bytebuddy.agent.builder.AgentBuilder$CircularityLock r0 = r9.circularityLock
                            r0.release()
                        Lc2:
                            return
                        Lc3:
                            r1 = move-exception
                            if (r0 == 0) goto Lcb
                            net.bytebuddy.agent.builder.AgentBuilder$CircularityLock r0 = r9.circularityLock
                            r0.release()
                        Lcb:
                            goto Lcd
                        Lcc:
                            throw r1
                        Lcd:
                            goto Lcc
                        */
                        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.ResubmissionStrategy.Enabled.ResubmissionInstallationListener.run():void");
                    }

                    public ResubmissionInstallationListener(Instrumentation instrumentation, ResubmissionScheduler resubmissionScheduler, PoolStrategy poolStrategy, LocationStrategy locationStrategy, DescriptionStrategy descriptionStrategy, FallbackStrategy fallbackStrategy, Listener listener, CircularityLock circularityLock, RawMatcher rawMatcher, RedefinitionStrategy redefinitionStrategy, BatchAllocator batchAllocator, Listener listener2, ConcurrentMap<StorageKey, Set<String>> concurrentMap) {
                        this.instrumentation = instrumentation;
                        this.resubmissionScheduler = resubmissionScheduler;
                        this.poolStrategy = poolStrategy;
                        this.locationStrategy = locationStrategy;
                        this.descriptionStrategy = descriptionStrategy;
                        this.fallbackStrategy = fallbackStrategy;
                        this.listener = listener;
                        this.circularityLock = circularityLock;
                        this.matcher = rawMatcher;
                        this.redefinitionStrategy = redefinitionStrategy;
                        this.redefinitionBatchAllocator = batchAllocator;
                        this.redefinitionBatchListener = listener2;
                        this.types = concurrentMap;
                    }
                }

                /* loaded from: classes2.dex */
                public static class Resubmitter extends Listener.Adapter implements ResubmissionEnforcer {
                    private final RedefinitionListenable.ResubmissionImmediateMatcher resubmissionImmediateMatcher;
                    private final RedefinitionListenable.ResubmissionOnErrorMatcher resubmissionOnErrorMatcher;
                    private final ConcurrentMap<StorageKey, Set<String>> types;

                    /* loaded from: classes2.dex */
                    public static class ConcurrentHashSet<T> extends AbstractSet<T> {
                        private final ConcurrentMap<T, Boolean> delegate = new ConcurrentHashMap();

                        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                        public boolean add(T t) {
                            return this.delegate.put(t, Boolean.TRUE) == null;
                        }

                        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                        public Iterator<T> iterator() {
                            return this.delegate.keySet().iterator();
                        }

                        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                        public boolean remove(Object obj) {
                            return this.delegate.remove(obj) != null;
                        }

                        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                        public int size() {
                            return this.delegate.size();
                        }
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.ResubmissionEnforcer
                    @SuppressFBWarnings(justification = "Cross-comparison is intended.", value = {"GC_UNRELATED_TYPES"})
                    public boolean isEnforced(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull Class<?> cls) {
                        Set<String> putIfAbsent;
                        if (cls == null && this.resubmissionImmediateMatcher.matches(str, classLoader, javaModule)) {
                            Set<String> set = this.types.get(new LookupKey(classLoader));
                            if (set == null && (putIfAbsent = this.types.putIfAbsent(new StorageKey(classLoader), (set = new ConcurrentHashSet<>()))) != null) {
                                set = putIfAbsent;
                            }
                            set.add(str);
                            return true;
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.Listener.Adapter, net.bytebuddy.agent.builder.AgentBuilder.Listener
                    @SuppressFBWarnings(justification = "Cross-comparison is intended.", value = {"GC_UNRELATED_TYPES"})
                    public void onError(String str, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, boolean z, Throwable th) {
                        Set<String> putIfAbsent;
                        if (!z && this.resubmissionOnErrorMatcher.matches(th, str, classLoader, javaModule)) {
                            Set<String> set = this.types.get(new LookupKey(classLoader));
                            if (set == null && (putIfAbsent = this.types.putIfAbsent(new StorageKey(classLoader), (set = new ConcurrentHashSet<>()))) != null) {
                                set = putIfAbsent;
                            }
                            set.add(str);
                        }
                    }

                    public Resubmitter(RedefinitionListenable.ResubmissionOnErrorMatcher resubmissionOnErrorMatcher, RedefinitionListenable.ResubmissionImmediateMatcher resubmissionImmediateMatcher, ConcurrentMap<StorageKey, Set<String>> concurrentMap) {
                        this.resubmissionOnErrorMatcher = resubmissionOnErrorMatcher;
                        this.resubmissionImmediateMatcher = resubmissionImmediateMatcher;
                        this.types = concurrentMap;
                    }
                }

                @Override // net.bytebuddy.agent.builder.AgentBuilder.RedefinitionStrategy.ResubmissionStrategy
                public Installation apply(Instrumentation instrumentation, PoolStrategy poolStrategy, LocationStrategy locationStrategy, DescriptionStrategy descriptionStrategy, FallbackStrategy fallbackStrategy, Listener listener, InstallationListener installationListener, CircularityLock circularityLock, RawMatcher rawMatcher, RedefinitionStrategy redefinitionStrategy, BatchAllocator batchAllocator, Listener listener2) {
                    if (this.resubmissionScheduler.isAlive()) {
                        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                        Resubmitter resubmitter = new Resubmitter(this.resubmissionOnErrorMatcher, this.resubmissionImmediateMatcher, concurrentHashMap);
                        return new Installation(new Listener.Compound(resubmitter, listener), new InstallationListener.Compound(new ResubmissionInstallationListener(instrumentation, this.resubmissionScheduler, poolStrategy, locationStrategy, descriptionStrategy, fallbackStrategy, listener, circularityLock, rawMatcher, redefinitionStrategy, batchAllocator, listener2, concurrentHashMap), installationListener), resubmitter);
                    }
                    throw new IllegalStateException("Resubmission scheduler " + this.resubmissionScheduler + " is not alive");
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Enabled enabled = (Enabled) obj;
                        return this.resubmissionScheduler.equals(enabled.resubmissionScheduler) && this.resubmissionOnErrorMatcher.equals(enabled.resubmissionOnErrorMatcher) && this.resubmissionImmediateMatcher.equals(enabled.resubmissionImmediateMatcher);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((getClass().hashCode() * 31) + this.resubmissionScheduler.hashCode()) * 31) + this.resubmissionOnErrorMatcher.hashCode()) * 31) + this.resubmissionImmediateMatcher.hashCode();
                }

                /* loaded from: classes2.dex */
                public static class LookupKey {
                    @MaybeNull
                    private final ClassLoader classLoader;
                    private final int hashCode;

                    @SuppressFBWarnings(justification = "Cross-comparison is intended.", value = {"EQ_CHECK_FOR_OPERAND_NOT_COMPATIBLE_WITH_THIS"})
                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj instanceof LookupKey) {
                            return this.classLoader == ((LookupKey) obj).classLoader;
                        } else if (!(obj instanceof StorageKey)) {
                            return false;
                        } else {
                            StorageKey storageKey = (StorageKey) obj;
                            return this.hashCode == storageKey.hashCode && this.classLoader == storageKey.get();
                        }
                    }

                    public int hashCode() {
                        return this.hashCode;
                    }

                    public LookupKey(@MaybeNull ClassLoader classLoader) {
                        this.classLoader = classLoader;
                        this.hashCode = System.identityHashCode(classLoader);
                    }
                }

                /* loaded from: classes2.dex */
                public static class StorageKey extends WeakReference<ClassLoader> {
                    private final int hashCode;

                    @SuppressFBWarnings(justification = "Cross-comparison is intended.", value = {"EQ_CHECK_FOR_OPERAND_NOT_COMPATIBLE_WITH_THIS"})
                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj instanceof LookupKey) {
                            LookupKey lookupKey = (LookupKey) obj;
                            return this.hashCode == lookupKey.hashCode && get() == lookupKey.classLoader;
                        } else if (!(obj instanceof StorageKey)) {
                            return false;
                        } else {
                            StorageKey storageKey = (StorageKey) obj;
                            return this.hashCode == storageKey.hashCode && get() == storageKey.get();
                        }
                    }

                    public int hashCode() {
                        return this.hashCode;
                    }

                    public boolean isBootstrapLoader() {
                        return this.hashCode == 0;
                    }

                    public StorageKey(@MaybeNull ClassLoader classLoader) {
                        super(classLoader);
                        this.hashCode = System.identityHashCode(classLoader);
                    }
                }

                public Enabled(ResubmissionScheduler resubmissionScheduler, RedefinitionListenable.ResubmissionOnErrorMatcher resubmissionOnErrorMatcher, RedefinitionListenable.ResubmissionImmediateMatcher resubmissionImmediateMatcher) {
                    this.resubmissionScheduler = resubmissionScheduler;
                    this.resubmissionOnErrorMatcher = resubmissionOnErrorMatcher;
                    this.resubmissionImmediateMatcher = resubmissionImmediateMatcher;
                }
            }

            Installation apply(Instrumentation instrumentation, PoolStrategy poolStrategy, LocationStrategy locationStrategy, DescriptionStrategy descriptionStrategy, FallbackStrategy fallbackStrategy, Listener listener, InstallationListener installationListener, CircularityLock circularityLock, RawMatcher rawMatcher, RedefinitionStrategy redefinitionStrategy, BatchAllocator batchAllocator, Listener listener2);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Installation {
                private final InstallationListener installationListener;
                private final Listener listener;
                private final ResubmissionEnforcer resubmissionEnforcer;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Installation installation = (Installation) obj;
                        return this.listener.equals(installation.listener) && this.installationListener.equals(installation.installationListener) && this.resubmissionEnforcer.equals(installation.resubmissionEnforcer);
                    }
                    return false;
                }

                public InstallationListener getInstallationListener() {
                    return this.installationListener;
                }

                public Listener getListener() {
                    return this.listener;
                }

                public ResubmissionEnforcer getResubmissionEnforcer() {
                    return this.resubmissionEnforcer;
                }

                public int hashCode() {
                    return (((((getClass().hashCode() * 31) + this.listener.hashCode()) * 31) + this.installationListener.hashCode()) * 31) + this.resubmissionEnforcer.hashCode();
                }

                public Installation(Listener listener, InstallationListener installationListener, ResubmissionEnforcer resubmissionEnforcer) {
                    this.listener = listener;
                    this.installationListener = installationListener;
                    this.resubmissionEnforcer = resubmissionEnforcer;
                }
            }
        }

        public void apply(Instrumentation instrumentation, PoolStrategy poolStrategy, LocationStrategy locationStrategy, DescriptionStrategy descriptionStrategy, FallbackStrategy fallbackStrategy, DiscoveryStrategy discoveryStrategy, LambdaInstrumentationStrategy lambdaInstrumentationStrategy, Listener listener, Listener listener2, RawMatcher rawMatcher, BatchAllocator batchAllocator, CircularityLock circularityLock) {
            boolean z;
            check(instrumentation);
            int i = 0;
            for (Iterable<Class<?>> iterable : discoveryStrategy.resolve(instrumentation)) {
                Collector make = make(poolStrategy, locationStrategy, descriptionStrategy, fallbackStrategy, listener, rawMatcher, circularityLock);
                for (Class<?> cls : iterable) {
                    if (cls != null && !cls.isArray() && !cls.isPrimitive()) {
                        if (lambdaInstrumentationStrategy.isInstrumented(cls)) {
                            if (!DISPATCHER.isModifiableClass(instrumentation, cls)) {
                                ClassFileVersion classFileVersion = ClassFileVersion.JAVA_V5;
                                if (!ClassFileVersion.ofThisVm(classFileVersion).isAtMost(classFileVersion)) {
                                    z = false;
                                    make.consider(cls, z);
                                }
                            }
                            z = true;
                            make.consider(cls, z);
                        }
                    }
                }
                i = make.apply(instrumentation, batchAllocator, listener2, i);
            }
        }

        public abstract void check(Instrumentation instrumentation);

        public boolean isEnabled() {
            return this.enabled;
        }

        public boolean isRetransforming() {
            return this.retransforming;
        }

        public abstract Collector make(PoolStrategy poolStrategy, LocationStrategy locationStrategy, DescriptionStrategy descriptionStrategy, FallbackStrategy fallbackStrategy, Listener listener, RawMatcher rawMatcher, CircularityLock circularityLock);

        RedefinitionStrategy(boolean z, boolean z2) {
            this.enabled = z;
            this.retransforming = z2;
        }
    }

    /* loaded from: classes2.dex */
    public interface Transformer {

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForAdvice implements Transformer {
            private final Advice.WithCustomMapping advice;
            private final Assigner assigner;
            private final ClassFileLocator classFileLocator;
            private final List<Entry> entries;
            private final Advice.ExceptionHandler exceptionHandler;
            private final LocationStrategy locationStrategy;
            private final PoolStrategy poolStrategy;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static abstract class Entry {
                private final LatentMatcher<? super MethodDescription> matcher;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.matcher.equals(((Entry) obj).matcher);
                }

                public LatentMatcher<? super MethodDescription> getMatcher() {
                    return this.matcher;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.matcher.hashCode();
                }

                public abstract Advice resolve(Advice.WithCustomMapping withCustomMapping, TypePool typePool, ClassFileLocator classFileLocator);

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForSplitAdvice extends Entry {
                    private final String enter;
                    private final String exit;

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.Transformer.ForAdvice.Entry
                    public boolean equals(@MaybeNull Object obj) {
                        if (super.equals(obj)) {
                            if (this == obj) {
                                return true;
                            }
                            if (obj != null && getClass() == obj.getClass()) {
                                ForSplitAdvice forSplitAdvice = (ForSplitAdvice) obj;
                                return this.enter.equals(forSplitAdvice.enter) && this.exit.equals(forSplitAdvice.exit);
                            }
                            return false;
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.Transformer.ForAdvice.Entry
                    public int hashCode() {
                        return (((super.hashCode() * 31) + this.enter.hashCode()) * 31) + this.exit.hashCode();
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.Transformer.ForAdvice.Entry
                    public Advice resolve(Advice.WithCustomMapping withCustomMapping, TypePool typePool, ClassFileLocator classFileLocator) {
                        return withCustomMapping.m15271to(typePool.describe(this.enter).resolve(), typePool.describe(this.exit).resolve(), classFileLocator);
                    }

                    public ForSplitAdvice(LatentMatcher<? super MethodDescription> latentMatcher, String str, String str2) {
                        super(latentMatcher);
                        this.enter = str;
                        this.exit = str2;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForUnifiedAdvice extends Entry {
                    public final String name;

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.Transformer.ForAdvice.Entry
                    public boolean equals(@MaybeNull Object obj) {
                        if (super.equals(obj)) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.name.equals(((ForUnifiedAdvice) obj).name);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.Transformer.ForAdvice.Entry
                    public int hashCode() {
                        return (super.hashCode() * 31) + this.name.hashCode();
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.Transformer.ForAdvice.Entry
                    public Advice resolve(Advice.WithCustomMapping withCustomMapping, TypePool typePool, ClassFileLocator classFileLocator) {
                        return withCustomMapping.m15270to(typePool.describe(this.name).resolve(), classFileLocator);
                    }

                    public ForUnifiedAdvice(LatentMatcher<? super MethodDescription> latentMatcher, String str) {
                        super(latentMatcher);
                        this.name = str;
                    }
                }

                public Entry(LatentMatcher<? super MethodDescription> latentMatcher) {
                    this.matcher = latentMatcher;
                }
            }

            public ForAdvice() {
                this(Advice.withCustomMapping());
            }

            public ForAdvice advice(ElementMatcher<? super MethodDescription> elementMatcher, String str) {
                return advice(new LatentMatcher.Resolved(elementMatcher), str);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForAdvice forAdvice = (ForAdvice) obj;
                    return this.advice.equals(forAdvice.advice) && this.exceptionHandler.equals(forAdvice.exceptionHandler) && this.assigner.equals(forAdvice.assigner) && this.classFileLocator.equals(forAdvice.classFileLocator) && this.poolStrategy.equals(forAdvice.poolStrategy) && this.locationStrategy.equals(forAdvice.locationStrategy) && this.entries.equals(forAdvice.entries);
                }
                return false;
            }

            public int hashCode() {
                return (((((((((((((getClass().hashCode() * 31) + this.advice.hashCode()) * 31) + this.exceptionHandler.hashCode()) * 31) + this.assigner.hashCode()) * 31) + this.classFileLocator.hashCode()) * 31) + this.poolStrategy.hashCode()) * 31) + this.locationStrategy.hashCode()) * 31) + this.entries.hashCode();
            }

            public ForAdvice include(ClassLoader... classLoaderArr) {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                for (ClassLoader classLoader : classLoaderArr) {
                    linkedHashSet.add(ClassFileLocator.ForClassLoader.m15176of(classLoader));
                }
                return include(new ArrayList(linkedHashSet));
            }

            public ForAdvice with(PoolStrategy poolStrategy) {
                return new ForAdvice(this.advice, this.exceptionHandler, this.assigner, this.classFileLocator, poolStrategy, this.locationStrategy, this.entries);
            }

            public ForAdvice withExceptionHandler(Advice.ExceptionHandler exceptionHandler) {
                return new ForAdvice(this.advice, exceptionHandler, this.assigner, this.classFileLocator, this.poolStrategy, this.locationStrategy, this.entries);
            }

            public ForAdvice(Advice.WithCustomMapping withCustomMapping) {
                this(withCustomMapping, Advice.ExceptionHandler.Default.SUPPRESSING, Assigner.DEFAULT, ClassFileLocator.NoOp.INSTANCE, PoolStrategy.Default.FAST, LocationStrategy.ForClassLoader.STRONG, Collections.emptyList());
            }

            public ForAdvice advice(LatentMatcher<? super MethodDescription> latentMatcher, String str) {
                return new ForAdvice(this.advice, this.exceptionHandler, this.assigner, this.classFileLocator, this.poolStrategy, this.locationStrategy, CompoundList.m14777of(this.entries, new Entry.ForUnifiedAdvice(latentMatcher, str)));
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Transformer
            public DynamicType.Builder<?> transform(DynamicType.Builder<?> builder, TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, ProtectionDomain protectionDomain) {
                ClassFileLocator.Compound compound = new ClassFileLocator.Compound(this.classFileLocator, this.locationStrategy.classFileLocator(classLoader, javaModule));
                TypePool typePool = this.poolStrategy.typePool(compound, classLoader);
                AsmVisitorWrapper.ForDeclaredMethods forDeclaredMethods = new AsmVisitorWrapper.ForDeclaredMethods();
                for (Entry entry : this.entries) {
                    forDeclaredMethods = forDeclaredMethods.invokable(entry.getMatcher().resolve(typeDescription), entry.resolve(this.advice, typePool, compound).withAssigner(this.assigner).withExceptionHandler(this.exceptionHandler));
                }
                return builder.visit(forDeclaredMethods);
            }

            public ForAdvice with(LocationStrategy locationStrategy) {
                return new ForAdvice(this.advice, this.exceptionHandler, this.assigner, this.classFileLocator, this.poolStrategy, locationStrategy, this.entries);
            }

            public ForAdvice with(Assigner assigner) {
                return new ForAdvice(this.advice, this.exceptionHandler, assigner, this.classFileLocator, this.poolStrategy, this.locationStrategy, this.entries);
            }

            public ForAdvice advice(ElementMatcher<? super MethodDescription> elementMatcher, String str, String str2) {
                return advice(new LatentMatcher.Resolved(elementMatcher), str, str2);
            }

            public ForAdvice(Advice.WithCustomMapping withCustomMapping, Advice.ExceptionHandler exceptionHandler, Assigner assigner, ClassFileLocator classFileLocator, PoolStrategy poolStrategy, LocationStrategy locationStrategy, List<Entry> list) {
                this.advice = withCustomMapping;
                this.exceptionHandler = exceptionHandler;
                this.assigner = assigner;
                this.classFileLocator = classFileLocator;
                this.poolStrategy = poolStrategy;
                this.locationStrategy = locationStrategy;
                this.entries = list;
            }

            public ForAdvice advice(LatentMatcher<? super MethodDescription> latentMatcher, String str, String str2) {
                return new ForAdvice(this.advice, this.exceptionHandler, this.assigner, this.classFileLocator, this.poolStrategy, this.locationStrategy, CompoundList.m14777of(this.entries, new Entry.ForSplitAdvice(latentMatcher, str, str2)));
            }

            public ForAdvice include(ClassFileLocator... classFileLocatorArr) {
                return include(Arrays.asList(classFileLocatorArr));
            }

            public ForAdvice include(List<? extends ClassFileLocator> list) {
                return new ForAdvice(this.advice, this.exceptionHandler, this.assigner, new ClassFileLocator.Compound(CompoundList.m14778of(this.classFileLocator, list)), this.poolStrategy, this.locationStrategy, this.entries);
            }
        }

        DynamicType.Builder<?> transform(DynamicType.Builder<?> builder, TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, ProtectionDomain protectionDomain);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForBuildPlugin implements Transformer {
            private final Plugin plugin;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.plugin.equals(((ForBuildPlugin) obj).plugin);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.plugin.hashCode();
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.Transformer
            public DynamicType.Builder<?> transform(DynamicType.Builder<?> builder, TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, ProtectionDomain protectionDomain) {
                return this.plugin.apply(builder, typeDescription, ClassFileLocator.ForClassLoader.m15176of(classLoader));
            }

            public ForBuildPlugin(Plugin plugin) {
                this.plugin = plugin;
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface TransformerDecorator {

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Compound implements TransformerDecorator {
            private final List<TransformerDecorator> transformerDecorators;

            public Compound(TransformerDecorator... transformerDecoratorArr) {
                this(Arrays.asList(transformerDecoratorArr));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.transformerDecorators.equals(((Compound) obj).transformerDecorators);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.transformerDecorators.hashCode();
            }

            public Compound(List<? extends TransformerDecorator> list) {
                this.transformerDecorators = new ArrayList();
                for (TransformerDecorator transformerDecorator : list) {
                    if (transformerDecorator instanceof Compound) {
                        this.transformerDecorators.addAll(((Compound) transformerDecorator).transformerDecorators);
                    } else if (!(transformerDecorator instanceof NoOp)) {
                        this.transformerDecorators.add(transformerDecorator);
                    }
                }
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.TransformerDecorator
            public ResettableClassFileTransformer decorate(ResettableClassFileTransformer resettableClassFileTransformer) {
                for (TransformerDecorator transformerDecorator : this.transformerDecorators) {
                    resettableClassFileTransformer = transformerDecorator.decorate(resettableClassFileTransformer);
                }
                return resettableClassFileTransformer;
            }
        }

        /* loaded from: classes2.dex */
        public enum NoOp implements TransformerDecorator {
            INSTANCE;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.TransformerDecorator
            public ResettableClassFileTransformer decorate(ResettableClassFileTransformer resettableClassFileTransformer) {
                return resettableClassFileTransformer;
            }
        }

        ResettableClassFileTransformer decorate(ResettableClassFileTransformer resettableClassFileTransformer);
    }

    /* loaded from: classes2.dex */
    public interface TypeStrategy {

        /* loaded from: classes2.dex */
        public enum Default implements TypeStrategy {
            REBASE { // from class: net.bytebuddy.agent.builder.AgentBuilder.TypeStrategy.Default.1
                @Override // net.bytebuddy.agent.builder.AgentBuilder.TypeStrategy
                public DynamicType.Builder<?> builder(TypeDescription typeDescription, ByteBuddy byteBuddy, ClassFileLocator classFileLocator, MethodNameTransformer methodNameTransformer, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull ProtectionDomain protectionDomain) {
                    return byteBuddy.rebase(typeDescription, classFileLocator, methodNameTransformer);
                }
            },
            REDEFINE { // from class: net.bytebuddy.agent.builder.AgentBuilder.TypeStrategy.Default.2
                @Override // net.bytebuddy.agent.builder.AgentBuilder.TypeStrategy
                public DynamicType.Builder<?> builder(TypeDescription typeDescription, ByteBuddy byteBuddy, ClassFileLocator classFileLocator, MethodNameTransformer methodNameTransformer, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull ProtectionDomain protectionDomain) {
                    return byteBuddy.redefine(typeDescription, classFileLocator);
                }
            },
            REDEFINE_FROZEN { // from class: net.bytebuddy.agent.builder.AgentBuilder.TypeStrategy.Default.3
                @Override // net.bytebuddy.agent.builder.AgentBuilder.TypeStrategy
                public DynamicType.Builder<?> builder(TypeDescription typeDescription, ByteBuddy byteBuddy, ClassFileLocator classFileLocator, MethodNameTransformer methodNameTransformer, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull ProtectionDomain protectionDomain) {
                    return byteBuddy.with(InstrumentedType.Factory.Default.FROZEN).with(VisibilityBridgeStrategy.Default.NEVER).redefine(typeDescription, classFileLocator).ignoreAlso(LatentMatcher.ForSelfDeclaredMethod.NOT_DECLARED);
                }
            },
            DECORATE { // from class: net.bytebuddy.agent.builder.AgentBuilder.TypeStrategy.Default.4
                @Override // net.bytebuddy.agent.builder.AgentBuilder.TypeStrategy
                public DynamicType.Builder<?> builder(TypeDescription typeDescription, ByteBuddy byteBuddy, ClassFileLocator classFileLocator, MethodNameTransformer methodNameTransformer, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull ProtectionDomain protectionDomain) {
                    return byteBuddy.decorate(typeDescription, classFileLocator);
                }
            }
        }

        DynamicType.Builder<?> builder(TypeDescription typeDescription, ByteBuddy byteBuddy, ClassFileLocator classFileLocator, MethodNameTransformer methodNameTransformer, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull ProtectionDomain protectionDomain);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForBuildEntryPoint implements TypeStrategy {
            private final EntryPoint entryPoint;

            @Override // net.bytebuddy.agent.builder.AgentBuilder.TypeStrategy
            public DynamicType.Builder<?> builder(TypeDescription typeDescription, ByteBuddy byteBuddy, ClassFileLocator classFileLocator, MethodNameTransformer methodNameTransformer, @MaybeNull ClassLoader classLoader, @MaybeNull JavaModule javaModule, @MaybeNull ProtectionDomain protectionDomain) {
                return this.entryPoint.transform(typeDescription, byteBuddy, classFileLocator, methodNameTransformer);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.entryPoint.equals(((ForBuildEntryPoint) obj).entryPoint);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.entryPoint.hashCode();
            }

            public ForBuildEntryPoint(EntryPoint entryPoint) {
                this.entryPoint = entryPoint;
            }
        }
    }

    AgentBuilder assureReadEdgeFromAndTo(Instrumentation instrumentation, Collection<? extends JavaModule> collection);

    AgentBuilder assureReadEdgeFromAndTo(Instrumentation instrumentation, Class<?>... clsArr);

    AgentBuilder assureReadEdgeFromAndTo(Instrumentation instrumentation, JavaModule... javaModuleArr);

    AgentBuilder assureReadEdgeTo(Instrumentation instrumentation, Collection<? extends JavaModule> collection);

    AgentBuilder assureReadEdgeTo(Instrumentation instrumentation, Class<?>... clsArr);

    AgentBuilder assureReadEdgeTo(Instrumentation instrumentation, JavaModule... javaModuleArr);

    AgentBuilder disableClassFormatChanges();

    AgentBuilder disableNativeMethodPrefix();

    AgentBuilder enableNativeMethodPrefix(String str);

    Ignored ignore(RawMatcher rawMatcher);

    Ignored ignore(ElementMatcher<? super TypeDescription> elementMatcher);

    Ignored ignore(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2);

    Ignored ignore(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2, ElementMatcher<? super JavaModule> elementMatcher3);

    ResettableClassFileTransformer installOn(Instrumentation instrumentation);

    ResettableClassFileTransformer installOnByteBuddyAgent();

    ClassFileTransformer makeRaw();

    ResettableClassFileTransformer patchOn(Instrumentation instrumentation, ResettableClassFileTransformer resettableClassFileTransformer);

    ResettableClassFileTransformer patchOnByteBuddyAgent(ResettableClassFileTransformer resettableClassFileTransformer);

    Identified.Narrowable type(RawMatcher rawMatcher);

    Identified.Narrowable type(ElementMatcher<? super TypeDescription> elementMatcher);

    Identified.Narrowable type(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2);

    Identified.Narrowable type(ElementMatcher<? super TypeDescription> elementMatcher, ElementMatcher<? super ClassLoader> elementMatcher2, ElementMatcher<? super JavaModule> elementMatcher3);

    AgentBuilder warmUp(Collection<Class<?>> collection);

    AgentBuilder warmUp(Class<?>... clsArr);

    RedefinitionListenable.WithoutBatchStrategy with(RedefinitionStrategy redefinitionStrategy);

    AgentBuilder with(ByteBuddy byteBuddy);

    AgentBuilder with(CircularityLock circularityLock);

    AgentBuilder with(ClassFileBufferStrategy classFileBufferStrategy);

    AgentBuilder with(DescriptionStrategy descriptionStrategy);

    AgentBuilder with(FallbackStrategy fallbackStrategy);

    AgentBuilder with(InitializationStrategy initializationStrategy);

    AgentBuilder with(InjectionStrategy injectionStrategy);

    AgentBuilder with(InstallationListener installationListener);

    AgentBuilder with(LambdaInstrumentationStrategy lambdaInstrumentationStrategy);

    AgentBuilder with(Listener listener);

    AgentBuilder with(LocationStrategy locationStrategy);

    AgentBuilder with(PoolStrategy poolStrategy);

    AgentBuilder with(TransformerDecorator transformerDecorator);

    AgentBuilder with(TypeStrategy typeStrategy);

    /* loaded from: classes2.dex */
    public enum LambdaInstrumentationStrategy {
        ENABLED { // from class: net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy.1
            @Override // net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy
            public boolean isInstrumented(@MaybeNull Class<?> cls) {
                return true;
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy
            public void apply(ByteBuddy byteBuddy, Instrumentation instrumentation, ClassFileTransformer classFileTransformer) {
                if (LambdaFactory.register(classFileTransformer, new LambdaInstanceFactory(byteBuddy))) {
                    try {
                        Class<?> cls = Class.forName("java.lang.invoke.LambdaMetafactory");
                        byteBuddy.with(Implementation.Context.Disabled.Factory.INSTANCE).redefine(cls).method(ElementMatchers.isPublic().and(ElementMatchers.named("metafactory"))).intercept(new Implementation.Simple(LambdaMetafactoryFactory.REGULAR)).method(ElementMatchers.isPublic().and(ElementMatchers.named("altMetafactory"))).intercept(new Implementation.Simple(LambdaMetafactoryFactory.ALTERNATIVE)).make().load(cls.getClassLoader(), ClassReloadingStrategy.m15141of(instrumentation));
                    } catch (ClassNotFoundException unused) {
                    }
                }
            }
        },
        DISABLED { // from class: net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy.2
            @Override // net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy
            public void apply(ByteBuddy byteBuddy, Instrumentation instrumentation, ClassFileTransformer classFileTransformer) {
            }

            @Override // net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy
            public boolean isInstrumented(@MaybeNull Class<?> cls) {
                return cls == null || !cls.getName().contains("/");
            }
        };

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class LambdaInstanceFactory {
            private static final String FIELD_PREFIX = "arg$";
            private static final String LAMBDA_FACTORY = "get$Lambda";
            private static final AtomicInteger LAMBDA_NAME_COUNTER = new AtomicInteger();
            private static final String LAMBDA_TYPE_INFIX = "$$Lambda$ByteBuddy$";
            @AlwaysNull
            private static final Class<?> NOT_PREVIOUSLY_DEFINED = null;
            private final ByteBuddy byteBuddy;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class BridgeMethodImplementation implements Implementation {
                private final JavaConstant.MethodType lambdaMethod;
                private final String lambdaMethodName;

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Appender implements ByteCodeAppender {
                    private final Implementation.SpecialMethodInvocation bridgeTargetInvocation;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.bridgeTargetInvocation.equals(((Appender) obj).bridgeTargetInvocation);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.bridgeTargetInvocation.hashCode();
                    }

                    @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
                    public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                        StackManipulation m14971to;
                        ByteCodeAppender[] byteCodeAppenderArr = new ByteCodeAppender[1];
                        StackManipulation[] stackManipulationArr = new StackManipulation[4];
                        stackManipulationArr[0] = MethodVariableAccess.allArgumentsOf(methodDescription).asBridgeOf(this.bridgeTargetInvocation.getMethodDescription()).prependThisReference();
                        Implementation.SpecialMethodInvocation specialMethodInvocation = this.bridgeTargetInvocation;
                        stackManipulationArr[1] = specialMethodInvocation;
                        if (specialMethodInvocation.getMethodDescription().getReturnType().asErasure().isAssignableTo(methodDescription.getReturnType().asErasure())) {
                            m14971to = StackManipulation.Trivial.INSTANCE;
                        } else {
                            m14971to = TypeCasting.m14971to(methodDescription.getReturnType());
                        }
                        stackManipulationArr[2] = m14971to;
                        stackManipulationArr[3] = MethodReturn.m14940of(methodDescription.getReturnType());
                        byteCodeAppenderArr[0] = new ByteCodeAppender.Simple(stackManipulationArr);
                        return new ByteCodeAppender.Compound(byteCodeAppenderArr).apply(methodVisitor, context, methodDescription);
                    }

                    public Appender(Implementation.SpecialMethodInvocation specialMethodInvocation) {
                        this.bridgeTargetInvocation = specialMethodInvocation;
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        BridgeMethodImplementation bridgeMethodImplementation = (BridgeMethodImplementation) obj;
                        return this.lambdaMethodName.equals(bridgeMethodImplementation.lambdaMethodName) && this.lambdaMethod.equals(bridgeMethodImplementation.lambdaMethod);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.lambdaMethodName.hashCode()) * 31) + this.lambdaMethod.hashCode();
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.Implementation
                public ByteCodeAppender appender(Implementation.Target target) {
                    return new Appender(target.invokeSuper(new MethodDescription.SignatureToken(this.lambdaMethodName, this.lambdaMethod.getReturnType(), this.lambdaMethod.getParameterTypes())));
                }

                public BridgeMethodImplementation(String str, JavaConstant.MethodType methodType) {
                    this.lambdaMethodName = str;
                    this.lambdaMethod = methodType;
                }
            }

            /* loaded from: classes2.dex */
            public enum FactoryImplementation implements Implementation {
                INSTANCE;

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Appender implements ByteCodeAppender {
                    private final TypeDescription instrumentedType;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.instrumentedType.equals(((Appender) obj).instrumentedType);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.instrumentedType.hashCode();
                    }

                    @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
                    public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                        return new ByteCodeAppender.Size(new StackManipulation.Compound(TypeCreation.m14974of(this.instrumentedType), Duplication.SINGLE, MethodVariableAccess.allArgumentsOf(methodDescription), MethodInvocation.invoke((MethodDescription.InDefinedShape) this.instrumentedType.getDeclaredMethods().filter(ElementMatchers.isConstructor()).getOnly()), MethodReturn.REFERENCE).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
                    }

                    public Appender(TypeDescription typeDescription) {
                        this.instrumentedType = typeDescription;
                    }
                }

                @Override // net.bytebuddy.implementation.Implementation
                public ByteCodeAppender appender(Implementation.Target target) {
                    return new Appender(target.getInstrumentedType());
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class LambdaMethodImplementation implements Implementation {
                private final JavaConstant.MethodType specializedLambdaMethod;
                private final JavaConstant.MethodHandle targetMethod;
                private final TypeDescription targetType;

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Appender implements ByteCodeAppender {
                    private static final Dispatcher LOOKUP_DATA_DISPATCHER = dispatcher();
                    private final List<FieldDescription.InDefinedShape> declaredFields;
                    private final Dispatcher dispatcher;
                    private final JavaConstant.MethodType specializedLambdaMethod;
                    private final MethodDescription targetMethod;

                    /* loaded from: classes2.dex */
                    public interface Dispatcher {

                        /* loaded from: classes2.dex */
                        public enum UsingDirectInvocation implements Dispatcher {
                            INSTANCE;

                            @Override // net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy.LambdaInstanceFactory.LambdaMethodImplementation.Appender.Dispatcher
                            public StackManipulation initialize() {
                                return StackManipulation.Trivial.INSTANCE;
                            }

                            @Override // net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy.LambdaInstanceFactory.LambdaMethodImplementation.Appender.Dispatcher
                            public StackManipulation invoke(MethodDescription methodDescription) {
                                return MethodInvocation.invoke(methodDescription);
                            }
                        }

                        @HashCodeAndEqualsPlugin.Enhance
                        /* loaded from: classes.dex */
                        public static class UsingMethodHandle extends StackManipulation.AbstractBase implements Dispatcher {
                            private final MethodDescription.InDefinedShape invokeExact;

                            public boolean equals(@MaybeNull Object obj) {
                                if (this == obj) {
                                    return true;
                                }
                                return obj != null && getClass() == obj.getClass() && this.invokeExact.equals(((UsingMethodHandle) obj).invokeExact);
                            }

                            public int hashCode() {
                                return (getClass().hashCode() * 31) + this.invokeExact.hashCode();
                            }

                            @Override // net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy.LambdaInstanceFactory.LambdaMethodImplementation.Appender.Dispatcher
                            public StackManipulation initialize() {
                                return this;
                            }

                            @Override // net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy.LambdaInstanceFactory.LambdaMethodImplementation.Appender.Dispatcher
                            public StackManipulation invoke(MethodDescription methodDescription) {
                                return MethodInvocation.invoke(this.invokeExact);
                            }

                            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
                            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                                methodVisitor.visitLdcInsn(new ConstantDynamic(JavaConstant.Dynamic.DEFAULT_NAME, "Ljava/lang/invoke/MethodHandle;", new Handle(6, "java/lang/invoke/MethodHandles", "classData", "(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", false), new Object[0]));
                                return new StackManipulation.Size(1, 1);
                            }

                            public UsingMethodHandle(MethodDescription.InDefinedShape inDefinedShape) {
                                this.invokeExact = inDefinedShape;
                            }
                        }

                        StackManipulation initialize();

                        StackManipulation invoke(MethodDescription methodDescription);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Appender appender = (Appender) obj;
                            return this.targetMethod.equals(appender.targetMethod) && this.specializedLambdaMethod.equals(appender.specializedLambdaMethod) && this.declaredFields.equals(appender.declaredFields) && this.dispatcher.equals(appender.dispatcher);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((((((getClass().hashCode() * 31) + this.targetMethod.hashCode()) * 31) + this.specializedLambdaMethod.hashCode()) * 31) + this.declaredFields.hashCode()) * 31) + this.dispatcher.hashCode();
                    }

                    @SuppressFBWarnings(justification = "Exception should not be rethrown but trigger a fallback.", value = {"REC_CATCH_EXCEPTION"})
                    private static Dispatcher dispatcher() {
                        try {
                            Class<?> cls = Class.forName("java.lang.invoke.MethodHandles$Lookup", false, null);
                            cls.getMethod("classData", cls, String.class, Class.class);
                            return new Dispatcher.UsingMethodHandle(new MethodDescription.ForLoadedMethod(Class.forName("java.lang.invoke.MethodHandle", false, null).getMethod("invokeExact", Object[].class)));
                        } catch (Exception unused) {
                            return Dispatcher.UsingDirectInvocation.INSTANCE;
                        }
                    }

                    /* renamed from: of */
                    public static ByteCodeAppender m15359of(MethodDescription methodDescription, JavaConstant.MethodType methodType, List<FieldDescription.InDefinedShape> list, JavaConstant.MethodHandle.HandleType handleType, TypeDescription typeDescription) {
                        Dispatcher dispatcher;
                        if (handleType != JavaConstant.MethodHandle.HandleType.INVOKE_SPECIAL && methodDescription.getDeclaringType().asErasure().isVisibleTo(typeDescription)) {
                            dispatcher = Dispatcher.UsingDirectInvocation.INSTANCE;
                        } else {
                            dispatcher = LOOKUP_DATA_DISPATCHER;
                        }
                        return new Appender(methodDescription, methodType, list, dispatcher);
                    }

                    @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
                    public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                        StackManipulation stackManipulation;
                        TypeDescription.Generic returnType;
                        ArrayList arrayList = new ArrayList((this.declaredFields.size() * 2) + 1);
                        for (FieldDescription.InDefinedShape inDefinedShape : this.declaredFields) {
                            arrayList.add(MethodVariableAccess.loadThis());
                            arrayList.add(FieldAccess.forField(inDefinedShape).read());
                        }
                        ArrayList arrayList2 = new ArrayList(methodDescription.getParameters().size() * 2);
                        Iterator<T> it = methodDescription.getParameters().iterator();
                        while (it.hasNext()) {
                            ParameterDescription parameterDescription = (ParameterDescription) it.next();
                            arrayList2.add(MethodVariableAccess.load(parameterDescription));
                            arrayList2.add(Assigner.DEFAULT.assign(parameterDescription.getType(), this.specializedLambdaMethod.getParameterTypes().get(parameterDescription.getIndex()).asGenericType(), Assigner.Typing.DYNAMIC));
                        }
                        StackManipulation[] stackManipulationArr = new StackManipulation[7];
                        if (this.targetMethod.isConstructor()) {
                            stackManipulation = new StackManipulation.Compound(TypeCreation.m14974of(this.targetMethod.getDeclaringType().asErasure()), Duplication.SINGLE);
                        } else {
                            stackManipulation = StackManipulation.Trivial.INSTANCE;
                        }
                        stackManipulationArr[0] = stackManipulation;
                        stackManipulationArr[1] = this.dispatcher.initialize();
                        stackManipulationArr[2] = new StackManipulation.Compound(arrayList);
                        stackManipulationArr[3] = new StackManipulation.Compound(arrayList2);
                        stackManipulationArr[4] = this.dispatcher.invoke(this.targetMethod);
                        Assigner assigner = Assigner.DEFAULT;
                        if (this.targetMethod.isConstructor()) {
                            returnType = this.targetMethod.getDeclaringType().asGenericType();
                        } else {
                            returnType = this.targetMethod.getReturnType();
                        }
                        stackManipulationArr[5] = assigner.assign(returnType, this.specializedLambdaMethod.getReturnType().asGenericType(), Assigner.Typing.DYNAMIC);
                        stackManipulationArr[6] = MethodReturn.m14940of(this.specializedLambdaMethod.getReturnType());
                        return new ByteCodeAppender.Size(new StackManipulation.Compound(stackManipulationArr).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
                    }

                    public Appender(MethodDescription methodDescription, JavaConstant.MethodType methodType, List<FieldDescription.InDefinedShape> list, Dispatcher dispatcher) {
                        this.targetMethod = methodDescription;
                        this.specializedLambdaMethod = methodType;
                        this.declaredFields = list;
                        this.dispatcher = dispatcher;
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        LambdaMethodImplementation lambdaMethodImplementation = (LambdaMethodImplementation) obj;
                        return this.targetType.equals(lambdaMethodImplementation.targetType) && this.targetMethod.equals(lambdaMethodImplementation.targetMethod) && this.specializedLambdaMethod.equals(lambdaMethodImplementation.specializedLambdaMethod);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((getClass().hashCode() * 31) + this.targetType.hashCode()) * 31) + this.targetMethod.hashCode()) * 31) + this.specializedLambdaMethod.hashCode();
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.Implementation
                public ByteCodeAppender appender(Implementation.Target target) {
                    return Appender.m15359of((MethodDescription) this.targetMethod.getOwnerType().getDeclaredMethods().filter(ElementMatchers.hasMethodName(this.targetMethod.getName()).and(ElementMatchers.returns(this.targetMethod.getReturnType())).and(ElementMatchers.takesArguments(this.targetMethod.getParameterTypes()))).getOnly(), this.specializedLambdaMethod, target.getInstrumentedType().getDeclaredFields(), this.targetMethod.getHandleType(), this.targetType);
                }

                public LambdaMethodImplementation(TypeDescription typeDescription, JavaConstant.MethodHandle methodHandle, JavaConstant.MethodType methodType) {
                    this.targetType = typeDescription;
                    this.targetMethod = methodHandle;
                    this.specializedLambdaMethod = methodType;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class SerializationImplementation implements Implementation {
                private final JavaConstant.MethodType lambdaMethod;
                private final String lambdaMethodName;
                private final TypeDescription lambdaType;
                private final JavaConstant.MethodType specializedMethod;
                private final JavaConstant.MethodHandle targetMethod;
                private final TypeDescription targetType;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        SerializationImplementation serializationImplementation = (SerializationImplementation) obj;
                        return this.lambdaMethodName.equals(serializationImplementation.lambdaMethodName) && this.targetType.equals(serializationImplementation.targetType) && this.lambdaType.equals(serializationImplementation.lambdaType) && this.lambdaMethod.equals(serializationImplementation.lambdaMethod) && this.targetMethod.equals(serializationImplementation.targetMethod) && this.specializedMethod.equals(serializationImplementation.specializedMethod);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((((((((getClass().hashCode() * 31) + this.targetType.hashCode()) * 31) + this.lambdaType.hashCode()) * 31) + this.lambdaMethodName.hashCode()) * 31) + this.lambdaMethod.hashCode()) * 31) + this.targetMethod.hashCode()) * 31) + this.specializedMethod.hashCode();
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.Implementation
                public ByteCodeAppender appender(Implementation.Target target) {
                    try {
                        TypeDescription m15196of = TypeDescription.ForLoadedType.m15196of(Class.forName("java.lang.invoke.SerializedLambda"));
                        ArrayList arrayList = new ArrayList(target.getInstrumentedType().getDeclaredFields().size());
                        for (FieldDescription.InDefinedShape inDefinedShape : target.getInstrumentedType().getDeclaredFields()) {
                            arrayList.add(new StackManipulation.Compound(MethodVariableAccess.loadThis(), FieldAccess.forField(inDefinedShape).read(), Assigner.DEFAULT.assign(inDefinedShape.getType(), TypeDescription.Generic.OBJECT, Assigner.Typing.STATIC)));
                        }
                        return new ByteCodeAppender.Simple(new StackManipulation.Compound(TypeCreation.m14974of(m15196of), Duplication.SINGLE, ClassConstant.m14958of(this.targetType), new TextConstant(this.lambdaType.getInternalName()), new TextConstant(this.lambdaMethodName), new TextConstant(this.lambdaMethod.getDescriptor()), IntegerConstant.forValue(this.targetMethod.getHandleType().getIdentifier()), new TextConstant(this.targetMethod.getOwnerType().getInternalName()), new TextConstant(this.targetMethod.getName()), new TextConstant(this.targetMethod.getDescriptor()), new TextConstant(this.specializedMethod.getDescriptor()), ArrayFactory.forType(TypeDescription.Generic.OBJECT).withValues(arrayList), MethodInvocation.invoke((MethodDescription.InDefinedShape) m15196of.getDeclaredMethods().filter(ElementMatchers.isConstructor()).getOnly()), MethodReturn.REFERENCE));
                    } catch (ClassNotFoundException e) {
                        throw new IllegalStateException("Cannot find class for lambda serialization", e);
                    }
                }

                public SerializationImplementation(TypeDescription typeDescription, TypeDescription typeDescription2, String str, JavaConstant.MethodType methodType, JavaConstant.MethodHandle methodHandle, JavaConstant.MethodType methodType2) {
                    this.targetType = typeDescription;
                    this.lambdaType = typeDescription2;
                    this.lambdaMethodName = str;
                    this.lambdaMethod = methodType;
                    this.targetMethod = methodHandle;
                    this.specializedMethod = methodType2;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.byteBuddy.equals(((LambdaInstanceFactory) obj).byteBuddy);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.byteBuddy.hashCode();
            }

            public byte[] make(Object obj, String str, Object obj2, Object obj3, Object obj4, Object obj5, boolean z, List<Class<?>> list, List<?> list2, Collection<? extends ClassFileTransformer> collection) {
                char c;
                JavaConstant.MethodType ofLoaded = JavaConstant.MethodType.ofLoaded(obj2);
                JavaConstant.MethodType ofLoaded2 = JavaConstant.MethodType.ofLoaded(obj3);
                JavaConstant.MethodHandle ofLoaded3 = JavaConstant.MethodHandle.ofLoaded(obj4, obj);
                JavaConstant.MethodType ofLoaded4 = JavaConstant.MethodType.ofLoaded(obj5);
                Class<?> lookupType = JavaConstant.MethodHandle.lookupType(obj);
                String str2 = lookupType.getName() + LAMBDA_TYPE_INFIX + LAMBDA_NAME_COUNTER.incrementAndGet();
                DynamicType.Builder<?> subclass = this.byteBuddy.subclass(ofLoaded.getReturnType(), ConstructorStrategy.Default.NO_CONSTRUCTORS);
                Visibility visibility = Visibility.PUBLIC;
                DynamicType.Builder intercept = subclass.modifiers(TypeManifestation.FINAL, visibility).implement((List<? extends java.lang.reflect.Type>) list).name(str2).defineConstructor(visibility).withParameters((Collection<? extends TypeDefinition>) ofLoaded.getParameterTypes()).intercept(ConstructorImplementation.INSTANCE).method(ElementMatchers.named(str).and(ElementMatchers.takesArguments(ofLoaded2.getParameterTypes())).and(ElementMatchers.returns(ofLoaded2.getReturnType()))).intercept(new LambdaMethodImplementation(TypeDescription.ForLoadedType.m15196of(lookupType), ofLoaded3, ofLoaded4));
                int i = 0;
                for (TypeDescription typeDescription : ofLoaded.getParameterTypes()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(FIELD_PREFIX);
                    i++;
                    sb.append(i);
                    intercept = intercept.defineField(sb.toString(), typeDescription, Visibility.PRIVATE, FieldManifestation.FINAL);
                }
                if (!ofLoaded.getParameterTypes().isEmpty()) {
                    intercept = intercept.defineMethod(LAMBDA_FACTORY, ofLoaded.getReturnType(), Visibility.PRIVATE, Ownership.STATIC).withParameters((Collection<? extends TypeDefinition>) ofLoaded.getParameterTypes()).intercept(FactoryImplementation.INSTANCE);
                }
                if (z) {
                    if (list.contains(Serializable.class)) {
                        c = 0;
                    } else {
                        c = 0;
                        intercept = intercept.implement(Serializable.class);
                    }
                    ModifierContributor.ForMethod[] forMethodArr = new ModifierContributor.ForMethod[1];
                    forMethodArr[c] = Visibility.PRIVATE;
                    intercept = intercept.defineMethod("writeReplace", Object.class, forMethodArr).intercept(new SerializationImplementation(TypeDescription.ForLoadedType.m15196of(lookupType), ofLoaded.getReturnType(), str, ofLoaded2, ofLoaded3, JavaConstant.MethodType.ofLoaded(obj5)));
                } else if (ofLoaded.getReturnType().isAssignableTo(Serializable.class)) {
                    Class cls = Void.TYPE;
                    Visibility visibility2 = Visibility.PRIVATE;
                    intercept = intercept.defineMethod("readObject", cls, visibility2).withParameters(ObjectInputStream.class).throwing(NotSerializableException.class).intercept(ExceptionMethod.throwing(NotSerializableException.class, "Non-serializable lambda")).defineMethod("writeObject", Void.TYPE, visibility2).withParameters(ObjectOutputStream.class).throwing(NotSerializableException.class).intercept(ExceptionMethod.throwing(NotSerializableException.class, "Non-serializable lambda"));
                }
                Iterator<?> it = list2.iterator();
                while (it.hasNext()) {
                    JavaConstant.MethodType ofLoaded5 = JavaConstant.MethodType.ofLoaded(it.next());
                    intercept = intercept.defineMethod(str, ofLoaded5.getReturnType(), MethodManifestation.BRIDGE, Visibility.PUBLIC).withParameters((Collection<? extends TypeDefinition>) ofLoaded5.getParameterTypes()).intercept(new BridgeMethodImplementation(str, ofLoaded2));
                }
                byte[] bytes = intercept.make().getBytes();
                for (ClassFileTransformer classFileTransformer : collection) {
                    try {
                        byte[] transform = classFileTransformer.transform(lookupType.getClassLoader(), str2.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/'), NOT_PREVIOUSLY_DEFINED, lookupType.getProtectionDomain(), bytes);
                        if (transform != null) {
                            bytes = transform;
                        }
                    } catch (Throwable unused) {
                    }
                }
                return bytes;
            }

            /* loaded from: classes2.dex */
            public enum ConstructorImplementation implements Implementation {
                INSTANCE;
                
                private final transient MethodDescription.InDefinedShape objectConstructor = (MethodDescription.InDefinedShape) TypeDescription.OBJECT.getDeclaredMethods().filter(ElementMatchers.isConstructor()).getOnly();

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Appender implements ByteCodeAppender {
                    private final List<FieldDescription.InDefinedShape> declaredFields;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.declaredFields.equals(((Appender) obj).declaredFields);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.declaredFields.hashCode();
                    }

                    @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
                    public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                        ArrayList arrayList = new ArrayList(this.declaredFields.size() * 3);
                        Iterator<T> it = methodDescription.getParameters().iterator();
                        while (it.hasNext()) {
                            ParameterDescription parameterDescription = (ParameterDescription) it.next();
                            arrayList.add(MethodVariableAccess.loadThis());
                            arrayList.add(MethodVariableAccess.load(parameterDescription));
                            arrayList.add(FieldAccess.forField(this.declaredFields.get(parameterDescription.getIndex())).write());
                        }
                        return new ByteCodeAppender.Size(new StackManipulation.Compound(MethodVariableAccess.loadThis(), MethodInvocation.invoke(ConstructorImplementation.INSTANCE.objectConstructor), new StackManipulation.Compound(arrayList), MethodReturn.VOID).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
                    }

                    public Appender(List<FieldDescription.InDefinedShape> list) {
                        this.declaredFields = list;
                    }
                }

                @Override // net.bytebuddy.implementation.Implementation
                public ByteCodeAppender appender(Implementation.Target target) {
                    return new Appender(target.getInstrumentedType().getDeclaredFields());
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                ConstructorImplementation() {
                }
            }

            public LambdaInstanceFactory(ByteBuddy byteBuddy) {
                this.byteBuddy = byteBuddy;
            }
        }

        /* loaded from: classes2.dex */
        public enum LambdaMetafactoryFactory implements ByteCodeAppender {
            REGULAR(6, 11) { // from class: net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy.LambdaMetafactoryFactory.1
                @Override // net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy.LambdaMetafactoryFactory
                public void onDispatch(MethodVisitor methodVisitor) {
                    methodVisitor.visitInsn(3);
                    methodVisitor.visitVarInsn(54, 6);
                    methodVisitor.visitMethodInsn(184, "java/util/Collections", "emptyList", "()Ljava/util/List;", false);
                    methodVisitor.visitVarInsn(58, 7);
                    methodVisitor.visitMethodInsn(184, "java/util/Collections", "emptyList", "()Ljava/util/List;", false);
                    methodVisitor.visitVarInsn(58, 8);
                    methodVisitor.visitFrame(1, 3, new Object[]{Opcodes.INTEGER, "java/util/List", "java/util/List"}, 0, null);
                }
            },
            ALTERNATIVE(6, 16) { // from class: net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy.LambdaMetafactoryFactory.2
                @Override // net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy.LambdaMetafactoryFactory
                public void onDispatch(MethodVisitor methodVisitor) {
                    methodVisitor.visitVarInsn(25, 3);
                    methodVisitor.visitInsn(6);
                    methodVisitor.visitInsn(50);
                    methodVisitor.visitTypeInsn(192, "java/lang/Integer");
                    methodVisitor.visitMethodInsn(182, "java/lang/Integer", "intValue", "()I", false);
                    methodVisitor.visitVarInsn(54, 4);
                    methodVisitor.visitInsn(7);
                    methodVisitor.visitVarInsn(54, 5);
                    methodVisitor.visitVarInsn(21, 4);
                    methodVisitor.visitInsn(5);
                    methodVisitor.visitInsn(126);
                    Label label = new Label();
                    methodVisitor.visitJumpInsn(153, label);
                    methodVisitor.visitVarInsn(25, 3);
                    methodVisitor.visitVarInsn(21, 5);
                    methodVisitor.visitIincInsn(5, 1);
                    methodVisitor.visitInsn(50);
                    methodVisitor.visitTypeInsn(192, "java/lang/Integer");
                    methodVisitor.visitMethodInsn(182, "java/lang/Integer", "intValue", "()I", false);
                    methodVisitor.visitVarInsn(54, 7);
                    methodVisitor.visitVarInsn(21, 7);
                    methodVisitor.visitTypeInsn(189, TypeProxy.SilentConstruction.Appender.JAVA_LANG_CLASS_INTERNAL_NAME);
                    methodVisitor.visitVarInsn(58, 6);
                    methodVisitor.visitVarInsn(25, 3);
                    methodVisitor.visitVarInsn(21, 5);
                    methodVisitor.visitVarInsn(25, 6);
                    methodVisitor.visitInsn(3);
                    methodVisitor.visitVarInsn(21, 7);
                    methodVisitor.visitMethodInsn(184, "java/lang/System", "arraycopy", "(Ljava/lang/Object;ILjava/lang/Object;II)V", false);
                    methodVisitor.visitVarInsn(21, 5);
                    methodVisitor.visitVarInsn(21, 7);
                    methodVisitor.visitInsn(96);
                    methodVisitor.visitVarInsn(54, 5);
                    Label label2 = new Label();
                    methodVisitor.visitJumpInsn(167, label2);
                    methodVisitor.visitLabel(label);
                    Integer num = Opcodes.INTEGER;
                    methodVisitor.visitFrame(1, 2, new Object[]{num, num}, 0, null);
                    methodVisitor.visitInsn(3);
                    methodVisitor.visitTypeInsn(189, TypeProxy.SilentConstruction.Appender.JAVA_LANG_CLASS_INTERNAL_NAME);
                    methodVisitor.visitVarInsn(58, 6);
                    methodVisitor.visitLabel(label2);
                    methodVisitor.visitFrame(1, 1, new Object[]{"[Ljava/lang/Class;"}, 0, null);
                    methodVisitor.visitVarInsn(21, 4);
                    methodVisitor.visitInsn(5);
                    methodVisitor.visitInsn(126);
                    Label label3 = new Label();
                    methodVisitor.visitJumpInsn(153, label3);
                    methodVisitor.visitVarInsn(25, 3);
                    methodVisitor.visitVarInsn(21, 5);
                    methodVisitor.visitIincInsn(5, 1);
                    methodVisitor.visitInsn(50);
                    methodVisitor.visitTypeInsn(192, "java/lang/Integer");
                    methodVisitor.visitMethodInsn(182, "java/lang/Integer", "intValue", "()I", false);
                    methodVisitor.visitVarInsn(54, 8);
                    methodVisitor.visitVarInsn(21, 8);
                    methodVisitor.visitTypeInsn(189, "java/lang/invoke/MethodType");
                    methodVisitor.visitVarInsn(58, 7);
                    methodVisitor.visitVarInsn(25, 3);
                    methodVisitor.visitVarInsn(21, 5);
                    methodVisitor.visitVarInsn(25, 7);
                    methodVisitor.visitInsn(3);
                    methodVisitor.visitVarInsn(21, 8);
                    methodVisitor.visitMethodInsn(184, "java/lang/System", "arraycopy", "(Ljava/lang/Object;ILjava/lang/Object;II)V", false);
                    Label label4 = new Label();
                    methodVisitor.visitJumpInsn(167, label4);
                    methodVisitor.visitLabel(label3);
                    methodVisitor.visitFrame(3, 0, null, 0, null);
                    methodVisitor.visitInsn(3);
                    methodVisitor.visitTypeInsn(189, "java/lang/invoke/MethodType");
                    methodVisitor.visitVarInsn(58, 7);
                    methodVisitor.visitLabel(label4);
                    methodVisitor.visitFrame(1, 1, new Object[]{"[Ljava/lang/invoke/MethodType;"}, 0, null);
                    methodVisitor.visitVarInsn(25, 3);
                    methodVisitor.visitInsn(3);
                    methodVisitor.visitInsn(50);
                    methodVisitor.visitTypeInsn(192, "java/lang/invoke/MethodType");
                    methodVisitor.visitVarInsn(58, 8);
                    methodVisitor.visitVarInsn(25, 3);
                    methodVisitor.visitInsn(4);
                    methodVisitor.visitInsn(50);
                    methodVisitor.visitTypeInsn(192, "java/lang/invoke/MethodHandle");
                    methodVisitor.visitVarInsn(58, 9);
                    methodVisitor.visitVarInsn(25, 3);
                    methodVisitor.visitInsn(5);
                    methodVisitor.visitInsn(50);
                    methodVisitor.visitTypeInsn(192, "java/lang/invoke/MethodType");
                    methodVisitor.visitVarInsn(58, 10);
                    methodVisitor.visitVarInsn(21, 4);
                    methodVisitor.visitInsn(4);
                    methodVisitor.visitInsn(126);
                    Label label5 = new Label();
                    methodVisitor.visitJumpInsn(153, label5);
                    methodVisitor.visitInsn(4);
                    Label label6 = new Label();
                    methodVisitor.visitJumpInsn(167, label6);
                    methodVisitor.visitLabel(label5);
                    methodVisitor.visitFrame(1, 3, new Object[]{"java/lang/invoke/MethodType", "java/lang/invoke/MethodHandle", "java/lang/invoke/MethodType"}, 0, null);
                    methodVisitor.visitInsn(3);
                    methodVisitor.visitLabel(label6);
                    methodVisitor.visitFrame(4, 0, null, 1, new Object[]{num});
                    methodVisitor.visitVarInsn(54, 11);
                    methodVisitor.visitVarInsn(25, 6);
                    methodVisitor.visitMethodInsn(184, "java/util/Arrays", "asList", "([Ljava/lang/Object;)Ljava/util/List;", false);
                    methodVisitor.visitVarInsn(58, 12);
                    methodVisitor.visitVarInsn(25, 7);
                    methodVisitor.visitMethodInsn(184, "java/util/Arrays", "asList", "([Ljava/lang/Object;)Ljava/util/List;", false);
                    methodVisitor.visitVarInsn(58, 13);
                    methodVisitor.visitVarInsn(25, 8);
                    methodVisitor.visitVarInsn(58, 3);
                    methodVisitor.visitVarInsn(25, 9);
                    methodVisitor.visitVarInsn(58, 4);
                    methodVisitor.visitVarInsn(25, 10);
                    methodVisitor.visitVarInsn(58, 5);
                    methodVisitor.visitVarInsn(21, 11);
                    methodVisitor.visitVarInsn(54, 6);
                    methodVisitor.visitVarInsn(25, 12);
                    methodVisitor.visitVarInsn(58, 7);
                    methodVisitor.visitVarInsn(25, 13);
                    methodVisitor.visitVarInsn(58, 8);
                    methodVisitor.visitFrame(0, 9, new Object[]{"java/lang/invoke/MethodHandles$Lookup", "java/lang/String", "java/lang/invoke/MethodType", "java/lang/invoke/MethodType", "java/lang/invoke/MethodHandle", "java/lang/invoke/MethodType", num, "java/util/List", "java/util/List"}, 0, null);
                }
            };
            
            private static final Loader LOADER = resolve();
            private final int localVariableLength;
            private final int stackSize;

            /* loaded from: classes2.dex */
            public interface Loader {

                /* loaded from: classes2.dex */
                public enum Unavailable implements Loader {
                    INSTANCE;

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy.LambdaMetafactoryFactory.Loader
                    public void apply(MethodVisitor methodVisitor) {
                        throw new IllegalStateException("No lambda expression loading strategy available on current VM");
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy.LambdaMetafactoryFactory.Loader
                    public int getLocalVariableLength() {
                        throw new IllegalStateException("No lambda expression loading strategy available on current VM");
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy.LambdaMetafactoryFactory.Loader
                    public int getStackSize() {
                        throw new IllegalStateException("No lambda expression loading strategy available on current VM");
                    }
                }

                /* loaded from: classes2.dex */
                public enum UsingMethodHandleLookup implements Loader {
                    INSTANCE;

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy.LambdaMetafactoryFactory.Loader
                    public int getLocalVariableLength() {
                        return 15;
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy.LambdaMetafactoryFactory.Loader
                    public int getStackSize() {
                        return 8;
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy.LambdaMetafactoryFactory.Loader
                    public void apply(MethodVisitor methodVisitor) {
                        methodVisitor.visitVarInsn(25, 0);
                        methodVisitor.visitVarInsn(25, 4);
                        methodVisitor.visitMethodInsn(182, "java/lang/invoke/MethodHandles$Lookup", "revealDirect", "(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleInfo;", false);
                        methodVisitor.visitVarInsn(58, 10);
                        methodVisitor.visitVarInsn(25, 10);
                        methodVisitor.visitMethodInsn(185, "java/lang/invoke/MethodHandleInfo", "getModifiers", "()I", true);
                        methodVisitor.visitMethodInsn(184, "java/lang/reflect/Modifier", "isProtected", "(I)Z", false);
                        Label label = new Label();
                        methodVisitor.visitJumpInsn(153, label);
                        methodVisitor.visitVarInsn(25, 0);
                        methodVisitor.visitMethodInsn(182, "java/lang/invoke/MethodHandles$Lookup", "lookupClass", "()Ljava/lang/Class;", false);
                        methodVisitor.visitVarInsn(25, 10);
                        methodVisitor.visitMethodInsn(185, "java/lang/invoke/MethodHandleInfo", "getDeclaringClass", "()Ljava/lang/Class;", true);
                        methodVisitor.visitMethodInsn(184, "sun/invoke/util/VerifyAccess", "isSamePackage", "(Ljava/lang/Class;Ljava/lang/Class;)Z", false);
                        Label label2 = new Label();
                        methodVisitor.visitJumpInsn(153, label2);
                        methodVisitor.visitLabel(label);
                        Integer num = Opcodes.INTEGER;
                        methodVisitor.visitFrame(0, 11, new Object[]{"java/lang/invoke/MethodHandles$Lookup", "java/lang/String", "java/lang/invoke/MethodType", "java/lang/invoke/MethodType", "java/lang/invoke/MethodHandle", "java/lang/invoke/MethodType", num, "java/util/List", "java/util/List", "[B", "java/lang/invoke/MethodHandleInfo"}, 0, new Object[0]);
                        methodVisitor.visitVarInsn(25, 10);
                        methodVisitor.visitMethodInsn(185, "java/lang/invoke/MethodHandleInfo", "getReferenceKind", "()I", true);
                        methodVisitor.visitIntInsn(16, 7);
                        Label label3 = new Label();
                        methodVisitor.visitJumpInsn(160, label3);
                        methodVisitor.visitLabel(label2);
                        methodVisitor.visitFrame(3, 0, null, 0, null);
                        methodVisitor.visitInsn(4);
                        Label label4 = new Label();
                        methodVisitor.visitJumpInsn(167, label4);
                        methodVisitor.visitLabel(label3);
                        methodVisitor.visitFrame(3, 0, null, 0, null);
                        methodVisitor.visitInsn(3);
                        methodVisitor.visitLabel(label4);
                        methodVisitor.visitFrame(4, 0, null, 1, new Object[]{num});
                        methodVisitor.visitVarInsn(54, 11);
                        methodVisitor.visitVarInsn(21, 11);
                        Label label5 = new Label();
                        methodVisitor.visitJumpInsn(153, label5);
                        methodVisitor.visitVarInsn(25, 0);
                        methodVisitor.visitVarInsn(25, 9);
                        methodVisitor.visitVarInsn(25, 10);
                        methodVisitor.visitInsn(4);
                        methodVisitor.visitInsn(5);
                        methodVisitor.visitTypeInsn(189, "java/lang/invoke/MethodHandles$Lookup$ClassOption");
                        methodVisitor.visitInsn(89);
                        methodVisitor.visitInsn(3);
                        methodVisitor.visitFieldInsn(178, "java/lang/invoke/MethodHandles$Lookup$ClassOption", "NESTMATE", "Ljava/lang/invoke/MethodHandles$Lookup$ClassOption;");
                        methodVisitor.visitInsn(83);
                        methodVisitor.visitInsn(89);
                        methodVisitor.visitInsn(4);
                        methodVisitor.visitFieldInsn(178, "java/lang/invoke/MethodHandles$Lookup$ClassOption", "STRONG", "Ljava/lang/invoke/MethodHandles$Lookup$ClassOption;");
                        methodVisitor.visitInsn(83);
                        methodVisitor.visitMethodInsn(182, "java/lang/invoke/MethodHandles$Lookup", "defineHiddenClassWithClassData", "([BLjava/lang/Object;Z[Ljava/lang/invoke/MethodHandles$Lookup$ClassOption;)Ljava/lang/invoke/MethodHandles$Lookup;", false);
                        methodVisitor.visitVarInsn(58, 12);
                        methodVisitor.visitLabel(new Label());
                        Label label6 = new Label();
                        methodVisitor.visitJumpInsn(167, label6);
                        methodVisitor.visitLabel(label5);
                        methodVisitor.visitFrame(1, 1, new Object[]{num}, 0, null);
                        methodVisitor.visitVarInsn(25, 0);
                        methodVisitor.visitVarInsn(25, 9);
                        methodVisitor.visitInsn(4);
                        methodVisitor.visitInsn(5);
                        methodVisitor.visitTypeInsn(189, "java/lang/invoke/MethodHandles$Lookup$ClassOption");
                        methodVisitor.visitInsn(89);
                        methodVisitor.visitInsn(3);
                        methodVisitor.visitFieldInsn(178, "java/lang/invoke/MethodHandles$Lookup$ClassOption", "NESTMATE", "Ljava/lang/invoke/MethodHandles$Lookup$ClassOption;");
                        methodVisitor.visitInsn(83);
                        methodVisitor.visitInsn(89);
                        methodVisitor.visitInsn(4);
                        methodVisitor.visitFieldInsn(178, "java/lang/invoke/MethodHandles$Lookup$ClassOption", "STRONG", "Ljava/lang/invoke/MethodHandles$Lookup$ClassOption;");
                        methodVisitor.visitInsn(83);
                        methodVisitor.visitMethodInsn(182, "java/lang/invoke/MethodHandles$Lookup", "defineHiddenClass", "([BZ[Ljava/lang/invoke/MethodHandles$Lookup$ClassOption;)Ljava/lang/invoke/MethodHandles$Lookup;", false);
                        methodVisitor.visitVarInsn(58, 12);
                        methodVisitor.visitLabel(label6);
                        methodVisitor.visitFrame(1, 1, new Object[]{"java/lang/invoke/MethodHandles$Lookup"}, 0, null);
                        methodVisitor.visitVarInsn(25, 12);
                        methodVisitor.visitMethodInsn(182, "java/lang/invoke/MethodHandles$Lookup", "lookupClass", "()Ljava/lang/Class;", false);
                        methodVisitor.visitVarInsn(58, 10);
                        methodVisitor.visitFrame(0, 10, new Object[]{"java/lang/invoke/MethodHandles$Lookup", "java/lang/String", "java/lang/invoke/MethodType", "java/lang/invoke/MethodType", "java/lang/invoke/MethodHandle", "java/lang/invoke/MethodType", num, "java/util/List", "java/util/List", TypeProxy.SilentConstruction.Appender.JAVA_LANG_CLASS_INTERNAL_NAME}, 0, null);
                    }
                }

                /* loaded from: classes2.dex */
                public enum UsingUnsafe implements Loader {
                    JDK_INTERNAL_MISC_UNSAFE("jdk/internal/misc/Unsafe"),
                    SUN_MISC_UNSAFE("sun/misc/Unsafe");
                    
                    private final String type;

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy.LambdaMetafactoryFactory.Loader
                    public int getLocalVariableLength() {
                        return 13;
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy.LambdaMetafactoryFactory.Loader
                    public int getStackSize() {
                        return 4;
                    }

                    public String getType() {
                        return this.type;
                    }

                    @Override // net.bytebuddy.agent.builder.AgentBuilder.LambdaInstrumentationStrategy.LambdaMetafactoryFactory.Loader
                    public void apply(MethodVisitor methodVisitor) {
                        String str = this.type;
                        methodVisitor.visitMethodInsn(184, str, "getUnsafe", "()L" + this.type + ";", false);
                        methodVisitor.visitVarInsn(58, 11);
                        methodVisitor.visitVarInsn(25, 11);
                        methodVisitor.visitVarInsn(25, 0);
                        methodVisitor.visitMethodInsn(182, "java/lang/invoke/MethodHandles$Lookup", "lookupClass", "()Ljava/lang/Class;", false);
                        methodVisitor.visitVarInsn(25, 9);
                        methodVisitor.visitInsn(1);
                        methodVisitor.visitMethodInsn(182, this.type, "defineAnonymousClass", "(Ljava/lang/Class;[B[Ljava/lang/Object;)Ljava/lang/Class;", false);
                        methodVisitor.visitVarInsn(58, 10);
                        methodVisitor.visitVarInsn(25, 11);
                        methodVisitor.visitVarInsn(25, 10);
                        methodVisitor.visitMethodInsn(182, this.type, "ensureClassInitialized", "(Ljava/lang/Class;)V", false);
                    }

                    UsingUnsafe(String str) {
                        this.type = str;
                    }
                }

                void apply(MethodVisitor methodVisitor);

                int getLocalVariableLength();

                int getStackSize();
            }

            public abstract void onDispatch(MethodVisitor methodVisitor);

            LambdaMetafactoryFactory(int i, int i2) {
                this.stackSize = i;
                this.localVariableLength = i2;
            }

            @SuppressFBWarnings(justification = "Exception should not be rethrown but trigger a fallback.", value = {"DE_MIGHT_IGNORE", "REC_CATCH_EXCEPTION"})
            private static Loader resolve() {
                Loader.UsingUnsafe[] values;
                try {
                    Class<?> cls = Class.forName("java.lang.invoke.MethodHandles$Lookup", false, null);
                    Class<?> cls2 = Boolean.TYPE;
                    cls.getMethod("defineHiddenClass", byte[].class, cls2, Class.forName("[Ljava.lang.invoke.MethodHandles$Lookup$ClassOption;", false, null));
                    cls.getMethod("defineHiddenClassWithClassData", byte[].class, Object.class, cls2, Class.forName("[Ljava.lang.invoke.MethodHandles$Lookup$ClassOption;", false, null));
                    return Loader.UsingMethodHandleLookup.INSTANCE;
                } catch (Exception unused) {
                    for (Loader.UsingUnsafe usingUnsafe : Loader.UsingUnsafe.values()) {
                        try {
                            Class.forName(usingUnsafe.getType().replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH), false, null).getMethod("defineAnonymousClass", Class.class, byte[].class, Object[].class);
                            return usingUnsafe;
                        } catch (Exception unused2) {
                        }
                    }
                    return Loader.Unavailable.INSTANCE;
                }
            }

            @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
            public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                onDispatch(methodVisitor);
                methodVisitor.visitMethodInsn(184, "java/lang/ClassLoader", "getSystemClassLoader", "()Ljava/lang/ClassLoader;", false);
                methodVisitor.visitLdcInsn("net.bytebuddy.agent.builder.LambdaFactory");
                methodVisitor.visitMethodInsn(182, "java/lang/ClassLoader", "loadClass", "(Ljava/lang/String;)Ljava/lang/Class;", false);
                methodVisitor.visitLdcInsn(TypeProxy.REFLECTION_METHOD);
                methodVisitor.visitIntInsn(16, 9);
                methodVisitor.visitTypeInsn(189, TypeProxy.SilentConstruction.Appender.JAVA_LANG_CLASS_INTERNAL_NAME);
                methodVisitor.visitInsn(89);
                methodVisitor.visitInsn(3);
                methodVisitor.visitLdcInsn(Type.getType(TypeProxy.SilentConstruction.Appender.JAVA_LANG_OBJECT_DESCRIPTOR));
                methodVisitor.visitInsn(83);
                methodVisitor.visitInsn(89);
                methodVisitor.visitInsn(4);
                methodVisitor.visitLdcInsn(Type.getType("Ljava/lang/String;"));
                methodVisitor.visitInsn(83);
                methodVisitor.visitInsn(89);
                methodVisitor.visitInsn(5);
                methodVisitor.visitLdcInsn(Type.getType(TypeProxy.SilentConstruction.Appender.JAVA_LANG_OBJECT_DESCRIPTOR));
                methodVisitor.visitInsn(83);
                methodVisitor.visitInsn(89);
                methodVisitor.visitInsn(6);
                methodVisitor.visitLdcInsn(Type.getType(TypeProxy.SilentConstruction.Appender.JAVA_LANG_OBJECT_DESCRIPTOR));
                methodVisitor.visitInsn(83);
                methodVisitor.visitInsn(89);
                methodVisitor.visitInsn(7);
                methodVisitor.visitLdcInsn(Type.getType(TypeProxy.SilentConstruction.Appender.JAVA_LANG_OBJECT_DESCRIPTOR));
                methodVisitor.visitInsn(83);
                methodVisitor.visitInsn(89);
                methodVisitor.visitInsn(8);
                methodVisitor.visitLdcInsn(Type.getType(TypeProxy.SilentConstruction.Appender.JAVA_LANG_OBJECT_DESCRIPTOR));
                methodVisitor.visitInsn(83);
                methodVisitor.visitInsn(89);
                methodVisitor.visitIntInsn(16, 6);
                methodVisitor.visitFieldInsn(178, "java/lang/Boolean", "TYPE", "Ljava/lang/Class;");
                methodVisitor.visitInsn(83);
                methodVisitor.visitInsn(89);
                methodVisitor.visitIntInsn(16, 7);
                methodVisitor.visitLdcInsn(Type.getType("Ljava/util/List;"));
                methodVisitor.visitInsn(83);
                methodVisitor.visitInsn(89);
                methodVisitor.visitIntInsn(16, 8);
                methodVisitor.visitLdcInsn(Type.getType("Ljava/util/List;"));
                methodVisitor.visitInsn(83);
                methodVisitor.visitMethodInsn(182, TypeProxy.SilentConstruction.Appender.JAVA_LANG_CLASS_INTERNAL_NAME, "getDeclaredMethod", "(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;", false);
                methodVisitor.visitInsn(1);
                methodVisitor.visitIntInsn(16, 9);
                methodVisitor.visitTypeInsn(189, TypeProxy.SilentConstruction.Appender.JAVA_LANG_OBJECT_INTERNAL_NAME);
                methodVisitor.visitInsn(89);
                methodVisitor.visitInsn(3);
                methodVisitor.visitVarInsn(25, 0);
                methodVisitor.visitInsn(83);
                methodVisitor.visitInsn(89);
                methodVisitor.visitInsn(4);
                methodVisitor.visitVarInsn(25, 1);
                methodVisitor.visitInsn(83);
                methodVisitor.visitInsn(89);
                methodVisitor.visitInsn(5);
                methodVisitor.visitVarInsn(25, 2);
                methodVisitor.visitInsn(83);
                methodVisitor.visitInsn(89);
                methodVisitor.visitInsn(6);
                methodVisitor.visitVarInsn(25, 3);
                methodVisitor.visitInsn(83);
                methodVisitor.visitInsn(89);
                methodVisitor.visitInsn(7);
                methodVisitor.visitVarInsn(25, 4);
                methodVisitor.visitInsn(83);
                methodVisitor.visitInsn(89);
                methodVisitor.visitInsn(8);
                methodVisitor.visitVarInsn(25, 5);
                methodVisitor.visitInsn(83);
                methodVisitor.visitInsn(89);
                methodVisitor.visitIntInsn(16, 6);
                methodVisitor.visitVarInsn(21, 6);
                methodVisitor.visitMethodInsn(184, "java/lang/Boolean", ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(Z)Ljava/lang/Boolean;", false);
                methodVisitor.visitInsn(83);
                methodVisitor.visitInsn(89);
                methodVisitor.visitIntInsn(16, 7);
                methodVisitor.visitVarInsn(25, 7);
                methodVisitor.visitInsn(83);
                methodVisitor.visitInsn(89);
                methodVisitor.visitIntInsn(16, 8);
                methodVisitor.visitVarInsn(25, 8);
                methodVisitor.visitInsn(83);
                methodVisitor.visitMethodInsn(182, "java/lang/reflect/Method", "invoke", "(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;", false);
                methodVisitor.visitTypeInsn(192, "[B");
                methodVisitor.visitVarInsn(58, 9);
                Loader loader = LOADER;
                loader.apply(methodVisitor);
                methodVisitor.visitVarInsn(25, 2);
                methodVisitor.visitMethodInsn(182, "java/lang/invoke/MethodType", "parameterCount", "()I", false);
                Label label = new Label();
                methodVisitor.visitJumpInsn(154, label);
                methodVisitor.visitTypeInsn(187, "java/lang/invoke/ConstantCallSite");
                methodVisitor.visitInsn(89);
                methodVisitor.visitVarInsn(25, 2);
                methodVisitor.visitMethodInsn(182, "java/lang/invoke/MethodType", "returnType", "()Ljava/lang/Class;", false);
                methodVisitor.visitVarInsn(25, 10);
                methodVisitor.visitMethodInsn(182, TypeProxy.SilentConstruction.Appender.JAVA_LANG_CLASS_INTERNAL_NAME, "getDeclaredConstructors", "()[Ljava/lang/reflect/Constructor;", false);
                methodVisitor.visitInsn(3);
                methodVisitor.visitInsn(50);
                methodVisitor.visitInsn(3);
                methodVisitor.visitTypeInsn(189, TypeProxy.SilentConstruction.Appender.JAVA_LANG_OBJECT_INTERNAL_NAME);
                methodVisitor.visitMethodInsn(182, TypeProxy.SilentConstruction.Appender.JAVA_LANG_CONSTRUCTOR_INTERNAL_NAME, TypeProxy.SilentConstruction.Appender.NEW_INSTANCE_METHOD_NAME, TypeProxy.SilentConstruction.Appender.NEW_INSTANCE_METHOD_DESCRIPTOR, false);
                methodVisitor.visitMethodInsn(184, "java/lang/invoke/MethodHandles", "constant", "(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;", false);
                methodVisitor.visitMethodInsn(183, "java/lang/invoke/ConstantCallSite", MethodDescription.CONSTRUCTOR_INTERNAL_NAME, "(Ljava/lang/invoke/MethodHandle;)V", false);
                Label label2 = new Label();
                methodVisitor.visitJumpInsn(167, label2);
                methodVisitor.visitLabel(label);
                methodVisitor.visitFrame(0, 11, new Object[]{"java/lang/invoke/MethodHandles$Lookup", "java/lang/String", "java/lang/invoke/MethodType", "java/lang/invoke/MethodType", "java/lang/invoke/MethodHandle", "java/lang/invoke/MethodType", Opcodes.INTEGER, "java/util/List", "java/util/List", "[B", TypeProxy.SilentConstruction.Appender.JAVA_LANG_CLASS_INTERNAL_NAME}, 0, new Object[0]);
                methodVisitor.visitTypeInsn(187, "java/lang/invoke/ConstantCallSite");
                methodVisitor.visitInsn(89);
                methodVisitor.visitFieldInsn(178, "java/lang/invoke/MethodHandles$Lookup", "IMPL_LOOKUP", "Ljava/lang/invoke/MethodHandles$Lookup;");
                methodVisitor.visitVarInsn(25, 10);
                methodVisitor.visitLdcInsn("get$Lambda");
                methodVisitor.visitVarInsn(25, 2);
                methodVisitor.visitMethodInsn(182, "java/lang/invoke/MethodHandles$Lookup", "findStatic", "(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;", false);
                methodVisitor.visitMethodInsn(183, "java/lang/invoke/ConstantCallSite", MethodDescription.CONSTRUCTOR_INTERNAL_NAME, "(Ljava/lang/invoke/MethodHandle;)V", false);
                methodVisitor.visitLabel(label2);
                methodVisitor.visitFrame(4, 0, null, 1, new Object[]{"java/lang/invoke/CallSite"});
                methodVisitor.visitInsn(176);
                return new ByteCodeAppender.Size(Math.max(this.stackSize, loader.getStackSize()), Math.max(this.localVariableLength, loader.getLocalVariableLength()));
            }
        }

        /* renamed from: of */
        public static LambdaInstrumentationStrategy m15361of(boolean z) {
            return z ? ENABLED : DISABLED;
        }

        public abstract void apply(ByteBuddy byteBuddy, Instrumentation instrumentation, ClassFileTransformer classFileTransformer);

        public boolean isEnabled() {
            return this == ENABLED;
        }

        public abstract boolean isInstrumented(@MaybeNull Class<?> cls);

        public static void release(ClassFileTransformer classFileTransformer, Instrumentation instrumentation) {
            if (LambdaFactory.release(classFileTransformer)) {
                try {
                    ClassReloadingStrategy.m15141of(instrumentation).reset(Class.forName("java.lang.invoke.LambdaMetafactory"));
                } catch (Exception e) {
                    throw new IllegalStateException("Could not release lambda transformer", e);
                }
            }
        }
    }
}
