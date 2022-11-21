package p018b5;

import java.io.Serializable;
/* renamed from: b5.d7 */
/* loaded from: classes2.dex */
public final class C0614d7 {
    /* renamed from: b */
    public static <T> InterfaceC0987z6<T> m26053b(T t) {
        return new C0597c7(t);
    }

    /* renamed from: a */
    public static <T> InterfaceC0987z6<T> m26054a(InterfaceC0987z6<T> interfaceC0987z6) {
        if (!(interfaceC0987z6 instanceof C0580b7) && !(interfaceC0987z6 instanceof C0562a7)) {
            if (interfaceC0987z6 instanceof Serializable) {
                return new C0562a7(interfaceC0987z6);
            }
            return new C0580b7(interfaceC0987z6);
        }
        return interfaceC0987z6;
    }
}
