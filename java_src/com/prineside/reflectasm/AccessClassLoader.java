package com.prineside.reflectasm;

import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.security.ProtectionDomain;
import java.util.HashMap;
import java.util.HashSet;
import java.util.WeakHashMap;
import net.bytebuddy.description.annotation.AnnotationList;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.field.FieldList;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.type.PackageDescription;
import net.bytebuddy.description.type.RecordComponentDescription;
import net.bytebuddy.description.type.RecordComponentList;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.dynamic.loading.ClassLoadingStrategy;
/* loaded from: classes2.dex */
class AccessClassLoader extends ClassLoader {

    /* renamed from: b */
    public static final WeakHashMap<ClassLoader, WeakReference<AccessClassLoader>> f8383b = new WeakHashMap<>();

    /* renamed from: c */
    public static final ClassLoader f8384c;

    /* renamed from: d */
    public static volatile AccessClassLoader f8385d;

    /* renamed from: e */
    public static volatile Method f8386e;

    /* renamed from: a */
    public final HashSet<String> f8387a;

    static {
        ClassLoader m22230f = m22230f(AccessClassLoader.class);
        f8384c = m22230f;
        f8385d = new AccessClassLoader(m22230f);
    }

    public static int activeAccessClassLoaders() {
        int size = f8383b.size();
        if (f8385d != null) {
            return size + 1;
        }
        return size;
    }

    /* renamed from: e */
    public static Method m22231e() {
        if (f8386e == null) {
            synchronized (f8383b) {
                if (f8386e == null) {
                    Class cls = Integer.TYPE;
                    f8386e = ClassLoader.class.getDeclaredMethod("defineClass", String.class, byte[].class, cls, cls, ProtectionDomain.class);
                    try {
                        f8386e.setAccessible(true);
                    } catch (Exception unused) {
                    }
                }
            }
        }
        return f8386e;
    }

    public static void remove(ClassLoader classLoader) {
        if (f8384c.equals(classLoader)) {
            f8385d = null;
            return;
        }
        WeakHashMap<ClassLoader, WeakReference<AccessClassLoader>> weakHashMap = f8383b;
        synchronized (weakHashMap) {
            weakHashMap.remove(classLoader);
        }
    }

    /* renamed from: b */
    public Class m22234b(String str, byte[] bArr) {
        this.f8387a.add(str);
        return m22233c(str, bArr);
    }

