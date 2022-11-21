package net.bytebuddy;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import net.bytebuddy.build.CachedReturnPlugin;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public class TypeCache<T> extends ReferenceQueue<ClassLoader> {
    @AlwaysNull
    private static final Class<?> NOT_FOUND = null;
    public final ConcurrentMap<StorageKey, ConcurrentMap<T, Object>> cache;
    public final Sort sort;

    /* loaded from: classes2.dex */
    public static class SimpleKey {
        private transient /* synthetic */ int hashCode;
        private final Set<String> types;

        public SimpleKey(Class<?> cls, Class<?>... clsArr) {
            this(cls, Arrays.asList(clsArr));
        }

        @CachedReturnPlugin.Enhance("hashCode")
        public int hashCode() {
            int hashCode = this.hashCode != 0 ? 0 : this.types.hashCode();
            if (hashCode == 0) {
                return this.hashCode;
            }
            this.hashCode = hashCode;
            return hashCode;
        }

        public SimpleKey(Class<?> cls, Collection<? extends Class<?>> collection) {
            this(CompoundList.m14778of(cls, new ArrayList(collection)));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                return this.types.equals(((SimpleKey) obj).types);
            }
            return false;
        }

        public SimpleKey(Collection<? extends Class<?>> collection) {
            this.types = new HashSet();
            for (Class<?> cls : collection) {
                this.types.add(cls.getName());
            }
        }
    }

    /* loaded from: classes2.dex */
    public enum Sort {
        WEAK { // from class: net.bytebuddy.TypeCache.Sort.1
            @Override // net.bytebuddy.TypeCache.Sort
            public /* bridge */ /* synthetic */ Object wrap(Class cls) {
                return wrap((Class<?>) cls);
            }

            @Override // net.bytebuddy.TypeCache.Sort
            public Reference<Class<?>> wrap(Class<?> cls) {
                return new WeakReference(cls);
            }
        },
        SOFT { // from class: net.bytebuddy.TypeCache.Sort.2
            @Override // net.bytebuddy.TypeCache.Sort
            public /* bridge */ /* synthetic */ Object wrap(Class cls) {
                return wrap((Class<?>) cls);
            }

            @Override // net.bytebuddy.TypeCache.Sort
            public Reference<Class<?>> wrap(Class<?> cls) {
                return new SoftReference(cls);
            }
        },
        STRONG { // from class: net.bytebuddy.TypeCache.Sort.3
            @Override // net.bytebuddy.TypeCache.Sort
            public Class<?> wrap(Class<?> cls) {
                return cls;
            }

            @Override // net.bytebuddy.TypeCache.Sort
            public /* bridge */ /* synthetic */ Object wrap(Class cls) {
                return wrap((Class<?>) cls);
            }
        };

        public abstract Object wrap(Class<?> cls);
    }

    /* loaded from: classes2.dex */
    public static class WithInlineExpunction<S> extends TypeCache<S> {
        public WithInlineExpunction() {
            this(Sort.STRONG);
        }

        @Override // net.bytebuddy.TypeCache
        public Class<?> findOrInsert(ClassLoader classLoader, S s, Callable<Class<?>> callable) {
            try {
                return super.findOrInsert(classLoader, s, callable);
            } finally {
                expungeStaleEntries();
            }
        }

        public WithInlineExpunction(Sort sort) {
            super(sort);
        }

        @Override // net.bytebuddy.TypeCache
        public Class<?> find(@MaybeNull ClassLoader classLoader, S s) {
            try {
                return super.find(classLoader, s);
            } finally {
                expungeStaleEntries();
            }
        }

        @Override // net.bytebuddy.TypeCache
        public Class<?> insert(@MaybeNull ClassLoader classLoader, S s, Class<?> cls) {
            try {
                return super.insert(classLoader, s, cls);
            } finally {
                expungeStaleEntries();
            }
        }

        @Override // net.bytebuddy.TypeCache
        public Class<?> findOrInsert(@MaybeNull ClassLoader classLoader, S s, Callable<Class<?>> callable, Object obj) {
            try {
                return super.findOrInsert(classLoader, s, callable, obj);
            } finally {
                expungeStaleEntries();
            }
        }
    }

    public TypeCache() {
        this(Sort.STRONG);
    }

    public void clear() {
        this.cache.clear();
    }

    public Class<?> findOrInsert(ClassLoader classLoader, T t, Callable<Class<?>> callable) {
        Class<?> find = find(classLoader, t);
        if (find != null) {
            return find;
        }
        try {
            return insert(classLoader, t, callable.call());
        } catch (Throwable th) {
            throw new IllegalArgumentException("Could not create type", th);
        }
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

        public StorageKey(@MaybeNull ClassLoader classLoader, ReferenceQueue<? super ClassLoader> referenceQueue) {
            super(classLoader, referenceQueue);
            this.hashCode = System.identityHashCode(classLoader);
        }
    }

    public TypeCache(Sort sort) {
        this.sort = sort;
        this.cache = new ConcurrentHashMap();
    }

    @SuppressFBWarnings(justification = "Cross-comparison is intended.", value = {"GC_UNRELATED_TYPES"})
    @MaybeNull
    public Class<?> find(@MaybeNull ClassLoader classLoader, T t) {
        ConcurrentMap<T, Object> concurrentMap = this.cache.get(new LookupKey(classLoader));
        if (concurrentMap == null) {
            return NOT_FOUND;
        }
        Object obj = concurrentMap.get(t);
        if (obj == null) {
            return NOT_FOUND;
        }
        if (obj instanceof Reference) {
            return (Class) ((Reference) obj).get();
        }
        return (Class) obj;
    }

    @SuppressFBWarnings(justification = "Cross-comparison is intended.", value = {"GC_UNRELATED_TYPES"})
    public Class<?> insert(@MaybeNull ClassLoader classLoader, T t, Class<?> cls) {
        Object obj;
        ConcurrentMap<T, Object> putIfAbsent;
        ConcurrentMap<T, Object> concurrentMap = this.cache.get(new LookupKey(classLoader));
        if (concurrentMap == null && (putIfAbsent = this.cache.putIfAbsent(new StorageKey(classLoader, this), (concurrentMap = new ConcurrentHashMap<>()))) != null) {
            concurrentMap = putIfAbsent;
        }
        Object wrap = this.sort.wrap(cls);
        Object putIfAbsent2 = concurrentMap.putIfAbsent(t, wrap);
        while (putIfAbsent2 != null) {
            if (putIfAbsent2 instanceof Reference) {
                obj = ((Reference) putIfAbsent2).get();
            } else {
                obj = putIfAbsent2;
            }
            Class<?> cls2 = (Class) obj;
            if (cls2 != null) {
                return cls2;
            }
            if (concurrentMap.remove(t, putIfAbsent2)) {
                putIfAbsent2 = concurrentMap.putIfAbsent(t, wrap);
            } else {
                putIfAbsent2 = concurrentMap.get(t);
                if (putIfAbsent2 == null) {
                    putIfAbsent2 = concurrentMap.putIfAbsent(t, wrap);
                }
            }
        }
        return cls;
    }

    public void expungeStaleEntries() {
        while (true) {
            Reference<? extends T> poll = poll();
            if (poll != null) {
                this.cache.remove(poll);
            } else {
                return;
            }
        }
    }

    public Class<?> findOrInsert(@MaybeNull ClassLoader classLoader, T t, Callable<Class<?>> callable, Object obj) {
        Class<?> findOrInsert;
        Class<?> find = find(classLoader, t);
        if (find != null) {
            return find;
        }
        synchronized (obj) {
            findOrInsert = findOrInsert(classLoader, t, callable);
        }
        return findOrInsert;
    }
}
