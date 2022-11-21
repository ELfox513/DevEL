package com.badlogic.gdx.utils;
/* loaded from: classes.dex */
public class Pools {

    /* renamed from: a */
    public static final ObjectMap<Class, Pool> f6705a = new ObjectMap<>();

    public static void freeAll(Array array) {
        freeAll(array, false);
    }

    public static <T> Pool<T> get(Class<T> cls, int i) {
        ObjectMap<Class, Pool> objectMap = f6705a;
        Pool<T> pool = objectMap.get(cls);
        if (pool == null) {
            ReflectionPool reflectionPool = new ReflectionPool(cls, 4, i);
            objectMap.put(cls, reflectionPool);
            return reflectionPool;
        }
        return pool;
    }

    public static <T> T obtain(Class<T> cls) {
        return (T) get(cls).obtain();
    }

    public static <T> void set(Class<T> cls, Pool<T> pool) {
        f6705a.put(cls, pool);
    }

    public static void free(Object obj) {
        if (obj != null) {
            Pool pool = f6705a.get(obj.getClass());
            if (pool == null) {
                return;
            }
            pool.free(obj);
            return;
        }
        throw new IllegalArgumentException("object cannot be null.");
    }

    public static void freeAll(Array array, boolean z) {
        if (array != null) {
            int i = array.size;
            Pool pool = null;
            for (int i2 = 0; i2 < i; i2++) {
                Object obj = array.get(i2);
                if (obj != null && (pool != null || (pool = f6705a.get(obj.getClass())) != null)) {
                    pool.free(obj);
                    if (!z) {
                        pool = null;
                    }
                }
            }
            return;
        }
        throw new IllegalArgumentException("objects cannot be null.");
    }

    public static <T> Pool<T> get(Class<T> cls) {
        return get(cls, 100);
    }
}
