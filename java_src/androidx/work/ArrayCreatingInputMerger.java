package androidx.work;

import androidx.work.C0380b;
import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p209w0.AbstractC7111h;
/* loaded from: classes.dex */
public final class ArrayCreatingInputMerger extends AbstractC7111h {
    @Override // p209w0.AbstractC7111h
    /* renamed from: b */
    public C0380b mo2495b(List<C0380b> list) {
        C0380b.C0381a c0381a = new C0380b.C0381a();
        HashMap hashMap = new HashMap();
        for (C0380b c0380b : list) {
            for (Map.Entry<String, Object> entry : c0380b.m26659i().entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                Class<?> cls = value.getClass();
                Object obj = hashMap.get(key);
                if (obj == null) {
                    if (!cls.isArray()) {
                        value = m26702f(value);
                    }
                } else {
                    Class<?> cls2 = obj.getClass();
                    if (cls2.equals(cls)) {
                        if (cls2.isArray()) {
                            value = m26704d(obj, value);
                        } else {
                            value = m26703e(obj, value);
                        }
                    } else if (cls2.isArray() && cls2.getComponentType().equals(cls)) {
                        value = m26705c(obj, value);
                    } else if (cls.isArray() && cls.getComponentType().equals(cls2)) {
                        value = m26705c(value, obj);
                    } else {
                        throw new IllegalArgumentException();
                    }
                }
                hashMap.put(key, value);
            }
        }
        c0381a.m26652d(hashMap);
        return c0381a.m26655a();
    }

    /* renamed from: c */
    public final Object m26705c(Object obj, Object obj2) {
        int length = Array.getLength(obj);
        Object newInstance = Array.newInstance(obj2.getClass(), length + 1);
        System.arraycopy(obj, 0, newInstance, 0, length);
        Array.set(newInstance, length, obj2);
        return newInstance;
    }

    /* renamed from: d */
    public final Object m26704d(Object obj, Object obj2) {
        int length = Array.getLength(obj);
        int length2 = Array.getLength(obj2);
        Object newInstance = Array.newInstance(obj.getClass().getComponentType(), length + length2);
        System.arraycopy(obj, 0, newInstance, 0, length);
        System.arraycopy(obj2, 0, newInstance, length, length2);
        return newInstance;
    }

    /* renamed from: e */
    public final Object m26703e(Object obj, Object obj2) {
        Object newInstance = Array.newInstance(obj.getClass(), 2);
        Array.set(newInstance, 0, obj);
        Array.set(newInstance, 1, obj2);
        return newInstance;
    }

    /* renamed from: f */
    public final Object m26702f(Object obj) {
        Object newInstance = Array.newInstance(obj.getClass(), 1);
        Array.set(newInstance, 0, obj);
        return newInstance;
    }
}
