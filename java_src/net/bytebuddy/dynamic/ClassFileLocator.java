package net.bytebuddy.dynamic;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.instrument.ClassFileTransformer;
import java.lang.instrument.Instrumentation;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLClassLoader;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.ProtectionDomain;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Vector;
import java.util.jar.JarFile;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import net.bytebuddy.agent.builder.AgentBuilder;
import net.bytebuddy.build.AccessControllerPlugin;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.loading.ClassLoadingStrategy;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.JavaModule;
import net.bytebuddy.utility.JavaType;
import net.bytebuddy.utility.StreamDrainer;
import net.bytebuddy.utility.dispatcher.JavaDispatcher;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface ClassFileLocator extends Closeable {
    public static final String CLASS_FILE_EXTENSION = ".class";

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Compound implements ClassFileLocator, Closeable {
        private final List<ClassFileLocator> classFileLocators;

        public Compound(ClassFileLocator... classFileLocatorArr) {
            this(Arrays.asList(classFileLocatorArr));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.classFileLocators.equals(((Compound) obj).classFileLocators);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.classFileLocators.hashCode();
        }

        public Compound(List<? extends ClassFileLocator> list) {
            this.classFileLocators = new ArrayList();
            for (ClassFileLocator classFileLocator : list) {
                if (classFileLocator instanceof Compound) {
                    this.classFileLocators.addAll(((Compound) classFileLocator).classFileLocators);
                } else if (!(classFileLocator instanceof NoOp)) {
                    this.classFileLocators.add(classFileLocator);
                }
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (ClassFileLocator classFileLocator : this.classFileLocators) {
                classFileLocator.close();
            }
        }

        @Override // net.bytebuddy.dynamic.ClassFileLocator
        public Resolution locate(String str) {
            for (ClassFileLocator classFileLocator : this.classFileLocators) {
                Resolution locate = classFileLocator.locate(str);
                if (locate.isResolved()) {
                    return locate;
                }
            }
            return new Resolution.Illegal(str);
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForClassLoader implements ClassFileLocator {
        private static final boolean ACCESS_CONTROLLER;
        private static final ClassLoader BOOT_LOADER_PROXY;
        private final ClassLoader classLoader;

        /* loaded from: classes2.dex */
        public enum BootLoaderProxyCreationAction implements PrivilegedAction<ClassLoader> {
            INSTANCE;

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public ClassLoader run() {
                return new URLClassLoader(new URL[0], ClassLoadingStrategy.BOOTSTRAP_LOADER);
            }
        }

        /* loaded from: classes2.dex */
        public static class WeaklyReferenced extends WeakReference<ClassLoader> implements ClassFileLocator {
            private final int hashCode;

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            public boolean equals(@MaybeNull Object obj) {
                ClassLoader classLoader;
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && (classLoader = ((WeaklyReferenced) obj).get()) != null && get() == classLoader;
            }

            public int hashCode() {
                return this.hashCode;
            }

            /* renamed from: of */
            public static ClassFileLocator m15175of(@MaybeNull ClassLoader classLoader) {
                if (classLoader != null && classLoader != ClassLoader.getSystemClassLoader() && classLoader != ClassLoader.getSystemClassLoader().getParent()) {
                    return new WeaklyReferenced(classLoader);
                }
                return ForClassLoader.m15176of(classLoader);
            }

            public WeaklyReferenced(ClassLoader classLoader) {
                super(classLoader);
                this.hashCode = System.identityHashCode(classLoader);
            }

            @Override // net.bytebuddy.dynamic.ClassFileLocator
            public Resolution locate(String str) {
                ClassLoader classLoader = get();
                if (classLoader == null) {
                    return new Resolution.Illegal(str);
                }
                return ForClassLoader.locate(classLoader, str);
            }
        }

        static {
            boolean z = false;
            try {
                Class.forName("java.security.AccessController", false, null);
                ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
            } catch (ClassNotFoundException unused) {
                ACCESS_CONTROLLER = z;
                BOOT_LOADER_PROXY = (ClassLoader) doPrivileged(BootLoaderProxyCreationAction.INSTANCE);
            } catch (SecurityException unused2) {
                z = true;
                ACCESS_CONTROLLER = z;
                BOOT_LOADER_PROXY = (ClassLoader) doPrivileged(BootLoaderProxyCreationAction.INSTANCE);
            }
            BOOT_LOADER_PROXY = (ClassLoader) doPrivileged(BootLoaderProxyCreationAction.INSTANCE);
        }

        @AccessControllerPlugin.Enhance
        private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
        }

        /* renamed from: of */
        public static ClassFileLocator m15176of(@MaybeNull ClassLoader classLoader) {
            if (classLoader == null) {
                classLoader = BOOT_LOADER_PROXY;
            }
            return new ForClassLoader(classLoader);
        }

        public static ClassFileLocator ofBootLoader() {
            return new ForClassLoader(BOOT_LOADER_PROXY);
        }

        public static ClassFileLocator ofPlatformLoader() {
            return m15176of(ClassLoader.getSystemClassLoader().getParent());
        }

        public static ClassFileLocator ofSystemLoader() {
            return new ForClassLoader(ClassLoader.getSystemClassLoader());
        }

        public static byte[] read(Class<?> cls) {
            try {
                ClassLoader classLoader = cls.getClassLoader();
                if (classLoader == null) {
                    classLoader = BOOT_LOADER_PROXY;
                }
                return locate(classLoader, TypeDescription.ForLoadedType.getName(cls)).resolve();
            } catch (IOException e) {
                throw new IllegalStateException("Cannot read class file for " + cls, e);
            }
        }

        public static Map<String, byte[]> readToNames(Class<?>... clsArr) {
            return readToNames(Arrays.asList(clsArr));
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.classLoader.equals(((ForClassLoader) obj).classLoader);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.classLoader.hashCode();
        }

        @Override // net.bytebuddy.dynamic.ClassFileLocator
        public Resolution locate(String str) {
            return locate(this.classLoader, str);
        }

        public static Resolution locate(ClassLoader classLoader, String str) {
            InputStream resourceAsStream = classLoader.getResourceAsStream(str.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/') + ".class");
            if (resourceAsStream != null) {
                try {
                    return new Resolution.Explicit(StreamDrainer.DEFAULT.drain(resourceAsStream));
                } finally {
                    resourceAsStream.close();
                }
            }
            return new Resolution.Illegal(str);
        }

        public static Map<String, byte[]> readToNames(Collection<? extends Class<?>> collection) {
            HashMap hashMap = new HashMap();
            for (Class<?> cls : collection) {
                hashMap.put(cls.getName(), read(cls));
            }
            return hashMap;
        }

        public ForClassLoader(ClassLoader classLoader) {
            this.classLoader = classLoader;
        }

        public static Map<Class<?>, byte[]> read(Class<?>... clsArr) {
            return read(Arrays.asList(clsArr));
        }

        public static Map<Class<?>, byte[]> read(Collection<? extends Class<?>> collection) {
            HashMap hashMap = new HashMap();
            for (Class<?> cls : collection) {
                hashMap.put(cls, read(cls));
            }
            return hashMap;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForFolder implements ClassFileLocator {
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

        @Override // net.bytebuddy.dynamic.ClassFileLocator
        public Resolution locate(String str) {
            File file = this.folder;
            File file2 = new File(file, str.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, File.separatorChar) + ".class");
            if (file2.exists()) {
                FileInputStream fileInputStream = new FileInputStream(file2);
                try {
                    return new Resolution.Explicit(StreamDrainer.DEFAULT.drain(fileInputStream));
                } finally {
                    fileInputStream.close();
                }
            }
            return new Resolution.Illegal(str);
        }

        public ForFolder(File file) {
            this.folder = file;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForInstrumentation implements ClassFileLocator {
        private static final boolean ACCESS_CONTROLLER;
        private static final Dispatcher DISPATCHER;
        private final ClassLoadingDelegate classLoadingDelegate;
        private final Instrumentation instrumentation;

        /* loaded from: classes2.dex */
        public interface ClassLoadingDelegate {

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Explicit implements ClassLoadingDelegate {
                private final ClassLoadingDelegate fallbackDelegate;
                private final Map<String, Class<?>> types;

                public Explicit(@MaybeNull ClassLoader classLoader, Collection<? extends Class<?>> collection) {
                    this(Default.m15172of(classLoader), collection);
                }

                /* renamed from: of */
                public static ClassLoadingDelegate m15171of(Class<?> cls) {
                    return new Explicit(cls.getClassLoader(), Collections.singleton(cls));
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Explicit explicit = (Explicit) obj;
                        return this.fallbackDelegate.equals(explicit.fallbackDelegate) && this.types.equals(explicit.types);
                    }
                    return false;
                }

                @Override // net.bytebuddy.dynamic.ClassFileLocator.ForInstrumentation.ClassLoadingDelegate
                @MaybeNull
                public ClassLoader getClassLoader() {
                    return this.fallbackDelegate.getClassLoader();
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.fallbackDelegate.hashCode()) * 31) + this.types.hashCode();
                }

                public Explicit(ClassLoadingDelegate classLoadingDelegate, Collection<? extends Class<?>> collection) {
                    this.fallbackDelegate = classLoadingDelegate;
                    this.types = new HashMap();
                    for (Class<?> cls : collection) {
                        this.types.put(TypeDescription.ForLoadedType.getName(cls), cls);
                    }
                }

                @Override // net.bytebuddy.dynamic.ClassFileLocator.ForInstrumentation.ClassLoadingDelegate
                public Class<?> locate(String str) {
                    Class<?> cls = this.types.get(str);
                    if (cls == null) {
                        return this.fallbackDelegate.locate(str);
                    }
                    return cls;
                }
            }

            /* loaded from: classes2.dex */
            public static class ForDelegatingClassLoader extends Default {
                private static final boolean ACCESS_CONTROLLER;
                private static final String DELEGATING_CLASS_LOADER_NAME = "sun.reflect.DelegatingClassLoader";
                private static final Dispatcher.Initializable DISPATCHER;
                private static final int ONLY = 0;

                /* loaded from: classes2.dex */
                public interface Dispatcher {

                    /* loaded from: classes2.dex */
                    public enum CreationAction implements PrivilegedAction<Initializable> {
                        INSTANCE;

                        @Override // java.security.PrivilegedAction
                        public Initializable run() {
                            try {
                                return new Resolved(ClassLoader.class.getDeclaredField("classes"));
                            } catch (Exception e) {
                                return new Unresolved(e.getMessage());
                            }
                        }
                    }

                    /* loaded from: classes2.dex */
                    public interface Initializable {
                        Dispatcher initialize();
                    }

                    @HashCodeAndEqualsPlugin.Enhance
                    /* loaded from: classes.dex */
                    public static class Resolved implements Dispatcher, Initializable, PrivilegedAction<Dispatcher> {
                        private static final boolean ACCESS_CONTROLLER;
                        private final Field field;

                        static {
                            boolean z = false;
                            try {
                                Class.forName("java.security.AccessController", false, null);
                                ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
                            } catch (ClassNotFoundException unused) {
                                ACCESS_CONTROLLER = z;
                            } catch (SecurityException unused2) {
                                z = true;
                                ACCESS_CONTROLLER = z;
                            }
                        }

                        @AccessControllerPlugin.Enhance
                        private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
                            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
                        }

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.field.equals(((Resolved) obj).field);
                        }

                        public int hashCode() {
                            return (getClass().hashCode() * 31) + this.field.hashCode();
                        }

                        @Override // net.bytebuddy.dynamic.ClassFileLocator.ForInstrumentation.ClassLoadingDelegate.ForDelegatingClassLoader.Dispatcher.Initializable
                        public Dispatcher initialize() {
                            return (Dispatcher) doPrivileged(this);
                        }

                        @Override // net.bytebuddy.dynamic.ClassFileLocator.ForInstrumentation.ClassLoadingDelegate.ForDelegatingClassLoader.Dispatcher
                        public Vector<Class<?>> extract(ClassLoader classLoader) {
                            try {
                                return (Vector) this.field.get(classLoader);
                            } catch (IllegalAccessException e) {
                                throw new IllegalStateException("Cannot access field", e);
                            }
                        }

                        @Override // java.security.PrivilegedAction
                        public Dispatcher run() {
                            this.field.setAccessible(true);
                            return this;
                        }

                        public Resolved(Field field) {
                            this.field = field;
                        }
                    }

                    Vector<Class<?>> extract(ClassLoader classLoader);

                    @HashCodeAndEqualsPlugin.Enhance
                    /* loaded from: classes.dex */
                    public static class Unresolved implements Initializable {
                        private final String message;

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.message.equals(((Unresolved) obj).message);
                        }

                        public int hashCode() {
                            return (getClass().hashCode() * 31) + this.message.hashCode();
                        }

                        @Override // net.bytebuddy.dynamic.ClassFileLocator.ForInstrumentation.ClassLoadingDelegate.ForDelegatingClassLoader.Dispatcher.Initializable
                        public Dispatcher initialize() {
                            throw new UnsupportedOperationException("Could not locate classes vector: " + this.message);
                        }

                        public Unresolved(String str) {
                            this.message = str;
                        }
                    }
                }

                static {
                    boolean z = false;
                    try {
                        Class.forName("java.security.AccessController", false, null);
                        ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
                    } catch (ClassNotFoundException unused) {
                        ACCESS_CONTROLLER = z;
                        DISPATCHER = (Dispatcher.Initializable) doPrivileged(Dispatcher.CreationAction.INSTANCE);
                    } catch (SecurityException unused2) {
                        z = true;
                        ACCESS_CONTROLLER = z;
                        DISPATCHER = (Dispatcher.Initializable) doPrivileged(Dispatcher.CreationAction.INSTANCE);
                    }
                    DISPATCHER = (Dispatcher.Initializable) doPrivileged(Dispatcher.CreationAction.INSTANCE);
                }

                public ForDelegatingClassLoader(ClassLoader classLoader) {
                    super(classLoader);
                }

                @AccessControllerPlugin.Enhance
                private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
                    return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
                }

                public static boolean isDelegating(@MaybeNull ClassLoader classLoader) {
                    return classLoader != null && classLoader.getClass().getName().equals(DELEGATING_CLASS_LOADER_NAME);
                }

                @Override // net.bytebuddy.dynamic.ClassFileLocator.ForInstrumentation.ClassLoadingDelegate.Default, net.bytebuddy.dynamic.ClassFileLocator.ForInstrumentation.ClassLoadingDelegate
                public Class<?> locate(String str) {
                    try {
                        Vector<Class<?>> extract = DISPATCHER.initialize().extract(this.classLoader);
                        if (extract.size() != 1) {
                            return super.locate(str);
                        }
                        Class<?> cls = extract.get(0);
                        if (!TypeDescription.ForLoadedType.getName(cls).equals(str)) {
                            return super.locate(str);
                        }
                        return cls;
                    } catch (RuntimeException unused) {
                        return super.locate(str);
                    }
                }
            }

            @MaybeNull
            ClassLoader getClassLoader();

            Class<?> locate(String str);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Default implements ClassLoadingDelegate {
                private static final ClassLoader BOOT_LOADER_PROXY = (ClassLoader) ForInstrumentation.doPrivileged(BootLoaderProxyCreationAction.INSTANCE);
                public final ClassLoader classLoader;

                /* loaded from: classes2.dex */
                public enum BootLoaderProxyCreationAction implements PrivilegedAction<ClassLoader> {
                    INSTANCE;

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // java.security.PrivilegedAction
                    public ClassLoader run() {
                        return new URLClassLoader(new URL[0], ClassLoadingStrategy.BOOTSTRAP_LOADER);
                    }
                }

                /* renamed from: of */
                public static ClassLoadingDelegate m15172of(@MaybeNull ClassLoader classLoader) {
                    if (ForDelegatingClassLoader.isDelegating(classLoader)) {
                        return new ForDelegatingClassLoader(classLoader);
                    }
                    if (classLoader == null) {
                        classLoader = BOOT_LOADER_PROXY;
                    }
                    return new Default(classLoader);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.classLoader.equals(((Default) obj).classLoader);
                }

                @Override // net.bytebuddy.dynamic.ClassFileLocator.ForInstrumentation.ClassLoadingDelegate
                @MaybeNull
                public ClassLoader getClassLoader() {
                    ClassLoader classLoader = this.classLoader;
                    return classLoader == BOOT_LOADER_PROXY ? ClassLoadingStrategy.BOOTSTRAP_LOADER : classLoader;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.classLoader.hashCode();
                }

                @Override // net.bytebuddy.dynamic.ClassFileLocator.ForInstrumentation.ClassLoadingDelegate
                public Class<?> locate(String str) {
                    return this.classLoader.loadClass(str);
                }

                public Default(ClassLoader classLoader) {
                    this.classLoader = classLoader;
                }
            }
        }

        @JavaDispatcher.Proxied("java.lang.instrument.Instrumentation")
        /* loaded from: classes2.dex */
        public interface Dispatcher {
            @JavaDispatcher.Proxied("addTransformer")
            void addTransformer(Instrumentation instrumentation, ClassFileTransformer classFileTransformer, boolean z);

            @JavaDispatcher.Proxied("isRetransformClassesSupported")
            boolean isRetransformClassesSupported(Instrumentation instrumentation);

            @JavaDispatcher.Proxied("retransformClasses")
            void retransformClasses(Instrumentation instrumentation, Class<?>[] clsArr);
        }

        /* loaded from: classes2.dex */
        public static class ExtractionClassFileTransformer implements ClassFileTransformer {
            @AlwaysNull
            private static final byte[] DO_NOT_TRANSFORM = null;
            @SuppressFBWarnings(justification = "The array is not to be modified by contract", value = {"VO_VOLATILE_REFERENCE_TO_ARRAY"})
            @MaybeNull
            private volatile byte[] binaryRepresentation;
            @MaybeNull
            private final ClassLoader classLoader;
            private final String typeName;

            @SuppressFBWarnings(justification = "The array is not to be modified by contract", value = {"EI_EXPOSE_REP"})
            @MaybeNull
            public byte[] getBinaryRepresentation() {
                return this.binaryRepresentation;
            }

            @SuppressFBWarnings(justification = "The array is not modified by class contract.", value = {"EI_EXPOSE_REP", "EI_EXPOSE_REP2"})
            @MaybeNull
            public byte[] transform(@MaybeNull ClassLoader classLoader, @MaybeNull String str, @MaybeNull Class<?> cls, ProtectionDomain protectionDomain, byte[] bArr) {
                if (str != null && ElementMatchers.isChildOf(this.classLoader).matches(classLoader) && this.typeName.equals(str.replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH))) {
                    this.binaryRepresentation = (byte[]) bArr.clone();
                }
                return DO_NOT_TRANSFORM;
            }

            public ExtractionClassFileTransformer(@MaybeNull ClassLoader classLoader, String str) {
                this.classLoader = classLoader;
                this.typeName = str;
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

        public ForInstrumentation(Instrumentation instrumentation, @MaybeNull ClassLoader classLoader) {
            this(instrumentation, ClassLoadingDelegate.Default.m15172of(classLoader));
        }

        /* JADX INFO: Access modifiers changed from: private */
        @AccessControllerPlugin.Enhance
        public static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
        }

        public static ClassFileLocator fromInstalledAgent(@MaybeNull ClassLoader classLoader) {
            return new ForInstrumentation(resolveByteBuddyAgentInstrumentation(), classLoader);
        }

        /* renamed from: of */
        public static ClassFileLocator m15173of(Instrumentation instrumentation, Class<?> cls) {
            return new ForInstrumentation(instrumentation, ClassLoadingDelegate.Explicit.m15171of(cls));
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                ForInstrumentation forInstrumentation = (ForInstrumentation) obj;
                return this.instrumentation.equals(forInstrumentation.instrumentation) && this.classLoadingDelegate.equals(forInstrumentation.classLoadingDelegate);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.instrumentation.hashCode()) * 31) + this.classLoadingDelegate.hashCode();
        }

        public ForInstrumentation(Instrumentation instrumentation, ClassLoadingDelegate classLoadingDelegate) {
            if (DISPATCHER.isRetransformClassesSupported(instrumentation)) {
                this.instrumentation = instrumentation;
                this.classLoadingDelegate = classLoadingDelegate;
                return;
            }
            throw new IllegalArgumentException(instrumentation + " does not support retransformation");
        }

        @Override // net.bytebuddy.dynamic.ClassFileLocator
        public Resolution locate(String str) {
            Resolution explicit;
            try {
                ExtractionClassFileTransformer extractionClassFileTransformer = new ExtractionClassFileTransformer(this.classLoadingDelegate.getClassLoader(), str);
                Dispatcher dispatcher = DISPATCHER;
                dispatcher.addTransformer(this.instrumentation, extractionClassFileTransformer, true);
                try {
                    dispatcher.retransformClasses(this.instrumentation, new Class[]{this.classLoadingDelegate.locate(str)});
                    byte[] binaryRepresentation = extractionClassFileTransformer.getBinaryRepresentation();
                    if (binaryRepresentation == null) {
                        explicit = new Resolution.Illegal(str);
                    } else {
                        explicit = new Resolution.Explicit(binaryRepresentation);
                    }
                    return explicit;
                } finally {
                    this.instrumentation.removeTransformer(extractionClassFileTransformer);
                }
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
                return new Resolution.Illegal(str);
            }
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
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForJarFile implements ClassFileLocator {
        private static final List<String> RUNTIME_LOCATIONS = Arrays.asList("lib/rt.jar", "../lib/rt.jar", "../Classes/classes.jar");
        private final JarFile jarFile;

        /* renamed from: of */
        public static ClassFileLocator m15170of(File file) {
            return new ForJarFile(new JarFile(file));
        }

        public static ClassFileLocator ofClassPath() {
            return ofClassPath(System.getProperty("java.class.path"));
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.jarFile.close();
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.jarFile.equals(((ForJarFile) obj).jarFile);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.jarFile.hashCode();
        }

        public static ClassFileLocator ofClassPath(String str) {
            ArrayList arrayList = new ArrayList();
            for (String str2 : Pattern.compile(System.getProperty("path.separator"), 16).split(str)) {
                File file = new File(str2);
                if (file.isDirectory()) {
                    arrayList.add(new ForFolder(file));
                } else if (file.isFile()) {
                    arrayList.add(m15170of(file));
                }
            }
            return new Compound(arrayList);
        }

        public static ClassFileLocator ofRuntimeJar() {
            File file;
            String replace = System.getProperty("java.home").replace('\\', '/');
            Iterator<String> it = RUNTIME_LOCATIONS.iterator();
            while (true) {
                if (it.hasNext()) {
                    file = new File(replace, it.next());
                    if (file.isFile()) {
                        break;
                    }
                } else {
                    file = null;
                    break;
                }
            }
            if (file != null) {
                return m15170of(file);
            }
            throw new IllegalStateException("Runtime jar does not exist in " + replace + " for any of " + RUNTIME_LOCATIONS);
        }

        @Override // net.bytebuddy.dynamic.ClassFileLocator
        public Resolution locate(String str) {
            JarFile jarFile = this.jarFile;
            ZipEntry entry = jarFile.getEntry(str.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/') + ".class");
            if (entry == null) {
                return new Resolution.Illegal(str);
            }
            InputStream inputStream = this.jarFile.getInputStream(entry);
            try {
                return new Resolution.Explicit(StreamDrainer.DEFAULT.drain(inputStream));
            } finally {
                inputStream.close();
            }
        }

        public ForJarFile(JarFile jarFile) {
            this.jarFile = jarFile;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForModule implements ClassFileLocator {
        private static final Object[] NO_ARGUMENT = new Object[0];
        private final JavaModule module;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.module.equals(((ForModule) obj).module);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.module.hashCode();
        }

        @Override // net.bytebuddy.dynamic.ClassFileLocator
        public Resolution locate(String str) {
            return locate(this.module, str);
        }

        /* loaded from: classes2.dex */
        public static class WeaklyReferenced extends WeakReference<Object> implements ClassFileLocator {
            private final int hashCode;

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            public boolean equals(@MaybeNull Object obj) {
                Object obj2;
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && (obj2 = ((WeaklyReferenced) obj).get()) != null && get() == obj2;
            }

            public int hashCode() {
                return this.hashCode;
            }

            public WeaklyReferenced(Object obj) {
                super(obj);
                this.hashCode = System.identityHashCode(obj);
            }

            /* renamed from: of */
            public static ClassFileLocator m15168of(JavaModule javaModule) {
                if (javaModule.isNamed()) {
                    if (javaModule.getClassLoader() != null && javaModule.getClassLoader() != ClassLoader.getSystemClassLoader() && javaModule.getClassLoader() != ClassLoader.getSystemClassLoader().getParent()) {
                        return new WeaklyReferenced(javaModule.unwrap());
                    }
                    return new ForModule(javaModule);
                }
                return ForClassLoader.WeaklyReferenced.m15175of(javaModule.getClassLoader());
            }

            @Override // net.bytebuddy.dynamic.ClassFileLocator
            public Resolution locate(String str) {
                Object obj = get();
                if (obj == null) {
                    return new Resolution.Illegal(str);
                }
                return ForModule.locate(JavaModule.m14759of(obj), str);
            }
        }

        public static Resolution locate(JavaModule javaModule, String str) {
            InputStream resourceAsStream = javaModule.getResourceAsStream(str.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/') + ".class");
            if (resourceAsStream != null) {
                try {
                    return new Resolution.Explicit(StreamDrainer.DEFAULT.drain(resourceAsStream));
                } finally {
                    resourceAsStream.close();
                }
            }
            return new Resolution.Illegal(str);
        }

        @SuppressFBWarnings(justification = "Exception should always be wrapped for clarity", value = {"REC_CATCH_EXCEPTION"})
        public static ClassFileLocator ofBootLayer() {
            try {
                HashMap hashMap = new HashMap();
                Class<?> cls = Class.forName("java.lang.ModuleLayer");
                Method method = JavaType.MODULE.load().getMethod("getPackages", new Class[0]);
                for (Object obj : (Set) cls.getMethod("modules", new Class[0]).invoke(cls.getMethod("boot", new Class[0]).invoke(null, new Object[0]), new Object[0])) {
                    ClassFileLocator m15169of = m15169of(JavaModule.m14759of(obj));
                    for (String str : (Set) method.invoke(obj, NO_ARGUMENT)) {
                        hashMap.put(str, m15169of);
                    }
                }
                return new PackageDiscriminating(hashMap);
            } catch (Exception e) {
                throw new IllegalStateException("Cannot process boot layer", e);
            }
        }

        public ForModule(JavaModule javaModule) {
            this.module = javaModule;
        }

        /* renamed from: of */
        public static ClassFileLocator m15169of(JavaModule javaModule) {
            if (javaModule.isNamed()) {
                return new ForModule(javaModule);
            }
            return ForClassLoader.m15176of(javaModule.getClassLoader());
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForModuleFile implements ClassFileLocator {
        private static final List<String> BOOT_LOCATIONS = Arrays.asList("jmods", "../jmods", "modules");
        private static final String JMOD_FILE_EXTENSION = ".jmod";
        private final ZipFile zipFile;

        /* renamed from: of */
        public static ClassFileLocator m15167of(File file) {
            return new ForModuleFile(new ZipFile(file));
        }

        public static ClassFileLocator ofBootPath() {
            File file;
            String replace = System.getProperty("java.home").replace('\\', '/');
            Iterator<String> it = BOOT_LOCATIONS.iterator();
            while (true) {
                if (!it.hasNext()) {
                    file = null;
                    break;
                }
                file = new File(replace, it.next());
                if (file.isDirectory()) {
                    break;
                }
            }
            if (file != null) {
                return ofBootPath(file);
            }
            throw new IllegalStateException("Boot modules do not exist in " + replace + " for any of " + BOOT_LOCATIONS);
        }

        public static ClassFileLocator ofModulePath() {
            String property = System.getProperty("jdk.module.path");
            if (property == null) {
                return NoOp.INSTANCE;
            }
            return ofModulePath(property);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.zipFile.close();
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.zipFile.equals(((ForModuleFile) obj).zipFile);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.zipFile.hashCode();
        }

        @Override // net.bytebuddy.dynamic.ClassFileLocator
        public Resolution locate(String str) {
            ZipFile zipFile = this.zipFile;
            ZipEntry entry = zipFile.getEntry("classes/" + str.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/') + ".class");
            if (entry == null) {
                return new Resolution.Illegal(str);
            }
            InputStream inputStream = this.zipFile.getInputStream(entry);
            try {
                return new Resolution.Explicit(StreamDrainer.DEFAULT.drain(inputStream));
            } finally {
                inputStream.close();
            }
        }

        public ForModuleFile(ZipFile zipFile) {
            this.zipFile = zipFile;
        }

        public static ClassFileLocator ofModulePath(String str) {
            return ofModulePath(str, System.getProperty("user.dir"));
        }

        public static ClassFileLocator ofModulePath(String str, String str2) {
            ClassFileLocator m15170of;
            ClassFileLocator m15170of2;
            ArrayList arrayList = new ArrayList();
            for (String str3 : Pattern.compile(System.getProperty("path.separator"), 16).split(str)) {
                File file = new File(str2, str3);
                if (file.isDirectory()) {
                    File[] listFiles = file.listFiles();
                    if (listFiles != null) {
                        for (File file2 : listFiles) {
                            if (file2.isDirectory()) {
                                arrayList.add(new ForFolder(file2));
                            } else if (file2.isFile()) {
                                if (file2.getName().endsWith(JMOD_FILE_EXTENSION)) {
                                    m15170of2 = m15167of(file2);
                                } else {
                                    m15170of2 = ForJarFile.m15170of(file2);
                                }
                                arrayList.add(m15170of2);
                            }
                        }
                    }
                } else if (file.isFile()) {
                    if (file.getName().endsWith(JMOD_FILE_EXTENSION)) {
                        m15170of = m15167of(file);
                    } else {
                        m15170of = ForJarFile.m15170of(file);
                    }
                    arrayList.add(m15170of);
                }
            }
            return new Compound(arrayList);
        }

        public static ClassFileLocator ofBootPath(File file) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return NoOp.INSTANCE;
            }
            ArrayList arrayList = new ArrayList(listFiles.length);
            for (File file2 : listFiles) {
                if (file2.isFile()) {
                    arrayList.add(m15167of(file2));
                } else if (file2.isDirectory()) {
                    arrayList.add(new ForFolder(file2));
                }
            }
            return new Compound(arrayList);
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForUrl implements ClassFileLocator {
        private static final boolean ACCESS_CONTROLLER;
        private final ClassLoader classLoader;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ClassLoaderCreationAction implements PrivilegedAction<ClassLoader> {
            private final URL[] url;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && Arrays.equals(this.url, ((ClassLoaderCreationAction) obj).url);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + Arrays.hashCode(this.url);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public ClassLoader run() {
                return new URLClassLoader(this.url, ClassLoadingStrategy.BOOTSTRAP_LOADER);
            }

            public ClassLoaderCreationAction(URL[] urlArr) {
                this.url = urlArr;
            }
        }

        static {
            boolean z = false;
            try {
                Class.forName("java.security.AccessController", false, null);
                ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
            } catch (ClassNotFoundException unused) {
                ACCESS_CONTROLLER = z;
            } catch (SecurityException unused2) {
                z = true;
                ACCESS_CONTROLLER = z;
            }
        }

        public ForUrl(URL... urlArr) {
            this.classLoader = (ClassLoader) doPrivileged(new ClassLoaderCreationAction(urlArr));
        }

        @AccessControllerPlugin.Enhance
        private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.classLoader.equals(((ForUrl) obj).classLoader);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.classLoader.hashCode();
        }

        @Override // net.bytebuddy.dynamic.ClassFileLocator
        public Resolution locate(String str) {
            return ForClassLoader.locate(this.classLoader, str);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            ClassLoader classLoader = this.classLoader;
            if (classLoader instanceof Closeable) {
                ((Closeable) classLoader).close();
            }
        }

        public ForUrl(Collection<? extends URL> collection) {
            this((URL[]) collection.toArray(new URL[0]));
        }
    }

    /* loaded from: classes2.dex */
    public enum NoOp implements ClassFileLocator {
        INSTANCE;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // net.bytebuddy.dynamic.ClassFileLocator
        public Resolution locate(String str) {
            return new Resolution.Illegal(str);
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class PackageDiscriminating implements ClassFileLocator {
        private final Map<String, ClassFileLocator> classFileLocators;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.classFileLocators.equals(((PackageDiscriminating) obj).classFileLocators);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.classFileLocators.hashCode();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (ClassFileLocator classFileLocator : this.classFileLocators.values()) {
                classFileLocator.close();
            }
        }

        @Override // net.bytebuddy.dynamic.ClassFileLocator
        public Resolution locate(String str) {
            String substring;
            int lastIndexOf = str.lastIndexOf(46);
            Map<String, ClassFileLocator> map = this.classFileLocators;
            if (lastIndexOf == -1) {
                substring = "";
            } else {
                substring = str.substring(0, lastIndexOf);
            }
            ClassFileLocator classFileLocator = map.get(substring);
            if (classFileLocator == null) {
                return new Resolution.Illegal(str);
            }
            return classFileLocator.locate(str);
        }

        public PackageDiscriminating(Map<String, ClassFileLocator> map) {
            this.classFileLocators = map;
        }
    }

    /* loaded from: classes2.dex */
    public interface Resolution {
        boolean isResolved();

        byte[] resolve();

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Explicit implements Resolution {
            private final byte[] binaryRepresentation;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && Arrays.equals(this.binaryRepresentation, ((Explicit) obj).binaryRepresentation);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + Arrays.hashCode(this.binaryRepresentation);
            }

            @Override // net.bytebuddy.dynamic.ClassFileLocator.Resolution
            public boolean isResolved() {
                return true;
            }

            @Override // net.bytebuddy.dynamic.ClassFileLocator.Resolution
            @SuppressFBWarnings(justification = "The array is not modified by class contract.", value = {"EI_EXPOSE_REP"})
            public byte[] resolve() {
                return this.binaryRepresentation;
            }

            @SuppressFBWarnings(justification = "The array is not modified by class contract.", value = {"EI_EXPOSE_REP2"})
            public Explicit(byte[] bArr) {
                this.binaryRepresentation = bArr;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Illegal implements Resolution {
            private final String typeName;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.typeName.equals(((Illegal) obj).typeName);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.typeName.hashCode();
            }

            @Override // net.bytebuddy.dynamic.ClassFileLocator.Resolution
            public boolean isResolved() {
                return false;
            }

            @Override // net.bytebuddy.dynamic.ClassFileLocator.Resolution
            public byte[] resolve() {
                throw new IllegalStateException("Could not locate class file for " + this.typeName);
            }

            public Illegal(String str) {
                this.typeName = str;
            }
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Simple implements ClassFileLocator {
        private final Map<String, byte[]> classFiles;

        /* renamed from: of */
        public static ClassFileLocator m15166of(String str, byte[] bArr) {
            return new Simple(Collections.singletonMap(str, bArr));
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.classFiles.equals(((Simple) obj).classFiles);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.classFiles.hashCode();
        }

        /* renamed from: of */
        public static ClassFileLocator m15164of(DynamicType dynamicType) {
            return m15165of(dynamicType.getAllTypes());
        }

        public static ClassFileLocator ofResources(Map<String, byte[]> map) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, byte[]> entry : map.entrySet()) {
                if (entry.getKey().endsWith(".class")) {
                    hashMap.put(entry.getKey().substring(0, entry.getKey().length() - 6).replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH), entry.getValue());
                }
            }
            return new Simple(hashMap);
        }

        @Override // net.bytebuddy.dynamic.ClassFileLocator
        public Resolution locate(String str) {
            byte[] bArr = this.classFiles.get(str);
            if (bArr == null) {
                return new Resolution.Illegal(str);
            }
            return new Resolution.Explicit(bArr);
        }

        public Simple(Map<String, byte[]> map) {
            this.classFiles = map;
        }

        /* renamed from: of */
        public static ClassFileLocator m15165of(Map<TypeDescription, byte[]> map) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<TypeDescription, byte[]> entry : map.entrySet()) {
                hashMap.put(entry.getKey().getName(), entry.getValue());
            }
            return new Simple(hashMap);
        }
    }

    Resolution locate(String str);
}
