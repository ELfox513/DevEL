package com.esotericsoftware.reflectasm;

import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.security.ProtectionDomain;
import java.util.HashSet;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
class AccessClassLoader extends ClassLoader {

    /* renamed from: b */
    public static final WeakHashMap<ClassLoader, WeakReference<AccessClassLoader>> f7602b = new WeakHashMap<>();

    /* renamed from: c */
    public static final ClassLoader f7603c;

    /* renamed from: d */
    public static volatile AccessClassLoader f7604d;

    /* renamed from: e */
    public static volatile Method f7605e;

    /* renamed from: a */
    public final HashSet<String> f7606a;

    static {
        ClassLoader m23119f = m23119f(AccessClassLoader.class);
        f7603c = m23119f;
        f7604d = new AccessClassLoader(m23119f);
    }

    public static int activeAccessClassLoaders() {
        int size = f7602b.size();
        if (f7604d != null) {
            return size + 1;
        }
        return size;
    }

    /* renamed from: e */
    public static Method m23120e() {
        if (f7605e == null) {
            synchronized (f7602b) {
                if (f7605e == null) {
                    Class cls = Integer.TYPE;
                    f7605e = ClassLoader.class.getDeclaredMethod("defineClass", String.class, byte[].class, cls, cls, ProtectionDomain.class);
                    try {
                        f7605e.setAccessible(true);
                    } catch (Exception unused) {
                    }
                }
            }
        }
        return f7605e;
    }

    public static void remove(ClassLoader classLoader) {
        if (f7603c.equals(classLoader)) {
            f7604d = null;
            return;
        }
        WeakHashMap<ClassLoader, WeakReference<AccessClassLoader>> weakHashMap = f7602b;
        synchronized (weakHashMap) {
            weakHashMap.remove(classLoader);
        }
    }

    /* renamed from: b */
    public Class m23123b(String str, byte[] bArr) {
        this.f7606a.add(str);
        return m23122c(str, bArr);
    }

    /* renamed from: g */
    public Class m23118g(String str) {
        if (this.f7606a.contains(str)) {
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
        this.f7606a = new HashSet<>();
    }

    /* renamed from: a */
    public static boolean m23124a(Class cls, Class cls2) {
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
    public static AccessClassLoader m23121d(Class cls) {
        ClassLoader m23119f = m23119f(cls);
        ClassLoader classLoader = f7603c;
        if (classLoader.equals(m23119f)) {
            if (f7604d == null) {
                synchronized (f7602b) {
                    if (f7604d == null) {
                        f7604d = new AccessClassLoader(classLoader);
                    }
                }
            }
            return f7604d;
        }
        WeakHashMap<ClassLoader, WeakReference<AccessClassLoader>> weakHashMap = f7602b;
        synchronized (weakHashMap) {
            WeakReference<AccessClassLoader> weakReference = weakHashMap.get(m23119f);
            if (weakReference != null) {
                AccessClassLoader accessClassLoader = weakReference.get();
                if (accessClassLoader != null) {
                    return accessClassLoader;
                }
                weakHashMap.remove(m23119f);
            }
            AccessClassLoader accessClassLoader2 = new AccessClassLoader(m23119f);
            weakHashMap.put(m23119f, new WeakReference<>(accessClassLoader2));
            return accessClassLoader2;
        }
    }

    /* renamed from: f */
    public static ClassLoader m23119f(Class cls) {
        ClassLoader classLoader = cls.getClassLoader();
        if (classLoader == null) {
            return ClassLoader.getSystemClassLoader();
        }
        return classLoader;
    }

    /* renamed from: c */
    public Class<?> m23122c(String str, byte[] bArr) {
        try {
            return (Class) m23120e().invoke(getParent(), str, bArr, 0, Integer.valueOf(bArr.length), getClass().getProtectionDomain());
        } catch (Exception unused) {
            return defineClass(str, bArr, 0, bArr.length, getClass().getProtectionDomain());
        }
    }
}
