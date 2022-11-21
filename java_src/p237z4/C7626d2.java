package p237z4;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: z4.d2 */
/* loaded from: classes2.dex */
public final class C7626d2 {

    /* renamed from: c */
    public static final C7626d2 f37644c = new C7626d2();

    /* renamed from: b */
    public final ConcurrentMap<Class<?>, InterfaceC7640f2<?>> f37646b = new ConcurrentHashMap();

    /* renamed from: a */
    public final InterfaceC7645g2 f37645a = new C7644g1();

    /* renamed from: a */
    public static C7626d2 m870a() {
        return f37644c;
    }

    /* renamed from: c */
    public final <T> InterfaceC7640f2<T> m868c(T t) {
        return m869b(t.getClass());
    }

    /* renamed from: b */
    public final <T> InterfaceC7640f2<T> m869b(Class<T> cls) {
        C7687o0.m632e(cls, "messageType");
        InterfaceC7640f2<T> interfaceC7640f2 = (InterfaceC7640f2<T>) this.f37646b.get(cls);
        if (interfaceC7640f2 == null) {
            InterfaceC7640f2<T> mo766a = this.f37645a.mo766a(cls);
            C7687o0.m632e(cls, "messageType");
            C7687o0.m632e(mo766a, "schema");
            InterfaceC7640f2<T> interfaceC7640f22 = (InterfaceC7640f2<T>) this.f37646b.putIfAbsent(cls, mo766a);
            if (interfaceC7640f22 != null) {
                return interfaceC7640f22;
            }
            return mo766a;
        }
        return interfaceC7640f2;
    }
}
