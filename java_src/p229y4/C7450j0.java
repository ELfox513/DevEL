package p229y4;

import android.os.Handler;
/* renamed from: y4.j0 */
/* loaded from: classes2.dex */
public final class C7450j0 implements InterfaceC7455k1<C7446i0> {

    /* renamed from: a */
    public final InterfaceC7465n1<C7454k0> f37193a;

    /* renamed from: b */
    public final InterfaceC7465n1<Handler> f37194b;

    /* renamed from: c */
    public final InterfaceC7465n1<C7467o0> f37195c;

    public C7450j0(InterfaceC7465n1<C7454k0> interfaceC7465n1, InterfaceC7465n1<Handler> interfaceC7465n12, InterfaceC7465n1<C7467o0> interfaceC7465n13) {
        this.f37193a = interfaceC7465n1;
        this.f37194b = interfaceC7465n12;
        this.f37195c = interfaceC7465n13;
    }

    @Override // p229y4.InterfaceC7465n1
    /* renamed from: b */
    public final C7446i0 mo1390a() {
        Handler handler = C7439g1.f37157a;
        C7462m1.m1417a(handler);
        return new C7446i0(this.f37193a.mo1390a(), handler, ((C7470p0) this.f37195c).mo1390a());
    }
}
