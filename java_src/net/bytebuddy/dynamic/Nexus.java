package net.bytebuddy.dynamic;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public class Nexus extends WeakReference<ClassLoader> {
    @AlwaysNull
    private static final ReferenceQueue<ClassLoader> NO_QUEUE = null;
    public static final String PROPERTY = "net.bytebuddy.nexus.disabled";
    private static final ConcurrentMap<Nexus, Object> TYPE_INITIALIZERS = new ConcurrentHashMap();
    private final int classLoaderHashCode;
    private final int identification;
    private final String name;

    private Nexus(Class<?> cls, int i) {
        this(nonAnonymous(cls.getName()), cls.getClassLoader(), NO_QUEUE, i);
    }

    public static void clean(Reference<? super ClassLoader> reference) {
        TYPE_INITIALIZERS.remove(reference);
    }

    public static void register(String str, @MaybeNull ClassLoader classLoader, @MaybeNull ReferenceQueue<? super ClassLoader> referenceQueue, int i, Object obj) {
        TYPE_INITIALIZERS.put(new Nexus(str, classLoader, referenceQueue, i), obj);
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Nexus nexus = (Nexus) obj;
        return this.classLoaderHashCode == nexus.classLoaderHashCode && this.identification == nexus.identification && this.name.equals(nexus.name) && get() == nexus.get();
    }

    private Nexus(String str, @MaybeNull ClassLoader classLoader, @MaybeNull ReferenceQueue<? super ClassLoader> referenceQueue, int i) {
        super(classLoader, classLoader == null ? null : referenceQueue);
        this.name = str;
        this.classLoaderHashCode = System.identityHashCode(classLoader);
        this.identification = i;
    }

    public static void initialize(Class<?> cls, int i) {
        Object remove = TYPE_INITIALIZERS.remove(new Nexus(cls, i));
        if (remove != null) {
            Class.forName("net.bytebuddy.implementation.LoadedTypeInitializer", true, remove.getClass().getClassLoader()).getMethod("onLoad", Class.class).invoke(remove, cls);
        }
    }

    private static String nonAnonymous(String str) {
        int indexOf = str.indexOf(47);
        if (indexOf != -1) {
            return str.substring(0, indexOf);
        }
        return str;
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + this.classLoaderHashCode) * 31) + this.identification;
    }

    public String toString() {
        return "Nexus{name='" + this.name + "', classLoaderHashCode=" + this.classLoaderHashCode + ", identification=" + this.identification + ", classLoader=" + get() + '}';
    }
}
