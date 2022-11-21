package p018b5;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: b5.ma */
/* loaded from: classes2.dex */
public final class C0770ma {

    /* renamed from: c */
    public static final C0770ma f1973c = new C0770ma();

    /* renamed from: b */
    public final ConcurrentMap<Class<?>, InterfaceC0821pa<?>> f1975b = new ConcurrentHashMap();

    /* renamed from: a */
    public final InterfaceC0838qa f1974a = new C0922v9();

    /* renamed from: a */
    public static C0770ma m25655a() {
        return f1973c;
    }

    /* renamed from: b */
    public final <T> InterfaceC0821pa<T> m25654b(Class<T> cls) {
        C0650f9.m25945f(cls, "messageType");
        InterfaceC0821pa<T> interfaceC0821pa = (InterfaceC0821pa<T>) this.f1975b.get(cls);
        if (interfaceC0821pa == null) {
            interfaceC0821pa = this.f1974a.mo25064d(cls);
            C0650f9.m25945f(cls, "messageType");
            C0650f9.m25945f(interfaceC0821pa, "schema");
            InterfaceC0821pa putIfAbsent = this.f1975b.putIfAbsent(cls, interfaceC0821pa);
            if (putIfAbsent != null) {
                return putIfAbsent;
            }
        }
        return interfaceC0821pa;
    }
}
