package p144o7;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: o7.d1 */
/* loaded from: classes2.dex */
public final class C5122d1 {

    /* renamed from: c */
    public static final C5122d1 f19390c = new C5122d1();

    /* renamed from: b */
    public final ConcurrentMap<Class<?>, InterfaceC5150h1<?>> f19392b = new ConcurrentHashMap();

    /* renamed from: a */
    public final InterfaceC5158i1 f19391a = new C5167k0();

    /* renamed from: a */
    public static C5122d1 m14624a() {
        return f19390c;
    }

    /* renamed from: b */
    public <T> void m14623b(T t, InterfaceC5136g1 interfaceC5136g1, C5196p c5196p) {
        m14620e(t).mo13823e(t, interfaceC5136g1, c5196p);
    }

    /* renamed from: e */
    public <T> InterfaceC5150h1<T> m14620e(T t) {
        return m14621d(t.getClass());
    }

    /* renamed from: c */
    public InterfaceC5150h1<?> m14622c(Class<?> cls, InterfaceC5150h1<?> interfaceC5150h1) {
        C5102a0.m14658b(cls, "messageType");
        C5102a0.m14658b(interfaceC5150h1, "schema");
        return this.f19392b.putIfAbsent(cls, interfaceC5150h1);
    }

    /* renamed from: d */
    public <T> InterfaceC5150h1<T> m14621d(Class<T> cls) {
        C5102a0.m14658b(cls, "messageType");
        InterfaceC5150h1<T> interfaceC5150h1 = (InterfaceC5150h1<T>) this.f19392b.get(cls);
        if (interfaceC5150h1 == null) {
            InterfaceC5150h1<T> mo14255a = this.f19391a.mo14255a(cls);
            InterfaceC5150h1<T> interfaceC5150h12 = (InterfaceC5150h1<T>) m14622c(cls, mo14255a);
            if (interfaceC5150h12 != null) {
                return interfaceC5150h12;
            }
            return mo14255a;
        }
        return interfaceC5150h1;
    }
}
