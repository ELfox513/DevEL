package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.bytebuddy.utility.JavaConstant;
/* renamed from: androidx.lifecycle.k */
/* loaded from: classes.dex */
public class C0328k {

    /* renamed from: a */
    public static Map<Class, Integer> f1238a = new HashMap();

    /* renamed from: b */
    public static Map<Class, List<Constructor<? extends InterfaceC0316c>>> f1239b = new HashMap();

    /* renamed from: a */
    public static InterfaceC0316c m26776a(Constructor<? extends InterfaceC0316c> constructor, Object obj) {
        try {
            return constructor.newInstance(obj);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    /* renamed from: c */
    public static String m26774c(String str) {
        return str.replace(".", JavaConstant.Dynamic.DEFAULT_NAME) + "_LifecycleAdapter";
    }

    /* renamed from: e */
    public static boolean m26772e(Class<?> cls) {
        return cls != null && InterfaceC0321f.class.isAssignableFrom(cls);
    }

    /* renamed from: d */
    public static int m26773d(Class<?> cls) {
        Integer num = f1238a.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int m26770g = m26770g(cls);
        f1238a.put(cls, Integer.valueOf(m26770g));
        return m26770g;
    }

    /* renamed from: f */
    public static InterfaceC0320e m26771f(Object obj) {
        boolean z = obj instanceof InterfaceC0320e;
        boolean z2 = obj instanceof InterfaceC0315b;
        if (z && z2) {
            return new FullLifecycleObserverAdapter((InterfaceC0315b) obj, (InterfaceC0320e) obj);
        }
        if (z2) {
            return new FullLifecycleObserverAdapter((InterfaceC0315b) obj, null);
        }
        if (z) {
            return (InterfaceC0320e) obj;
        }
        Class<?> cls = obj.getClass();
        if (m26773d(cls) == 2) {
            List<Constructor<? extends InterfaceC0316c>> list = f1239b.get(cls);
            if (list.size() == 1) {
                return new SingleGeneratedAdapterObserver(m26776a(list.get(0), obj));
            }
            InterfaceC0316c[] interfaceC0316cArr = new InterfaceC0316c[list.size()];
            for (int i = 0; i < list.size(); i++) {
                interfaceC0316cArr[i] = m26776a(list.get(i), obj);
            }
            return new CompositeGeneratedAdaptersObserver(interfaceC0316cArr);
        }
        return new ReflectiveGenericLifecycleObserver(obj);
    }

    /* renamed from: b */
    public static Constructor<? extends InterfaceC0316c> m26775b(Class<?> cls) {
        String str;
        try {
            Package r0 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            if (r0 != null) {
                str = r0.getName();
            } else {
                str = "";
            }
            if (!str.isEmpty()) {
                canonicalName = canonicalName.substring(str.length() + 1);
            }
            String m26774c = m26774c(canonicalName);
            if (!str.isEmpty()) {
                m26774c = str + "." + m26774c;
            }
            Constructor declaredConstructor = Class.forName(m26774c).getDeclaredConstructor(cls);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return declaredConstructor;
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: g */
    public static int m26770g(Class<?> cls) {
        Class<?>[] interfaces;
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends InterfaceC0316c> m26775b = m26775b(cls);
        if (m26775b != null) {
            f1239b.put(cls, Collections.singletonList(m26775b));
            return 2;
        } else if (C0312a.f1212c.m26808d(cls)) {
            return 1;
        } else {
            Class<? super Object> superclass = cls.getSuperclass();
            ArrayList arrayList = null;
            if (m26772e(superclass)) {
                if (m26773d(superclass) == 1) {
                    return 1;
                }
                arrayList = new ArrayList(f1239b.get(superclass));
            }
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (m26772e(cls2)) {
                    if (m26773d(cls2) == 1) {
                        return 1;
                    }
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.addAll(f1239b.get(cls2));
                }
            }
            if (arrayList == null) {
                return 1;
            }
            f1239b.put(cls, arrayList);
            return 2;
        }
    }
}
