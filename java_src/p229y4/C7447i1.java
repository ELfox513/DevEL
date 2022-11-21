package p229y4;
/* renamed from: y4.i1 */
/* loaded from: classes2.dex */
public final class C7447i1<T> implements InterfaceC7455k1<T> {

    /* renamed from: a */
    public InterfaceC7465n1<T> f37185a;

    /* renamed from: b */
    public static <T> void m1433b(InterfaceC7465n1<T> interfaceC7465n1, InterfaceC7465n1<T> interfaceC7465n12) {
        C7447i1 c7447i1 = (C7447i1) interfaceC7465n1;
        if (c7447i1.f37185a == null) {
            c7447i1.f37185a = interfaceC7465n12;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // p229y4.InterfaceC7465n1
    /* renamed from: a */
    public final T mo1390a() {
        InterfaceC7465n1<T> interfaceC7465n1 = this.f37185a;
        if (interfaceC7465n1 != null) {
            return interfaceC7465n1.mo1390a();
        }
        throw new IllegalStateException();
    }
}
