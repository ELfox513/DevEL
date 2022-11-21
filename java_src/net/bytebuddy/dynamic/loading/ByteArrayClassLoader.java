package net.bytebuddy.dynamic.loading;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.net.URLStreamHandler;
import java.security.AccessControlContext;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.ProtectionDomain;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.AccessControllerPlugin;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.loading.ClassFilePostProcessor;
import net.bytebuddy.dynamic.loading.PackageDefinitionStrategy;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.GraalImageCode;
import net.bytebuddy.utility.JavaModule;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public class ByteArrayClassLoader extends InjectionClassLoader {
    private static final boolean ACCESS_CONTROLLER;
    private static final int FROM_BEGINNING = 0;
    @AlwaysNull
    private static final URL NO_URL;
    private static final PackageLookupStrategy PACKAGE_LOOKUP_STRATEGY;
    public static final SynchronizationStrategy.Initializable SYNCHRONIZATION_STRATEGY;
    public static final String URL_SCHEMA = "bytebuddy";
    @MaybeNull
    public final Object accessControlContext;
    public final ClassFilePostProcessor classFilePostProcessor;
    public final PackageDefinitionStrategy packageDefinitionStrategy;
    public final PersistenceHandler persistenceHandler;
    @MaybeNull
    public final ProtectionDomain protectionDomain;
    public final ConcurrentMap<String, byte[]> typeDefinitions;

    /* loaded from: classes2.dex */
    public static class ChildFirst extends ByteArrayClassLoader {
        private static final String CLASS_FILE_SUFFIX = ".class";

        /* loaded from: classes2.dex */
        public static class PrependingEnumeration implements Enumeration<URL> {
            private final Enumeration<URL> enumeration;
            @MaybeNull
            private URL nextElement;

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return this.nextElement != null && this.enumeration.hasMoreElements();
            }

            @Override // java.util.Enumeration
            public URL nextElement() {
                if (this.nextElement != null && this.enumeration.hasMoreElements()) {
                    try {
                        return this.nextElement;
                    } finally {
                        this.nextElement = this.enumeration.nextElement();
                    }
                }
                throw new NoSuchElementException();
            }

            public PrependingEnumeration(URL url, Enumeration<URL> enumeration) {
                this.nextElement = url;
                this.enumeration = enumeration;
            }
        }

        static {
            doRegisterAsParallelCapable();
        }

        public ChildFirst(@MaybeNull ClassLoader classLoader, Map<String, byte[]> map) {
            super(classLoader, map);
        }

        public static Map<TypeDescription, Class<?>> load(@MaybeNull ClassLoader classLoader, Map<TypeDescription, byte[]> map) {
            return load(classLoader, map, ClassLoadingStrategy.NO_PROTECTION_DOMAIN, PersistenceHandler.LATENT, PackageDefinitionStrategy.Trivial.INSTANCE, false, true);
        }

        public ChildFirst(@MaybeNull ClassLoader classLoader, boolean z, Map<String, byte[]> map) {
            super(classLoader, z, map);
        }

        @SuppressFBWarnings(justification = "Must be invoked from targeting class loader type.", value = {"DP_DO_INSIDE_DO_PRIVILEGED"})
        private static void doRegisterAsParallelCapable() {
            try {
                Method declaredMethod = ClassLoader.class.getDeclaredMethod("registerAsParallelCapable", new Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(null, new Object[0]);
            } catch (Throwable unused) {
            }
        }

        private boolean isShadowed(String str) {
            boolean z = false;
            if (this.persistenceHandler.isManifest() || !str.endsWith(".class")) {
                return false;
            }
            synchronized (this) {
                String substring = str.replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH).substring(0, str.length() - 6);
                if (this.typeDefinitions.containsKey(substring)) {
                    return true;
                }
                Class<?> findLoadedClass = findLoadedClass(substring);
                if (findLoadedClass != null && findLoadedClass.getClassLoader() == this) {
                    z = true;
                }
                return z;
            }
        }

        @SuppressFBWarnings(justification = "Assuring privilege is explicit user responsibility.", value = {"DP_CREATE_CLASSLOADER_INSIDE_DO_PRIVILEGED"})
        public static Map<TypeDescription, Class<?>> load(@MaybeNull ClassLoader classLoader, Map<TypeDescription, byte[]> map, @MaybeNull ProtectionDomain protectionDomain, PersistenceHandler persistenceHandler, PackageDefinitionStrategy packageDefinitionStrategy, boolean z, boolean z2) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<TypeDescription, byte[]> entry : map.entrySet()) {
                hashMap.put(entry.getKey().getName(), entry.getValue());
            }
            ChildFirst childFirst = new ChildFirst(classLoader, z2, hashMap, protectionDomain, persistenceHandler, packageDefinitionStrategy, ClassFilePostProcessor.NoOp.INSTANCE);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (TypeDescription typeDescription : map.keySet()) {
                try {
                    Class<?> cls = Class.forName(typeDescription.getName(), false, childFirst);
                    if (!GraalImageCode.getCurrent().isNativeImageExecution() && z && cls.getClassLoader() != childFirst) {
                        throw new IllegalStateException("Class already loaded: " + cls);
                    }
                    linkedHashMap.put(typeDescription, cls);
                } catch (ClassNotFoundException e) {
                    throw new IllegalStateException("Cannot load class " + typeDescription, e);
                }
            }
            return linkedHashMap;
        }

        @Override // java.lang.ClassLoader
        public URL getResource(String str) {
            URL url = this.persistenceHandler.url(str, this.typeDefinitions);
            if (url == null && !isShadowed(str)) {
                return super.getResource(str);
            }
            return url;
        }

        @Override // java.lang.ClassLoader
        public Enumeration<URL> getResources(String str) {
            URL url = this.persistenceHandler.url(str, this.typeDefinitions);
            if (url == null) {
                return super.getResources(str);
            }
            return new PrependingEnumeration(url, super.getResources(str));
        }

        @Override // java.lang.ClassLoader
        public Class<?> loadClass(String str, boolean z) {
            synchronized (ByteArrayClassLoader.SYNCHRONIZATION_STRATEGY.initialize().getClassLoadingLock(this, str)) {
                Class<?> findLoadedClass = findLoadedClass(str);
                if (findLoadedClass != null) {
                    return findLoadedClass;
                }
                try {
                    Class<?> findClass = findClass(str);
                    if (z) {
                        resolveClass(findClass);
                    }
                    return findClass;
                } catch (ClassNotFoundException unused) {
                    return super.loadClass(str, z);
                }
            }
        }

        public ChildFirst(@MaybeNull ClassLoader classLoader, Map<String, byte[]> map, PersistenceHandler persistenceHandler) {
            super(classLoader, map, persistenceHandler);
        }

        public ChildFirst(@MaybeNull ClassLoader classLoader, boolean z, Map<String, byte[]> map, PersistenceHandler persistenceHandler) {
            super(classLoader, z, map, persistenceHandler);
        }

        public ChildFirst(@MaybeNull ClassLoader classLoader, Map<String, byte[]> map, @MaybeNull ProtectionDomain protectionDomain, PersistenceHandler persistenceHandler, PackageDefinitionStrategy packageDefinitionStrategy) {
            super(classLoader, map, protectionDomain, persistenceHandler, packageDefinitionStrategy);
        }

        public ChildFirst(@MaybeNull ClassLoader classLoader, boolean z, Map<String, byte[]> map, @MaybeNull ProtectionDomain protectionDomain, PersistenceHandler persistenceHandler, PackageDefinitionStrategy packageDefinitionStrategy) {
            super(classLoader, z, map, protectionDomain, persistenceHandler, packageDefinitionStrategy);
        }

        public ChildFirst(@MaybeNull ClassLoader classLoader, Map<String, byte[]> map, @MaybeNull ProtectionDomain protectionDomain, PersistenceHandler persistenceHandler, PackageDefinitionStrategy packageDefinitionStrategy, ClassFilePostProcessor classFilePostProcessor) {
            super(classLoader, map, protectionDomain, persistenceHandler, packageDefinitionStrategy, classFilePostProcessor);
        }

        public ChildFirst(@MaybeNull ClassLoader classLoader, boolean z, Map<String, byte[]> map, @MaybeNull ProtectionDomain protectionDomain, PersistenceHandler persistenceHandler, PackageDefinitionStrategy packageDefinitionStrategy, ClassFilePostProcessor classFilePostProcessor) {
            super(classLoader, z, map, protectionDomain, persistenceHandler, packageDefinitionStrategy, classFilePostProcessor);
        }
    }

    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
    /* loaded from: classes.dex */
    public class ClassDefinitionAction implements PrivilegedAction<Class<?>> {
        private final byte[] binaryRepresentation;
        private final String name;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                ClassDefinitionAction classDefinitionAction = (ClassDefinitionAction) obj;
                return this.name.equals(classDefinitionAction.name) && Arrays.equals(this.binaryRepresentation, classDefinitionAction.binaryRepresentation) && ByteArrayClassLoader.this.equals(ByteArrayClassLoader.this);
            }
            return false;
        }

        public int hashCode() {
            return (((((getClass().hashCode() * 31) + this.name.hashCode()) * 31) + Arrays.hashCode(this.binaryRepresentation)) * 31) + ByteArrayClassLoader.this.hashCode();
        }

        public ClassDefinitionAction(String str, byte[] bArr) {
            this.name = str;
            this.binaryRepresentation = bArr;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.security.PrivilegedAction
        public Class<?> run() {
            int lastIndexOf = this.name.lastIndexOf(46);
            if (lastIndexOf != -1) {
                String substring = this.name.substring(0, lastIndexOf);
                ByteArrayClassLoader byteArrayClassLoader = ByteArrayClassLoader.this;
                PackageDefinitionStrategy.Definition define = byteArrayClassLoader.packageDefinitionStrategy.define(byteArrayClassLoader, substring, this.name);
                if (define.isDefined()) {
                    Package apply = ByteArrayClassLoader.PACKAGE_LOOKUP_STRATEGY.apply(ByteArrayClassLoader.this, substring);
                    if (apply == null) {
                        ByteArrayClassLoader.this.definePackage(substring, define.getSpecificationTitle(), define.getSpecificationVersion(), define.getSpecificationVendor(), define.getImplementationTitle(), define.getImplementationVersion(), define.getImplementationVendor(), define.getSealBase());
                    } else if (!define.isCompatibleTo(apply)) {
                        throw new SecurityException("Sealing violation for package " + substring);
                    }
                }
            }
            ByteArrayClassLoader byteArrayClassLoader2 = ByteArrayClassLoader.this;
            String str = this.name;
            byte[] bArr = this.binaryRepresentation;
            return byteArrayClassLoader2.defineClass(str, bArr, 0, bArr.length, byteArrayClassLoader2.protectionDomain);
        }
    }

    /* loaded from: classes2.dex */
    public enum EmptyEnumeration implements Enumeration<URL> {
        INSTANCE;

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return false;
        }

        @Override // java.util.Enumeration
        public URL nextElement() {
            throw new NoSuchElementException();
        }
    }

    /* loaded from: classes2.dex */
    public interface PackageLookupStrategy {

        /* loaded from: classes2.dex */
        public enum CreationAction implements PrivilegedAction<PackageLookupStrategy> {
            INSTANCE;

            @Override // java.security.PrivilegedAction
            @SuppressFBWarnings(justification = "Exception should not be rethrown but trigger a fallback.", value = {"REC_CATCH_EXCEPTION"})
            public PackageLookupStrategy run() {
                if (JavaModule.isSupported()) {
                    try {
                        return new ForJava9CapableVm(ClassLoader.class.getMethod("getDefinedPackage", String.class));
                    } catch (Exception unused) {
                        return ForLegacyVm.INSTANCE;
                    }
                }
                return ForLegacyVm.INSTANCE;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForJava9CapableVm implements PackageLookupStrategy {
            private final Method getDefinedPackage;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.getDefinedPackage.equals(((ForJava9CapableVm) obj).getDefinedPackage);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.getDefinedPackage.hashCode();
            }

            @Override // net.bytebuddy.dynamic.loading.ByteArrayClassLoader.PackageLookupStrategy
            @MaybeNull
            public Package apply(ByteArrayClassLoader byteArrayClassLoader, String str) {
                try {
                    return (Package) this.getDefinedPackage.invoke(byteArrayClassLoader, str);
                } catch (IllegalAccessException e) {
                    throw new IllegalStateException(e);
                } catch (InvocationTargetException e2) {
                    throw new IllegalStateException(e2.getTargetException());
                }
            }

            public ForJava9CapableVm(Method method) {
                this.getDefinedPackage = method;
            }
        }

        /* loaded from: classes2.dex */
        public enum ForLegacyVm implements PackageLookupStrategy {
            INSTANCE;

            @Override // net.bytebuddy.dynamic.loading.ByteArrayClassLoader.PackageLookupStrategy
            @MaybeNull
            public Package apply(ByteArrayClassLoader byteArrayClassLoader, String str) {
                return byteArrayClassLoader.doGetPackage(str);
            }
        }

        @MaybeNull
        Package apply(ByteArrayClassLoader byteArrayClassLoader, String str);
    }

    /* loaded from: classes2.dex */
    public enum PersistenceHandler {
        MANIFEST(true) { // from class: net.bytebuddy.dynamic.loading.ByteArrayClassLoader.PersistenceHandler.1
            @Override // net.bytebuddy.dynamic.loading.ByteArrayClassLoader.PersistenceHandler
            public byte[] lookup(String str, ConcurrentMap<String, byte[]> concurrentMap) {
                return concurrentMap.get(str);
            }

            @Override // net.bytebuddy.dynamic.loading.ByteArrayClassLoader.PersistenceHandler
            public void release(String str, ConcurrentMap<String, byte[]> concurrentMap) {
            }

            @Override // net.bytebuddy.dynamic.loading.ByteArrayClassLoader.PersistenceHandler
            public URL url(String str, ConcurrentMap<String, byte[]> concurrentMap) {
                if (!str.endsWith(".class")) {
                    return ByteArrayClassLoader.NO_URL;
                }
                if (str.startsWith("/")) {
                    str = str.substring(1);
                }
                byte[] bArr = concurrentMap.get(str.replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH).substring(0, str.length() - 6));
                if (bArr == null) {
                    return ByteArrayClassLoader.NO_URL;
                }
                return (URL) ByteArrayClassLoader.doPrivileged(new UrlDefinitionAction(str, bArr));
            }
        },
        LATENT(false) { // from class: net.bytebuddy.dynamic.loading.ByteArrayClassLoader.PersistenceHandler.2
            @Override // net.bytebuddy.dynamic.loading.ByteArrayClassLoader.PersistenceHandler
            public byte[] lookup(String str, ConcurrentMap<String, byte[]> concurrentMap) {
                return concurrentMap.remove(str);
            }

            @Override // net.bytebuddy.dynamic.loading.ByteArrayClassLoader.PersistenceHandler
            public void release(String str, ConcurrentMap<String, byte[]> concurrentMap) {
                concurrentMap.remove(str);
            }

            @Override // net.bytebuddy.dynamic.loading.ByteArrayClassLoader.PersistenceHandler
            public URL url(String str, ConcurrentMap<String, byte[]> concurrentMap) {
                return ByteArrayClassLoader.NO_URL;
            }
        };
        
        private static final String CLASS_FILE_SUFFIX = ".class";
        private final boolean manifest;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class UrlDefinitionAction implements PrivilegedAction<URL> {
            private static final String ENCODING = "UTF-8";
            private static final String NO_FILE = "";
            private static final int NO_PORT = -1;
            private final byte[] binaryRepresentation;
            private final String typeName;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ByteArrayUrlStreamHandler extends URLStreamHandler {
                private final byte[] binaryRepresentation;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && Arrays.equals(this.binaryRepresentation, ((ByteArrayUrlStreamHandler) obj).binaryRepresentation);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + Arrays.hashCode(this.binaryRepresentation);
                }

                @Override // java.net.URLStreamHandler
                public URLConnection openConnection(URL url) {
                    return new ByteArrayUrlConnection(url, new ByteArrayInputStream(this.binaryRepresentation));
                }

                /* loaded from: classes2.dex */
                public static class ByteArrayUrlConnection extends URLConnection {
                    private final InputStream inputStream;

                    @Override // java.net.URLConnection
                    public void connect() {
                        ((URLConnection) this).connected = true;
                    }

                    public ByteArrayUrlConnection(URL url, InputStream inputStream) {
                        super(url);
                        this.inputStream = inputStream;
                    }

                    @Override // java.net.URLConnection
                    public InputStream getInputStream() {
                        connect();
                        return this.inputStream;
                    }
                }

                public ByteArrayUrlStreamHandler(byte[] bArr) {
                    this.binaryRepresentation = bArr;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    UrlDefinitionAction urlDefinitionAction = (UrlDefinitionAction) obj;
                    return this.typeName.equals(urlDefinitionAction.typeName) && Arrays.equals(this.binaryRepresentation, urlDefinitionAction.binaryRepresentation);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.typeName.hashCode()) * 31) + Arrays.hashCode(this.binaryRepresentation);
            }

            @Override // java.security.PrivilegedAction
            public URL run() {
                try {
                    return new URL(ByteArrayClassLoader.URL_SCHEMA, URLEncoder.encode(this.typeName.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/'), ENCODING), -1, "", new ByteArrayUrlStreamHandler(this.binaryRepresentation));
                } catch (UnsupportedEncodingException e) {
                    throw new IllegalStateException("Could not find encoding: UTF-8", e);
                } catch (MalformedURLException e2) {
                    throw new IllegalStateException("Cannot create URL for " + this.typeName, e2);
                }
            }

            public UrlDefinitionAction(String str, byte[] bArr) {
                this.typeName = str;
                this.binaryRepresentation = bArr;
            }
        }

        public boolean isManifest() {
            return this.manifest;
        }

        @MaybeNull
        public abstract byte[] lookup(String str, ConcurrentMap<String, byte[]> concurrentMap);

        public abstract void release(String str, ConcurrentMap<String, byte[]> concurrentMap);

        @MaybeNull
        public abstract URL url(String str, ConcurrentMap<String, byte[]> concurrentMap);

        PersistenceHandler(boolean z) {
            this.manifest = z;
        }
    }

    /* loaded from: classes2.dex */
    public static class SingletonEnumeration implements Enumeration<URL> {
        @MaybeNull
        private URL element;

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.element != null;
        }

        @Override // java.util.Enumeration
        public URL nextElement() {
            URL url = this.element;
            if (url != null) {
                this.element = null;
                return url;
            }
            throw new NoSuchElementException();
        }

        public SingletonEnumeration(URL url) {
            this.element = url;
        }
    }

    /* loaded from: classes2.dex */
    public interface SynchronizationStrategy {

        /* loaded from: classes2.dex */
        public enum CreationAction implements PrivilegedAction<Initializable> {
            INSTANCE;

            @Override // java.security.PrivilegedAction
            @SuppressFBWarnings(justification = "Exception should not be rethrown but trigger a fallback.", value = {"REC_CATCH_EXCEPTION"})
            public Initializable run() {
                try {
                    try {
                        Class<?> cls = Class.forName("java.lang.invoke.MethodType");
                        Class<?> cls2 = Class.forName("java.lang.invoke.MethodHandle");
                        return new ForJava8CapableVm(Class.forName("java.lang.invoke.MethodHandles$Lookup").getMethod("findVirtual", Class.class, String.class, cls).invoke(ByteArrayClassLoader.methodHandle(), ClassLoader.class, "getClassLoadingLock", cls.getMethod("methodType", Class.class, Class[].class).invoke(null, Object.class, new Class[]{String.class})), cls2.getMethod("bindTo", Object.class), cls2.getMethod("invokeWithArguments", Object[].class));
                    } catch (Exception unused) {
                        return (ClassFileVersion.ofThisVm(ClassFileVersion.JAVA_V5).isAtLeast(ClassFileVersion.JAVA_V9) && ByteArrayClassLoader.class.getClassLoader() == null) ? ForLegacyVm.INSTANCE : new ForJava7CapableVm(ClassLoader.class.getDeclaredMethod("getClassLoadingLock", String.class));
                    }
                } catch (Exception unused2) {
                    return ForLegacyVm.INSTANCE;
                }
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForJava7CapableVm implements SynchronizationStrategy, Initializable {
            private final Method method;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.method.equals(((ForJava7CapableVm) obj).method);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.method.hashCode();
            }

            @Override // net.bytebuddy.dynamic.loading.ByteArrayClassLoader.SynchronizationStrategy
            public Object getClassLoadingLock(ByteArrayClassLoader byteArrayClassLoader, String str) {
                try {
                    return this.method.invoke(byteArrayClassLoader, str);
                } catch (IllegalAccessException e) {
                    throw new IllegalStateException(e);
                } catch (InvocationTargetException e2) {
                    throw new IllegalStateException(e2.getTargetException());
                }
            }

            @Override // net.bytebuddy.dynamic.loading.ByteArrayClassLoader.SynchronizationStrategy.Initializable
            @SuppressFBWarnings(justification = "Assuring privilege is explicit user responsibility.", value = {"DP_DO_INSIDE_DO_PRIVILEGED"})
            public SynchronizationStrategy initialize() {
                try {
                    this.method.setAccessible(true);
                    return this;
                } catch (Exception unused) {
                    return ForLegacyVm.INSTANCE;
                }
            }

            public ForJava7CapableVm(Method method) {
                this.method = method;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForJava8CapableVm implements SynchronizationStrategy, Initializable {
            private final Method bindTo;
            private final Method invokeWithArguments;
            private final Object methodHandle;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForJava8CapableVm forJava8CapableVm = (ForJava8CapableVm) obj;
                    return this.methodHandle.equals(forJava8CapableVm.methodHandle) && this.bindTo.equals(forJava8CapableVm.bindTo) && this.invokeWithArguments.equals(forJava8CapableVm.invokeWithArguments);
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.methodHandle.hashCode()) * 31) + this.bindTo.hashCode()) * 31) + this.invokeWithArguments.hashCode();
            }

            @Override // net.bytebuddy.dynamic.loading.ByteArrayClassLoader.SynchronizationStrategy.Initializable
            public SynchronizationStrategy initialize() {
                return this;
            }

            @Override // net.bytebuddy.dynamic.loading.ByteArrayClassLoader.SynchronizationStrategy
            public Object getClassLoadingLock(ByteArrayClassLoader byteArrayClassLoader, String str) {
                try {
                    return this.invokeWithArguments.invoke(this.bindTo.invoke(this.methodHandle, byteArrayClassLoader), new Object[]{str});
                } catch (IllegalAccessException e) {
                    throw new IllegalStateException(e);
                } catch (InvocationTargetException e2) {
                    throw new IllegalStateException(e2.getTargetException());
                }
            }

            public ForJava8CapableVm(Object obj, Method method, Method method2) {
                this.methodHandle = obj;
                this.bindTo = method;
                this.invokeWithArguments = method2;
            }
        }

        /* loaded from: classes2.dex */
        public enum ForLegacyVm implements SynchronizationStrategy, Initializable {
            INSTANCE;

            @Override // net.bytebuddy.dynamic.loading.ByteArrayClassLoader.SynchronizationStrategy
            public Object getClassLoadingLock(ByteArrayClassLoader byteArrayClassLoader, String str) {
                return byteArrayClassLoader;
            }

            @Override // net.bytebuddy.dynamic.loading.ByteArrayClassLoader.SynchronizationStrategy.Initializable
            public SynchronizationStrategy initialize() {
                return this;
            }
        }

        /* loaded from: classes2.dex */
        public interface Initializable {
            SynchronizationStrategy initialize();
        }

        Object getClassLoadingLock(ByteArrayClassLoader byteArrayClassLoader, String str);
    }

    static {
        boolean z = false;
        try {
            Class.forName("java.security.AccessController", false, null);
            ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
        } catch (ClassNotFoundException unused) {
            ACCESS_CONTROLLER = z;
            NO_URL = null;
            PACKAGE_LOOKUP_STRATEGY = (PackageLookupStrategy) doPrivileged(PackageLookupStrategy.CreationAction.INSTANCE);
            SYNCHRONIZATION_STRATEGY = (SynchronizationStrategy.Initializable) doPrivileged(SynchronizationStrategy.CreationAction.INSTANCE);
            doRegisterAsParallelCapable();
        } catch (SecurityException unused2) {
            z = true;
            ACCESS_CONTROLLER = z;
            NO_URL = null;
            PACKAGE_LOOKUP_STRATEGY = (PackageLookupStrategy) doPrivileged(PackageLookupStrategy.CreationAction.INSTANCE);
            SYNCHRONIZATION_STRATEGY = (SynchronizationStrategy.Initializable) doPrivileged(SynchronizationStrategy.CreationAction.INSTANCE);
            doRegisterAsParallelCapable();
        }
        NO_URL = null;
        PACKAGE_LOOKUP_STRATEGY = (PackageLookupStrategy) doPrivileged(PackageLookupStrategy.CreationAction.INSTANCE);
        SYNCHRONIZATION_STRATEGY = (SynchronizationStrategy.Initializable) doPrivileged(SynchronizationStrategy.CreationAction.INSTANCE);
        doRegisterAsParallelCapable();
    }

    public ByteArrayClassLoader(@MaybeNull ClassLoader classLoader, Map<String, byte[]> map) {
        this(classLoader, true, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MaybeNull
    public Package doGetPackage(String str) {
        return getPackage(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @AccessControllerPlugin.Enhance
    public static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
        return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
    }

    @MaybeNull
    @AccessControllerPlugin.Enhance
    private static Object getContext() {
        if (ACCESS_CONTROLLER) {
            return AccessController.getContext();
        }
        return null;
    }

    public static Map<TypeDescription, Class<?>> load(@MaybeNull ClassLoader classLoader, Map<TypeDescription, byte[]> map) {
        return load(classLoader, map, ClassLoadingStrategy.NO_PROTECTION_DOMAIN, PersistenceHandler.LATENT, PackageDefinitionStrategy.Trivial.INSTANCE, false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object methodHandle() {
        return Class.forName("java.lang.invoke.MethodHandles").getMethod("lookup", new Class[0]).invoke(null, new Object[0]);
    }

    @Override // java.lang.ClassLoader
    @MaybeNull
    public URL findResource(String str) {
        return this.persistenceHandler.url(str, this.typeDefinitions);
    }

    public ByteArrayClassLoader(@MaybeNull ClassLoader classLoader, boolean z, Map<String, byte[]> map) {
        this(classLoader, z, map, PersistenceHandler.LATENT);
    }

    @AccessControllerPlugin.Enhance
    private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction, @MaybeNull Object obj) {
        return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction, (AccessControlContext) obj) : privilegedAction.run();
    }

    @SuppressFBWarnings(justification = "Must be invoked from targeting class loader type.", value = {"DP_DO_INSIDE_DO_PRIVILEGED"})
    private static void doRegisterAsParallelCapable() {
        try {
            Method declaredMethod = ClassLoader.class.getDeclaredMethod("registerAsParallelCapable", new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(null, new Object[0]);
        } catch (Throwable unused) {
        }
    }

    @SuppressFBWarnings(justification = "Assuring privilege is explicit user responsibility.", value = {"DP_CREATE_CLASSLOADER_INSIDE_DO_PRIVILEGED"})
    public static Map<TypeDescription, Class<?>> load(@MaybeNull ClassLoader classLoader, Map<TypeDescription, byte[]> map, @MaybeNull ProtectionDomain protectionDomain, PersistenceHandler persistenceHandler, PackageDefinitionStrategy packageDefinitionStrategy, boolean z, boolean z2) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<TypeDescription, byte[]> entry : map.entrySet()) {
            hashMap.put(entry.getKey().getName(), entry.getValue());
        }
        ByteArrayClassLoader byteArrayClassLoader = new ByteArrayClassLoader(classLoader, z2, hashMap, protectionDomain, persistenceHandler, packageDefinitionStrategy, ClassFilePostProcessor.NoOp.INSTANCE);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (TypeDescription typeDescription : map.keySet()) {
            try {
                Class<?> cls = Class.forName(typeDescription.getName(), false, byteArrayClassLoader);
                if (!GraalImageCode.getCurrent().isNativeImageExecution() && z && cls.getClassLoader() != byteArrayClassLoader) {
                    throw new IllegalStateException("Class already loaded: " + cls);
                }
                linkedHashMap.put(typeDescription, cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Cannot load class " + typeDescription, e);
            }
        }
        return linkedHashMap;
    }

    @Override // net.bytebuddy.dynamic.loading.InjectionClassLoader
    public Map<String, Class<?>> doDefineClasses(Map<String, byte[]> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            hashMap.put(entry.getKey(), this.typeDefinitions.putIfAbsent(entry.getKey(), entry.getValue()));
        }
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (String str : map.keySet()) {
                synchronized (SYNCHRONIZATION_STRATEGY.initialize().getClassLoadingLock(this, str)) {
                    linkedHashMap.put(str, loadClass(str));
                }
            }
            return linkedHashMap;
        } finally {
            for (Map.Entry entry2 : hashMap.entrySet()) {
                if (entry2.getValue() == null) {
                    this.persistenceHandler.release((String) entry2.getKey(), this.typeDefinitions);
                } else {
                    this.typeDefinitions.put(entry2.getKey(), entry2.getValue());
                }
            }
        }
    }

    @Override // java.lang.ClassLoader
    public Class<?> findClass(String str) {
        byte[] lookup = this.persistenceHandler.lookup(str, this.typeDefinitions);
        if (lookup != null) {
            return (Class) doPrivileged(new ClassDefinitionAction(str, this.classFilePostProcessor.transform(this, str, this.protectionDomain, lookup)), this.accessControlContext);
        }
        throw new ClassNotFoundException(str);
    }

    @Override // java.lang.ClassLoader
    public Enumeration<URL> findResources(String str) {
        URL url = this.persistenceHandler.url(str, this.typeDefinitions);
        if (url == null) {
            return EmptyEnumeration.INSTANCE;
        }
        return new SingletonEnumeration(url);
    }

    public ByteArrayClassLoader(@MaybeNull ClassLoader classLoader, Map<String, byte[]> map, PersistenceHandler persistenceHandler) {
        this(classLoader, true, map, persistenceHandler);
    }

    public ByteArrayClassLoader(@MaybeNull ClassLoader classLoader, boolean z, Map<String, byte[]> map, PersistenceHandler persistenceHandler) {
        this(classLoader, z, map, ClassLoadingStrategy.NO_PROTECTION_DOMAIN, persistenceHandler, PackageDefinitionStrategy.Trivial.INSTANCE);
    }

    public ByteArrayClassLoader(@MaybeNull ClassLoader classLoader, Map<String, byte[]> map, @MaybeNull ProtectionDomain protectionDomain, PersistenceHandler persistenceHandler, PackageDefinitionStrategy packageDefinitionStrategy) {
        this(classLoader, true, map, protectionDomain, persistenceHandler, packageDefinitionStrategy);
    }

    public ByteArrayClassLoader(@MaybeNull ClassLoader classLoader, boolean z, Map<String, byte[]> map, @MaybeNull ProtectionDomain protectionDomain, PersistenceHandler persistenceHandler, PackageDefinitionStrategy packageDefinitionStrategy) {
        this(classLoader, z, map, protectionDomain, persistenceHandler, packageDefinitionStrategy, ClassFilePostProcessor.NoOp.INSTANCE);
    }

    public ByteArrayClassLoader(@MaybeNull ClassLoader classLoader, Map<String, byte[]> map, @MaybeNull ProtectionDomain protectionDomain, PersistenceHandler persistenceHandler, PackageDefinitionStrategy packageDefinitionStrategy, ClassFilePostProcessor classFilePostProcessor) {
        this(classLoader, true, map, protectionDomain, persistenceHandler, packageDefinitionStrategy, classFilePostProcessor);
    }

    public ByteArrayClassLoader(@MaybeNull ClassLoader classLoader, boolean z, Map<String, byte[]> map, @MaybeNull ProtectionDomain protectionDomain, PersistenceHandler persistenceHandler, PackageDefinitionStrategy packageDefinitionStrategy, ClassFilePostProcessor classFilePostProcessor) {
        super(classLoader, z);
        this.typeDefinitions = new ConcurrentHashMap(map);
        this.protectionDomain = protectionDomain;
        this.persistenceHandler = persistenceHandler;
        this.packageDefinitionStrategy = packageDefinitionStrategy;
        this.classFilePostProcessor = classFilePostProcessor;
        this.accessControlContext = getContext();
    }
}
