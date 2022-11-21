package net.bytebuddy.build;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CompletionService;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.JarOutputStream;
import java.util.jar.Manifest;
import net.bytebuddy.ByteBuddy;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.ClassFileLocator;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.dynamic.TypeResolutionStrategy;
import net.bytebuddy.dynamic.scaffold.inline.MethodNameTransformer;
import net.bytebuddy.implementation.LoadedTypeInitializer;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.FileSystem;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface Plugin extends ElementMatcher<TypeDescription>, Closeable {

    /* loaded from: classes2.dex */
    public interface Engine {
        public static final String CLASS_FILE_EXTENSION = ".class";
        public static final String MODULE_INFO = "module-info.class";
        public static final String PACKAGE_INFO = "package-info.class";
        public static final String PLUGIN_FILE = "META-INF/net.bytebuddy/build.plugins";

        /* loaded from: classes2.dex */
        public static abstract class AbstractBase implements Engine {
            @Override // net.bytebuddy.build.Plugin.Engine
            public Summary apply(File file, File file2, Factory... factoryArr) {
                return apply(file, file2, Arrays.asList(factoryArr));
            }

            @Override // net.bytebuddy.build.Plugin.Engine
            public Engine withErrorHandlers(ErrorHandler... errorHandlerArr) {
                return withErrorHandlers(Arrays.asList(errorHandlerArr));
            }

            @Override // net.bytebuddy.build.Plugin.Engine
            public Engine withParallelTransformation(int i) {
                if (i >= 1) {
                    return with(new Dispatcher.ForParallelTransformation.WithThrowawayExecutorService.Factory(i));
                }
                throw new IllegalArgumentException("Number of threads must be positive: " + i);
            }

            @Override // net.bytebuddy.build.Plugin.Engine
            public Summary apply(File file, File file2, List<? extends Factory> list) {
                return apply(file.isDirectory() ? new Source.ForFolder(file) : new Source.ForJarFile(file), file2.isDirectory() ? new Target.ForFolder(file2) : new Target.ForJarFile(file2), list);
            }

            @Override // net.bytebuddy.build.Plugin.Engine
            public Summary apply(Source source, Target target, Factory... factoryArr) {
                return apply(source, target, Arrays.asList(factoryArr));
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Default extends AbstractBase {
            private final ByteBuddy byteBuddy;
            private final ClassFileLocator classFileLocator;
            private final Dispatcher.Factory dispatcherFactory;
            private final ErrorHandler errorHandler;
            private final ElementMatcher.Junction<? super TypeDescription> ignoredTypeMatcher;
            private final Listener listener;
            private final PoolStrategy poolStrategy;
            private final TypeStrategy typeStrategy;

            /* loaded from: classes2.dex */
            public class Preprocessor implements Callable<Callable<? extends Dispatcher.Materializable>> {
                private final ClassFileLocator classFileLocator;
                private final Source.Element element;
                private final Listener listener;
                private final List<Plugin> plugins;
                private final List<WithPreprocessor> preprocessors;
                private final String typeName;
                private final TypePool typePool;

                /* loaded from: classes2.dex */
                public class Ignored implements Callable<Dispatcher.Materializable> {
                    private final TypeDescription typeDescription;

                    private Ignored(TypeDescription typeDescription) {
                        this.typeDescription = typeDescription;
                    }

                    @Override // java.util.concurrent.Callable
                    public Dispatcher.Materializable call() {
                        try {
                            Preprocessor.this.listener.onIgnored(this.typeDescription, Preprocessor.this.plugins);
                            Preprocessor.this.listener.onComplete(this.typeDescription);
                            return new Dispatcher.Materializable.ForRetainedElement(Preprocessor.this.element);
                        } catch (Throwable th) {
                            Preprocessor.this.listener.onComplete(this.typeDescription);
                            throw th;
                        }
                    }
                }

                /* loaded from: classes2.dex */
                public class Resolved implements Callable<Dispatcher.Materializable> {
                    private final TypeDescription typeDescription;

                    private Resolved(TypeDescription typeDescription) {
                        this.typeDescription = typeDescription;
                    }

                    @Override // java.util.concurrent.Callable
                    public Dispatcher.Materializable call() {
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = new ArrayList();
                        try {
                            DynamicType.Builder<?> builder = Default.this.typeStrategy.builder(Default.this.byteBuddy, this.typeDescription, Preprocessor.this.classFileLocator);
                            for (Plugin plugin : Preprocessor.this.plugins) {
                                if (plugin.matches(this.typeDescription)) {
                                    builder = plugin.apply(builder, this.typeDescription, Preprocessor.this.classFileLocator);
                                    Preprocessor.this.listener.onTransformation(this.typeDescription, plugin);
                                    arrayList.add(plugin);
                                } else {
                                    Preprocessor.this.listener.onIgnored(this.typeDescription, plugin);
                                    arrayList2.add(plugin);
                                }
                            }
                            if (!arrayList3.isEmpty()) {
                                Preprocessor.this.listener.onError(this.typeDescription, arrayList3);
                                return new Dispatcher.Materializable.ForFailedElement(Preprocessor.this.element, this.typeDescription, arrayList3);
                            } else if (!arrayList.isEmpty()) {
                                DynamicType.Unloaded<?> make = builder.make(TypeResolutionStrategy.Disabled.INSTANCE, Preprocessor.this.typePool);
                                Preprocessor.this.listener.onTransformation(this.typeDescription, arrayList);
                                for (Map.Entry<TypeDescription, LoadedTypeInitializer> entry : make.getLoadedTypeInitializers().entrySet()) {
                                    if (entry.getValue().isAlive()) {
                                        Preprocessor.this.listener.onLiveInitializer(this.typeDescription, entry.getKey());
                                    }
                                }
                                return new Dispatcher.Materializable.ForTransformedElement(make);
                            } else {
                                Preprocessor.this.listener.onIgnored(this.typeDescription, arrayList2);
                                return new Dispatcher.Materializable.ForRetainedElement(Preprocessor.this.element);
                            }
                        } finally {
                            Preprocessor.this.listener.onComplete(this.typeDescription);
                        }
                    }
                }

                /* loaded from: classes2.dex */
                public class Unresolved implements Callable<Dispatcher.Materializable> {
                    private Unresolved() {
                    }

                    @Override // java.util.concurrent.Callable
                    public Dispatcher.Materializable call() {
                        Preprocessor.this.listener.onUnresolved(Preprocessor.this.typeName);
                        return new Dispatcher.Materializable.ForUnresolvedElement(Preprocessor.this.element, Preprocessor.this.typeName);
                    }
                }

                private Preprocessor(Source.Element element, String str, ClassFileLocator classFileLocator, TypePool typePool, Listener listener, List<Plugin> list, List<WithPreprocessor> list2) {
                    this.element = element;
                    this.typeName = str;
                    this.classFileLocator = classFileLocator;
                    this.typePool = typePool;
                    this.listener = listener;
                    this.plugins = list;
                    this.preprocessors = list2;
                }

                @Override // java.util.concurrent.Callable
                public Callable<? extends Dispatcher.Materializable> call() {
                    this.listener.onDiscovery(this.typeName);
                    TypePool.Resolution describe = this.typePool.describe(this.typeName);
                    if (describe.isResolved()) {
                        TypeDescription resolve = describe.resolve();
                        try {
                            if (!Default.this.ignoredTypeMatcher.matches(resolve)) {
                                for (WithPreprocessor withPreprocessor : this.preprocessors) {
                                    withPreprocessor.onPreprocess(resolve, this.classFileLocator);
                                }
                                return new Resolved(resolve);
                            }
                            return new Ignored(resolve);
                        } catch (Throwable th) {
                            this.listener.onComplete(resolve);
                            if (!(th instanceof Exception)) {
                                if (th instanceof Error) {
                                    throw th;
                                }
                                throw new IllegalStateException(th);
                            }
                            throw ((Exception) th);
                        }
                    }
                    return new Unresolved();
                }
            }

            public Default() {
                this(new ByteBuddy());
            }

            public static void main(String... strArr) {
                if (strArr.length >= 2) {
                    ArrayList arrayList = new ArrayList(strArr.length - 2);
                    for (String str : Arrays.asList(strArr).subList(2, strArr.length)) {
                        arrayList.add(new Factory.UsingReflection(Class.forName(str)));
                    }
                    new Default().apply(new File(strArr[0]), new File(strArr[1]), arrayList);
                    return;
                }
                throw new IllegalArgumentException("Expected arguments: <source> <target> [<plugin>, ...]");
            }

            /* renamed from: of */
            public static Engine m15249of(EntryPoint entryPoint, ClassFileVersion classFileVersion, MethodNameTransformer methodNameTransformer) {
                return new Default(entryPoint.byteBuddy(classFileVersion), new TypeStrategy.ForEntryPoint(entryPoint, methodNameTransformer));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Default r5 = (Default) obj;
                    return this.byteBuddy.equals(r5.byteBuddy) && this.typeStrategy.equals(r5.typeStrategy) && this.poolStrategy.equals(r5.poolStrategy) && this.classFileLocator.equals(r5.classFileLocator) && this.listener.equals(r5.listener) && this.errorHandler.equals(r5.errorHandler) && this.dispatcherFactory.equals(r5.dispatcherFactory) && this.ignoredTypeMatcher.equals(r5.ignoredTypeMatcher);
                }
                return false;
            }

            public int hashCode() {
                return (((((((((((((((getClass().hashCode() * 31) + this.byteBuddy.hashCode()) * 31) + this.typeStrategy.hashCode()) * 31) + this.poolStrategy.hashCode()) * 31) + this.classFileLocator.hashCode()) * 31) + this.listener.hashCode()) * 31) + this.errorHandler.hashCode()) * 31) + this.dispatcherFactory.hashCode()) * 31) + this.ignoredTypeMatcher.hashCode();
            }

            @Override // net.bytebuddy.build.Plugin.Engine
            public Engine with(ByteBuddy byteBuddy) {
                return new Default(byteBuddy, this.typeStrategy, this.poolStrategy, this.classFileLocator, this.listener, this.errorHandler, this.dispatcherFactory, this.ignoredTypeMatcher);
            }

            @Override // net.bytebuddy.build.Plugin.Engine
            public Engine withErrorHandlers(List<? extends ErrorHandler> list) {
                return new Default(this.byteBuddy, this.typeStrategy, this.poolStrategy, this.classFileLocator, this.listener, new ErrorHandler.Compound(list), this.dispatcherFactory, this.ignoredTypeMatcher);
            }

            @Override // net.bytebuddy.build.Plugin.Engine
            public Engine withoutErrorHandlers() {
                return new Default(this.byteBuddy, this.typeStrategy, this.poolStrategy, this.classFileLocator, this.listener, Listener.NoOp.INSTANCE, this.dispatcherFactory, this.ignoredTypeMatcher);
            }

            public Default(ByteBuddy byteBuddy) {
                this(byteBuddy, TypeStrategy.Default.REBASE);
            }

            public static Set<String> scan(ClassLoader classLoader) {
                HashSet hashSet = new HashSet();
                Enumeration<URL> resources = classLoader.getResources(Engine.PLUGIN_FILE);
                while (resources.hasMoreElements()) {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(FirebasePerfUrlConnection.openStream(resources.nextElement()), "UTF-8"));
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine != null) {
                                hashSet.add(readLine);
                            }
                        } finally {
                            bufferedReader.close();
                        }
                    }
                }
                return hashSet;
            }

            /* JADX WARN: Removed duplicated region for block: B:110:0x01ff  */
            @Override // net.bytebuddy.build.Plugin.Engine
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public net.bytebuddy.build.Plugin.Engine.Summary apply(net.bytebuddy.build.Plugin.Engine.Source r26, net.bytebuddy.build.Plugin.Engine.Target r27, java.util.List<? extends net.bytebuddy.build.Plugin.Factory> r28) {
                /*
                    Method dump skipped, instructions count: 537
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.build.Plugin.Engine.Default.apply(net.bytebuddy.build.Plugin$Engine$Source, net.bytebuddy.build.Plugin$Engine$Target, java.util.List):net.bytebuddy.build.Plugin$Engine$Summary");
            }

            @Override // net.bytebuddy.build.Plugin.Engine
            public Engine ignore(ElementMatcher<? super TypeDescription> elementMatcher) {
                return new Default(this.byteBuddy, this.typeStrategy, this.poolStrategy, this.classFileLocator, this.listener, this.errorHandler, this.dispatcherFactory, this.ignoredTypeMatcher.mo14830or(elementMatcher));
            }

            @Override // net.bytebuddy.build.Plugin.Engine
            public Engine with(TypeStrategy typeStrategy) {
                return new Default(this.byteBuddy, typeStrategy, this.poolStrategy, this.classFileLocator, this.listener, this.errorHandler, this.dispatcherFactory, this.ignoredTypeMatcher);
            }

            public Default(ByteBuddy byteBuddy, TypeStrategy typeStrategy) {
                this(byteBuddy, typeStrategy, PoolStrategy.Default.FAST, ClassFileLocator.NoOp.INSTANCE, Listener.NoOp.INSTANCE, new ErrorHandler.Compound(ErrorHandler.Failing.FAIL_FAST, ErrorHandler.Enforcing.ALL_TYPES_RESOLVED, ErrorHandler.Enforcing.NO_LIVE_INITIALIZERS), Dispatcher.ForSerialTransformation.Factory.INSTANCE, ElementMatchers.none());
            }

            @Override // net.bytebuddy.build.Plugin.Engine
            public Engine with(PoolStrategy poolStrategy) {
                return new Default(this.byteBuddy, this.typeStrategy, poolStrategy, this.classFileLocator, this.listener, this.errorHandler, this.dispatcherFactory, this.ignoredTypeMatcher);
            }

            @Override // net.bytebuddy.build.Plugin.Engine
            public Engine with(ClassFileLocator classFileLocator) {
                return new Default(this.byteBuddy, this.typeStrategy, this.poolStrategy, new ClassFileLocator.Compound(this.classFileLocator, classFileLocator), this.listener, this.errorHandler, this.dispatcherFactory, this.ignoredTypeMatcher);
            }

            @Override // net.bytebuddy.build.Plugin.Engine
            public Engine with(Listener listener) {
                return new Default(this.byteBuddy, this.typeStrategy, this.poolStrategy, this.classFileLocator, new Listener.Compound(this.listener, listener), this.errorHandler, this.dispatcherFactory, this.ignoredTypeMatcher);
            }

            public Default(ByteBuddy byteBuddy, TypeStrategy typeStrategy, PoolStrategy poolStrategy, ClassFileLocator classFileLocator, Listener listener, ErrorHandler errorHandler, Dispatcher.Factory factory, ElementMatcher.Junction<? super TypeDescription> junction) {
                this.byteBuddy = byteBuddy;
                this.typeStrategy = typeStrategy;
                this.poolStrategy = poolStrategy;
                this.classFileLocator = classFileLocator;
                this.listener = listener;
                this.errorHandler = errorHandler;
                this.dispatcherFactory = factory;
                this.ignoredTypeMatcher = junction;
            }

            @Override // net.bytebuddy.build.Plugin.Engine
            public Engine with(Dispatcher.Factory factory) {
                return new Default(this.byteBuddy, this.typeStrategy, this.poolStrategy, this.classFileLocator, this.listener, this.errorHandler, factory, this.ignoredTypeMatcher);
            }
        }

        /* loaded from: classes2.dex */
        public interface Dispatcher extends Closeable {

            /* loaded from: classes2.dex */
            public interface Factory {
                Dispatcher make(Target.Sink sink, List<TypeDescription> list, Map<TypeDescription, List<Throwable>> map, List<String> list2);
            }

            /* loaded from: classes2.dex */
            public static class ForParallelTransformation implements Dispatcher {
                private int deferred;
                private final Map<TypeDescription, List<Throwable>> failed;
                private final Set<Future<?>> futures = new HashSet();
                private final CompletionService<Materializable> materializers;
                private final CompletionService<Callable<Materializable>> preprocessings;
                private final Target.Sink sink;
                private final List<TypeDescription> transformed;
                private final List<String> unresolved;

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class EagerWork implements Callable<Materializable> {
                    private final Callable<? extends Callable<? extends Materializable>> work;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.work.equals(((EagerWork) obj).work);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.work.hashCode();
                    }

                    @Override // java.util.concurrent.Callable
                    public Materializable call() {
                        return this.work.call().call();
                    }

                    public EagerWork(Callable<? extends Callable<? extends Materializable>> callable) {
                        this.work = callable;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class WithThrowawayExecutorService extends ForParallelTransformation {
                    private final ExecutorService executorService;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.executorService.equals(((WithThrowawayExecutorService) obj).executorService);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.executorService.hashCode();
                    }

                    @HashCodeAndEqualsPlugin.Enhance
                    /* loaded from: classes.dex */
                    public static class Factory implements Factory {
                        private final int threads;

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.threads == ((Factory) obj).threads;
                        }

                        public int hashCode() {
                            return (getClass().hashCode() * 31) + this.threads;
                        }

                        @Override // net.bytebuddy.build.Plugin.Engine.Dispatcher.Factory
                        public Dispatcher make(Target.Sink sink, List<TypeDescription> list, Map<TypeDescription, List<Throwable>> map, List<String> list2) {
                            return new WithThrowawayExecutorService(Executors.newFixedThreadPool(this.threads), sink, list, map, list2);
                        }

                        public Factory(int i) {
                            this.threads = i;
                        }
                    }

                    public WithThrowawayExecutorService(ExecutorService executorService, Target.Sink sink, List<TypeDescription> list, Map<TypeDescription, List<Throwable>> map, List<String> list2) {
                        super(executorService, sink, list, map, list2);
                        this.executorService = executorService;
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.Dispatcher.ForParallelTransformation, java.io.Closeable, java.lang.AutoCloseable
                    public void close() {
                        try {
                            super.close();
                        } finally {
                            this.executorService.shutdown();
                        }
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Factory implements Factory {
                    private final Executor executor;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.executor.equals(((Factory) obj).executor);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.executor.hashCode();
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.Dispatcher.Factory
                    public Dispatcher make(Target.Sink sink, List<TypeDescription> list, Map<TypeDescription, List<Throwable>> map, List<String> list2) {
                        return new ForParallelTransformation(this.executor, sink, list, map, list2);
                    }

                    public Factory(Executor executor) {
                        this.executor = executor;
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Dispatcher
                public void accept(Callable<? extends Callable<? extends Materializable>> callable, boolean z) {
                    if (z) {
                        this.futures.add(this.materializers.submit(new EagerWork(callable)));
                        return;
                    }
                    this.deferred++;
                    this.futures.add(this.preprocessings.submit(callable));
                }

                @Override // java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    for (Future<?> future : this.futures) {
                        future.cancel(true);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Dispatcher
                public void complete() {
                    try {
                        ArrayList<Callable<Materializable>> arrayList = new ArrayList(this.deferred);
                        while (true) {
                            int i = this.deferred;
                            this.deferred = i - 1;
                            if (i <= 0) {
                                break;
                            }
                            Future<Callable<Materializable>> take = this.preprocessings.take();
                            this.futures.remove(take);
                            arrayList.add(take.get());
                        }
                        for (Callable<Materializable> callable : arrayList) {
                            this.futures.add(this.materializers.submit(callable));
                        }
                        while (!this.futures.isEmpty()) {
                            Future<Materializable> take2 = this.materializers.take();
                            this.futures.remove(take2);
                            take2.get().materialize(this.sink, this.transformed, this.failed, this.unresolved);
                        }
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        throw new IllegalStateException(e);
                    } catch (ExecutionException e2) {
                        Throwable cause = e2.getCause();
                        if (!(cause instanceof IOException)) {
                            if (!(cause instanceof RuntimeException)) {
                                if (cause instanceof Error) {
                                    throw ((Error) cause);
                                }
                                throw new IllegalStateException(cause);
                            }
                            throw ((RuntimeException) cause);
                        }
                        throw ((IOException) cause);
                    }
                }

                public ForParallelTransformation(Executor executor, Target.Sink sink, List<TypeDescription> list, Map<TypeDescription, List<Throwable>> map, List<String> list2) {
                    this.sink = sink;
                    this.transformed = list;
                    this.failed = map;
                    this.unresolved = list2;
                    this.preprocessings = new ExecutorCompletionService(executor);
                    this.materializers = new ExecutorCompletionService(executor);
                }
            }

            /* loaded from: classes2.dex */
            public static class ForSerialTransformation implements Dispatcher {
                private final Map<TypeDescription, List<Throwable>> failed;
                private final List<Callable<? extends Materializable>> preprocessings = new ArrayList();
                private final Target.Sink sink;
                private final List<TypeDescription> transformed;
                private final List<String> unresolved;

                /* loaded from: classes2.dex */
                public enum Factory implements Factory {
                    INSTANCE;

                    @Override // net.bytebuddy.build.Plugin.Engine.Dispatcher.Factory
                    public Dispatcher make(Target.Sink sink, List<TypeDescription> list, Map<TypeDescription, List<Throwable>> map, List<String> list2) {
                        return new ForSerialTransformation(sink, list, map, list2);
                    }
                }

                @Override // java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Dispatcher
                public void complete() {
                    for (Callable<? extends Materializable> callable : this.preprocessings) {
                        if (!Thread.interrupted()) {
                            try {
                                callable.call().materialize(this.sink, this.transformed, this.failed, this.unresolved);
                            } catch (Exception e) {
                                if (!(e instanceof IOException)) {
                                    if (e instanceof RuntimeException) {
                                        throw ((RuntimeException) e);
                                    }
                                    throw new IllegalStateException(e);
                                }
                                throw ((IOException) e);
                            }
                        } else {
                            Thread.currentThread().interrupt();
                            throw new IllegalStateException("Interrupted during plugin engine completion");
                        }
                    }
                }

                public ForSerialTransformation(Target.Sink sink, List<TypeDescription> list, Map<TypeDescription, List<Throwable>> map, List<String> list2) {
                    this.sink = sink;
                    this.transformed = list;
                    this.failed = map;
                    this.unresolved = list2;
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Dispatcher
                public void accept(Callable<? extends Callable<? extends Materializable>> callable, boolean z) {
                    try {
                        Callable<? extends Materializable> call = callable.call();
                        if (z) {
                            call.call().materialize(this.sink, this.transformed, this.failed, this.unresolved);
                        } else {
                            this.preprocessings.add(call);
                        }
                    } catch (Exception e) {
                        if (!(e instanceof IOException)) {
                            if (e instanceof RuntimeException) {
                                throw ((RuntimeException) e);
                            }
                            throw new IllegalStateException(e);
                        }
                        throw ((IOException) e);
                    }
                }
            }

            /* loaded from: classes2.dex */
            public interface Materializable {

                /* loaded from: classes2.dex */
                public static class ForFailedElement implements Materializable {
                    private final Source.Element element;
                    private final List<Throwable> errored;
                    private final TypeDescription typeDescription;

                    @Override // net.bytebuddy.build.Plugin.Engine.Dispatcher.Materializable
                    public void materialize(Target.Sink sink, List<TypeDescription> list, Map<TypeDescription, List<Throwable>> map, List<String> list2) {
                        sink.retain(this.element);
                        map.put(this.typeDescription, this.errored);
                    }

                    public ForFailedElement(Source.Element element, TypeDescription typeDescription, List<Throwable> list) {
                        this.element = element;
                        this.typeDescription = typeDescription;
                        this.errored = list;
                    }
                }

                /* loaded from: classes2.dex */
                public static class ForTransformedElement implements Materializable {
                    private final DynamicType dynamicType;

                    @Override // net.bytebuddy.build.Plugin.Engine.Dispatcher.Materializable
                    public void materialize(Target.Sink sink, List<TypeDescription> list, Map<TypeDescription, List<Throwable>> map, List<String> list2) {
                        sink.store(this.dynamicType.getAllTypes());
                        list.add(this.dynamicType.getTypeDescription());
                    }

                    public ForTransformedElement(DynamicType dynamicType) {
                        this.dynamicType = dynamicType;
                    }
                }

                /* loaded from: classes2.dex */
                public static class ForUnresolvedElement implements Materializable {
                    private final Source.Element element;
                    private final String typeName;

                    @Override // net.bytebuddy.build.Plugin.Engine.Dispatcher.Materializable
                    public void materialize(Target.Sink sink, List<TypeDescription> list, Map<TypeDescription, List<Throwable>> map, List<String> list2) {
                        sink.retain(this.element);
                        list2.add(this.typeName);
                    }

                    public ForUnresolvedElement(Source.Element element, String str) {
                        this.element = element;
                        this.typeName = str;
                    }
                }

                void materialize(Target.Sink sink, List<TypeDescription> list, Map<TypeDescription, List<Throwable>> map, List<String> list2);

                /* loaded from: classes2.dex */
                public static class ForRetainedElement implements Materializable {
                    private final Source.Element element;

                    @Override // net.bytebuddy.build.Plugin.Engine.Dispatcher.Materializable
                    public void materialize(Target.Sink sink, List<TypeDescription> list, Map<TypeDescription, List<Throwable>> map, List<String> list2) {
                        sink.retain(this.element);
                    }

                    public ForRetainedElement(Source.Element element) {
                        this.element = element;
                    }
                }
            }

            void accept(Callable<? extends Callable<? extends Materializable>> callable, boolean z);

            void complete();
        }

        /* loaded from: classes2.dex */
        public interface ErrorHandler {

            /* loaded from: classes2.dex */
            public static class Compound implements ErrorHandler {
                private final List<ErrorHandler> errorHandlers;

                public Compound(ErrorHandler... errorHandlerArr) {
                    this(Arrays.asList(errorHandlerArr));
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(TypeDescription typeDescription, Plugin plugin, Throwable th) {
                    for (ErrorHandler errorHandler : this.errorHandlers) {
                        errorHandler.onError(typeDescription, plugin, th);
                    }
                }

                public Compound(List<? extends ErrorHandler> list) {
                    this.errorHandlers = new ArrayList();
                    for (ErrorHandler errorHandler : list) {
                        if (errorHandler instanceof Compound) {
                            this.errorHandlers.addAll(((Compound) errorHandler).errorHandlers);
                        } else if (!(errorHandler instanceof Listener.NoOp)) {
                            this.errorHandlers.add(errorHandler);
                        }
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onLiveInitializer(TypeDescription typeDescription, TypeDescription typeDescription2) {
                    for (ErrorHandler errorHandler : this.errorHandlers) {
                        errorHandler.onLiveInitializer(typeDescription, typeDescription2);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onManifest(@MaybeNull Manifest manifest) {
                    for (ErrorHandler errorHandler : this.errorHandlers) {
                        errorHandler.onManifest(manifest);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onResource(String str) {
                    for (ErrorHandler errorHandler : this.errorHandlers) {
                        errorHandler.onResource(str);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onUnresolved(String str) {
                    for (ErrorHandler errorHandler : this.errorHandlers) {
                        errorHandler.onUnresolved(str);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(TypeDescription typeDescription, List<Throwable> list) {
                    for (ErrorHandler errorHandler : this.errorHandlers) {
                        errorHandler.onError(typeDescription, list);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(Map<TypeDescription, List<Throwable>> map) {
                    for (ErrorHandler errorHandler : this.errorHandlers) {
                        errorHandler.onError(map);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(Plugin plugin, Throwable th) {
                    for (ErrorHandler errorHandler : this.errorHandlers) {
                        errorHandler.onError(plugin, th);
                    }
                }
            }

            /* loaded from: classes2.dex */
            public enum Enforcing implements ErrorHandler {
                ALL_TYPES_RESOLVED { // from class: net.bytebuddy.build.Plugin.Engine.ErrorHandler.Enforcing.1
                    @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler.Enforcing, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                    public void onUnresolved(String str) {
                        throw new IllegalStateException("Failed to resolve type description for " + str);
                    }
                },
                NO_LIVE_INITIALIZERS { // from class: net.bytebuddy.build.Plugin.Engine.ErrorHandler.Enforcing.2
                    @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler.Enforcing, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                    public void onLiveInitializer(TypeDescription typeDescription, TypeDescription typeDescription2) {
                        throw new IllegalStateException("Failed to instrument " + typeDescription + " due to live initializer for " + typeDescription2);
                    }
                },
                CLASS_FILES_ONLY { // from class: net.bytebuddy.build.Plugin.Engine.ErrorHandler.Enforcing.3
                    @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler.Enforcing, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                    public void onResource(String str) {
                        throw new IllegalStateException("Discovered a resource when only class files were allowed: " + str);
                    }
                },
                MANIFEST_REQUIRED { // from class: net.bytebuddy.build.Plugin.Engine.ErrorHandler.Enforcing.4
                    @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler.Enforcing, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                    public void onManifest(@MaybeNull Manifest manifest) {
                        if (manifest == null) {
                            throw new IllegalStateException("Required a manifest but no manifest was found");
                        }
                    }
                };

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(Map<TypeDescription, List<Throwable>> map) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(Plugin plugin, Throwable th) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(TypeDescription typeDescription, List<Throwable> list) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(TypeDescription typeDescription, Plugin plugin, Throwable th) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onLiveInitializer(TypeDescription typeDescription, TypeDescription typeDescription2) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onManifest(@MaybeNull Manifest manifest) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onResource(String str) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onUnresolved(String str) {
                }
            }

            /* loaded from: classes2.dex */
            public enum Failing implements ErrorHandler {
                FAIL_FAST { // from class: net.bytebuddy.build.Plugin.Engine.ErrorHandler.Failing.1
                    @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                    public void onError(TypeDescription typeDescription, Plugin plugin, Throwable th) {
                        throw new IllegalStateException("Failed to transform " + typeDescription + " using " + plugin, th);
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                    public void onError(TypeDescription typeDescription, List<Throwable> list) {
                        throw new UnsupportedOperationException("onError");
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                    public void onError(Map<TypeDescription, List<Throwable>> map) {
                        throw new UnsupportedOperationException("onError");
                    }
                },
                FAIL_AFTER_TYPE { // from class: net.bytebuddy.build.Plugin.Engine.ErrorHandler.Failing.2
                    @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                    public void onError(TypeDescription typeDescription, List<Throwable> list) {
                        throw new IllegalStateException("Failed to transform " + typeDescription + ": " + list);
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                    public void onError(TypeDescription typeDescription, Plugin plugin, Throwable th) {
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                    public void onError(Map<TypeDescription, List<Throwable>> map) {
                        throw new UnsupportedOperationException("onError");
                    }
                },
                FAIL_LAST { // from class: net.bytebuddy.build.Plugin.Engine.ErrorHandler.Failing.3
                    @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                    public void onError(Map<TypeDescription, List<Throwable>> map) {
                        throw new IllegalStateException("Failed to transform at least one type: " + map);
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                    public void onError(TypeDescription typeDescription, List<Throwable> list) {
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                    public void onError(TypeDescription typeDescription, Plugin plugin, Throwable th) {
                    }
                };

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(Plugin plugin, Throwable th) {
                    throw new IllegalStateException("Failed to close plugin " + plugin, th);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onLiveInitializer(TypeDescription typeDescription, TypeDescription typeDescription2) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onManifest(Manifest manifest) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onResource(String str) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onUnresolved(String str) {
                }
            }

            void onError(Map<TypeDescription, List<Throwable>> map);

            void onError(Plugin plugin, Throwable th);

            void onError(TypeDescription typeDescription, List<Throwable> list);

            void onError(TypeDescription typeDescription, Plugin plugin, Throwable th);

            void onLiveInitializer(TypeDescription typeDescription, TypeDescription typeDescription2);

            void onManifest(@MaybeNull Manifest manifest);

            void onResource(String str);

            void onUnresolved(String str);
        }

        /* loaded from: classes2.dex */
        public interface Listener extends ErrorHandler {

            /* loaded from: classes2.dex */
            public static abstract class Adapter implements Listener {
                @Override // net.bytebuddy.build.Plugin.Engine.Listener
                public void onComplete(TypeDescription typeDescription) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener
                public void onDiscovery(String str) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(Map<TypeDescription, List<Throwable>> map) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(Plugin plugin, Throwable th) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(TypeDescription typeDescription, List<Throwable> list) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(TypeDescription typeDescription, Plugin plugin, Throwable th) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener
                public void onIgnored(TypeDescription typeDescription, List<Plugin> list) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener
                public void onIgnored(TypeDescription typeDescription, Plugin plugin) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onLiveInitializer(TypeDescription typeDescription, TypeDescription typeDescription2) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onManifest(@MaybeNull Manifest manifest) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onResource(String str) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener
                public void onTransformation(TypeDescription typeDescription, List<Plugin> list) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener
                public void onTransformation(TypeDescription typeDescription, Plugin plugin) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onUnresolved(String str) {
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

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(TypeDescription typeDescription, Plugin plugin, Throwable th) {
                    for (Listener listener : this.listeners) {
                        listener.onError(typeDescription, plugin, th);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener
                public void onIgnored(TypeDescription typeDescription, Plugin plugin) {
                    for (Listener listener : this.listeners) {
                        listener.onIgnored(typeDescription, plugin);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener
                public void onTransformation(TypeDescription typeDescription, Plugin plugin) {
                    for (Listener listener : this.listeners) {
                        listener.onTransformation(typeDescription, plugin);
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

                @Override // net.bytebuddy.build.Plugin.Engine.Listener
                public void onComplete(TypeDescription typeDescription) {
                    for (Listener listener : this.listeners) {
                        listener.onComplete(typeDescription);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener
                public void onDiscovery(String str) {
                    for (Listener listener : this.listeners) {
                        listener.onDiscovery(str);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onLiveInitializer(TypeDescription typeDescription, TypeDescription typeDescription2) {
                    for (Listener listener : this.listeners) {
                        listener.onLiveInitializer(typeDescription, typeDescription2);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onManifest(@MaybeNull Manifest manifest) {
                    for (Listener listener : this.listeners) {
                        listener.onManifest(manifest);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onResource(String str) {
                    for (Listener listener : this.listeners) {
                        listener.onResource(str);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onUnresolved(String str) {
                    for (Listener listener : this.listeners) {
                        listener.onUnresolved(str);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(TypeDescription typeDescription, List<Throwable> list) {
                    for (Listener listener : this.listeners) {
                        listener.onError(typeDescription, list);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener
                public void onIgnored(TypeDescription typeDescription, List<Plugin> list) {
                    for (Listener listener : this.listeners) {
                        listener.onIgnored(typeDescription, list);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener
                public void onTransformation(TypeDescription typeDescription, List<Plugin> list) {
                    for (Listener listener : this.listeners) {
                        listener.onTransformation(typeDescription, list);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(Map<TypeDescription, List<Throwable>> map) {
                    for (Listener listener : this.listeners) {
                        listener.onError(map);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(Plugin plugin, Throwable th) {
                    for (Listener listener : this.listeners) {
                        listener.onError(plugin, th);
                    }
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForErrorHandler extends Adapter {
                private final ErrorHandler errorHandler;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.errorHandler.equals(((ForErrorHandler) obj).errorHandler);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.errorHandler.hashCode();
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(TypeDescription typeDescription, Plugin plugin, Throwable th) {
                    this.errorHandler.onError(typeDescription, plugin, th);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onLiveInitializer(TypeDescription typeDescription, TypeDescription typeDescription2) {
                    this.errorHandler.onLiveInitializer(typeDescription, typeDescription2);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onManifest(@MaybeNull Manifest manifest) {
                    this.errorHandler.onManifest(manifest);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onResource(String str) {
                    this.errorHandler.onResource(str);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onUnresolved(String str) {
                    this.errorHandler.onUnresolved(str);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(TypeDescription typeDescription, List<Throwable> list) {
                    this.errorHandler.onError(typeDescription, list);
                }

                public ForErrorHandler(ErrorHandler errorHandler) {
                    this.errorHandler = errorHandler;
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(Map<TypeDescription, List<Throwable>> map) {
                    this.errorHandler.onError(map);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(Plugin plugin, Throwable th) {
                    this.errorHandler.onError(plugin, th);
                }
            }

            /* loaded from: classes2.dex */
            public enum NoOp implements Listener {
                INSTANCE;

                @Override // net.bytebuddy.build.Plugin.Engine.Listener
                public void onComplete(TypeDescription typeDescription) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener
                public void onDiscovery(String str) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(Map<TypeDescription, List<Throwable>> map) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(Plugin plugin, Throwable th) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(TypeDescription typeDescription, List<Throwable> list) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(TypeDescription typeDescription, Plugin plugin, Throwable th) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener
                public void onIgnored(TypeDescription typeDescription, List<Plugin> list) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener
                public void onIgnored(TypeDescription typeDescription, Plugin plugin) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onLiveInitializer(TypeDescription typeDescription, TypeDescription typeDescription2) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onManifest(@MaybeNull Manifest manifest) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onResource(String str) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener
                public void onTransformation(TypeDescription typeDescription, List<Plugin> list) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener
                public void onTransformation(TypeDescription typeDescription, Plugin plugin) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onUnresolved(String str) {
                }
            }

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

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(TypeDescription typeDescription, Plugin plugin, Throwable th) {
                    this.delegate.onError(typeDescription, plugin, th);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(TypeDescription typeDescription, List<Throwable> list) {
                    this.delegate.onError(typeDescription, list);
                }

                public WithErrorsOnly(Listener listener) {
                    this.delegate = listener;
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(Map<TypeDescription, List<Throwable>> map) {
                    this.delegate.onError(map);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(Plugin plugin, Throwable th) {
                    this.delegate.onError(plugin, th);
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

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(TypeDescription typeDescription, Plugin plugin, Throwable th) {
                    this.delegate.onError(typeDescription, plugin, th);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.Listener
                public void onTransformation(TypeDescription typeDescription, Plugin plugin) {
                    this.delegate.onTransformation(typeDescription, plugin);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(TypeDescription typeDescription, List<Throwable> list) {
                    this.delegate.onError(typeDescription, list);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.Listener
                public void onTransformation(TypeDescription typeDescription, List<Plugin> list) {
                    this.delegate.onTransformation(typeDescription, list);
                }

                public WithTransformationsOnly(Listener listener) {
                    this.delegate = listener;
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(Map<TypeDescription, List<Throwable>> map) {
                    this.delegate.onError(map);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(Plugin plugin, Throwable th) {
                    this.delegate.onError(plugin, th);
                }
            }

            void onComplete(TypeDescription typeDescription);

            void onDiscovery(String str);

            void onIgnored(TypeDescription typeDescription, List<Plugin> list);

            void onIgnored(TypeDescription typeDescription, Plugin plugin);

            void onTransformation(TypeDescription typeDescription, List<Plugin> list);

            void onTransformation(TypeDescription typeDescription, Plugin plugin);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class StreamWriting extends Adapter {
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

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.Listener
                public void onComplete(TypeDescription typeDescription) {
                    this.printStream.printf("[Byte Buddy] COMPLETE %s", typeDescription);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.Listener
                public void onDiscovery(String str) {
                    this.printStream.printf("[Byte Buddy] DISCOVERY %s", str);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(TypeDescription typeDescription, Plugin plugin, Throwable th) {
                    synchronized (this.printStream) {
                        this.printStream.printf("[Byte Buddy] ERROR %s for %s", typeDescription, plugin);
                        th.printStackTrace(this.printStream);
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.Listener
                public void onIgnored(TypeDescription typeDescription, Plugin plugin) {
                    this.printStream.printf("[Byte Buddy] IGNORE %s for %s", typeDescription, plugin);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onLiveInitializer(TypeDescription typeDescription, TypeDescription typeDescription2) {
                    this.printStream.printf("[Byte Buddy] LIVE %s on %s", typeDescription, typeDescription2);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onManifest(@MaybeNull Manifest manifest) {
                    PrintStream printStream = this.printStream;
                    Object[] objArr = new Object[1];
                    objArr[0] = Boolean.valueOf(manifest != null);
                    printStream.printf("[Byte Buddy] MANIFEST %b", objArr);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onResource(String str) {
                    this.printStream.printf("[Byte Buddy] RESOURCE %s", str);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.Listener
                public void onTransformation(TypeDescription typeDescription, Plugin plugin) {
                    this.printStream.printf("[Byte Buddy] TRANSFORM %s for %s", typeDescription, plugin);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onUnresolved(String str) {
                    this.printStream.printf("[Byte Buddy] UNRESOLVED %s", str);
                }

                public Listener withErrorsOnly() {
                    return new WithErrorsOnly(this);
                }

                public Listener withTransformationsOnly() {
                    return new WithTransformationsOnly(this);
                }

                public StreamWriting(PrintStream printStream) {
                    this.printStream = printStream;
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Listener.Adapter, net.bytebuddy.build.Plugin.Engine.ErrorHandler
                public void onError(Plugin plugin, Throwable th) {
                    synchronized (this.printStream) {
                        this.printStream.printf("[Byte Buddy] ERROR %s", plugin);
                        th.printStackTrace(this.printStream);
                    }
                }
            }
        }

        /* loaded from: classes2.dex */
        public interface PoolStrategy {

            /* loaded from: classes2.dex */
            public enum Default implements PoolStrategy {
                FAST(TypePool.Default.ReaderMode.FAST),
                EXTENDED(TypePool.Default.ReaderMode.EXTENDED);
                
                private final TypePool.Default.ReaderMode readerMode;

                @Override // net.bytebuddy.build.Plugin.Engine.PoolStrategy
                public TypePool typePool(ClassFileLocator classFileLocator) {
                    return new TypePool.Default.WithLazyResolution(new TypePool.CacheProvider.Simple(), classFileLocator, this.readerMode, TypePool.ClassLoading.ofPlatformLoader());
                }

                Default(TypePool.Default.ReaderMode readerMode) {
                    this.readerMode = readerMode;
                }
            }

            /* loaded from: classes2.dex */
            public enum Eager implements PoolStrategy {
                FAST(TypePool.Default.ReaderMode.FAST),
                EXTENDED(TypePool.Default.ReaderMode.EXTENDED);
                
                private final TypePool.Default.ReaderMode readerMode;

                @Override // net.bytebuddy.build.Plugin.Engine.PoolStrategy
                public TypePool typePool(ClassFileLocator classFileLocator) {
                    return new TypePool.Default(new TypePool.CacheProvider.Simple(), classFileLocator, this.readerMode, TypePool.ClassLoading.ofPlatformLoader());
                }

                Eager(TypePool.Default.ReaderMode readerMode) {
                    this.readerMode = readerMode;
                }
            }

            TypePool typePool(ClassFileLocator classFileLocator);
        }

        /* loaded from: classes2.dex */
        public interface Source {

            /* loaded from: classes2.dex */
            public interface Element {
                InputStream getInputStream();

                String getName();

                @MaybeNull
                <T> T resolveAs(Class<T> cls);

                @SuppressFBWarnings(justification = "The array is not modified by class contract.", value = {"EI_EXPOSE_REP2"})
                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForByteArray implements Element {
                    private final byte[] binaryRepresentation;
                    private final String name;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            ForByteArray forByteArray = (ForByteArray) obj;
                            return this.name.equals(forByteArray.name) && Arrays.equals(this.binaryRepresentation, forByteArray.binaryRepresentation);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.Source.Element
                    public InputStream getInputStream() {
                        return new ByteArrayInputStream(this.binaryRepresentation);
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.Source.Element
                    public String getName() {
                        return this.name;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.name.hashCode()) * 31) + Arrays.hashCode(this.binaryRepresentation);
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.Source.Element
                    @AlwaysNull
                    public <T> T resolveAs(Class<T> cls) {
                        return null;
                    }

                    public ForByteArray(String str, byte[] bArr) {
                        this.name = str;
                        this.binaryRepresentation = bArr;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForFile implements Element {
                    private final File file;
                    private final File root;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            ForFile forFile = (ForFile) obj;
                            return this.root.equals(forFile.root) && this.file.equals(forFile.file);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.Source.Element
                    public InputStream getInputStream() {
                        return new FileInputStream(this.file);
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.Source.Element
                    public String getName() {
                        return this.root.getAbsoluteFile().toURI().relativize(this.file.getAbsoluteFile().toURI()).getPath();
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.root.hashCode()) * 31) + this.file.hashCode();
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.Source.Element
                    @MaybeNull
                    public <T> T resolveAs(Class<T> cls) {
                        if (File.class.isAssignableFrom(cls)) {
                            return (T) this.file;
                        }
                        return null;
                    }

                    public ForFile(File file, File file2) {
                        this.root = file;
                        this.file = file2;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForJarEntry implements Element {
                    private final JarEntry entry;
                    private final JarFile file;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            ForJarEntry forJarEntry = (ForJarEntry) obj;
                            return this.file.equals(forJarEntry.file) && this.entry.equals(forJarEntry.entry);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.Source.Element
                    public InputStream getInputStream() {
                        return this.file.getInputStream(this.entry);
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.Source.Element
                    public String getName() {
                        return this.entry.getName();
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.file.hashCode()) * 31) + this.entry.hashCode();
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.Source.Element
                    @MaybeNull
                    public <T> T resolveAs(Class<T> cls) {
                        if (JarEntry.class.isAssignableFrom(cls)) {
                            return (T) this.entry;
                        }
                        return null;
                    }

                    public ForJarEntry(JarFile jarFile, JarEntry jarEntry) {
                        this.file = jarFile;
                        this.entry = jarEntry;
                    }
                }
            }

            /* loaded from: classes2.dex */
            public enum Empty implements Source, Origin {
                INSTANCE;

                @Override // java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Source.Origin
                public ClassFileLocator getClassFileLocator() {
                    return ClassFileLocator.NoOp.INSTANCE;
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Source.Origin
                @MaybeNull
                public Manifest getManifest() {
                    return Origin.NO_MANIFEST;
                }

                @Override // java.lang.Iterable
                public Iterator<Element> iterator() {
                    return Collections.emptySet().iterator();
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Source
                public Origin read() {
                    return this;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Filtering implements Source {
                private final Source delegate;
                private final boolean manifest;
                private final ElementMatcher<Element> matcher;

                public Filtering(Source source, ElementMatcher<Element> elementMatcher) {
                    this(source, elementMatcher, true);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Filtering filtering = (Filtering) obj;
                        return this.manifest == filtering.manifest && this.delegate.equals(filtering.delegate) && this.matcher.equals(filtering.matcher);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((getClass().hashCode() * 31) + this.delegate.hashCode()) * 31) + this.matcher.hashCode()) * 31) + (this.manifest ? 1 : 0);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Source
                public Origin read() {
                    return new Origin.Filtering(this.delegate.read(), this.matcher, this.manifest);
                }

                public Filtering(Source source, ElementMatcher<Element> elementMatcher, boolean z) {
                    this.delegate = source;
                    this.matcher = elementMatcher;
                    this.manifest = z;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForFolder implements Source, Origin {
                private final File folder;

                /* loaded from: classes2.dex */
                public class FolderIterator implements Iterator<Element> {
                    private final List<File> files;

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return !this.files.isEmpty();
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        throw new UnsupportedOperationException("remove");
                    }

                    public FolderIterator(File file) {
                        this.files = new ArrayList(Collections.singleton(file));
                        while (true) {
                            List<File> list = this.files;
                            File[] listFiles = list.remove(list.size() - 1).listFiles();
                            if (listFiles != null) {
                                this.files.addAll(Arrays.asList(listFiles));
                            }
                            if (!this.files.isEmpty()) {
                                List<File> list2 = this.files;
                                if (!list2.get(list2.size() - 1).isDirectory()) {
                                    List<File> list3 = this.files;
                                    if (!list3.get(list3.size() - 1).equals(new File(file, "META-INF/MANIFEST.MF"))) {
                                        return;
                                    }
                                }
                            } else {
                                return;
                            }
                        }
                    }

                    @Override // java.util.Iterator
                    @SuppressFBWarnings(justification = "Exception is thrown by invoking removeFirst on an empty list.", value = {"IT_NO_SUCH_ELEMENT"})
                    public Element next() {
                        boolean isEmpty;
                        boolean isDirectory;
                        boolean equals;
                        try {
                            File file = ForFolder.this.folder;
                            List<File> list = this.files;
                            while (true) {
                                if (!isEmpty) {
                                    if (!isDirectory) {
                                        if (!equals) {
                                            break;
                                        }
                                    }
                                } else {
                                    break;
                                }
                            }
                            return new Element.ForFile(file, list.remove(list.size() - 1));
                        } finally {
                            while (!this.files.isEmpty()) {
                                List<File> list2 = this.files;
                                if (!list2.get(list2.size() - 1).isDirectory()) {
                                    List<File> list3 = this.files;
                                    if (!list3.get(list3.size() - 1).equals(new File(ForFolder.this.folder, "META-INF/MANIFEST.MF"))) {
                                        break;
                                    }
                                }
                                List<File> list4 = this.files;
                                File[] listFiles = list4.remove(list4.size() - 1).listFiles();
                                if (listFiles != null) {
                                    this.files.addAll(Arrays.asList(listFiles));
                                }
                            }
                        }
                    }
                }

                @Override // java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.folder.equals(((ForFolder) obj).folder);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Source.Origin
                public ClassFileLocator getClassFileLocator() {
                    return new ClassFileLocator.ForFolder(this.folder);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.folder.hashCode();
                }

                @Override // java.lang.Iterable
                public Iterator<Element> iterator() {
                    return new FolderIterator(this.folder);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Source
                public Origin read() {
                    return this;
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Source.Origin
                @MaybeNull
                public Manifest getManifest() {
                    File file = new File(this.folder, "META-INF/MANIFEST.MF");
                    if (file.exists()) {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        try {
                            return new Manifest(fileInputStream);
                        } finally {
                            fileInputStream.close();
                        }
                    }
                    return Origin.NO_MANIFEST;
                }

                public ForFolder(File file) {
                    this.folder = file;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class InMemory implements Source, Origin {
                private final Map<String, byte[]> storage;

                /* loaded from: classes2.dex */
                public static class MapEntryIterator implements Iterator<Element> {
                    private final Iterator<Map.Entry<String, byte[]>> iterator;

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return this.iterator.hasNext();
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        throw new UnsupportedOperationException("remove");
                    }

                    @Override // java.util.Iterator
                    public Element next() {
                        Map.Entry<String, byte[]> next = this.iterator.next();
                        return new Element.ForByteArray(next.getKey(), next.getValue());
                    }

                    public MapEntryIterator(Iterator<Map.Entry<String, byte[]>> it) {
                        this.iterator = it;
                    }
                }

                public static Source ofTypes(Class<?>... clsArr) {
                    return ofTypes(Arrays.asList(clsArr));
                }

                @Override // java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.storage.equals(((InMemory) obj).storage);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Source.Origin
                public ClassFileLocator getClassFileLocator() {
                    return ClassFileLocator.Simple.ofResources(this.storage);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.storage.hashCode();
                }

                @Override // java.lang.Iterable
                public Iterator<Element> iterator() {
                    return new MapEntryIterator(this.storage.entrySet().iterator());
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Source
                public Origin read() {
                    return this;
                }

                public static Source ofTypes(Collection<? extends Class<?>> collection) {
                    HashMap hashMap = new HashMap();
                    for (Class<?> cls : collection) {
                        hashMap.put(TypeDescription.ForLoadedType.m15196of(cls), ClassFileLocator.ForClassLoader.read(cls));
                    }
                    return ofTypes(hashMap);
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Source.Origin
                @MaybeNull
                public Manifest getManifest() {
                    byte[] bArr = this.storage.get("META-INF/MANIFEST.MF");
                    if (bArr == null) {
                        return Origin.NO_MANIFEST;
                    }
                    return new Manifest(new ByteArrayInputStream(bArr));
                }

                public InMemory(Map<String, byte[]> map) {
                    this.storage = map;
                }

                public static Source ofTypes(Map<TypeDescription, byte[]> map) {
                    HashMap hashMap = new HashMap();
                    for (Map.Entry<TypeDescription, byte[]> entry : map.entrySet()) {
                        hashMap.put(entry.getKey().getInternalName() + ".class", entry.getValue());
                    }
                    return new InMemory(hashMap);
                }
            }

            /* loaded from: classes2.dex */
            public interface Origin extends Iterable<Element>, Closeable {
                @AlwaysNull
                public static final Manifest NO_MANIFEST = null;

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Filtering implements Origin {
                    private final Origin delegate;
                    private final boolean manifest;
                    private final ElementMatcher<Element> matcher;

                    /* loaded from: classes2.dex */
                    public static class FilteringIterator implements Iterator<Element> {
                        @MaybeNull
                        private Element current;
                        private final Iterator<Element> iterator;
                        private final ElementMatcher<Element> matcher;

                        @Override // java.util.Iterator
                        public boolean hasNext() {
                            return this.current != null;
                        }

                        @Override // java.util.Iterator
                        public void remove() {
                            this.iterator.remove();
                        }

                        private FilteringIterator(Iterator<Element> it, ElementMatcher<Element> elementMatcher) {
                            this.iterator = it;
                            this.matcher = elementMatcher;
                            while (it.hasNext()) {
                                Element next = it.next();
                                if (elementMatcher.matches(next)) {
                                    this.current = next;
                                    return;
                                }
                            }
                        }

                        @Override // java.util.Iterator
                        public Element next() {
                            Element element = this.current;
                            if (element != null) {
                                this.current = null;
                                while (true) {
                                    if (!this.iterator.hasNext()) {
                                        break;
                                    }
                                    Element next = this.iterator.next();
                                    if (this.matcher.matches(next)) {
                                        this.current = next;
                                        break;
                                    }
                                }
                                return element;
                            }
                            throw new NoSuchElementException();
                        }
                    }

                    public Filtering(Origin origin, ElementMatcher<Element> elementMatcher) {
                        this(origin, elementMatcher, true);
                    }

                    @Override // java.io.Closeable, java.lang.AutoCloseable
                    public void close() {
                        this.delegate.close();
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Filtering filtering = (Filtering) obj;
                            return this.manifest == filtering.manifest && this.delegate.equals(filtering.delegate) && this.matcher.equals(filtering.matcher);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.Source.Origin
                    public ClassFileLocator getClassFileLocator() {
                        return this.delegate.getClassFileLocator();
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.Source.Origin
                    @MaybeNull
                    public Manifest getManifest() {
                        return this.manifest ? this.delegate.getManifest() : Origin.NO_MANIFEST;
                    }

                    public int hashCode() {
                        return (((((getClass().hashCode() * 31) + this.delegate.hashCode()) * 31) + this.matcher.hashCode()) * 31) + (this.manifest ? 1 : 0);
                    }

                    @Override // java.lang.Iterable
                    public Iterator<Element> iterator() {
                        return new FilteringIterator(this.delegate.iterator(), this.matcher);
                    }

                    public Filtering(Origin origin, ElementMatcher<Element> elementMatcher, boolean z) {
                        this.delegate = origin;
                        this.matcher = elementMatcher;
                        this.manifest = z;
                    }
                }

                ClassFileLocator getClassFileLocator();

                @MaybeNull
                Manifest getManifest();

                /* loaded from: classes2.dex */
                public static class ForJarFile implements Origin {
                    private final JarFile file;

                    /* loaded from: classes2.dex */
                    public class JarFileIterator implements Iterator<Element> {
                        private final Enumeration<JarEntry> enumeration;

                        @Override // java.util.Iterator
                        public boolean hasNext() {
                            return this.enumeration.hasMoreElements();
                        }

                        @Override // java.util.Iterator
                        public void remove() {
                            throw new UnsupportedOperationException("remove");
                        }

                        public JarFileIterator(Enumeration<JarEntry> enumeration) {
                            this.enumeration = enumeration;
                        }

                        @Override // java.util.Iterator
                        public Element next() {
                            return new Element.ForJarEntry(ForJarFile.this.file, this.enumeration.nextElement());
                        }
                    }

                    @Override // java.io.Closeable, java.lang.AutoCloseable
                    public void close() {
                        this.file.close();
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.Source.Origin
                    public ClassFileLocator getClassFileLocator() {
                        return new ClassFileLocator.ForJarFile(this.file);
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.Source.Origin
                    @MaybeNull
                    public Manifest getManifest() {
                        return this.file.getManifest();
                    }

                    @Override // java.lang.Iterable
                    public Iterator<Element> iterator() {
                        return new JarFileIterator(this.file.entries());
                    }

                    public ForJarFile(JarFile jarFile) {
                        this.file = jarFile;
                    }
                }
            }

            Origin read();

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForJarFile implements Source {
                private final File file;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.file.equals(((ForJarFile) obj).file);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.file.hashCode();
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Source
                public Origin read() {
                    return new Origin.ForJarFile(new JarFile(this.file));
                }

                public ForJarFile(File file) {
                    this.file = file;
                }
            }
        }

        /* loaded from: classes2.dex */
        public static class Summary {
            private final Map<TypeDescription, List<Throwable>> failed;
            private final List<TypeDescription> transformed;
            private final List<String> unresolved;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || getClass() != obj.getClass()) {
                    return false;
                }
                Summary summary = (Summary) obj;
                return this.transformed.equals(summary.transformed) && this.failed.equals(summary.failed) && this.unresolved.equals(summary.unresolved);
            }

            public Map<TypeDescription, List<Throwable>> getFailed() {
                return this.failed;
            }

            public List<TypeDescription> getTransformed() {
                return this.transformed;
            }

            public List<String> getUnresolved() {
                return this.unresolved;
            }

            public int hashCode() {
                return (((this.transformed.hashCode() * 31) + this.failed.hashCode()) * 31) + this.unresolved.hashCode();
            }

            public Summary(List<TypeDescription> list, Map<TypeDescription, List<Throwable>> map, List<String> list2) {
                this.transformed = list;
                this.failed = map;
                this.unresolved = list2;
            }
        }

        /* loaded from: classes2.dex */
        public interface Target {

            /* loaded from: classes2.dex */
            public enum Discarding implements Target, Sink {
                INSTANCE;

                @Override // java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Target.Sink
                public void retain(Source.Element element) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Target.Sink
                public void store(Map<TypeDescription, byte[]> map) {
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Target
                public Sink write(@MaybeNull Manifest manifest) {
                    return this;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForFolder implements Target, Sink {
                private final File folder;

                @Override // java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.folder.equals(((ForFolder) obj).folder);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.folder.hashCode();
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Target
                public Sink write(@MaybeNull Manifest manifest) {
                    if (manifest != null) {
                        File file = new File(this.folder, "META-INF/MANIFEST.MF");
                        if (!file.getParentFile().isDirectory() && !file.getParentFile().mkdirs()) {
                            throw new IOException("Could not create directory: " + file.getParent());
                        }
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        try {
                            manifest.write(fileOutputStream);
                        } finally {
                            fileOutputStream.close();
                        }
                    }
                    return this;
                }

                public ForFolder(File file) {
                    this.folder = file;
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Target.Sink
                public void retain(Source.Element element) {
                    String name = element.getName();
                    if (!name.endsWith("/")) {
                        File file = new File(this.folder, name);
                        File file2 = (File) element.resolveAs(File.class);
                        if (file.getCanonicalPath().startsWith(this.folder.getCanonicalPath())) {
                            if (!file.getParentFile().isDirectory() && !file.getParentFile().mkdirs()) {
                                throw new IOException("Could not create directory: " + file.getParent());
                            } else if (file2 != null && !file2.equals(file)) {
                                FileSystem.getInstance().copy(file2, file);
                            } else if (!file.equals(file2)) {
                                InputStream inputStream = element.getInputStream();
                                try {
                                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                                    byte[] bArr = new byte[1024];
                                    while (true) {
                                        int read = inputStream.read(bArr);
                                        if (read != -1) {
                                            fileOutputStream.write(bArr, 0, read);
                                        } else {
                                            fileOutputStream.close();
                                            return;
                                        }
                                    }
                                } finally {
                                    inputStream.close();
                                }
                            }
                        } else {
                            throw new IllegalArgumentException(file + " is not a subdirectory of " + this.folder);
                        }
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Target.Sink
                public void store(Map<TypeDescription, byte[]> map) {
                    for (Map.Entry<TypeDescription, byte[]> entry : map.entrySet()) {
                        File file = this.folder;
                        File file2 = new File(file, entry.getKey().getInternalName() + ".class");
                        if (!file2.getParentFile().isDirectory() && !file2.getParentFile().mkdirs()) {
                            throw new IOException("Could not create directory: " + file2.getParent());
                        }
                        FileOutputStream fileOutputStream = new FileOutputStream(file2);
                        try {
                            fileOutputStream.write(entry.getValue());
                        } finally {
                            fileOutputStream.close();
                        }
                    }
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class InMemory implements Target, Sink {
                private final Map<String, byte[]> storage;

                public InMemory() {
                    this(new HashMap());
                }

                @Override // java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.storage.equals(((InMemory) obj).storage);
                }

                public Map<String, byte[]> getStorage() {
                    return this.storage;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.storage.hashCode();
                }

                public InMemory(Map<String, byte[]> map) {
                    this.storage = map;
                }

                public Map<String, byte[]> toTypeMap() {
                    HashMap hashMap = new HashMap();
                    for (Map.Entry<String, byte[]> entry : this.storage.entrySet()) {
                        if (entry.getKey().endsWith(".class")) {
                            hashMap.put(entry.getKey().substring(0, entry.getKey().length() - 6).replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH), entry.getValue());
                        }
                    }
                    return hashMap;
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Target
                public Sink write(@MaybeNull Manifest manifest) {
                    if (manifest != null) {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            manifest.write(byteArrayOutputStream);
                            byteArrayOutputStream.close();
                            this.storage.put("META-INF/MANIFEST.MF", byteArrayOutputStream.toByteArray());
                        } catch (Throwable th) {
                            byteArrayOutputStream.close();
                            throw th;
                        }
                    }
                    return this;
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Target.Sink
                public void retain(Source.Element element) {
                    if (!element.getName().endsWith("/")) {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            InputStream inputStream = element.getInputStream();
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int read = inputStream.read(bArr);
                                if (read != -1) {
                                    byteArrayOutputStream.write(bArr, 0, read);
                                } else {
                                    inputStream.close();
                                    byteArrayOutputStream.close();
                                    this.storage.put(element.getName(), byteArrayOutputStream.toByteArray());
                                    return;
                                }
                            }
                        } catch (Throwable th) {
                            byteArrayOutputStream.close();
                            throw th;
                        }
                    }
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Target.Sink
                public void store(Map<TypeDescription, byte[]> map) {
                    for (Map.Entry<TypeDescription, byte[]> entry : map.entrySet()) {
                        Map<String, byte[]> map2 = this.storage;
                        map2.put(entry.getKey().getInternalName() + ".class", entry.getValue());
                    }
                }
            }

            /* loaded from: classes2.dex */
            public interface Sink extends Closeable {

                /* loaded from: classes2.dex */
                public static class ForJarOutputStream implements Sink {
                    private final JarOutputStream outputStream;

                    @Override // java.io.Closeable, java.lang.AutoCloseable
                    public void close() {
                        this.outputStream.close();
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.Target.Sink
                    public void retain(Source.Element element) {
                        JarEntry jarEntry = (JarEntry) element.resolveAs(JarEntry.class);
                        JarOutputStream jarOutputStream = this.outputStream;
                        if (jarEntry == null) {
                            jarEntry = new JarEntry(element.getName());
                        }
                        jarOutputStream.putNextEntry(jarEntry);
                        InputStream inputStream = element.getInputStream();
                        try {
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int read = inputStream.read(bArr);
                                if (read != -1) {
                                    this.outputStream.write(bArr, 0, read);
                                } else {
                                    inputStream.close();
                                    this.outputStream.closeEntry();
                                    return;
                                }
                            }
                        } catch (Throwable th) {
                            inputStream.close();
                            throw th;
                        }
                    }

                    public ForJarOutputStream(JarOutputStream jarOutputStream) {
                        this.outputStream = jarOutputStream;
                    }

                    @Override // net.bytebuddy.build.Plugin.Engine.Target.Sink
                    public void store(Map<TypeDescription, byte[]> map) {
                        for (Map.Entry<TypeDescription, byte[]> entry : map.entrySet()) {
                            JarOutputStream jarOutputStream = this.outputStream;
                            jarOutputStream.putNextEntry(new JarEntry(entry.getKey().getInternalName() + ".class"));
                            this.outputStream.write(entry.getValue());
                            this.outputStream.closeEntry();
                        }
                    }
                }

                void retain(Source.Element element);

                void store(Map<TypeDescription, byte[]> map);
            }

            Sink write(@MaybeNull Manifest manifest);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForJarFile implements Target {
                private final File file;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.file.equals(((ForJarFile) obj).file);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.file.hashCode();
                }

                @Override // net.bytebuddy.build.Plugin.Engine.Target
                public Sink write(@MaybeNull Manifest manifest) {
                    return manifest == null ? new Sink.ForJarOutputStream(new JarOutputStream(new FileOutputStream(this.file))) : new Sink.ForJarOutputStream(new JarOutputStream(new FileOutputStream(this.file), manifest));
                }

                public ForJarFile(File file) {
                    this.file = file;
                }
            }
        }

        /* loaded from: classes2.dex */
        public interface TypeStrategy {

            /* loaded from: classes2.dex */
            public enum Default implements TypeStrategy {
                REDEFINE { // from class: net.bytebuddy.build.Plugin.Engine.TypeStrategy.Default.1
                    @Override // net.bytebuddy.build.Plugin.Engine.TypeStrategy
                    public DynamicType.Builder<?> builder(ByteBuddy byteBuddy, TypeDescription typeDescription, ClassFileLocator classFileLocator) {
                        return byteBuddy.redefine(typeDescription, classFileLocator);
                    }
                },
                REBASE { // from class: net.bytebuddy.build.Plugin.Engine.TypeStrategy.Default.2
                    @Override // net.bytebuddy.build.Plugin.Engine.TypeStrategy
                    public DynamicType.Builder<?> builder(ByteBuddy byteBuddy, TypeDescription typeDescription, ClassFileLocator classFileLocator) {
                        return byteBuddy.rebase(typeDescription, classFileLocator);
                    }
                },
                DECORATE { // from class: net.bytebuddy.build.Plugin.Engine.TypeStrategy.Default.3
                    @Override // net.bytebuddy.build.Plugin.Engine.TypeStrategy
                    public DynamicType.Builder<?> builder(ByteBuddy byteBuddy, TypeDescription typeDescription, ClassFileLocator classFileLocator) {
                        return byteBuddy.decorate(typeDescription, classFileLocator);
                    }
                }
            }

            DynamicType.Builder<?> builder(ByteBuddy byteBuddy, TypeDescription typeDescription, ClassFileLocator classFileLocator);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForEntryPoint implements TypeStrategy {
                private final EntryPoint entryPoint;
                private final MethodNameTransformer methodNameTransformer;

                @Override // net.bytebuddy.build.Plugin.Engine.TypeStrategy
                public DynamicType.Builder<?> builder(ByteBuddy byteBuddy, TypeDescription typeDescription, ClassFileLocator classFileLocator) {
                    return this.entryPoint.transform(typeDescription, byteBuddy, classFileLocator, this.methodNameTransformer);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        ForEntryPoint forEntryPoint = (ForEntryPoint) obj;
                        return this.entryPoint.equals(forEntryPoint.entryPoint) && this.methodNameTransformer.equals(forEntryPoint.methodNameTransformer);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.entryPoint.hashCode()) * 31) + this.methodNameTransformer.hashCode();
                }

                public ForEntryPoint(EntryPoint entryPoint, MethodNameTransformer methodNameTransformer) {
                    this.entryPoint = entryPoint;
                    this.methodNameTransformer = methodNameTransformer;
                }
            }
        }

        Summary apply(File file, File file2, List<? extends Factory> list);

        Summary apply(File file, File file2, Factory... factoryArr);

        Summary apply(Source source, Target target, List<? extends Factory> list);

        Summary apply(Source source, Target target, Factory... factoryArr);

        Engine ignore(ElementMatcher<? super TypeDescription> elementMatcher);

        Engine with(ByteBuddy byteBuddy);

        Engine with(Dispatcher.Factory factory);

        Engine with(Listener listener);

        Engine with(PoolStrategy poolStrategy);

        Engine with(TypeStrategy typeStrategy);

        Engine with(ClassFileLocator classFileLocator);

        Engine withErrorHandlers(List<? extends ErrorHandler> list);

        Engine withErrorHandlers(ErrorHandler... errorHandlerArr);

        Engine withParallelTransformation(int i);

        Engine withoutErrorHandlers();
    }

    /* loaded from: classes2.dex */
    public interface Factory {

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class UsingReflection implements Factory {
            private final List<ArgumentResolver> argumentResolvers;
            private final Class<? extends Plugin> type;

            /* loaded from: classes2.dex */
            public interface ArgumentResolver {

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForIndex implements ArgumentResolver {
                    private static final Map<Class<?>, Class<?>> WRAPPER_TYPES;
                    private final int index;
                    @MaybeNull
                    @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
                    private final Object value;

                    @HashCodeAndEqualsPlugin.Enhance
                    /* loaded from: classes.dex */
                    public static class WithDynamicType implements ArgumentResolver {
                        private final int index;
                        @MaybeNull
                        @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
                        private final String value;

                        /* JADX WARN: Removed duplicated region for block: B:22:0x002e A[RETURN] */
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
                                int r2 = r4.index
                                net.bytebuddy.build.Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex$WithDynamicType r5 = (net.bytebuddy.build.Plugin.Factory.UsingReflection.ArgumentResolver.ForIndex.WithDynamicType) r5
                                int r3 = r5.index
                                if (r2 == r3) goto L1c
                                return r1
                            L1c:
                                java.lang.String r2 = r4.value
                                java.lang.String r5 = r5.value
                                if (r5 == 0) goto L2b
                                if (r2 == 0) goto L2d
                                boolean r5 = r2.equals(r5)
                                if (r5 != 0) goto L2e
                                return r1
                            L2b:
                                if (r2 == 0) goto L2e
                            L2d:
                                return r1
                            L2e:
                                return r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.build.Plugin.Factory.UsingReflection.ArgumentResolver.ForIndex.WithDynamicType.equals(java.lang.Object):boolean");
                        }

                        public int hashCode() {
                            int hashCode = ((getClass().hashCode() * 31) + this.index) * 31;
                            String str = this.value;
                            return str != null ? hashCode + str.hashCode() : hashCode;
                        }

                        @Override // net.bytebuddy.build.Plugin.Factory.UsingReflection.ArgumentResolver
                        public Resolution resolve(int i, Class<?> cls) {
                            if (this.index != i) {
                                return Resolution.Unresolved.INSTANCE;
                            }
                            if (cls != Character.TYPE && cls != Character.class) {
                                if (cls == String.class) {
                                    return new Resolution.Resolved(this.value);
                                }
                                if (cls.isPrimitive()) {
                                    cls = (Class) ForIndex.WRAPPER_TYPES.get(cls);
                                }
                                try {
                                    Method method = cls.getMethod(ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, String.class);
                                    if (Modifier.isStatic(method.getModifiers()) && cls.isAssignableFrom(method.getReturnType())) {
                                        return new Resolution.Resolved(method.invoke(null, this.value));
                                    }
                                    return Resolution.Unresolved.INSTANCE;
                                } catch (IllegalAccessException e) {
                                    throw new IllegalStateException(e);
                                } catch (NoSuchMethodException unused) {
                                    return Resolution.Unresolved.INSTANCE;
                                } catch (InvocationTargetException e2) {
                                    throw new IllegalStateException(e2.getTargetException());
                                }
                            }
                            String str = this.value;
                            if (str != null && str.length() == 1) {
                                return new Resolution.Resolved(Character.valueOf(this.value.charAt(0)));
                            }
                            return Resolution.Unresolved.INSTANCE;
                        }

                        public WithDynamicType(int i, @MaybeNull String str) {
                            this.index = i;
                            this.value = str;
                        }
                    }

                    /* JADX WARN: Removed duplicated region for block: B:22:0x002e A[RETURN] */
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
                            int r2 = r4.index
                            net.bytebuddy.build.Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex r5 = (net.bytebuddy.build.Plugin.Factory.UsingReflection.ArgumentResolver.ForIndex) r5
                            int r3 = r5.index
                            if (r2 == r3) goto L1c
                            return r1
                        L1c:
                            java.lang.Object r2 = r4.value
                            java.lang.Object r5 = r5.value
                            if (r5 == 0) goto L2b
                            if (r2 == 0) goto L2d
                            boolean r5 = r2.equals(r5)
                            if (r5 != 0) goto L2e
                            return r1
                        L2b:
                            if (r2 == 0) goto L2e
                        L2d:
                            return r1
                        L2e:
                            return r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.build.Plugin.Factory.UsingReflection.ArgumentResolver.ForIndex.equals(java.lang.Object):boolean");
                    }

                    public int hashCode() {
                        int hashCode = ((getClass().hashCode() * 31) + this.index) * 31;
                        Object obj = this.value;
                        return obj != null ? hashCode + obj.hashCode() : hashCode;
                    }

                    static {
                        HashMap hashMap = new HashMap();
                        WRAPPER_TYPES = hashMap;
                        hashMap.put(Boolean.TYPE, Boolean.class);
                        hashMap.put(Byte.TYPE, Byte.class);
                        hashMap.put(Short.TYPE, Short.class);
                        hashMap.put(Character.TYPE, Character.class);
                        hashMap.put(Integer.TYPE, Integer.class);
                        hashMap.put(Long.TYPE, Long.class);
                        hashMap.put(Float.TYPE, Float.class);
                        hashMap.put(Double.TYPE, Double.class);
                    }

                    @Override // net.bytebuddy.build.Plugin.Factory.UsingReflection.ArgumentResolver
                    public Resolution resolve(int i, Class<?> cls) {
                        if (this.index != i) {
                            return Resolution.Unresolved.INSTANCE;
                        }
                        if (cls.isPrimitive()) {
                            if (WRAPPER_TYPES.get(cls).isInstance(this.value)) {
                                return new Resolution.Resolved(this.value);
                            }
                            return Resolution.Unresolved.INSTANCE;
                        }
                        Object obj = this.value;
                        if (obj != null && !cls.isInstance(obj)) {
                            return Resolution.Unresolved.INSTANCE;
                        }
                        return new Resolution.Resolved(this.value);
                    }

                    public ForIndex(int i, @MaybeNull Object obj) {
                        this.index = i;
                        this.value = obj;
                    }
                }

                /* loaded from: classes2.dex */
                public enum NoOp implements ArgumentResolver {
                    INSTANCE;

                    @Override // net.bytebuddy.build.Plugin.Factory.UsingReflection.ArgumentResolver
                    public Resolution resolve(int i, Class<?> cls) {
                        return Resolution.Unresolved.INSTANCE;
                    }
                }

                /* loaded from: classes2.dex */
                public interface Resolution {

                    /* loaded from: classes2.dex */
                    public enum Unresolved implements Resolution {
                        INSTANCE;

                        @Override // net.bytebuddy.build.Plugin.Factory.UsingReflection.ArgumentResolver.Resolution
                        public Object getArgument() {
                            throw new IllegalStateException("Cannot get the argument for an unresolved parameter");
                        }

                        @Override // net.bytebuddy.build.Plugin.Factory.UsingReflection.ArgumentResolver.Resolution
                        public boolean isResolved() {
                            return false;
                        }
                    }

                    @MaybeNull
                    Object getArgument();

                    boolean isResolved();

                    @HashCodeAndEqualsPlugin.Enhance
                    /* loaded from: classes.dex */
                    public static class Resolved implements Resolution {
                        @MaybeNull
                        @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
                        private final Object argument;

                        /* JADX WARN: Removed duplicated region for block: B:19:0x0027 A[RETURN] */
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
                                java.lang.Object r2 = r4.argument
                                net.bytebuddy.build.Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Resolved r5 = (net.bytebuddy.build.Plugin.Factory.UsingReflection.ArgumentResolver.Resolution.Resolved) r5
                                java.lang.Object r5 = r5.argument
                                if (r5 == 0) goto L24
                                if (r2 == 0) goto L26
                                boolean r5 = r2.equals(r5)
                                if (r5 != 0) goto L27
                                return r1
                            L24:
                                if (r2 == 0) goto L27
                            L26:
                                return r1
                            L27:
                                return r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.build.Plugin.Factory.UsingReflection.ArgumentResolver.Resolution.Resolved.equals(java.lang.Object):boolean");
                        }

                        @Override // net.bytebuddy.build.Plugin.Factory.UsingReflection.ArgumentResolver.Resolution
                        @MaybeNull
                        public Object getArgument() {
                            return this.argument;
                        }

                        public int hashCode() {
                            int hashCode = getClass().hashCode() * 31;
                            Object obj = this.argument;
                            return obj != null ? hashCode + obj.hashCode() : hashCode;
                        }

                        @Override // net.bytebuddy.build.Plugin.Factory.UsingReflection.ArgumentResolver.Resolution
                        public boolean isResolved() {
                            return true;
                        }

                        public Resolved(@MaybeNull Object obj) {
                            this.argument = obj;
                        }
                    }
                }

                Resolution resolve(int i, Class<?> cls);

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForType<T> implements ArgumentResolver {
                    private final Class<? extends T> type;
                    private final T value;

                    /* renamed from: of */
                    public static <S> ArgumentResolver m15239of(Class<? extends S> cls, S s) {
                        return new ForType(cls, s);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            ForType forType = (ForType) obj;
                            return this.type.equals(forType.type) && this.value.equals(forType.value);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.type.hashCode()) * 31) + this.value.hashCode();
                    }

                    @Override // net.bytebuddy.build.Plugin.Factory.UsingReflection.ArgumentResolver
                    public Resolution resolve(int i, Class<?> cls) {
                        return cls == this.type ? new Resolution.Resolved(this.value) : Resolution.Unresolved.INSTANCE;
                    }

                    public ForType(Class<? extends T> cls, T t) {
                        this.type = cls;
                        this.value = t;
                    }
                }
            }

            /* loaded from: classes2.dex */
            public interface Instantiator {

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Resolved implements Instantiator {
                    private final List<?> arguments;
                    private final Constructor<? extends Plugin> constructor;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Resolved resolved = (Resolved) obj;
                            return this.constructor.equals(resolved.constructor) && this.arguments.equals(resolved.arguments);
                        }
                        return false;
                    }

                    public Constructor<? extends Plugin> getConstructor() {
                        return this.constructor;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.constructor.hashCode()) * 31) + this.arguments.hashCode();
                    }

                    @Override // net.bytebuddy.build.Plugin.Factory.UsingReflection.Instantiator
                    public Plugin instantiate() {
                        try {
                            return this.constructor.newInstance(this.arguments.toArray(new Object[0]));
                        } catch (IllegalAccessException e) {
                            throw new IllegalStateException("Failed to access " + this.constructor, e);
                        } catch (InstantiationException e2) {
                            throw new IllegalStateException("Failed to instantiate plugin via " + this.constructor, e2);
                        } catch (InvocationTargetException e3) {
                            throw new IllegalStateException("Error during construction of" + this.constructor, e3.getTargetException());
                        }
                    }

                    @Override // net.bytebuddy.build.Plugin.Factory.UsingReflection.Instantiator
                    public Instantiator replaceBy(Resolved resolved) {
                        int value;
                        Priority priority = (Priority) this.constructor.getAnnotation(Priority.class);
                        Priority priority2 = (Priority) resolved.getConstructor().getAnnotation(Priority.class);
                        int i = 0;
                        if (priority == null) {
                            value = 0;
                        } else {
                            value = priority.value();
                        }
                        if (priority2 != null) {
                            i = priority2.value();
                        }
                        if (value > i) {
                            return this;
                        }
                        if (value < i) {
                            return resolved;
                        }
                        if (this.constructor.getParameterTypes().length > resolved.getConstructor().getParameterTypes().length) {
                            return this;
                        }
                        if (this.constructor.getParameterTypes().length < resolved.getConstructor().getParameterTypes().length) {
                            return resolved;
                        }
                        return new Ambiguous(this.constructor, resolved.getConstructor(), value, this.constructor.getParameterTypes().length);
                    }

                    public Resolved(Constructor<? extends Plugin> constructor, List<?> list) {
                        this.constructor = constructor;
                        this.arguments = list;
                    }
                }

                Plugin instantiate();

                Instantiator replaceBy(Resolved resolved);

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Ambiguous implements Instantiator {
                    private final Constructor<?> left;
                    private final int parameters;
                    private final int priority;
                    private final Constructor<?> right;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Ambiguous ambiguous = (Ambiguous) obj;
                            return this.priority == ambiguous.priority && this.parameters == ambiguous.parameters && this.left.equals(ambiguous.left) && this.right.equals(ambiguous.right);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((((((getClass().hashCode() * 31) + this.left.hashCode()) * 31) + this.right.hashCode()) * 31) + this.priority) * 31) + this.parameters;
                    }

                    @Override // net.bytebuddy.build.Plugin.Factory.UsingReflection.Instantiator
                    public Plugin instantiate() {
                        throw new IllegalStateException("Ambiguous constructors " + this.left + " and " + this.right);
                    }

                    public Ambiguous(Constructor<?> constructor, Constructor<?> constructor2, int i, int i2) {
                        this.left = constructor;
                        this.right = constructor2;
                        this.priority = i;
                        this.parameters = i2;
                    }

                    @Override // net.bytebuddy.build.Plugin.Factory.UsingReflection.Instantiator
                    public Instantiator replaceBy(Resolved resolved) {
                        int value;
                        Priority priority = (Priority) resolved.getConstructor().getAnnotation(Priority.class);
                        int i = 0;
                        if (priority == null) {
                            value = 0;
                        } else {
                            value = priority.value();
                        }
                        if (value > this.priority) {
                            return resolved;
                        }
                        if (priority != null) {
                            i = priority.value();
                        }
                        if (i < this.priority) {
                            return this;
                        }
                        if (resolved.getConstructor().getParameterTypes().length > this.parameters) {
                            return resolved;
                        }
                        return this;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Unresolved implements Instantiator {
                    private final Class<? extends Plugin> type;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.type.equals(((Unresolved) obj).type);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.type.hashCode();
                    }

                    @Override // net.bytebuddy.build.Plugin.Factory.UsingReflection.Instantiator
                    public Plugin instantiate() {
                        throw new IllegalStateException("No constructor resolvable for " + this.type);
                    }

                    @Override // net.bytebuddy.build.Plugin.Factory.UsingReflection.Instantiator
                    public Instantiator replaceBy(Resolved resolved) {
                        return resolved;
                    }

                    public Unresolved(Class<? extends Plugin> cls) {
                        this.type = cls;
                    }
                }
            }

            @Target({ElementType.CONSTRUCTOR})
            @Documented
            @Retention(RetentionPolicy.RUNTIME)
            /* loaded from: classes.dex */
            public @interface Priority {
                public static final int DEFAULT = 0;

                int value();
            }

            public UsingReflection(Class<? extends Plugin> cls) {
                this(cls, Collections.emptyList());
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    UsingReflection usingReflection = (UsingReflection) obj;
                    return this.type.equals(usingReflection.type) && this.argumentResolvers.equals(usingReflection.argumentResolvers);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.type.hashCode()) * 31) + this.argumentResolvers.hashCode();
            }

            public UsingReflection with(ArgumentResolver... argumentResolverArr) {
                return with(Arrays.asList(argumentResolverArr));
            }

            public UsingReflection(Class<? extends Plugin> cls, List<ArgumentResolver> list) {
                this.type = cls;
                this.argumentResolvers = list;
            }

            @Override // net.bytebuddy.build.Plugin.Factory
            public Plugin make() {
                Constructor<?>[] constructors;
                boolean z;
                Instantiator unresolved = new Instantiator.Unresolved(this.type);
                for (Constructor<?> constructor : this.type.getConstructors()) {
                    if (!constructor.isSynthetic()) {
                        ArrayList arrayList = new ArrayList(constructor.getParameterTypes().length);
                        Class<?>[] parameterTypes = constructor.getParameterTypes();
                        int length = parameterTypes.length;
                        int i = 0;
                        int i2 = 0;
                        while (true) {
                            if (i < length) {
                                Class<?> cls = parameterTypes[i];
                                Iterator<ArgumentResolver> it = this.argumentResolvers.iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        ArgumentResolver.Resolution resolve = it.next().resolve(i2, cls);
                                        if (resolve.isResolved()) {
                                            arrayList.add(resolve.getArgument());
                                            z = true;
                                            break;
                                        }
                                    } else {
                                        z = false;
                                        break;
                                    }
                                }
                                if (z) {
                                    i2++;
                                    i++;
                                }
                            } else {
                                unresolved = unresolved.replaceBy(new Instantiator.Resolved(constructor, arrayList));
                                break;
                            }
                        }
                    }
                }
                return unresolved.instantiate();
            }

            public UsingReflection with(List<? extends ArgumentResolver> list) {
                return new UsingReflection(this.type, CompoundList.m14776of((List) list, (List) this.argumentResolvers));
            }
        }

        Plugin make();

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Simple implements Factory {
            private final Plugin plugin;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.plugin.equals(((Simple) obj).plugin);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.plugin.hashCode();
            }

            @Override // net.bytebuddy.build.Plugin.Factory
            public Plugin make() {
                return this.plugin;
            }

            public Simple(Plugin plugin) {
                this.plugin = plugin;
            }
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static abstract class ForElementMatcher implements Plugin {
        private final ElementMatcher<? super TypeDescription> matcher;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.matcher.equals(((ForElementMatcher) obj).matcher);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.matcher.hashCode();
        }

        @Override // net.bytebuddy.matcher.ElementMatcher
        public boolean matches(@MaybeNull TypeDescription typeDescription) {
            return this.matcher.matches(typeDescription);
        }

        public ForElementMatcher(ElementMatcher<? super TypeDescription> elementMatcher) {
            this.matcher = elementMatcher;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class NoOp implements Plugin, Factory {
        @Override // net.bytebuddy.build.Plugin
        public DynamicType.Builder<?> apply(DynamicType.Builder<?> builder, TypeDescription typeDescription, ClassFileLocator classFileLocator) {
            throw new IllegalStateException("Cannot apply non-operational plugin");
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass();
        }

        public int hashCode() {
            return getClass().hashCode();
        }

        @Override // net.bytebuddy.build.Plugin.Factory
        public Plugin make() {
            return this;
        }

        @Override // net.bytebuddy.matcher.ElementMatcher
        public boolean matches(@MaybeNull TypeDescription typeDescription) {
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public interface WithInitialization extends Plugin {
        Map<TypeDescription, byte[]> initialize(ClassFileLocator classFileLocator);
    }

    /* loaded from: classes2.dex */
    public interface WithPreprocessor extends Plugin {
        void onPreprocess(TypeDescription typeDescription, ClassFileLocator classFileLocator);
    }

    DynamicType.Builder<?> apply(DynamicType.Builder<?> builder, TypeDescription typeDescription, ClassFileLocator classFileLocator);
}
