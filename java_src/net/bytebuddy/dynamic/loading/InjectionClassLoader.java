package net.bytebuddy.dynamic.loading;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public abstract class InjectionClassLoader extends ClassLoader {
    private final AtomicBoolean sealed;

    /* loaded from: classes2.dex */
    public enum Strategy implements ClassLoadingStrategy<InjectionClassLoader> {
        INSTANCE;

        @Override // net.bytebuddy.dynamic.loading.ClassLoadingStrategy
        public /* bridge */ /* synthetic */ Map load(@MaybeNull InjectionClassLoader injectionClassLoader, Map map) {
            return load2(injectionClassLoader, (Map<TypeDescription, byte[]>) map);
        }

        /* renamed from: load  reason: avoid collision after fix types in other method */
        public Map<TypeDescription, Class<?>> load2(@MaybeNull InjectionClassLoader injectionClassLoader, Map<TypeDescription, byte[]> map) {
            if (injectionClassLoader != null) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                HashMap hashMap = new HashMap();
                for (Map.Entry<TypeDescription, byte[]> entry : map.entrySet()) {
                    linkedHashMap.put(entry.getKey().getName(), entry.getValue());
                    hashMap.put(entry.getKey().getName(), entry.getKey());
                }
                HashMap hashMap2 = new HashMap();
                try {
                    for (Map.Entry<String, Class<?>> entry2 : injectionClassLoader.defineClasses(linkedHashMap).entrySet()) {
                        hashMap2.put(hashMap.get(entry2.getKey()), entry2.getValue());
                    }
                    return hashMap2;
                } catch (ClassNotFoundException e) {
                    throw new IllegalStateException("Cannot load classes: " + map, e);
                }
            }
            throw new IllegalArgumentException("Cannot add types to bootstrap class loader: " + map);
        }
    }

    static {
        doRegisterAsParallelCapable();
    }

    public Class<?> defineClass(String str, byte[] bArr) {
        return defineClasses(Collections.singletonMap(str, bArr)).get(str);
    }

    public abstract Map<String, Class<?>> doDefineClasses(Map<String, byte[]> map);

    public boolean isSealed() {
        return this.sealed.get();
    }

    public boolean seal() {
        return !this.sealed.getAndSet(true);
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

    public Map<String, Class<?>> defineClasses(Map<String, byte[]> map) {
        if (!this.sealed.get()) {
            return doDefineClasses(map);
        }
        throw new IllegalStateException("Cannot inject classes into a sealed class loader");
    }

    public InjectionClassLoader(@MaybeNull ClassLoader classLoader, boolean z) {
        super(classLoader);
        this.sealed = new AtomicBoolean(z);
    }
}
