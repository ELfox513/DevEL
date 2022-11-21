package p229y4;

import android.app.Application;
/* renamed from: y4.a2 */
/* loaded from: classes2.dex */
public final class C7416a2 implements InterfaceC7455k1<C7498y1> {

    /* renamed from: a */
    public final InterfaceC7465n1<Application> f37119a;

    /* renamed from: b */
    public final InterfaceC7465n1<C7418b0> f37120b;

    /* renamed from: c */
    public final InterfaceC7465n1<C7463n> f37121c;

    public C7416a2(InterfaceC7465n1<Application> interfaceC7465n1, InterfaceC7465n1<C7418b0> interfaceC7465n12, InterfaceC7465n1<C7463n> interfaceC7465n13) {
        this.f37119a = interfaceC7465n1;
        this.f37120b = interfaceC7465n12;
        this.f37121c = interfaceC7465n13;
    }

    @Override // p229y4.InterfaceC7465n1
    /* renamed from: b */
    public final C7498y1 mo1390a() {
        return new C7498y1(this.f37119a.mo1390a(), ((C7423c1) this.f37120b).mo1390a(), this.f37121c.mo1390a());
    }
}