    /* renamed from: g */
    public Class m22229g(String str) {
        if (this.f8387a.contains(str)) {
            try {
                return loadClass(str, false);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
        return null;
    }

    @Override // java.lang.ClassLoader
    public Class<?> loadClass(String str, boolean z) {
        if (str.equals(FieldAccess.class.getName())) {
            return FieldAccess.class;
        }
        if (str.equals(MethodAccess.class.getName())) {
            return MethodAccess.class;
        }
        if (str.equals(ConstructorAccess.class.getName())) {
            return ConstructorAccess.class;
        }
        return str.equals(PublicConstructorAccess.class.getName()) ? PublicConstructorAccess.class : super.loadClass(str, z);
    }

    public AccessClassLoader(ClassLoader classLoader) {
        super(classLoader);
        this.f8387a = new HashSet<>();
    }

    /* renamed from: a */
    public static boolean m22235a(Class cls, Class cls2) {
        if (cls.getPackage() != cls2.getPackage()) {
            return false;
        }
        ClassLoader classLoader = cls.getClassLoader();
        ClassLoader classLoader2 = cls2.getClassLoader();
        ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
        if (classLoader == null) {
            if (classLoader2 != null && classLoader2 != systemClassLoader) {
                return false;
            }
            return true;
        } else if (classLoader2 == null) {
            if (classLoader != systemClassLoader) {
                return false;
            }
            return true;
        } else if (classLoader != classLoader2) {
            return false;
        } else {
            return true;
        }
    }

    /* renamed from: d */
    public static AccessClassLoader m22232d(Class cls) {
        ClassLoader m22230f = m22230f(cls);
        ClassLoader classLoader = f8384c;
        if (classLoader.equals(m22230f)) {
            if (f8385d == null) {
                synchronized (f8383b) {
                    if (f8385d == null) {
                        f8385d = new AccessClassLoader(classLoader);
                    }
                }
            }
            return f8385d;
        }
        WeakHashMap<ClassLoader, WeakReference<AccessClassLoader>> weakHashMap = f8383b;
        synchronized (weakHashMap) {
            WeakReference<AccessClassLoader> weakReference = weakHashMap.get(m22230f);
            if (weakReference != null) {
                AccessClassLoader accessClassLoader = weakReference.get();
                if (accessClassLoader != null) {
                    return accessClassLoader;
                }
                weakHashMap.remove(m22230f);
            }
            AccessClassLoader accessClassLoader2 = new AccessClassLoader(m22230f);
            weakHashMap.put(m22230f, new WeakReference<>(accessClassLoader2));
            return accessClassLoader2;
        }
    }

    /* renamed from: f */
    public static ClassLoader m22230f(Class cls) {
        ClassLoader classLoader = cls.getClassLoader();
        if (classLoader == null) {
            return ClassLoader.getSystemClassLoader();
        }
        return classLoader;
    }

    /* renamed from: c */
    public Class<?> m22233c(final String str, byte[] bArr) {
        try {
            return (Class) m22231e().invoke(getParent(), str, bArr, 0, Integer.valueOf(bArr.length), getClass().getProtectionDomain());
        } catch (Exception unused) {
            try {
                return defineClass(str, bArr, 0, bArr.length, getClass().getProtectionDomain());
            } catch (Exception e) {
                Logger.log("AccessClassLoader", "failed to define class in a regular way, using ByteBuddy ClassLoadingStrategy");
                ClassLoadingStrategy byteBuddyClassLoadingStrategy = Game.f8589i.actionResolver.getByteBuddyClassLoadingStrategy();
                if (byteBuddyClassLoadingStrategy != null) {
                    HashMap hashMap = new HashMap();
                    TypeDescription.AbstractBase.OfSimpleType ofSimpleType = new TypeDescription.AbstractBase.OfSimpleType() { // from class: com.prineside.reflectasm.AccessClassLoader.1
                        @Override // net.bytebuddy.description.annotation.AnnotationSource
                        public AnnotationList getDeclaredAnnotations() {
                            return null;
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
                        public FieldList<FieldDescription.InDefinedShape> getDeclaredFields() {
                            return null;
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
                        public MethodList<MethodDescription.InDefinedShape> getDeclaredMethods() {
                            return null;
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription
                        public TypeList getDeclaredTypes() {
                            return null;
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.DeclaredByType
                        public TypeDescription getDeclaringType() {
                            return null;
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription
                        public MethodDescription.InDefinedShape getEnclosingMethod() {
                            return null;
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription
                        public TypeDescription getEnclosingType() {
                            return null;
                        }

                        @Override // net.bytebuddy.description.type.TypeDefinition
                        public TypeList.Generic getInterfaces() {
                            return null;
                        }

                        @Override // net.bytebuddy.description.ModifierReviewable
                        public int getModifiers() {
                            return 0;
                        }

                        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
                        public String getName() {
                            return str;
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription
                        public TypeDescription getNestHost() {
                            return null;
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription
                        public TypeList getNestMembers() {
                            return null;
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription
                        public PackageDescription getPackage() {
                            return null;
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription
                        public TypeList getPermittedSubtypes() {
                            return null;
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
                        public RecordComponentList<RecordComponentDescription.InDefinedShape> getRecordComponents() {
                            return null;
                        }

                        @Override // net.bytebuddy.description.type.TypeDefinition
                        public TypeDescription.Generic getSuperClass() {
                            return null;
                        }

                        @Override // net.bytebuddy.description.TypeVariableSource
                        public TypeList.Generic getTypeVariables() {
                            return null;
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription
                        public boolean isAnonymousType() {
                            return false;
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription
                        public boolean isLocalType() {
                            return false;
                        }

                        @Override // net.bytebuddy.description.type.TypeDefinition
                        public boolean isRecord() {
                            return false;
                        }
                    };
                    hashMap.put(ofSimpleType, bArr);
                    Class<?> cls = byteBuddyClassLoadingStrategy.load(AccessClassLoader.class.getClassLoader(), hashMap).get(ofSimpleType);
                    Logger.log("AccessClassLoader", "created new class: " + cls);
                    return cls;
                }
                throw new IllegalStateException("Failed to define class in a regular way and no ClassLoadingStrategy provided by ActionResolver", e);
            }
        }
    }
}
