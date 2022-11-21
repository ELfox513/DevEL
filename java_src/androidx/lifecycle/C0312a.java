package androidx.lifecycle;

import androidx.lifecycle.AbstractC0317d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.lifecycle.a */
/* loaded from: classes.dex */
public class C0312a {

    /* renamed from: c */
    public static C0312a f1212c = new C0312a();

    /* renamed from: a */
    public final Map<Class, C0313a> f1213a = new HashMap();

    /* renamed from: b */
    public final Map<Class, Boolean> f1214b = new HashMap();

    /* renamed from: androidx.lifecycle.a$a */
    /* loaded from: classes.dex */
    public static class C0313a {

        /* renamed from: a */
        public final Map<AbstractC0317d.EnumC0318a, List<C0314b>> f1215a = new HashMap();

        /* renamed from: b */
        public final Map<C0314b, AbstractC0317d.EnumC0318a> f1216b;

        /* renamed from: b */
        public static void m26805b(List<C0314b> list, InterfaceC0322g interfaceC0322g, AbstractC0317d.EnumC0318a enumC0318a, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).m26804a(interfaceC0322g, enumC0318a, obj);
                }
            }
        }

        /* renamed from: a */
        public void m26806a(InterfaceC0322g interfaceC0322g, AbstractC0317d.EnumC0318a enumC0318a, Object obj) {
            m26805b(this.f1215a.get(enumC0318a), interfaceC0322g, enumC0318a, obj);
            m26805b(this.f1215a.get(AbstractC0317d.EnumC0318a.ON_ANY), interfaceC0322g, enumC0318a, obj);
        }

        public C0313a(Map<C0314b, AbstractC0317d.EnumC0318a> map) {
            this.f1216b = map;
            for (Map.Entry<C0314b, AbstractC0317d.EnumC0318a> entry : map.entrySet()) {
                AbstractC0317d.EnumC0318a value = entry.getValue();
                List<C0314b> list = this.f1215a.get(value);
                if (list == null) {
                    list = new ArrayList<>();
                    this.f1215a.put(value, list);
                }
                list.add(entry.getKey());
            }
        }
    }

    /* renamed from: androidx.lifecycle.a$b */
    /* loaded from: classes.dex */
    public static class C0314b {

        /* renamed from: a */
        public final int f1217a;

        /* renamed from: b */
        public final Method f1218b;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C0314b c0314b = (C0314b) obj;
            return this.f1217a == c0314b.f1217a && this.f1218b.getName().equals(c0314b.f1218b.getName());
        }

        public int hashCode() {
            return (this.f1217a * 31) + this.f1218b.getName().hashCode();
        }

        /* renamed from: a */
        public void m26804a(InterfaceC0322g interfaceC0322g, AbstractC0317d.EnumC0318a enumC0318a, Object obj) {
            try {
                int i = this.f1217a;
                if (i != 0) {
                    if (i != 1) {
                        if (i == 2) {
                            this.f1218b.invoke(obj, interfaceC0322g, enumC0318a);
                            return;
                        }
                        return;
                    }
                    this.f1218b.invoke(obj, interfaceC0322g);
                    return;
                }
                this.f1218b.invoke(obj, new Object[0]);
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException("Failed to call observer method", e2.getCause());
            }
        }

        public C0314b(int i, Method method) {
            this.f1217a = i;
            this.f1218b = method;
            method.setAccessible(true);
        }
    }

    /* renamed from: c */
    public C0313a m26809c(Class cls) {
        C0313a c0313a = this.f1213a.get(cls);
        if (c0313a != null) {
            return c0313a;
        }
        return m26811a(cls, null);
    }

    /* renamed from: d */
    public boolean m26808d(Class cls) {
        Boolean bool = this.f1214b.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] m26810b = m26810b(cls);
        for (Method method : m26810b) {
            if (((InterfaceC0332o) method.getAnnotation(InterfaceC0332o.class)) != null) {
                m26811a(cls, m26810b);
                return true;
            }
        }
        this.f1214b.put(cls, Boolean.FALSE);
        return false;
    }

    /* renamed from: a */
    public final C0313a m26811a(Class cls, Method[] methodArr) {
        int i;
        C0313a m26809c;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null && (m26809c = m26809c(superclass)) != null) {
            hashMap.putAll(m26809c.f1216b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<C0314b, AbstractC0317d.EnumC0318a> entry : m26809c(cls2).f1216b.entrySet()) {
                m26807e(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = m26810b(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            InterfaceC0332o interfaceC0332o = (InterfaceC0332o) method.getAnnotation(InterfaceC0332o.class);
            if (interfaceC0332o != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length > 0) {
                    if (parameterTypes[0].isAssignableFrom(InterfaceC0322g.class)) {
                        i = 1;
                    } else {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                } else {
                    i = 0;
                }
                AbstractC0317d.EnumC0318a value = interfaceC0332o.value();
                if (parameterTypes.length > 1) {
                    if (parameterTypes[1].isAssignableFrom(AbstractC0317d.EnumC0318a.class)) {
                        if (value == AbstractC0317d.EnumC0318a.ON_ANY) {
                            i = 2;
                        } else {
                            throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                        }
                    } else {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                }
                if (parameterTypes.length <= 2) {
                    m26807e(hashMap, new C0314b(i, method), value, cls);
                    z = true;
                } else {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
            }
        }
        C0313a c0313a = new C0313a(hashMap);
        this.f1213a.put(cls, c0313a);
        this.f1214b.put(cls, Boolean.valueOf(z));
        return c0313a;
    }

    /* renamed from: b */
    public final Method[] m26810b(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    /* renamed from: e */
    public final void m26807e(Map<C0314b, AbstractC0317d.EnumC0318a> map, C0314b c0314b, AbstractC0317d.EnumC0318a enumC0318a, Class cls) {
        AbstractC0317d.EnumC0318a enumC0318a2 = map.get(c0314b);
        if (enumC0318a2 != null && enumC0318a != enumC0318a2) {
            Method method = c0314b.f1218b;
            throw new IllegalArgumentException("Method " + method.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + enumC0318a2 + ", new value " + enumC0318a);
        } else if (enumC0318a2 == null) {
            map.put(c0314b, enumC0318a);
        }
    }
}
