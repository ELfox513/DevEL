package net.bytebuddy.dynamic.loading;

import com.sun.jna.FunctionMapper;
import com.sun.jna.JNIEnv;
import com.sun.jna.Library;
import com.sun.jna.Native;
import com.sun.jna.NativeLibrary;
import com.sun.jna.Platform;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.instrument.Instrumentation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ReflectPermission;
import java.net.URL;
import java.security.AccessController;
import java.security.Permission;
import java.security.PrivilegedAction;
import java.security.ProtectionDomain;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.JarOutputStream;
import net.bytebuddy.ByteBuddy;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.asm.MemberRemoval;
import net.bytebuddy.build.AccessControllerPlugin;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.PackageDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.dynamic.loading.ClassLoadingStrategy;
import net.bytebuddy.dynamic.loading.PackageDefinitionStrategy;
import net.bytebuddy.implementation.MethodCall;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.GraalImageCode;
import net.bytebuddy.utility.JavaModule;
import net.bytebuddy.utility.JavaType;
import net.bytebuddy.utility.RandomString;
import net.bytebuddy.utility.dispatcher.JavaDispatcher;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
import net.bytebuddy.utility.nullability.UnknownNull;
import net.bytebuddy.utility.privilege.GetMethodAction;
/* loaded from: classes2.dex */
public interface ClassInjector {
    public static final boolean ALLOW_EXISTING_TYPES = false;
    public static final Permission SUPPRESS_ACCESS_CHECKS = new ReflectPermission("suppressAccessChecks");

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase implements ClassInjector {
        @Override // net.bytebuddy.dynamic.loading.ClassInjector
        public Map<TypeDescription, Class<?>> inject(Map<? extends TypeDescription, byte[]> map) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<? extends TypeDescription, byte[]> entry : map.entrySet()) {
                linkedHashMap.put(entry.getKey().getName(), entry.getValue());
            }
            Map<String, Class<?>> injectRaw = injectRaw(linkedHashMap);
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (TypeDescription typeDescription : map.keySet()) {
                linkedHashMap2.put(typeDescription, injectRaw.get(typeDescription.getName()));
            }
            return linkedHashMap2;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class UsingInstrumentation extends AbstractBase {
        private static final boolean ACCESS_CONTROLLER;
        private static final String CLASS_FILE_EXTENSION = ".class";
        private static final Dispatcher DISPATCHER;
        private static final String JAR = "jar";
        private final File folder;
        private final Instrumentation instrumentation;
        private final RandomString randomString;
        private final Target target;

        @JavaDispatcher.Proxied("java.lang.instrument.Instrumentation")
        /* loaded from: classes2.dex */
        public interface Dispatcher {
            @JavaDispatcher.Proxied("appendToBootstrapClassLoaderSearch")
            void appendToBootstrapClassLoaderSearch(Instrumentation instrumentation, JarFile jarFile);

            @JavaDispatcher.Proxied("appendToSystemClassLoaderSearch")
            void appendToSystemClassLoaderSearch(Instrumentation instrumentation, JarFile jarFile);

            @JavaDispatcher.Proxied("isModifiableModule")
            boolean isModifiableModule(Instrumentation instrumentation, @JavaDispatcher.Proxied("java.lang.Module") Object obj);

            @JavaDispatcher.Proxied("redefineModule")
            void redefineModule(Instrumentation instrumentation, @JavaDispatcher.Proxied("java.lang.Module") Object obj, Set<?> set, Map<String, Set<?>> map, Map<String, Set<?>> map2, Set<Class<?>> set2, Map<Class<?>, List<Class<?>>> map3);
        }

        /* loaded from: classes2.dex */
        public enum Target {
            BOOTSTRAP(null) { // from class: net.bytebuddy.dynamic.loading.ClassInjector.UsingInstrumentation.Target.1
                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingInstrumentation.Target
                public void inject(Instrumentation instrumentation, JarFile jarFile) {
                    UsingInstrumentation.DISPATCHER.appendToBootstrapClassLoaderSearch(instrumentation, jarFile);
                }
            },
            SYSTEM(ClassLoader.getSystemClassLoader()) { // from class: net.bytebuddy.dynamic.loading.ClassInjector.UsingInstrumentation.Target.2
                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingInstrumentation.Target
                public void inject(Instrumentation instrumentation, JarFile jarFile) {
                    UsingInstrumentation.DISPATCHER.appendToSystemClassLoaderSearch(instrumentation, jarFile);
                }
            };
            
            @MaybeNull
            private final ClassLoader classLoader;

            @MaybeNull
            public ClassLoader getClassLoader() {
                return this.classLoader;
            }

            public abstract void inject(Instrumentation instrumentation, JarFile jarFile);

            Target(@MaybeNull ClassLoader classLoader) {
                this.classLoader = classLoader;
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

        @AccessControllerPlugin.Enhance
        private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
        }

        public static boolean isAvailable() {
            return ClassFileVersion.ofThisVm(ClassFileVersion.JAVA_V5).isAtLeast(ClassFileVersion.JAVA_V6);
        }

        /* renamed from: of */
        public static ClassInjector m15150of(File file, Target target, Instrumentation instrumentation) {
            return new UsingInstrumentation(file, target, instrumentation, new RandomString());
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                UsingInstrumentation usingInstrumentation = (UsingInstrumentation) obj;
                return this.target.equals(usingInstrumentation.target) && this.instrumentation.equals(usingInstrumentation.instrumentation) && this.folder.equals(usingInstrumentation.folder) && this.randomString.equals(usingInstrumentation.randomString);
            }
            return false;
        }

        public int hashCode() {
            return (((((((getClass().hashCode() * 31) + this.instrumentation.hashCode()) * 31) + this.target.hashCode()) * 31) + this.folder.hashCode()) * 31) + this.randomString.hashCode();
        }

        @Override // net.bytebuddy.dynamic.loading.ClassInjector
        public boolean isAlive() {
            return isAvailable();
        }

        public static void redefineModule(Instrumentation instrumentation, JavaModule javaModule, Set<JavaModule> set, Map<String, Set<JavaModule>> map, Map<String, Set<JavaModule>> map2, Set<Class<?>> set2, Map<Class<?>, List<Class<?>>> map3) {
            if (DISPATCHER.isModifiableModule(instrumentation, javaModule.unwrap())) {
                HashSet hashSet = new HashSet();
                for (JavaModule javaModule2 : set) {
                    hashSet.add(javaModule2.unwrap());
                }
                HashMap hashMap = new HashMap();
                for (Map.Entry<String, Set<JavaModule>> entry : map.entrySet()) {
                    HashSet hashSet2 = new HashSet();
                    for (JavaModule javaModule3 : entry.getValue()) {
                        hashSet2.add(javaModule3.unwrap());
                    }
                    hashMap.put(entry.getKey(), hashSet2);
                }
                HashMap hashMap2 = new HashMap();
                for (Map.Entry<String, Set<JavaModule>> entry2 : map2.entrySet()) {
                    HashSet hashSet3 = new HashSet();
                    for (JavaModule javaModule4 : entry2.getValue()) {
                        hashSet3.add(javaModule4.unwrap());
                    }
                    hashMap2.put(entry2.getKey(), hashSet3);
                }
                DISPATCHER.redefineModule(instrumentation, javaModule.unwrap(), hashSet, hashMap, hashMap2, set2, map3);
                return;
            }
            throw new IllegalArgumentException("Cannot modify module: " + javaModule);
        }

        @Override // net.bytebuddy.dynamic.loading.ClassInjector
        public Map<String, Class<?>> injectRaw(Map<? extends String, byte[]> map) {
            File file = this.folder;
            File file2 = new File(file, JAR + this.randomString.nextString() + "." + JAR);
            try {
                if (file2.createNewFile()) {
                    try {
                        JarOutputStream jarOutputStream = new JarOutputStream(new FileOutputStream(file2));
                        for (Map.Entry<? extends String, byte[]> entry : map.entrySet()) {
                            jarOutputStream.putNextEntry(new JarEntry(entry.getKey().replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/') + ".class"));
                            jarOutputStream.write(entry.getValue());
                        }
                        jarOutputStream.close();
                        JarFile jarFile = new JarFile(file2, false);
                        this.target.inject(this.instrumentation, jarFile);
                        jarFile.close();
                        HashMap hashMap = new HashMap();
                        for (String str : map.keySet()) {
                            hashMap.put(str, Class.forName(str, false, this.target.getClassLoader()));
                        }
                        return hashMap;
                    } finally {
                        if (!file2.delete()) {
                            file2.deleteOnExit();
                        }
                    }
                }
                throw new IllegalStateException("Cannot create file " + file2);
            } catch (IOException e) {
                throw new IllegalStateException("Cannot write jar file to disk", e);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException("Cannot load injected class", e2);
            }
        }

        public UsingInstrumentation(File file, Target target, Instrumentation instrumentation, RandomString randomString) {
            this.folder = file;
            this.target = target;
            this.instrumentation = instrumentation;
            this.randomString = randomString;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class UsingJna extends AbstractBase {
        private static final boolean ACCESS_CONTROLLER;
        private static final Object BOOTSTRAP_LOADER_LOCK;
        private static final Dispatcher DISPATCHER;
        @MaybeNull
        @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
        private final ClassLoader classLoader;
        @MaybeNull
        @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
        private final ProtectionDomain protectionDomain;

        /* loaded from: classes2.dex */
        public interface Dispatcher {

            /* loaded from: classes2.dex */
            public enum CreationAction implements PrivilegedAction<Dispatcher> {
                INSTANCE;

                @Override // java.security.PrivilegedAction
                public Dispatcher run() {
                    if (System.getProperty("java.vm.name", "").toUpperCase(Locale.US).contains("J9")) {
                        return new Unavailable("J9 does not support JNA-based class definition");
                    }
                    try {
                        HashMap hashMap = new HashMap();
                        hashMap.put("allow-objects", Boolean.TRUE);
                        if (Platform.isWindows() && !Platform.is64Bit()) {
                            hashMap.put("function-mapper", Windows32BitFunctionMapper.INSTANCE);
                        }
                        return new Enabled((Jvm) Native.loadLibrary("jvm", Jvm.class, hashMap));
                    } catch (Throwable th) {
                        return new Unavailable(th.getMessage());
                    }
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Enabled implements Dispatcher {
                private final Jvm jvm;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.jvm.equals(((Enabled) obj).jvm);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.jvm.hashCode();
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingJna.Dispatcher
                public boolean isAvailable() {
                    return true;
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingJna.Dispatcher
                public Class<?> defineClass(@MaybeNull ClassLoader classLoader, String str, byte[] bArr, @MaybeNull ProtectionDomain protectionDomain) {
                    return this.jvm.JVM_DefineClass(JNIEnv.CURRENT, str.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/'), classLoader, bArr, bArr.length, protectionDomain);
                }

                public Enabled(Jvm jvm) {
                    this.jvm = jvm;
                }
            }

            /* loaded from: classes2.dex */
            public interface Jvm extends Library {
                Class<?> JVM_DefineClass(JNIEnv jNIEnv, String str, @MaybeNull ClassLoader classLoader, byte[] bArr, int i, @MaybeNull ProtectionDomain protectionDomain);
            }

            Class<?> defineClass(@MaybeNull ClassLoader classLoader, String str, byte[] bArr, @MaybeNull ProtectionDomain protectionDomain);

            boolean isAvailable();

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Unavailable implements Dispatcher {
                private final String error;

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingJna.Dispatcher
                public Class<?> defineClass(@MaybeNull ClassLoader classLoader, String str, byte[] bArr, @MaybeNull ProtectionDomain protectionDomain) {
                    throw new UnsupportedOperationException("JNA is not available and JNA-based injection cannot be used: " + this.error);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.error.equals(((Unavailable) obj).error);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.error.hashCode();
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingJna.Dispatcher
                public boolean isAvailable() {
                    return false;
                }

                public Unavailable(String str) {
                    this.error = str;
                }
            }

            /* loaded from: classes2.dex */
            public enum Windows32BitFunctionMapper implements FunctionMapper {
                INSTANCE;

                public String getFunctionName(NativeLibrary nativeLibrary, Method method) {
                    if (method.getName().equals("JVM_DefineClass")) {
                        return "_JVM_DefineClass@24";
                    }
                    return method.getName();
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
                DISPATCHER = (Dispatcher) doPrivileged(Dispatcher.CreationAction.INSTANCE);
                BOOTSTRAP_LOADER_LOCK = new Object();
            } catch (SecurityException unused2) {
                z = true;
                ACCESS_CONTROLLER = z;
                DISPATCHER = (Dispatcher) doPrivileged(Dispatcher.CreationAction.INSTANCE);
                BOOTSTRAP_LOADER_LOCK = new Object();
            }
            DISPATCHER = (Dispatcher) doPrivileged(Dispatcher.CreationAction.INSTANCE);
            BOOTSTRAP_LOADER_LOCK = new Object();
        }

        public UsingJna(@MaybeNull ClassLoader classLoader) {
            this(classLoader, ClassLoadingStrategy.NO_PROTECTION_DOMAIN);
        }

        @AccessControllerPlugin.Enhance
        private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
        }

        public static boolean isAvailable() {
            return DISPATCHER.isAvailable();
        }

        public static ClassInjector ofBootLoader() {
            return new UsingJna(ClassLoadingStrategy.BOOTSTRAP_LOADER);
        }

        public static ClassInjector ofPlatformLoader() {
            return new UsingJna(ClassLoader.getSystemClassLoader().getParent());
        }

        public static ClassInjector ofSystemLoader() {
            return new UsingJna(ClassLoader.getSystemClassLoader());
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0024, code lost:
            if (r2 != null) goto L26;
         */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0039 A[RETURN] */
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
                java.lang.ClassLoader r2 = r4.classLoader
                net.bytebuddy.dynamic.loading.ClassInjector$UsingJna r5 = (net.bytebuddy.dynamic.loading.ClassInjector.UsingJna) r5
                java.lang.ClassLoader r3 = r5.classLoader
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
                java.security.ProtectionDomain r2 = r4.protectionDomain
                java.security.ProtectionDomain r5 = r5.protectionDomain
                if (r5 == 0) goto L36
                if (r2 == 0) goto L38
                boolean r5 = r2.equals(r5)
                if (r5 != 0) goto L39
                return r1
            L36:
                if (r2 == 0) goto L39
            L38:
                return r1
            L39:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.dynamic.loading.ClassInjector.UsingJna.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            int hashCode = getClass().hashCode() * 31;
            ClassLoader classLoader = this.classLoader;
            if (classLoader != null) {
                hashCode += classLoader.hashCode();
            }
            int i = hashCode * 31;
            ProtectionDomain protectionDomain = this.protectionDomain;
            return protectionDomain != null ? i + protectionDomain.hashCode() : i;
        }

        @Override // net.bytebuddy.dynamic.loading.ClassInjector
        public boolean isAlive() {
            return DISPATCHER.isAvailable();
        }

        public UsingJna(@MaybeNull ClassLoader classLoader, @MaybeNull ProtectionDomain protectionDomain) {
            this.classLoader = classLoader;
            this.protectionDomain = protectionDomain;
        }

        @Override // net.bytebuddy.dynamic.loading.ClassInjector
        public Map<String, Class<?>> injectRaw(Map<? extends String, byte[]> map) {
            HashMap hashMap = new HashMap();
            Object obj = this.classLoader;
            if (obj == null) {
                obj = BOOTSTRAP_LOADER_LOCK;
            }
            synchronized (obj) {
                for (Map.Entry<? extends String, byte[]> entry : map.entrySet()) {
                    try {
                        hashMap.put(entry.getKey(), Class.forName(entry.getKey(), false, this.classLoader));
                    } catch (ClassNotFoundException unused) {
                        hashMap.put(entry.getKey(), DISPATCHER.defineClass(this.classLoader, entry.getKey(), entry.getValue(), this.protectionDomain));
                    }
                }
            }
            return hashMap;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class UsingLookup extends AbstractBase {
        private static final boolean ACCESS_CONTROLLER;
        private static final MethodHandles METHOD_HANDLES;
        private static final MethodHandles.Lookup METHOD_HANDLES_LOOKUP;
        private static final int PACKAGE_LOOKUP = 8;
        private final Object lookup;

        @JavaDispatcher.Proxied("java.lang.invoke.MethodHandles")
        /* loaded from: classes2.dex */
        public interface MethodHandles {

            @JavaDispatcher.Proxied("java.lang.invoke.MethodHandles$Lookup")
            /* loaded from: classes2.dex */
            public interface Lookup {
                @JavaDispatcher.Proxied("defineClass")
                Class<?> defineClass(Object obj, byte[] bArr);

                @JavaDispatcher.Proxied("lookupClass")
                Class<?> lookupClass(Object obj);

                @JavaDispatcher.Proxied("lookupModes")
                int lookupModes(Object obj);
            }

            @JavaDispatcher.IsStatic
            @JavaDispatcher.Proxied("privateLookupIn")
            Object privateLookupIn(Class<?> cls, @JavaDispatcher.Proxied("java.lang.invoke.MethodHandles$Lookup") Object obj);
        }

        static {
            boolean z = false;
            try {
                Class.forName("java.security.AccessController", false, null);
                ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
            } catch (ClassNotFoundException unused) {
                ACCESS_CONTROLLER = z;
                METHOD_HANDLES = (MethodHandles) doPrivileged(JavaDispatcher.m14754of(MethodHandles.class));
                METHOD_HANDLES_LOOKUP = (MethodHandles.Lookup) doPrivileged(JavaDispatcher.m14754of(MethodHandles.Lookup.class));
            } catch (SecurityException unused2) {
                z = true;
                ACCESS_CONTROLLER = z;
                METHOD_HANDLES = (MethodHandles) doPrivileged(JavaDispatcher.m14754of(MethodHandles.class));
                METHOD_HANDLES_LOOKUP = (MethodHandles.Lookup) doPrivileged(JavaDispatcher.m14754of(MethodHandles.Lookup.class));
            }
            METHOD_HANDLES = (MethodHandles) doPrivileged(JavaDispatcher.m14754of(MethodHandles.class));
            METHOD_HANDLES_LOOKUP = (MethodHandles.Lookup) doPrivileged(JavaDispatcher.m14754of(MethodHandles.Lookup.class));
        }

        @AccessControllerPlugin.Enhance
        private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
        }

        public static boolean isAvailable() {
            return JavaType.MODULE.isAvailable();
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.lookup.equals(((UsingLookup) obj).lookup);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.lookup.hashCode();
        }

        @Override // net.bytebuddy.dynamic.loading.ClassInjector
        public boolean isAlive() {
            return isAvailable();
        }

        public Class<?> lookupType() {
            return METHOD_HANDLES_LOOKUP.lookupClass(this.lookup);
        }

        /* renamed from: in */
        public UsingLookup m15149in(Class<?> cls) {
            try {
                return new UsingLookup(METHOD_HANDLES.privateLookupIn(cls, this.lookup));
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Cannot access " + cls.getName() + " from " + this.lookup, e);
            }
        }

        public UsingLookup(Object obj) {
            this.lookup = obj;
        }

        /* renamed from: of */
        public static UsingLookup m15148of(Object obj) {
            if (isAvailable()) {
                if (JavaType.METHOD_HANDLES_LOOKUP.isInstance(obj)) {
                    if ((METHOD_HANDLES_LOOKUP.lookupModes(obj) & 8) != 0) {
                        return new UsingLookup(obj);
                    }
                    throw new IllegalArgumentException("Lookup does not imply package-access: " + obj);
                }
                throw new IllegalArgumentException("Not a method handle lookup: " + obj);
            }
            throw new IllegalStateException("The current VM does not support class definition via method handle lookups");
        }

        @Override // net.bytebuddy.dynamic.loading.ClassInjector
        public Map<String, Class<?>> injectRaw(Map<? extends String, byte[]> map) {
            String substring;
            PackageDescription packageDescription = TypeDescription.ForLoadedType.m15196of(lookupType()).getPackage();
            if (packageDescription != null) {
                HashMap hashMap = new HashMap();
                for (Map.Entry<? extends String, byte[]> entry : map.entrySet()) {
                    int lastIndexOf = entry.getKey().lastIndexOf(46);
                    String name = packageDescription.getName();
                    if (lastIndexOf == -1) {
                        substring = "";
                    } else {
                        substring = entry.getKey().substring(0, lastIndexOf);
                    }
                    if (name.equals(substring)) {
                        try {
                            hashMap.put(entry.getKey(), METHOD_HANDLES_LOOKUP.defineClass(this.lookup, entry.getValue()));
                        } catch (Exception e) {
                            throw new IllegalStateException(e);
                        }
                    } else {
                        throw new IllegalArgumentException(entry.getKey() + " must be defined in the same package as " + this.lookup);
                    }
                }
                return hashMap;
            }
            throw new IllegalStateException("Cannot inject into default package");
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class UsingReflection extends AbstractBase {
        private static final boolean ACCESS_CONTROLLER;
        private static final Method CHECK_PERMISSION;
        private static final Dispatcher.Initializable DISPATCHER;
        private static final System SYSTEM;
        private final ClassLoader classLoader;
        private final boolean forbidExisting;
        private final PackageDefinitionStrategy packageDefinitionStrategy;
        @MaybeNull
        @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
        private final ProtectionDomain protectionDomain;

        /* loaded from: classes2.dex */
        public interface Dispatcher {
            @AlwaysNull
            public static final Class<?> UNDEFINED = null;

            /* loaded from: classes2.dex */
            public enum CreationAction implements PrivilegedAction<Initializable> {
                INSTANCE;

                @Override // java.security.PrivilegedAction
                @SuppressFBWarnings(justification = "Exception should not be rethrown but trigger a fallback.", value = {"REC_CATCH_EXCEPTION"})
                public Initializable run() {
                    try {
                        if (JavaModule.isSupported()) {
                            if (UsingUnsafe.isAvailable()) {
                                return UsingUnsafeInjection.make();
                            }
                            return UsingUnsafeOverride.make();
                        }
                        return Direct.make();
                    } catch (InvocationTargetException e) {
                        return new Initializable.Unavailable(e.getTargetException().getMessage());
                    } catch (Exception e2) {
                        return new Initializable.Unavailable(e2.getMessage());
                    }
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static abstract class Direct implements Dispatcher, Initializable {
                public final Method defineClass;
                public final Method definePackage;
                public final Method findLoadedClass;
                @UnknownNull
                public final Method getDefinedPackage;
                public final Method getPackage;

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForJava7CapableVm extends Direct {
                    private final Method getClassLoadingLock;

                    @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher.Direct
                    public boolean equals(@MaybeNull Object obj) {
                        if (super.equals(obj)) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.getClassLoadingLock.equals(((ForJava7CapableVm) obj).getClassLoadingLock);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher.Direct
                    public int hashCode() {
                        return (super.hashCode() * 31) + this.getClassLoadingLock.hashCode();
                    }

                    @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                    public Object getClassLoadingLock(ClassLoader classLoader, String str) {
                        try {
                            return this.getClassLoadingLock.invoke(classLoader, str);
                        } catch (IllegalAccessException e) {
                            throw new IllegalStateException(e);
                        } catch (InvocationTargetException e2) {
                            throw new IllegalStateException(e2.getTargetException());
                        }
                    }

                    public ForJava7CapableVm(Method method, Method method2, @MaybeNull Method method3, Method method4, Method method5, Method method6) {
                        super(method, method2, method3, method4, method5);
                        this.getClassLoadingLock = method6;
                    }
                }

                /* loaded from: classes2.dex */
                public static class ForLegacyVm extends Direct {
                    public ForLegacyVm(Method method, Method method2, @MaybeNull Method method3, Method method4, Method method5) {
                        super(method, method2, method3, method4, method5);
                    }

                    @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                    public Object getClassLoadingLock(ClassLoader classLoader, String str) {
                        return classLoader;
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Direct direct = (Direct) obj;
                        return this.findLoadedClass.equals(direct.findLoadedClass) && this.defineClass.equals(direct.defineClass) && this.getDefinedPackage.equals(direct.getDefinedPackage) && this.getPackage.equals(direct.getPackage) && this.definePackage.equals(direct.definePackage);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((((((getClass().hashCode() * 31) + this.findLoadedClass.hashCode()) * 31) + this.defineClass.hashCode()) * 31) + this.getDefinedPackage.hashCode()) * 31) + this.getPackage.hashCode()) * 31) + this.definePackage.hashCode();
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher.Initializable
                public boolean isAvailable() {
                    return true;
                }

                @SuppressFBWarnings(justification = "Assuring privilege is explicit user responsibility.", value = {"DP_DO_INSIDE_DO_PRIVILEGED"})
                public static Initializable make() {
                    Method method = null;
                    if (JavaModule.isSupported()) {
                        try {
                            method = ClassLoader.class.getMethod("getDefinedPackage", String.class);
                        } catch (NoSuchMethodException unused) {
                        }
                    }
                    Method declaredMethod = ClassLoader.class.getDeclaredMethod("getPackage", String.class);
                    declaredMethod.setAccessible(true);
                    Method declaredMethod2 = ClassLoader.class.getDeclaredMethod("findLoadedClass", String.class);
                    declaredMethod2.setAccessible(true);
                    Class cls = Integer.TYPE;
                    Method declaredMethod3 = ClassLoader.class.getDeclaredMethod("defineClass", String.class, byte[].class, cls, cls, ProtectionDomain.class);
                    declaredMethod3.setAccessible(true);
                    Method declaredMethod4 = ClassLoader.class.getDeclaredMethod("definePackage", String.class, String.class, String.class, String.class, String.class, String.class, String.class, URL.class);
                    declaredMethod4.setAccessible(true);
                    try {
                        Method declaredMethod5 = ClassLoader.class.getDeclaredMethod("getClassLoadingLock", String.class);
                        declaredMethod5.setAccessible(true);
                        return new ForJava7CapableVm(declaredMethod2, declaredMethod3, method, declaredMethod, declaredMethod4, declaredMethod5);
                    } catch (NoSuchMethodException unused2) {
                        return new ForLegacyVm(declaredMethod2, declaredMethod3, method, declaredMethod, declaredMethod4);
                    }
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                public Class<?> defineClass(ClassLoader classLoader, String str, byte[] bArr, @MaybeNull ProtectionDomain protectionDomain) {
                    try {
                        return (Class) this.defineClass.invoke(classLoader, str, bArr, 0, Integer.valueOf(bArr.length), protectionDomain);
                    } catch (IllegalAccessException e) {
                        throw new IllegalStateException(e);
                    } catch (InvocationTargetException e2) {
                        throw new IllegalStateException(e2.getTargetException());
                    }
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                public Package definePackage(ClassLoader classLoader, String str, @MaybeNull String str2, @MaybeNull String str3, @MaybeNull String str4, @MaybeNull String str5, @MaybeNull String str6, @MaybeNull String str7, @MaybeNull URL url) {
                    try {
                        return (Package) this.definePackage.invoke(classLoader, str, str2, str3, str4, str5, str6, str7, url);
                    } catch (IllegalAccessException e) {
                        throw new IllegalStateException(e);
                    } catch (InvocationTargetException e2) {
                        throw new IllegalStateException(e2.getTargetException());
                    }
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                public Class<?> findClass(ClassLoader classLoader, String str) {
                    try {
                        return (Class) this.findLoadedClass.invoke(classLoader, str);
                    } catch (IllegalAccessException e) {
                        throw new IllegalStateException(e);
                    } catch (InvocationTargetException e2) {
                        throw new IllegalStateException(e2.getTargetException());
                    }
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                @MaybeNull
                public Package getDefinedPackage(ClassLoader classLoader, String str) {
                    Method method = this.getDefinedPackage;
                    if (method == null) {
                        return getPackage(classLoader, str);
                    }
                    try {
                        return (Package) method.invoke(classLoader, str);
                    } catch (IllegalAccessException e) {
                        throw new IllegalStateException(e);
                    } catch (InvocationTargetException e2) {
                        throw new IllegalStateException(e2.getTargetException());
                    }
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                public Package getPackage(ClassLoader classLoader, String str) {
                    try {
                        return (Package) this.getPackage.invoke(classLoader, str);
                    } catch (IllegalAccessException e) {
                        throw new IllegalStateException(e);
                    } catch (InvocationTargetException e2) {
                        throw new IllegalStateException(e2.getTargetException());
                    }
                }

                public Direct(Method method, Method method2, @MaybeNull Method method3, Method method4, Method method5) {
                    this.findLoadedClass = method;
                    this.defineClass = method2;
                    this.getDefinedPackage = method3;
                    this.getPackage = method4;
                    this.definePackage = method5;
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher.Initializable
                public Dispatcher initialize() {
                    Object securityManager = UsingReflection.SYSTEM.getSecurityManager();
                    if (securityManager != null) {
                        try {
                            UsingReflection.CHECK_PERMISSION.invoke(securityManager, ClassInjector.SUPPRESS_ACCESS_CHECKS);
                        } catch (InvocationTargetException e) {
                            return new Unavailable(e.getTargetException().getMessage());
                        } catch (Exception e2) {
                            return new Unavailable(e2.getMessage());
                        }
                    }
                    return this;
                }
            }

            /* loaded from: classes2.dex */
            public interface Initializable {
                Dispatcher initialize();

                boolean isAvailable();

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Unavailable implements Dispatcher, Initializable {
                    private final String message;

                    @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                    public Class<?> defineClass(ClassLoader classLoader, String str, byte[] bArr, @MaybeNull ProtectionDomain protectionDomain) {
                        throw new UnsupportedOperationException("Cannot define class using reflection: " + this.message);
                    }

                    @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                    public Package definePackage(ClassLoader classLoader, String str, @MaybeNull String str2, @MaybeNull String str3, @MaybeNull String str4, @MaybeNull String str5, @MaybeNull String str6, @MaybeNull String str7, @MaybeNull URL url) {
                        throw new UnsupportedOperationException("Cannot define package using injection: " + this.message);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.message.equals(((Unavailable) obj).message);
                    }

                    @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                    public Object getClassLoadingLock(ClassLoader classLoader, String str) {
                        return classLoader;
                    }

                    @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                    public Package getDefinedPackage(ClassLoader classLoader, String str) {
                        throw new UnsupportedOperationException("Cannot get defined package using reflection: " + this.message);
                    }

                    @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                    public Package getPackage(ClassLoader classLoader, String str) {
                        throw new UnsupportedOperationException("Cannot get package using reflection: " + this.message);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.message.hashCode();
                    }

                    @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher.Initializable
                    public Dispatcher initialize() {
                        return this;
                    }

                    @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher.Initializable
                    public boolean isAvailable() {
                        return false;
                    }

                    public Unavailable(String str) {
                        this.message = str;
                    }

                    @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                    public Class<?> findClass(ClassLoader classLoader, String str) {
                        try {
                            return classLoader.loadClass(str);
                        } catch (ClassNotFoundException unused) {
                            return Dispatcher.UNDEFINED;
                        }
                    }
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class UsingUnsafeInjection implements Dispatcher, Initializable {
                private final Object accessor;
                private final Method defineClass;
                private final Method definePackage;
                private final Method findLoadedClass;
                private final Method getClassLoadingLock;
                @UnknownNull
                private final Method getDefinedPackage;
                private final Method getPackage;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        UsingUnsafeInjection usingUnsafeInjection = (UsingUnsafeInjection) obj;
                        return this.accessor.equals(usingUnsafeInjection.accessor) && this.findLoadedClass.equals(usingUnsafeInjection.findLoadedClass) && this.defineClass.equals(usingUnsafeInjection.defineClass) && this.getDefinedPackage.equals(usingUnsafeInjection.getDefinedPackage) && this.getPackage.equals(usingUnsafeInjection.getPackage) && this.definePackage.equals(usingUnsafeInjection.definePackage) && this.getClassLoadingLock.equals(usingUnsafeInjection.getClassLoadingLock);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((((((((((getClass().hashCode() * 31) + this.accessor.hashCode()) * 31) + this.findLoadedClass.hashCode()) * 31) + this.defineClass.hashCode()) * 31) + this.getDefinedPackage.hashCode()) * 31) + this.getPackage.hashCode()) * 31) + this.definePackage.hashCode()) * 31) + this.getClassLoadingLock.hashCode();
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher.Initializable
                public boolean isAvailable() {
                    return true;
                }

                /* JADX WARN: Can't wrap try/catch for region: R(11:6|(10:23|24|9|(1:11)(1:22)|12|13|14|(1:16)(1:19)|17|18)|8|9|(0)(0)|12|13|14|(0)(0)|17|18) */
                /* JADX WARN: Code restructure failed: missing block: B:18:0x0225, code lost:
                    r1 = r6.defineMethod("getClassLoadingLock", java.lang.Object.class, net.bytebuddy.description.modifier.Visibility.PUBLIC).withParameters(java.lang.ClassLoader.class, java.lang.String.class).intercept(net.bytebuddy.implementation.FixedValue.argument(0));
                 */
                /* JADX WARN: Removed duplicated region for block: B:14:0x01c2  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x01ef  */
                /* JADX WARN: Removed duplicated region for block: B:21:0x029a  */
                /* JADX WARN: Removed duplicated region for block: B:22:0x02aa  */
                @edu.umd.cs.findbugs.annotations.SuppressFBWarnings(justification = "Assuring privilege is explicit user responsibility.", value = {"DP_DO_INSIDE_DO_PRIVILEGED"})
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public static net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher.Initializable make() {
                    /*
                        Method dump skipped, instructions count: 788
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher.UsingUnsafeInjection.make():net.bytebuddy.dynamic.loading.ClassInjector$UsingReflection$Dispatcher$Initializable");
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                public Class<?> defineClass(ClassLoader classLoader, String str, byte[] bArr, @MaybeNull ProtectionDomain protectionDomain) {
                    try {
                        return (Class) this.defineClass.invoke(this.accessor, classLoader, str, bArr, 0, Integer.valueOf(bArr.length), protectionDomain);
                    } catch (IllegalAccessException e) {
                        throw new IllegalStateException(e);
                    } catch (InvocationTargetException e2) {
                        throw new IllegalStateException(e2.getTargetException());
                    }
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                public Package definePackage(ClassLoader classLoader, String str, @MaybeNull String str2, @MaybeNull String str3, @MaybeNull String str4, @MaybeNull String str5, @MaybeNull String str6, @MaybeNull String str7, @MaybeNull URL url) {
                    try {
                        return (Package) this.definePackage.invoke(this.accessor, classLoader, str, str2, str3, str4, str5, str6, str7, url);
                    } catch (IllegalAccessException e) {
                        throw new IllegalStateException(e);
                    } catch (InvocationTargetException e2) {
                        throw new IllegalStateException(e2.getTargetException());
                    }
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                public Class<?> findClass(ClassLoader classLoader, String str) {
                    try {
                        return (Class) this.findLoadedClass.invoke(this.accessor, classLoader, str);
                    } catch (IllegalAccessException e) {
                        throw new IllegalStateException(e);
                    } catch (InvocationTargetException e2) {
                        throw new IllegalStateException(e2.getTargetException());
                    }
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                public Object getClassLoadingLock(ClassLoader classLoader, String str) {
                    try {
                        return this.getClassLoadingLock.invoke(this.accessor, classLoader, str);
                    } catch (IllegalAccessException e) {
                        throw new IllegalStateException(e);
                    } catch (InvocationTargetException e2) {
                        throw new IllegalStateException(e2.getTargetException());
                    }
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                @MaybeNull
                public Package getDefinedPackage(ClassLoader classLoader, String str) {
                    Method method = this.getDefinedPackage;
                    if (method == null) {
                        return getPackage(classLoader, str);
                    }
                    try {
                        return (Package) method.invoke(this.accessor, classLoader, str);
                    } catch (IllegalAccessException e) {
                        throw new IllegalStateException(e);
                    } catch (InvocationTargetException e2) {
                        throw new IllegalStateException(e2.getTargetException());
                    }
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                public Package getPackage(ClassLoader classLoader, String str) {
                    try {
                        return (Package) this.getPackage.invoke(this.accessor, classLoader, str);
                    } catch (IllegalAccessException e) {
                        throw new IllegalStateException(e);
                    } catch (InvocationTargetException e2) {
                        throw new IllegalStateException(e2.getTargetException());
                    }
                }

                public UsingUnsafeInjection(Object obj, Method method, Method method2, @MaybeNull Method method3, Method method4, Method method5, Method method6) {
                    this.accessor = obj;
                    this.findLoadedClass = method;
                    this.defineClass = method2;
                    this.getDefinedPackage = method3;
                    this.getPackage = method4;
                    this.definePackage = method5;
                    this.getClassLoadingLock = method6;
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher.Initializable
                public Dispatcher initialize() {
                    Object securityManager = UsingReflection.SYSTEM.getSecurityManager();
                    if (securityManager != null) {
                        try {
                            UsingReflection.CHECK_PERMISSION.invoke(securityManager, ClassInjector.SUPPRESS_ACCESS_CHECKS);
                        } catch (InvocationTargetException e) {
                            return new Unavailable(e.getTargetException().getMessage());
                        } catch (Exception e2) {
                            return new Unavailable(e2.getMessage());
                        }
                    }
                    return this;
                }
            }

            /* loaded from: classes2.dex */
            public static abstract class UsingUnsafeOverride implements Dispatcher, Initializable {
                public final Method defineClass;
                public final Method definePackage;
                public final Method findLoadedClass;
                @MaybeNull
                public final Method getDefinedPackage;
                public final Method getPackage;

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForJava7CapableVm extends UsingUnsafeOverride {
                    private final Method getClassLoadingLock;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.getClassLoadingLock.equals(((ForJava7CapableVm) obj).getClassLoadingLock);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.getClassLoadingLock.hashCode();
                    }

                    @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                    public Object getClassLoadingLock(ClassLoader classLoader, String str) {
                        try {
                            return this.getClassLoadingLock.invoke(classLoader, str);
                        } catch (IllegalAccessException e) {
                            throw new IllegalStateException(e);
                        } catch (InvocationTargetException e2) {
                            throw new IllegalStateException(e2.getTargetException());
                        }
                    }

                    public ForJava7CapableVm(Method method, Method method2, @MaybeNull Method method3, Method method4, Method method5, Method method6) {
                        super(method, method2, method3, method4, method5);
                        this.getClassLoadingLock = method6;
                    }
                }

                /* loaded from: classes2.dex */
                public static class ForLegacyVm extends UsingUnsafeOverride {
                    public ForLegacyVm(Method method, Method method2, @MaybeNull Method method3, Method method4, Method method5) {
                        super(method, method2, method3, method4, method5);
                    }

                    @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                    public Object getClassLoadingLock(ClassLoader classLoader, String str) {
                        return classLoader;
                    }
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher.Initializable
                public boolean isAvailable() {
                    return true;
                }

                @SuppressFBWarnings(justification = "Assuring privilege is explicit user responsibility.", value = {"DP_DO_INSIDE_DO_PRIVILEGED"})
                public static Initializable make() {
                    Field declaredField;
                    if (Boolean.parseBoolean(java.lang.System.getProperty(UsingUnsafe.SAFE_PROPERTY, Boolean.toString(GraalImageCode.getCurrent().isDefined())))) {
                        return new Initializable.Unavailable("Use of Unsafe was disabled by system property");
                    }
                    Class<?> cls = Class.forName("sun.misc.Unsafe");
                    Field declaredField2 = cls.getDeclaredField("theUnsafe");
                    declaredField2.setAccessible(true);
                    Method method = null;
                    Object obj = declaredField2.get(null);
                    try {
                        declaredField = AccessibleObject.class.getDeclaredField("override");
                    } catch (NoSuchFieldException unused) {
                        DynamicType.Builder redefine = new ByteBuddy().redefine(AccessibleObject.class);
                        declaredField = redefine.name("net.bytebuddy.mirror." + AccessibleObject.class.getSimpleName()).noNestMate().visit(new MemberRemoval().stripInvokables(ElementMatchers.any())).make().load(AccessibleObject.class.getClassLoader(), ClassLoadingStrategy.Default.WRAPPER).getLoaded().getDeclaredField("override");
                    }
                    long longValue = ((Long) cls.getMethod("objectFieldOffset", Field.class).invoke(obj, declaredField)).longValue();
                    Method method2 = cls.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE);
                    if (JavaModule.isSupported()) {
                        try {
                            method = ClassLoader.class.getMethod("getDefinedPackage", String.class);
                        } catch (NoSuchMethodException unused2) {
                        }
                    }
                    Method declaredMethod = ClassLoader.class.getDeclaredMethod("getPackage", String.class);
                    Boolean bool = Boolean.TRUE;
                    method2.invoke(obj, declaredMethod, Long.valueOf(longValue), bool);
                    Method declaredMethod2 = ClassLoader.class.getDeclaredMethod("findLoadedClass", String.class);
                    Class cls2 = Integer.TYPE;
                    Method declaredMethod3 = ClassLoader.class.getDeclaredMethod("defineClass", String.class, byte[].class, cls2, cls2, ProtectionDomain.class);
                    Method declaredMethod4 = ClassLoader.class.getDeclaredMethod("definePackage", String.class, String.class, String.class, String.class, String.class, String.class, String.class, URL.class);
                    method2.invoke(obj, declaredMethod3, Long.valueOf(longValue), bool);
                    method2.invoke(obj, declaredMethod2, Long.valueOf(longValue), bool);
                    method2.invoke(obj, declaredMethod4, Long.valueOf(longValue), bool);
                    try {
                        Method declaredMethod5 = ClassLoader.class.getDeclaredMethod("getClassLoadingLock", String.class);
                        method2.invoke(obj, declaredMethod5, Long.valueOf(longValue), bool);
                        return new ForJava7CapableVm(declaredMethod2, declaredMethod3, method, declaredMethod, declaredMethod4, declaredMethod5);
                    } catch (NoSuchMethodException unused3) {
                        return new ForLegacyVm(declaredMethod2, declaredMethod3, method, declaredMethod, declaredMethod4);
                    }
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                public Class<?> defineClass(ClassLoader classLoader, String str, byte[] bArr, @MaybeNull ProtectionDomain protectionDomain) {
                    try {
                        return (Class) this.defineClass.invoke(classLoader, str, bArr, 0, Integer.valueOf(bArr.length), protectionDomain);
                    } catch (IllegalAccessException e) {
                        throw new IllegalStateException(e);
                    } catch (InvocationTargetException e2) {
                        throw new IllegalStateException(e2.getTargetException());
                    }
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                public Package definePackage(ClassLoader classLoader, String str, @MaybeNull String str2, @MaybeNull String str3, @MaybeNull String str4, @MaybeNull String str5, @MaybeNull String str6, @MaybeNull String str7, @MaybeNull URL url) {
                    try {
                        return (Package) this.definePackage.invoke(classLoader, str, str2, str3, str4, str5, str6, str7, url);
                    } catch (IllegalAccessException e) {
                        throw new IllegalStateException(e);
                    } catch (InvocationTargetException e2) {
                        throw new IllegalStateException(e2.getTargetException());
                    }
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                public Class<?> findClass(ClassLoader classLoader, String str) {
                    try {
                        return (Class) this.findLoadedClass.invoke(classLoader, str);
                    } catch (IllegalAccessException e) {
                        throw new IllegalStateException(e);
                    } catch (InvocationTargetException e2) {
                        throw new IllegalStateException(e2.getTargetException());
                    }
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                @MaybeNull
                public Package getDefinedPackage(ClassLoader classLoader, String str) {
                    Method method = this.getDefinedPackage;
                    if (method == null) {
                        return getPackage(classLoader, str);
                    }
                    try {
                        return (Package) method.invoke(classLoader, str);
                    } catch (IllegalAccessException e) {
                        throw new IllegalStateException(e);
                    } catch (InvocationTargetException e2) {
                        throw new IllegalStateException(e2.getTargetException());
                    }
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                public Package getPackage(ClassLoader classLoader, String str) {
                    try {
                        return (Package) this.getPackage.invoke(classLoader, str);
                    } catch (IllegalAccessException e) {
                        throw new IllegalStateException(e);
                    } catch (InvocationTargetException e2) {
                        throw new IllegalStateException(e2.getTargetException());
                    }
                }

                public UsingUnsafeOverride(Method method, Method method2, @MaybeNull Method method3, Method method4, Method method5) {
                    this.findLoadedClass = method;
                    this.defineClass = method2;
                    this.getDefinedPackage = method3;
                    this.getPackage = method4;
                    this.definePackage = method5;
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher.Initializable
                public Dispatcher initialize() {
                    Object securityManager = UsingReflection.SYSTEM.getSecurityManager();
                    if (securityManager != null) {
                        try {
                            UsingReflection.CHECK_PERMISSION.invoke(securityManager, ClassInjector.SUPPRESS_ACCESS_CHECKS);
                        } catch (InvocationTargetException e) {
                            return new Unavailable(e.getTargetException().getMessage());
                        } catch (Exception e2) {
                            return new Unavailable(e2.getMessage());
                        }
                    }
                    return this;
                }
            }

            Class<?> defineClass(ClassLoader classLoader, String str, byte[] bArr, @MaybeNull ProtectionDomain protectionDomain);

            Package definePackage(ClassLoader classLoader, String str, @MaybeNull String str2, @MaybeNull String str3, @MaybeNull String str4, @MaybeNull String str5, @MaybeNull String str6, @MaybeNull String str7, @MaybeNull URL url);

            @MaybeNull
            Class<?> findClass(ClassLoader classLoader, String str);

            Object getClassLoadingLock(ClassLoader classLoader, String str);

            @MaybeNull
            Package getDefinedPackage(ClassLoader classLoader, String str);

            @MaybeNull
            Package getPackage(ClassLoader classLoader, String str);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Unavailable implements Dispatcher {
                private final String message;

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                public Class<?> defineClass(ClassLoader classLoader, String str, byte[] bArr, @MaybeNull ProtectionDomain protectionDomain) {
                    throw new UnsupportedOperationException("Cannot define class using reflection: " + this.message);
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                public Package definePackage(ClassLoader classLoader, String str, @MaybeNull String str2, @MaybeNull String str3, @MaybeNull String str4, @MaybeNull String str5, @MaybeNull String str6, @MaybeNull String str7, @MaybeNull URL url) {
                    throw new UnsupportedOperationException("Cannot define package using injection: " + this.message);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.message.equals(((Unavailable) obj).message);
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                public Object getClassLoadingLock(ClassLoader classLoader, String str) {
                    return classLoader;
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                public Package getDefinedPackage(ClassLoader classLoader, String str) {
                    throw new UnsupportedOperationException("Cannot get defined package using reflection: " + this.message);
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                public Package getPackage(ClassLoader classLoader, String str) {
                    throw new UnsupportedOperationException("Cannot get package using reflection: " + this.message);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.message.hashCode();
                }

                public Unavailable(String str) {
                    this.message = str;
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.Dispatcher
                public Class<?> findClass(ClassLoader classLoader, String str) {
                    try {
                        return classLoader.loadClass(str);
                    } catch (ClassNotFoundException unused) {
                        return Dispatcher.UNDEFINED;
                    }
                }
            }
        }

        @JavaDispatcher.Proxied("java.lang.System")
        /* loaded from: classes2.dex */
        public interface System {
            @JavaDispatcher.IsStatic
            @JavaDispatcher.Defaults
            @MaybeNull
            @JavaDispatcher.Proxied("getSecurityManager")
            Object getSecurityManager();
        }

        static {
            try {
                Class.forName("java.security.AccessController", false, null);
                ACCESS_CONTROLLER = Boolean.parseBoolean(java.lang.System.getProperty("net.bytebuddy.securitymanager", "true"));
            } catch (ClassNotFoundException unused) {
                ACCESS_CONTROLLER = false;
            } catch (SecurityException unused2) {
                ACCESS_CONTROLLER = true;
            }
            DISPATCHER = (Dispatcher.Initializable) doPrivileged(Dispatcher.CreationAction.INSTANCE);
            SYSTEM = (System) doPrivileged(JavaDispatcher.m14754of(System.class));
            CHECK_PERMISSION = (Method) doPrivileged(new GetMethodAction("java.lang.SecurityManager", "checkPermission", Permission.class));
        }

        public UsingReflection(ClassLoader classLoader) {
            this(classLoader, ClassLoadingStrategy.NO_PROTECTION_DOMAIN);
        }

        @AccessControllerPlugin.Enhance
        private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
        }

        public static boolean isAvailable() {
            return DISPATCHER.isAvailable();
        }

        public static ClassInjector ofSystemClassLoader() {
            return new UsingReflection(ClassLoader.getSystemClassLoader());
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x0036, code lost:
            if (r2 != null) goto L27;
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
                boolean r2 = r4.forbidExisting
                net.bytebuddy.dynamic.loading.ClassInjector$UsingReflection r5 = (net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection) r5
                boolean r3 = r5.forbidExisting
                if (r2 == r3) goto L1c
                return r1
            L1c:
                java.lang.ClassLoader r2 = r4.classLoader
                java.lang.ClassLoader r3 = r5.classLoader
                boolean r2 = r2.equals(r3)
                if (r2 != 0) goto L27
                return r1
            L27:
                java.security.ProtectionDomain r2 = r4.protectionDomain
                java.security.ProtectionDomain r3 = r5.protectionDomain
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
                net.bytebuddy.dynamic.loading.PackageDefinitionStrategy r2 = r4.packageDefinitionStrategy
                net.bytebuddy.dynamic.loading.PackageDefinitionStrategy r5 = r5.packageDefinitionStrategy
                boolean r5 = r2.equals(r5)
                if (r5 != 0) goto L44
                return r1
            L44:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.dynamic.loading.ClassInjector.UsingReflection.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            int hashCode = ((getClass().hashCode() * 31) + this.classLoader.hashCode()) * 31;
            ProtectionDomain protectionDomain = this.protectionDomain;
            if (protectionDomain != null) {
                hashCode += protectionDomain.hashCode();
            }
            return (((hashCode * 31) + this.packageDefinitionStrategy.hashCode()) * 31) + (this.forbidExisting ? 1 : 0);
        }

        @Override // net.bytebuddy.dynamic.loading.ClassInjector
        public boolean isAlive() {
            return isAvailable();
        }

        public UsingReflection(ClassLoader classLoader, @MaybeNull ProtectionDomain protectionDomain) {
            this(classLoader, protectionDomain, PackageDefinitionStrategy.Trivial.INSTANCE, false);
        }

        @Override // net.bytebuddy.dynamic.loading.ClassInjector
        public Map<String, Class<?>> injectRaw(Map<? extends String, byte[]> map) {
            HashMap hashMap;
            Iterator<Map.Entry<? extends String, byte[]>> it;
            PackageDefinitionStrategy.Definition definition;
            String str;
            Dispatcher initialize = DISPATCHER.initialize();
            HashMap hashMap2 = new HashMap();
            Iterator<Map.Entry<? extends String, byte[]>> it2 = map.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry<? extends String, byte[]> next = it2.next();
                synchronized (initialize.getClassLoadingLock(this.classLoader, next.getKey())) {
                    Class<?> findClass = initialize.findClass(this.classLoader, next.getKey());
                    if (findClass == null) {
                        int lastIndexOf = next.getKey().lastIndexOf(46);
                        if (lastIndexOf != -1) {
                            String substring = next.getKey().substring(0, lastIndexOf);
                            PackageDefinitionStrategy.Definition define = this.packageDefinitionStrategy.define(this.classLoader, substring, next.getKey());
                            if (define.isDefined()) {
                                Package definedPackage = initialize.getDefinedPackage(this.classLoader, substring);
                                if (definedPackage == null) {
                                    try {
                                        it = it2;
                                        definition = define;
                                        hashMap = hashMap2;
                                        str = substring;
                                        try {
                                            initialize.definePackage(this.classLoader, substring, define.getSpecificationTitle(), define.getSpecificationVersion(), define.getSpecificationVendor(), define.getImplementationTitle(), define.getImplementationVersion(), define.getImplementationVendor(), define.getSealBase());
                                        } catch (IllegalStateException e) {
                                            e = e;
                                            Package r2 = initialize.getPackage(this.classLoader, str);
                                            if (r2 != null) {
                                                if (!definition.isCompatibleTo(r2)) {
                                                    throw new SecurityException("Sealing violation for package " + str + " (getPackage fallback)");
                                                }
                                                findClass = initialize.defineClass(this.classLoader, next.getKey(), next.getValue(), this.protectionDomain);
                                                HashMap hashMap3 = hashMap;
                                                hashMap3.put(next.getKey(), findClass);
                                                it2 = it;
                                                hashMap2 = hashMap3;
                                            } else {
                                                throw e;
                                            }
                                        }
                                    } catch (IllegalStateException e2) {
                                        e = e2;
                                        hashMap = hashMap2;
                                        it = it2;
                                        definition = define;
                                        str = substring;
                                    }
                                } else {
                                    hashMap = hashMap2;
                                    it = it2;
                                    if (!define.isCompatibleTo(definedPackage)) {
                                        throw new SecurityException("Sealing violation for package " + substring);
                                    }
                                }
                                findClass = initialize.defineClass(this.classLoader, next.getKey(), next.getValue(), this.protectionDomain);
                            }
                        }
                        hashMap = hashMap2;
                        it = it2;
                        findClass = initialize.defineClass(this.classLoader, next.getKey(), next.getValue(), this.protectionDomain);
                    } else {
                        hashMap = hashMap2;
                        it = it2;
                        if (this.forbidExisting) {
                            throw new IllegalStateException("Cannot inject already loaded type: " + findClass);
                        }
                    }
                    HashMap hashMap32 = hashMap;
                    hashMap32.put(next.getKey(), findClass);
                }
                it2 = it;
                hashMap2 = hashMap32;
            }
            return hashMap2;
        }

        public UsingReflection(ClassLoader classLoader, @MaybeNull ProtectionDomain protectionDomain, PackageDefinitionStrategy packageDefinitionStrategy, boolean z) {
            if (classLoader != null) {
                this.classLoader = classLoader;
                this.protectionDomain = protectionDomain;
                this.packageDefinitionStrategy = packageDefinitionStrategy;
                this.forbidExisting = z;
                return;
            }
            throw new IllegalArgumentException("Cannot inject classes into the bootstrap class loader");
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class UsingUnsafe extends AbstractBase {
        private static final boolean ACCESS_CONTROLLER;
        private static final Object BOOTSTRAP_LOADER_LOCK;
        private static final Method CHECK_PERMISSION;
        private static final Dispatcher.Initializable DISPATCHER;
        public static final String SAFE_PROPERTY = "net.bytebuddy.safe";
        private static final System SYSTEM;
        @MaybeNull
        @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
        private final ClassLoader classLoader;
        private final Dispatcher.Initializable dispatcher;
        @MaybeNull
        @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
        private final ProtectionDomain protectionDomain;

        /* loaded from: classes2.dex */
        public interface Dispatcher {

            /* loaded from: classes2.dex */
            public enum CreationAction implements PrivilegedAction<Initializable> {
                INSTANCE;

                @Override // java.security.PrivilegedAction
                @SuppressFBWarnings(justification = "Exception should not be rethrown but trigger a fallback.", value = {"REC_CATCH_EXCEPTION"})
                public Initializable run() {
                    Field declaredField;
                    if (Boolean.parseBoolean(java.lang.System.getProperty(UsingUnsafe.SAFE_PROPERTY, Boolean.toString(GraalImageCode.getCurrent().isDefined())))) {
                        return new Unavailable("Use of Unsafe was disabled by system property");
                    }
                    try {
                        Class<?> cls = Class.forName("sun.misc.Unsafe");
                        Field declaredField2 = cls.getDeclaredField("theUnsafe");
                        declaredField2.setAccessible(true);
                        Object obj = declaredField2.get(null);
                        try {
                            Class<?> cls2 = Integer.TYPE;
                            Method method = cls.getMethod("defineClass", String.class, byte[].class, cls2, cls2, ClassLoader.class, ProtectionDomain.class);
                            method.setAccessible(true);
                            return new Enabled(obj, method);
                        } catch (Exception e) {
                            try {
                                try {
                                    declaredField = AccessibleObject.class.getDeclaredField("override");
                                } catch (NoSuchFieldException unused) {
                                    DynamicType.Builder redefine = new ByteBuddy().redefine(AccessibleObject.class);
                                    declaredField = redefine.name("net.bytebuddy.mirror." + AccessibleObject.class.getSimpleName()).noNestMate().visit(new MemberRemoval().stripInvokables(ElementMatchers.any())).make().load(AccessibleObject.class.getClassLoader(), ClassLoadingStrategy.Default.WRAPPER).getLoaded().getDeclaredField("override");
                                }
                                long longValue = ((Long) cls.getMethod("objectFieldOffset", Field.class).invoke(obj, declaredField)).longValue();
                                Method method2 = cls.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE);
                                Class<?> cls3 = Class.forName("jdk.internal.misc.Unsafe");
                                Field declaredField3 = cls3.getDeclaredField("theUnsafe");
                                Boolean bool = Boolean.TRUE;
                                method2.invoke(obj, declaredField3, Long.valueOf(longValue), bool);
                                Class<?> cls4 = Integer.TYPE;
                                Method method3 = cls3.getMethod("defineClass", String.class, byte[].class, cls4, cls4, ClassLoader.class, ProtectionDomain.class);
                                method2.invoke(obj, method3, Long.valueOf(longValue), bool);
                                return new Enabled(declaredField3.get(null), method3);
                            } catch (Exception unused2) {
                                throw e;
                            }
                        }
                    } catch (Exception e2) {
                        return new Unavailable(e2.getMessage());
                    }
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Enabled implements Dispatcher, Initializable {
                private final Method defineClass;
                private final Object unsafe;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Enabled enabled = (Enabled) obj;
                        return this.unsafe.equals(enabled.unsafe) && this.defineClass.equals(enabled.defineClass);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.unsafe.hashCode()) * 31) + this.defineClass.hashCode();
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingUnsafe.Dispatcher.Initializable
                public boolean isAvailable() {
                    return true;
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingUnsafe.Dispatcher
                public Class<?> defineClass(@MaybeNull ClassLoader classLoader, String str, byte[] bArr, @MaybeNull ProtectionDomain protectionDomain) {
                    try {
                        return (Class) this.defineClass.invoke(this.unsafe, str, bArr, 0, Integer.valueOf(bArr.length), classLoader, protectionDomain);
                    } catch (IllegalAccessException e) {
                        throw new IllegalStateException(e);
                    } catch (InvocationTargetException e2) {
                        throw new IllegalStateException(e2.getTargetException());
                    }
                }

                public Enabled(Object obj, Method method) {
                    this.unsafe = obj;
                    this.defineClass = method;
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingUnsafe.Dispatcher.Initializable
                public Dispatcher initialize() {
                    Object securityManager = UsingUnsafe.SYSTEM.getSecurityManager();
                    if (securityManager != null) {
                        try {
                            UsingUnsafe.CHECK_PERMISSION.invoke(securityManager, ClassInjector.SUPPRESS_ACCESS_CHECKS);
                        } catch (InvocationTargetException e) {
                            return new Unavailable(e.getTargetException().getMessage());
                        } catch (Exception e2) {
                            return new Unavailable(e2.getMessage());
                        }
                    }
                    return this;
                }
            }

            /* loaded from: classes2.dex */
            public interface Initializable {
                Dispatcher initialize();

                boolean isAvailable();
            }

            Class<?> defineClass(@MaybeNull ClassLoader classLoader, String str, byte[] bArr, @MaybeNull ProtectionDomain protectionDomain);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Unavailable implements Dispatcher, Initializable {
                private final String message;

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingUnsafe.Dispatcher
                public Class<?> defineClass(@MaybeNull ClassLoader classLoader, String str, byte[] bArr, @MaybeNull ProtectionDomain protectionDomain) {
                    throw new UnsupportedOperationException("Could not access Unsafe class: " + this.message);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.message.equals(((Unavailable) obj).message);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.message.hashCode();
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingUnsafe.Dispatcher.Initializable
                public Dispatcher initialize() {
                    throw new UnsupportedOperationException("Could not access Unsafe class: " + this.message);
                }

                @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingUnsafe.Dispatcher.Initializable
                public boolean isAvailable() {
                    return false;
                }

                public Unavailable(String str) {
                    this.message = str;
                }
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Factory {
            private final Dispatcher.Initializable dispatcher;

            /* loaded from: classes2.dex */
            public interface AccessResolver {

                /* loaded from: classes2.dex */
                public enum Default implements AccessResolver {
                    INSTANCE;

                    @Override // net.bytebuddy.dynamic.loading.ClassInjector.UsingUnsafe.Factory.AccessResolver
                    public void apply(AccessibleObject accessibleObject) {
                        accessibleObject.setAccessible(true);
                    }
                }

                void apply(AccessibleObject accessibleObject);
            }

            public Factory() {
                this(AccessResolver.Default.INSTANCE);
            }

            public static Factory resolve(Instrumentation instrumentation) {
                return resolve(instrumentation, false);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.dispatcher.equals(((Factory) obj).dispatcher);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.dispatcher.hashCode();
            }

            public boolean isAvailable() {
                return this.dispatcher.isAvailable();
            }

            public ClassInjector make(@MaybeNull ClassLoader classLoader) {
                return make(classLoader, ClassLoadingStrategy.NO_PROTECTION_DOMAIN);
            }

            @SuppressFBWarnings(justification = "Exception should not be rethrown but trigger a fallback.", value = {"REC_CATCH_EXCEPTION"})
            public Factory(AccessResolver accessResolver) {
                Dispatcher.Initializable unavailable;
                if (UsingUnsafe.DISPATCHER.isAvailable()) {
                    unavailable = UsingUnsafe.DISPATCHER;
                } else {
                    try {
                        Class<?> cls = Class.forName("jdk.internal.misc.Unsafe");
                        Field declaredField = cls.getDeclaredField("theUnsafe");
                        accessResolver.apply(declaredField);
                        Object obj = declaredField.get(null);
                        Class<?> cls2 = Integer.TYPE;
                        Method method = cls.getMethod("defineClass", String.class, byte[].class, cls2, cls2, ClassLoader.class, ProtectionDomain.class);
                        accessResolver.apply(method);
                        unavailable = new Dispatcher.Enabled(obj, method);
                    } catch (Exception e) {
                        unavailable = new Dispatcher.Unavailable(e.getMessage());
                    }
                }
                this.dispatcher = unavailable;
            }

            @SuppressFBWarnings(justification = "Exception intends to trigger disabled injection strategy. Modules are assumed if module system is supported.", value = {"REC_CATCH_EXCEPTION", "NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
            public static Factory resolve(Instrumentation instrumentation, boolean z) {
                if (!UsingUnsafe.isAvailable() && JavaModule.isSupported()) {
                    try {
                        Class<?> cls = Class.forName("jdk.internal.misc.Unsafe");
                        PackageDescription.ForLoadedPackage forLoadedPackage = new PackageDescription.ForLoadedPackage(cls.getPackage());
                        JavaModule ofType = JavaModule.ofType(cls);
                        if (ofType.isOpened(forLoadedPackage, JavaModule.ofType(UsingUnsafe.class))) {
                            return new Factory();
                        }
                        if (z) {
                            JavaModule ofType2 = JavaModule.ofType(AccessResolver.Default.class);
                            UsingInstrumentation.redefineModule(instrumentation, ofType, Collections.singleton(ofType2), Collections.emptyMap(), Collections.singletonMap(forLoadedPackage.getName(), Collections.singleton(ofType2)), Collections.emptySet(), Collections.emptyMap());
                            return new Factory();
                        }
                        Class loaded = new ByteBuddy().subclass(AccessResolver.class).method(ElementMatchers.named("apply")).intercept(MethodCall.invoke(AccessibleObject.class.getMethod("setAccessible", Boolean.TYPE)).onArgument(0).with(Boolean.TRUE)).make().load(AccessResolver.class.getClassLoader(), ClassLoadingStrategy.Default.WRAPPER.with(AccessResolver.class.getProtectionDomain())).getLoaded();
                        JavaModule ofType3 = JavaModule.ofType(loaded);
                        UsingInstrumentation.redefineModule(instrumentation, ofType, Collections.singleton(ofType3), Collections.emptyMap(), Collections.singletonMap(forLoadedPackage.getName(), Collections.singleton(ofType3)), Collections.emptySet(), Collections.emptyMap());
                        return new Factory((AccessResolver) loaded.getConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e) {
                        return new Factory(new Dispatcher.Unavailable(e.getMessage()));
                    }
                }
                return new Factory();
            }

            public ClassInjector make(@MaybeNull ClassLoader classLoader, @MaybeNull ProtectionDomain protectionDomain) {
                return new UsingUnsafe(classLoader, protectionDomain, this.dispatcher);
            }

            public Factory(Dispatcher.Initializable initializable) {
                this.dispatcher = initializable;
            }
        }

        @JavaDispatcher.Proxied("java.lang.System")
        /* loaded from: classes2.dex */
        public interface System {
            @JavaDispatcher.IsStatic
            @JavaDispatcher.Defaults
            @MaybeNull
            @JavaDispatcher.Proxied("getSecurityManager")
            Object getSecurityManager();
        }

        static {
            try {
                Class.forName("java.security.AccessController", false, null);
                ACCESS_CONTROLLER = Boolean.parseBoolean(java.lang.System.getProperty("net.bytebuddy.securitymanager", "true"));
            } catch (ClassNotFoundException unused) {
                ACCESS_CONTROLLER = false;
            } catch (SecurityException unused2) {
                ACCESS_CONTROLLER = true;
            }
            DISPATCHER = (Dispatcher.Initializable) doPrivileged(Dispatcher.CreationAction.INSTANCE);
            SYSTEM = (System) doPrivileged(JavaDispatcher.m14754of(System.class));
            CHECK_PERMISSION = (Method) doPrivileged(new GetMethodAction("java.lang.SecurityManager", "checkPermission", Permission.class));
            BOOTSTRAP_LOADER_LOCK = new Object();
        }

        public UsingUnsafe(@MaybeNull ClassLoader classLoader) {
            this(classLoader, ClassLoadingStrategy.NO_PROTECTION_DOMAIN);
        }

        @AccessControllerPlugin.Enhance
        private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
        }

        public static boolean isAvailable() {
            return DISPATCHER.isAvailable();
        }

        public static ClassInjector ofBootLoader() {
            return new UsingUnsafe(ClassLoadingStrategy.BOOTSTRAP_LOADER);
        }

        public static ClassInjector ofPlatformLoader() {
            return new UsingUnsafe(ClassLoader.getSystemClassLoader().getParent());
        }

        public static ClassInjector ofSystemLoader() {
            return new UsingUnsafe(ClassLoader.getSystemClassLoader());
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0024, code lost:
            if (r2 != null) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0036, code lost:
            if (r2 != null) goto L27;
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
                java.lang.ClassLoader r2 = r4.classLoader
                net.bytebuddy.dynamic.loading.ClassInjector$UsingUnsafe r5 = (net.bytebuddy.dynamic.loading.ClassInjector.UsingUnsafe) r5
                java.lang.ClassLoader r3 = r5.classLoader
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
                java.security.ProtectionDomain r2 = r4.protectionDomain
                java.security.ProtectionDomain r3 = r5.protectionDomain
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
                net.bytebuddy.dynamic.loading.ClassInjector$UsingUnsafe$Dispatcher$Initializable r2 = r4.dispatcher
                net.bytebuddy.dynamic.loading.ClassInjector$UsingUnsafe$Dispatcher$Initializable r5 = r5.dispatcher
                boolean r5 = r2.equals(r5)
                if (r5 != 0) goto L44
                return r1
            L44:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.dynamic.loading.ClassInjector.UsingUnsafe.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            int hashCode = getClass().hashCode() * 31;
            ClassLoader classLoader = this.classLoader;
            if (classLoader != null) {
                hashCode += classLoader.hashCode();
            }
            int i = hashCode * 31;
            ProtectionDomain protectionDomain = this.protectionDomain;
            if (protectionDomain != null) {
                i += protectionDomain.hashCode();
            }
            return (i * 31) + this.dispatcher.hashCode();
        }

        @Override // net.bytebuddy.dynamic.loading.ClassInjector
        public boolean isAlive() {
            return this.dispatcher.isAvailable();
        }

        public UsingUnsafe(@MaybeNull ClassLoader classLoader, @MaybeNull ProtectionDomain protectionDomain) {
            this(classLoader, protectionDomain, DISPATCHER);
        }

        @Override // net.bytebuddy.dynamic.loading.ClassInjector
        public Map<String, Class<?>> injectRaw(Map<? extends String, byte[]> map) {
            Dispatcher initialize = this.dispatcher.initialize();
            HashMap hashMap = new HashMap();
            Object obj = this.classLoader;
            if (obj == null) {
                obj = BOOTSTRAP_LOADER_LOCK;
            }
            synchronized (obj) {
                for (Map.Entry<? extends String, byte[]> entry : map.entrySet()) {
                    try {
                        hashMap.put(entry.getKey(), Class.forName(entry.getKey(), false, this.classLoader));
                    } catch (ClassNotFoundException unused) {
                        hashMap.put(entry.getKey(), initialize.defineClass(this.classLoader, entry.getKey(), entry.getValue(), this.protectionDomain));
                    }
                }
            }
            return hashMap;
        }

        public UsingUnsafe(@MaybeNull ClassLoader classLoader, @MaybeNull ProtectionDomain protectionDomain, Dispatcher.Initializable initializable) {
            this.classLoader = classLoader;
            this.protectionDomain = protectionDomain;
            this.dispatcher = initializable;
        }
    }

    Map<TypeDescription, Class<?>> inject(Map<? extends TypeDescription, byte[]> map);

    Map<String, Class<?>> injectRaw(Map<? extends String, byte[]> map);

    boolean isAlive();
}
