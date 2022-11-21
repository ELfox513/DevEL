package net.bytebuddy.dynamic.loading;

import java.io.File;
import java.lang.instrument.ClassDefinition;
import java.lang.instrument.ClassFileTransformer;
import java.lang.instrument.Instrumentation;
import java.lang.instrument.UnmodifiableClassException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.ProtectionDomain;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import net.bytebuddy.agent.builder.AgentBuilder;
import net.bytebuddy.build.AccessControllerPlugin;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.ClassFileLocator;
import net.bytebuddy.dynamic.loading.ClassInjector;
import net.bytebuddy.utility.JavaModule;
import net.bytebuddy.utility.dispatcher.JavaDispatcher;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class ClassReloadingStrategy implements ClassLoadingStrategy<ClassLoader> {
    private static final boolean ACCESS_CONTROLLER;
    public static final Dispatcher DISPATCHER;
    private final BootstrapInjection bootstrapInjection;
    private final Instrumentation instrumentation;
    private final Map<String, Class<?>> preregisteredTypes;
    private final Strategy strategy;

    /* loaded from: classes2.dex */
    public interface BootstrapInjection {

        /* loaded from: classes2.dex */
        public enum Disabled implements BootstrapInjection {
            INSTANCE;

            @Override // net.bytebuddy.dynamic.loading.ClassReloadingStrategy.BootstrapInjection
            public ClassInjector make(Instrumentation instrumentation) {
                throw new IllegalStateException("Bootstrap injection is not enabled");
            }
        }

        ClassInjector make(Instrumentation instrumentation);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Enabled implements BootstrapInjection {
            private final File folder;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.folder.equals(((Enabled) obj).folder);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.folder.hashCode();
            }

            @Override // net.bytebuddy.dynamic.loading.ClassReloadingStrategy.BootstrapInjection
            public ClassInjector make(Instrumentation instrumentation) {
                return ClassInjector.UsingInstrumentation.m15150of(this.folder, ClassInjector.UsingInstrumentation.Target.BOOTSTRAP, instrumentation);
            }

            public Enabled(File file) {
                this.folder = file;
            }
        }
    }

    @JavaDispatcher.Proxied("java.lang.instrument.Instrumentation")
    /* loaded from: classes2.dex */
    public interface Dispatcher {
        @JavaDispatcher.Proxied("addTransformer")
        void addTransformer(Instrumentation instrumentation, ClassFileTransformer classFileTransformer, boolean z);

        @JavaDispatcher.Proxied("isModifiableClass")
        boolean isModifiableClass(Instrumentation instrumentation, Class<?> cls);

        @JavaDispatcher.Proxied("isRetransformClassesSupported")
        boolean isRetransformClassesSupported(Instrumentation instrumentation);

        @JavaDispatcher.Proxied("retransformClasses")
        void retransformClasses(Instrumentation instrumentation, Class<?>[] clsArr);
    }

    /* loaded from: classes2.dex */
    public enum Strategy {
        REDEFINITION(true) { // from class: net.bytebuddy.dynamic.loading.ClassReloadingStrategy.Strategy.1
            @Override // net.bytebuddy.dynamic.loading.ClassReloadingStrategy.Strategy
            public void apply(Instrumentation instrumentation, Map<Class<?>, ClassDefinition> map) {
                instrumentation.redefineClasses((ClassDefinition[]) map.values().toArray(new ClassDefinition[0]));
            }

            @Override // net.bytebuddy.dynamic.loading.ClassReloadingStrategy.Strategy
            public void reset(Instrumentation instrumentation, ClassFileLocator classFileLocator, List<Class<?>> list) {
                HashMap hashMap = new HashMap(list.size());
                for (Class<?> cls : list) {
                    hashMap.put(cls, new ClassDefinition(cls, classFileLocator.locate(TypeDescription.ForLoadedType.getName(cls)).resolve()));
                }
                apply(instrumentation, hashMap);
            }

            @Override // net.bytebuddy.dynamic.loading.ClassReloadingStrategy.Strategy
            public Strategy validate(Instrumentation instrumentation) {
                if (instrumentation.isRedefineClassesSupported()) {
                    return this;
                }
                throw new IllegalArgumentException("Does not support redefinition: " + instrumentation);
            }
        },
        RETRANSFORMATION(false) { // from class: net.bytebuddy.dynamic.loading.ClassReloadingStrategy.Strategy.2
            @Override // net.bytebuddy.dynamic.loading.ClassReloadingStrategy.Strategy
            public void apply(Instrumentation instrumentation, Map<Class<?>, ClassDefinition> map) {
                ClassRedefinitionTransformer classRedefinitionTransformer = new ClassRedefinitionTransformer(map);
                synchronized (this) {
                    Dispatcher dispatcher = ClassReloadingStrategy.DISPATCHER;
                    dispatcher.addTransformer(instrumentation, classRedefinitionTransformer, true);
                    dispatcher.retransformClasses(instrumentation, (Class[]) map.keySet().toArray(new Class[0]));
                    instrumentation.removeTransformer(classRedefinitionTransformer);
                }
                classRedefinitionTransformer.assertTransformation();
            }

            @Override // net.bytebuddy.dynamic.loading.ClassReloadingStrategy.Strategy
            public Strategy validate(Instrumentation instrumentation) {
                if (ClassReloadingStrategy.DISPATCHER.isRetransformClassesSupported(instrumentation)) {
                    return this;
                }
                throw new IllegalArgumentException("Does not support retransformation: " + instrumentation);
            }

            @Override // net.bytebuddy.dynamic.loading.ClassReloadingStrategy.Strategy
            public void reset(Instrumentation instrumentation, ClassFileLocator classFileLocator, List<Class<?>> list) {
                for (Class<?> cls : list) {
                    if (!ClassReloadingStrategy.DISPATCHER.isModifiableClass(instrumentation, cls)) {
                        throw new IllegalArgumentException("Cannot modify type: " + cls);
                    }
                }
                Dispatcher dispatcher = ClassReloadingStrategy.DISPATCHER;
                ClassResettingTransformer classResettingTransformer = ClassResettingTransformer.INSTANCE;
                dispatcher.addTransformer(instrumentation, classResettingTransformer, true);
                try {
                    dispatcher.retransformClasses(instrumentation, (Class[]) list.toArray(new Class[0]));
                    instrumentation.removeTransformer(classResettingTransformer);
                } catch (Throwable th) {
                    instrumentation.removeTransformer(ClassResettingTransformer.INSTANCE);
                    throw th;
                }
            }
        };
        
        @AlwaysNull
        private static final byte[] NO_REDEFINITION = null;
        private static final boolean REDEFINE_CLASSES = true;
        private final boolean redefinition;

        /* loaded from: classes2.dex */
        public static class ClassRedefinitionTransformer implements ClassFileTransformer {
            private final Map<Class<?>, ClassDefinition> redefinedClasses;

            public void assertTransformation() {
                if (this.redefinedClasses.isEmpty()) {
                    return;
                }
                throw new IllegalStateException("Could not transform: " + this.redefinedClasses.keySet());
            }

            @MaybeNull
            public byte[] transform(@MaybeNull ClassLoader classLoader, @MaybeNull String str, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain, byte[] bArr) {
                if (str == null) {
                    return Strategy.NO_REDEFINITION;
                }
                ClassDefinition remove = this.redefinedClasses.remove(cls);
                if (remove == null) {
                    return Strategy.NO_REDEFINITION;
                }
                return remove.getDefinitionClassFile();
            }

            public ClassRedefinitionTransformer(Map<Class<?>, ClassDefinition> map) {
                this.redefinedClasses = map;
            }
        }

        /* loaded from: classes2.dex */
        public enum ClassResettingTransformer implements ClassFileTransformer {
            INSTANCE;

            @MaybeNull
            public byte[] transform(@MaybeNull ClassLoader classLoader, @MaybeNull String str, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain, byte[] bArr) {
                return Strategy.NO_REDEFINITION;
            }
        }

        public abstract void apply(Instrumentation instrumentation, Map<Class<?>, ClassDefinition> map);

        public boolean isRedefinition() {
            return this.redefinition;
        }

        public abstract void reset(Instrumentation instrumentation, ClassFileLocator classFileLocator, List<Class<?>> list);

        public abstract Strategy validate(Instrumentation instrumentation);

        Strategy(boolean z) {
            this.redefinition = z;
        }
    }

    static {
        boolean z = false;
        try {
            Class.forName("java.security.AccessController", false, null);
            ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
        } catch (ClassNotFoundException unused) {
            ACCESS_CONTROLLER = z;
            DISPATCHER = (Dispatcher) doPrivileged(JavaDispatcher.m14754of(Dispatcher.class));
        } catch (SecurityException unused2) {
            z = true;
            ACCESS_CONTROLLER = z;
            DISPATCHER = (Dispatcher) doPrivileged(JavaDispatcher.m14754of(Dispatcher.class));
        }
        DISPATCHER = (Dispatcher) doPrivileged(JavaDispatcher.m14754of(Dispatcher.class));
    }

    public ClassReloadingStrategy(Instrumentation instrumentation, Strategy strategy) {
        this(instrumentation, strategy, BootstrapInjection.Disabled.INSTANCE, Collections.emptyMap());
    }

    @AccessControllerPlugin.Enhance
    private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
        return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
    }

    public static ClassReloadingStrategy fromInstalledAgent() {
        return m15141of(resolveByteBuddyAgentInstrumentation());
    }

    public ClassReloadingStrategy enableBootstrapInjection(File file) {
        return new ClassReloadingStrategy(this.instrumentation, this.strategy, new BootstrapInjection.Enabled(file), this.preregisteredTypes);
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ClassReloadingStrategy classReloadingStrategy = (ClassReloadingStrategy) obj;
            return this.strategy.equals(classReloadingStrategy.strategy) && this.instrumentation.equals(classReloadingStrategy.instrumentation) && this.bootstrapInjection.equals(classReloadingStrategy.bootstrapInjection) && this.preregisteredTypes.equals(classReloadingStrategy.preregisteredTypes);
        }
        return false;
    }

    public int hashCode() {
        return (((((((getClass().hashCode() * 31) + this.instrumentation.hashCode()) * 31) + this.strategy.hashCode()) * 31) + this.bootstrapInjection.hashCode()) * 31) + this.preregisteredTypes.hashCode();
    }

    public ClassReloadingStrategy reset(Class<?>... clsArr) {
        return clsArr.length == 0 ? this : reset(ClassFileLocator.ForClassLoader.m15176of(clsArr[0].getClassLoader()), clsArr);
    }

    public static ClassReloadingStrategy fromInstalledAgent(Strategy strategy) {
        return new ClassReloadingStrategy(resolveByteBuddyAgentInstrumentation(), strategy);
    }

    /* renamed from: of */
    public static ClassReloadingStrategy m15141of(Instrumentation instrumentation) {
        if (DISPATCHER.isRetransformClassesSupported(instrumentation)) {
            return new ClassReloadingStrategy(instrumentation, Strategy.RETRANSFORMATION);
        }
        if (instrumentation.isRedefineClassesSupported()) {
            return new ClassReloadingStrategy(instrumentation, Strategy.REDEFINITION);
        }
        throw new IllegalArgumentException("Instrumentation does not support reloading of classes: " + instrumentation);
    }

    @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy
    public Map<TypeDescription, Class<?>> load(@MaybeNull ClassLoader classLoader, Map<TypeDescription, byte[]> map) {
        Class[] initiatedClasses;
        ClassInjector usingReflection;
        HashMap hashMap = new HashMap(this.preregisteredTypes);
        for (Class cls : this.instrumentation.getInitiatedClasses(classLoader)) {
            hashMap.put(TypeDescription.ForLoadedType.getName(cls), cls);
        }
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        HashMap hashMap2 = new HashMap();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<TypeDescription, byte[]> entry : map.entrySet()) {
            Class cls2 = (Class) hashMap.get(entry.getKey().getName());
            if (cls2 != null) {
                concurrentHashMap.put(cls2, new ClassDefinition(cls2, entry.getValue()));
                hashMap2.put(entry.getKey(), cls2);
            } else {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        try {
            this.strategy.apply(this.instrumentation, concurrentHashMap);
            if (!linkedHashMap.isEmpty()) {
                if (classLoader == null) {
                    usingReflection = this.bootstrapInjection.make(this.instrumentation);
                } else {
                    usingReflection = new ClassInjector.UsingReflection(classLoader);
                }
                hashMap2.putAll(usingReflection.inject(linkedHashMap));
            }
            return hashMap2;
        } catch (ClassNotFoundException e) {
            throw new IllegalArgumentException("Could not locate classes for redefinition", e);
        } catch (UnmodifiableClassException e2) {
            throw new IllegalStateException("Cannot redefine specified class", e2);
        }
    }

    public ClassReloadingStrategy preregistered(Class<?>... clsArr) {
        HashMap hashMap = new HashMap(this.preregisteredTypes);
        for (Class<?> cls : clsArr) {
            hashMap.put(TypeDescription.ForLoadedType.getName(cls), cls);
        }
        return new ClassReloadingStrategy(this.instrumentation, this.strategy, this.bootstrapInjection, hashMap);
    }

    private static Instrumentation resolveByteBuddyAgentInstrumentation() {
        try {
            Class<?> loadClass = ClassLoader.getSystemClassLoader().loadClass("net.bytebuddy.agent.Installer");
            JavaModule ofType = JavaModule.ofType(AgentBuilder.class);
            JavaModule ofType2 = JavaModule.ofType(loadClass);
            if (ofType != null && !ofType.canRead(ofType2)) {
                Class<?> cls = Class.forName("java.lang.Module");
                cls.getMethod("addReads", cls).invoke(ofType.unwrap(), ofType2.unwrap());
            }
            return (Instrumentation) loadClass.getMethod("getInstrumentation", new Class[0]).invoke(null, new Object[0]);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new IllegalStateException("The Byte Buddy agent is not installed or not accessible", e2);
        }
    }

    public ClassReloadingStrategy reset(ClassFileLocator classFileLocator, Class<?>... clsArr) {
        if (clsArr.length > 0) {
            try {
                this.strategy.reset(this.instrumentation, classFileLocator, Arrays.asList(clsArr));
            } catch (UnmodifiableClassException e) {
                throw new IllegalStateException("Cannot reset types " + Arrays.toString(clsArr), e);
            } catch (ClassNotFoundException e2) {
                throw new IllegalArgumentException("Cannot locate types " + Arrays.toString(clsArr), e2);
            }
        }
        return this;
    }

    public ClassReloadingStrategy(Instrumentation instrumentation, Strategy strategy, BootstrapInjection bootstrapInjection, Map<String, Class<?>> map) {
        this.instrumentation = instrumentation;
        this.strategy = strategy.validate(instrumentation);
        this.bootstrapInjection = bootstrapInjection;
        this.preregisteredTypes = map;
    }
}
