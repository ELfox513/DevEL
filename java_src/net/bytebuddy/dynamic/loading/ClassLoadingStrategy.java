package net.bytebuddy.dynamic.loading;

import java.io.File;
import java.lang.ClassLoader;
import java.lang.instrument.Instrumentation;
import java.security.ProtectionDomain;
import java.util.Map;
import java.util.concurrent.Callable;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.loading.ByteArrayClassLoader;
import net.bytebuddy.dynamic.loading.ClassInjector;
import net.bytebuddy.dynamic.loading.PackageDefinitionStrategy;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface ClassLoadingStrategy<T extends ClassLoader> {
    @AlwaysNull
    public static final ClassLoader BOOTSTRAP_LOADER = null;
    @AlwaysNull
    public static final ProtectionDomain NO_PROTECTION_DOMAIN = null;

    /* loaded from: classes2.dex */
    public interface Configurable<S extends ClassLoader> extends ClassLoadingStrategy<S> {
        Configurable<S> allowExistingTypes();

        Configurable<S> opened();

        Configurable<S> with(ProtectionDomain protectionDomain);

        Configurable<S> with(PackageDefinitionStrategy packageDefinitionStrategy);
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum WRAPPER uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes2.dex */
    public static final class Default implements Configurable<ClassLoader> {
        private static final /* synthetic */ Default[] $VALUES;
        public static final Default CHILD_FIRST;
        public static final Default CHILD_FIRST_PERSISTENT;
        private static final boolean DEFAULT_FORBID_EXISTING = true;
        public static final Default INJECTION;
        public static final Default WRAPPER;
        public static final Default WRAPPER_PERSISTENT;
        private final Configurable<ClassLoader> dispatcher;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class InjectionDispatcher implements Configurable<ClassLoader> {
            private final boolean forbidExisting;
            private final PackageDefinitionStrategy packageDefinitionStrategy;
            @MaybeNull
            @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
            private final ProtectionDomain protectionDomain;

            public InjectionDispatcher() {
                this(ClassLoadingStrategy.NO_PROTECTION_DOMAIN, PackageDefinitionStrategy.NoOp.INSTANCE, true);
            }

            @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy.Configurable
            public Configurable<ClassLoader> allowExistingTypes() {
                return new InjectionDispatcher(this.protectionDomain, this.packageDefinitionStrategy, false);
            }

            /* JADX WARN: Code restructure failed: missing block: B:20:0x002b, code lost:
                if (r2 != null) goto L24;
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
                    net.bytebuddy.dynamic.loading.ClassLoadingStrategy$Default$InjectionDispatcher r5 = (net.bytebuddy.dynamic.loading.ClassLoadingStrategy.Default.InjectionDispatcher) r5
                    boolean r3 = r5.forbidExisting
                    if (r2 == r3) goto L1c
                    return r1
                L1c:
                    java.security.ProtectionDomain r2 = r4.protectionDomain
                    java.security.ProtectionDomain r3 = r5.protectionDomain
                    if (r3 == 0) goto L2b
                    if (r2 == 0) goto L2d
                    boolean r2 = r2.equals(r3)
                    if (r2 != 0) goto L2e
                    return r1
                L2b:
                    if (r2 == 0) goto L2e
                L2d:
                    return r1
                L2e:
                    net.bytebuddy.dynamic.loading.PackageDefinitionStrategy r2 = r4.packageDefinitionStrategy
                    net.bytebuddy.dynamic.loading.PackageDefinitionStrategy r5 = r5.packageDefinitionStrategy
                    boolean r5 = r2.equals(r5)
                    if (r5 != 0) goto L39
                    return r1
                L39:
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.dynamic.loading.ClassLoadingStrategy.Default.InjectionDispatcher.equals(java.lang.Object):boolean");
            }

            public int hashCode() {
                int hashCode = getClass().hashCode() * 31;
                ProtectionDomain protectionDomain = this.protectionDomain;
                if (protectionDomain != null) {
                    hashCode += protectionDomain.hashCode();
                }
                return (((hashCode * 31) + this.packageDefinitionStrategy.hashCode()) * 31) + (this.forbidExisting ? 1 : 0);
            }

            @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy.Configurable
            public Configurable<ClassLoader> opened() {
                return this;
            }

            @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy.Configurable
            public Configurable<ClassLoader> with(ProtectionDomain protectionDomain) {
                return new InjectionDispatcher(protectionDomain, this.packageDefinitionStrategy, this.forbidExisting);
            }

            private InjectionDispatcher(@MaybeNull ProtectionDomain protectionDomain, PackageDefinitionStrategy packageDefinitionStrategy, boolean z) {
                this.protectionDomain = protectionDomain;
                this.packageDefinitionStrategy = packageDefinitionStrategy;
                this.forbidExisting = z;
            }

            @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy
            public Map<TypeDescription, Class<?>> load(@MaybeNull ClassLoader classLoader, Map<TypeDescription, byte[]> map) {
                if (classLoader != null) {
                    return new ClassInjector.UsingReflection(classLoader, this.protectionDomain, this.packageDefinitionStrategy, this.forbidExisting).inject(map);
                }
                throw new IllegalArgumentException("Cannot inject classes into the bootstrap class loader");
            }

            @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy.Configurable
            public Configurable<ClassLoader> with(PackageDefinitionStrategy packageDefinitionStrategy) {
                return new InjectionDispatcher(this.protectionDomain, packageDefinitionStrategy, this.forbidExisting);
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class WrappingDispatcher implements Configurable<ClassLoader> {
            private static final boolean CHILD_FIRST = true;
            private static final boolean PARENT_FIRST = false;
            private final boolean childFirst;
            private final boolean forbidExisting;
            private final PackageDefinitionStrategy packageDefinitionStrategy;
            private final ByteArrayClassLoader.PersistenceHandler persistenceHandler;
            @MaybeNull
            @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
            private final ProtectionDomain protectionDomain;
            private final boolean sealed;

            public WrappingDispatcher(ByteArrayClassLoader.PersistenceHandler persistenceHandler, boolean z) {
                this(ClassLoadingStrategy.NO_PROTECTION_DOMAIN, PackageDefinitionStrategy.Trivial.INSTANCE, persistenceHandler, z, true, true);
            }

            @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy.Configurable
            public Configurable<ClassLoader> allowExistingTypes() {
                return new WrappingDispatcher(this.protectionDomain, this.packageDefinitionStrategy, this.persistenceHandler, this.childFirst, false, this.sealed);
            }

            /* JADX WARN: Code restructure failed: missing block: B:29:0x0044, code lost:
                if (r2 != null) goto L33;
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
                    boolean r2 = r4.childFirst
                    net.bytebuddy.dynamic.loading.ClassLoadingStrategy$Default$WrappingDispatcher r5 = (net.bytebuddy.dynamic.loading.ClassLoadingStrategy.Default.WrappingDispatcher) r5
                    boolean r3 = r5.childFirst
                    if (r2 == r3) goto L1c
                    return r1
                L1c:
                    boolean r2 = r4.forbidExisting
                    boolean r3 = r5.forbidExisting
                    if (r2 == r3) goto L23
                    return r1
                L23:
                    boolean r2 = r4.sealed
                    boolean r3 = r5.sealed
                    if (r2 == r3) goto L2a
                    return r1
                L2a:
                    net.bytebuddy.dynamic.loading.ByteArrayClassLoader$PersistenceHandler r2 = r4.persistenceHandler
                    net.bytebuddy.dynamic.loading.ByteArrayClassLoader$PersistenceHandler r3 = r5.persistenceHandler
                    boolean r2 = r2.equals(r3)
                    if (r2 != 0) goto L35
                    return r1
                L35:
                    java.security.ProtectionDomain r2 = r4.protectionDomain
                    java.security.ProtectionDomain r3 = r5.protectionDomain
                    if (r3 == 0) goto L44
                    if (r2 == 0) goto L46
                    boolean r2 = r2.equals(r3)
                    if (r2 != 0) goto L47
                    return r1
                L44:
                    if (r2 == 0) goto L47
                L46:
                    return r1
                L47:
                    net.bytebuddy.dynamic.loading.PackageDefinitionStrategy r2 = r4.packageDefinitionStrategy
                    net.bytebuddy.dynamic.loading.PackageDefinitionStrategy r5 = r5.packageDefinitionStrategy
                    boolean r5 = r2.equals(r5)
                    if (r5 != 0) goto L52
                    return r1
                L52:
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.dynamic.loading.ClassLoadingStrategy.Default.WrappingDispatcher.equals(java.lang.Object):boolean");
            }

            public int hashCode() {
                int hashCode = getClass().hashCode() * 31;
                ProtectionDomain protectionDomain = this.protectionDomain;
                if (protectionDomain != null) {
                    hashCode += protectionDomain.hashCode();
                }
                return (((((((((hashCode * 31) + this.persistenceHandler.hashCode()) * 31) + this.packageDefinitionStrategy.hashCode()) * 31) + (this.childFirst ? 1 : 0)) * 31) + (this.forbidExisting ? 1 : 0)) * 31) + (this.sealed ? 1 : 0);
            }

            @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy.Configurable
            public Configurable<ClassLoader> opened() {
                return new WrappingDispatcher(this.protectionDomain, this.packageDefinitionStrategy, this.persistenceHandler, this.childFirst, this.forbidExisting, false);
            }

            @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy.Configurable
            public Configurable<ClassLoader> with(ProtectionDomain protectionDomain) {
                return new WrappingDispatcher(protectionDomain, this.packageDefinitionStrategy, this.persistenceHandler, this.childFirst, this.forbidExisting, this.sealed);
            }

            private WrappingDispatcher(@MaybeNull ProtectionDomain protectionDomain, PackageDefinitionStrategy packageDefinitionStrategy, ByteArrayClassLoader.PersistenceHandler persistenceHandler, boolean z, boolean z2, boolean z3) {
                this.protectionDomain = protectionDomain;
                this.packageDefinitionStrategy = packageDefinitionStrategy;
                this.persistenceHandler = persistenceHandler;
                this.childFirst = z;
                this.forbidExisting = z2;
                this.sealed = z3;
            }

            @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy
            public Map<TypeDescription, Class<?>> load(@MaybeNull ClassLoader classLoader, Map<TypeDescription, byte[]> map) {
                if (this.childFirst) {
                    return ByteArrayClassLoader.ChildFirst.load(classLoader, map, this.protectionDomain, this.persistenceHandler, this.packageDefinitionStrategy, this.forbidExisting, this.sealed);
                }
                return ByteArrayClassLoader.load(classLoader, map, this.protectionDomain, this.persistenceHandler, this.packageDefinitionStrategy, this.forbidExisting, this.sealed);
            }

            @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy.Configurable
            public Configurable<ClassLoader> with(PackageDefinitionStrategy packageDefinitionStrategy) {
                return new WrappingDispatcher(this.protectionDomain, packageDefinitionStrategy, this.persistenceHandler, this.childFirst, this.forbidExisting, this.sealed);
            }
        }

        public static Default valueOf(String str) {
            return (Default) Enum.valueOf(Default.class, str);
        }

        public static Default[] values() {
            return (Default[]) $VALUES.clone();
        }

        @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy.Configurable
        public Configurable<ClassLoader> allowExistingTypes() {
            return this.dispatcher.allowExistingTypes();
        }

        @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy
        public Map<TypeDescription, Class<?>> load(@MaybeNull ClassLoader classLoader, Map<TypeDescription, byte[]> map) {
            return this.dispatcher.load(classLoader, map);
        }

        @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy.Configurable
        public Configurable<ClassLoader> opened() {
            return this.dispatcher.opened();
        }

        @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy.Configurable
        public Configurable<ClassLoader> with(ProtectionDomain protectionDomain) {
            return this.dispatcher.with(protectionDomain);
        }

        static {
            ByteArrayClassLoader.PersistenceHandler persistenceHandler = ByteArrayClassLoader.PersistenceHandler.LATENT;
            Default r0 = new Default("WRAPPER", 0, new WrappingDispatcher(persistenceHandler, false));
            WRAPPER = r0;
            ByteArrayClassLoader.PersistenceHandler persistenceHandler2 = ByteArrayClassLoader.PersistenceHandler.MANIFEST;
            Default r1 = new Default("WRAPPER_PERSISTENT", 1, new WrappingDispatcher(persistenceHandler2, false));
            WRAPPER_PERSISTENT = r1;
            Default r4 = new Default("CHILD_FIRST", 2, new WrappingDispatcher(persistenceHandler, true));
            CHILD_FIRST = r4;
            Default r2 = new Default("CHILD_FIRST_PERSISTENT", 3, new WrappingDispatcher(persistenceHandler2, true));
            CHILD_FIRST_PERSISTENT = r2;
            Default r5 = new Default("INJECTION", 4, new InjectionDispatcher());
            INJECTION = r5;
            $VALUES = new Default[]{r0, r1, r4, r2, r5};
        }

        @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy.Configurable
        public Configurable<ClassLoader> with(PackageDefinitionStrategy packageDefinitionStrategy) {
            return this.dispatcher.with(packageDefinitionStrategy);
        }

        private Default(String str, int i, Configurable configurable) {
            this.dispatcher = configurable;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForBootstrapInjection implements ClassLoadingStrategy<ClassLoader> {
        private final File folder;
        private final Instrumentation instrumentation;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                ForBootstrapInjection forBootstrapInjection = (ForBootstrapInjection) obj;
                return this.instrumentation.equals(forBootstrapInjection.instrumentation) && this.folder.equals(forBootstrapInjection.folder);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.instrumentation.hashCode()) * 31) + this.folder.hashCode();
        }

        @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy
        public Map<TypeDescription, Class<?>> load(@MaybeNull ClassLoader classLoader, Map<TypeDescription, byte[]> map) {
            ClassInjector usingReflection;
            if (classLoader == null) {
                usingReflection = ClassInjector.UsingInstrumentation.m15150of(this.folder, ClassInjector.UsingInstrumentation.Target.BOOTSTRAP, this.instrumentation);
            } else {
                usingReflection = new ClassInjector.UsingReflection(classLoader);
            }
            return usingReflection.inject(map);
        }

        public ForBootstrapInjection(Instrumentation instrumentation, File file) {
            this.instrumentation = instrumentation;
            this.folder = file;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForJnaInjection implements ClassLoadingStrategy<ClassLoader> {
        @MaybeNull
        @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
        private final ProtectionDomain protectionDomain;

        public ForJnaInjection() {
            this(ClassLoadingStrategy.NO_PROTECTION_DOMAIN);
        }

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
                java.security.ProtectionDomain r2 = r4.protectionDomain
                net.bytebuddy.dynamic.loading.ClassLoadingStrategy$ForJnaInjection r5 = (net.bytebuddy.dynamic.loading.ClassLoadingStrategy.ForJnaInjection) r5
                java.security.ProtectionDomain r5 = r5.protectionDomain
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
            throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.dynamic.loading.ClassLoadingStrategy.ForJnaInjection.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            int hashCode = getClass().hashCode() * 31;
            ProtectionDomain protectionDomain = this.protectionDomain;
            return protectionDomain != null ? hashCode + protectionDomain.hashCode() : hashCode;
        }

        @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy
        public Map<TypeDescription, Class<?>> load(@MaybeNull ClassLoader classLoader, Map<TypeDescription, byte[]> map) {
            return new ClassInjector.UsingUnsafe(classLoader, this.protectionDomain).inject(map);
        }

        public ForJnaInjection(@MaybeNull ProtectionDomain protectionDomain) {
            this.protectionDomain = protectionDomain;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForUnsafeInjection implements ClassLoadingStrategy<ClassLoader> {
        @MaybeNull
        @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
        private final ProtectionDomain protectionDomain;

        public ForUnsafeInjection() {
            this(ClassLoadingStrategy.NO_PROTECTION_DOMAIN);
        }

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
                java.security.ProtectionDomain r2 = r4.protectionDomain
                net.bytebuddy.dynamic.loading.ClassLoadingStrategy$ForUnsafeInjection r5 = (net.bytebuddy.dynamic.loading.ClassLoadingStrategy.ForUnsafeInjection) r5
                java.security.ProtectionDomain r5 = r5.protectionDomain
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
            throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.dynamic.loading.ClassLoadingStrategy.ForUnsafeInjection.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            int hashCode = getClass().hashCode() * 31;
            ProtectionDomain protectionDomain = this.protectionDomain;
            return protectionDomain != null ? hashCode + protectionDomain.hashCode() : hashCode;
        }

        @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy
        public Map<TypeDescription, Class<?>> load(@MaybeNull ClassLoader classLoader, Map<TypeDescription, byte[]> map) {
            return new ClassInjector.UsingUnsafe(classLoader, this.protectionDomain).inject(map);
        }

        public ForUnsafeInjection(@MaybeNull ProtectionDomain protectionDomain) {
            this.protectionDomain = protectionDomain;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class UsingLookup implements ClassLoadingStrategy<ClassLoader> {
        private final ClassInjector classInjector;

        /* renamed from: of */
        public static ClassLoadingStrategy<ClassLoader> m15142of(Object obj) {
            return new UsingLookup(ClassInjector.UsingLookup.m15148of(obj));
        }

        public static ClassLoadingStrategy<ClassLoader> withFallback(Callable<?> callable) {
            return withFallback(callable, false);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.classInjector.equals(((UsingLookup) obj).classInjector);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.classInjector.hashCode();
        }

        @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy
        public Map<TypeDescription, Class<?>> load(@MaybeNull ClassLoader classLoader, Map<TypeDescription, byte[]> map) {
            return this.classInjector.inject(map);
        }

        public static ClassLoadingStrategy<ClassLoader> withFallback(Callable<?> callable, boolean z) {
            if (ClassInjector.UsingLookup.isAvailable()) {
                try {
                    return m15142of(callable.call());
                } catch (Exception e) {
                    throw new IllegalStateException(e);
                }
            } else if (ClassInjector.UsingUnsafe.isAvailable()) {
                return new ForUnsafeInjection();
            } else {
                if (z) {
                    return Default.WRAPPER;
                }
                throw new IllegalStateException("Neither lookup or unsafe class injection is available");
            }
        }

        public UsingLookup(ClassInjector classInjector) {
            this.classInjector = classInjector;
        }
    }

    Map<TypeDescription, Class<?>> load(@MaybeNull T t, Map<TypeDescription, byte[]> map);
}
