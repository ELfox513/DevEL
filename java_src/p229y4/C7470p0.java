package p229y4;

import android.app.Application;
import android.os.Handler;
import java.util.concurrent.Executor;
/* renamed from: y4.p0 */
/* loaded from: classes2.dex */
public final class C7470p0 implements InterfaceC7455k1<C7467o0> {

    /* renamed from: a */
    public final InterfaceC7465n1<Application> f37244a;

    /* renamed from: b */
    public final InterfaceC7465n1<C7454k0> f37245b;

    /* renamed from: c */
    public final InterfaceC7465n1<Handler> f37246c;

    /* renamed from: d */
    public final InterfaceC7465n1<Executor> f37247d;

    /* renamed from: e */
    public final InterfaceC7465n1<C7480s1> f37248e;

    /* renamed from: f */
    public final InterfaceC7465n1<C7457l> f37249f;

    /* renamed from: g */
    public final InterfaceC7465n1<C7499z> f37250g;

    /* renamed from: h */
    public final InterfaceC7465n1<C7463n> f37251h;

    public C7470p0(InterfaceC7465n1<Application> interfaceC7465n1, InterfaceC7465n1<C7454k0> interfaceC7465n12, InterfaceC7465n1<Handler> interfaceC7465n13, InterfaceC7465n1<Executor> interfaceC7465n14, InterfaceC7465n1<C7480s1> interfaceC7465n15, InterfaceC7465n1<C7457l> interfaceC7465n16, InterfaceC7465n1<C7499z> interfaceC7465n17, InterfaceC7465n1<C7463n> interfaceC7465n18) {
        this.f37244a = interfaceC7465n1;
        this.f37245b = interfaceC7465n12;
        this.f37246c = interfaceC7465n13;
        this.f37247d = interfaceC7465n14;
        this.f37248e = interfaceC7465n15;
        this.f37249f = interfaceC7465n16;
        this.f37250g = interfaceC7465n17;
        this.f37251h = interfaceC7465n18;
    }

    @Override // p229y4.InterfaceC7465n1
    /* renamed from: b */
    public final C7467o0 mo1390a() {
        Handler handler = C7439g1.f37157a;
        C7462m1.m1417a(handler);
        Executor executor = C7439g1.f37158b;
        C7462m1.m1417a(executor);
        return new C7467o0(this.f37244a.mo1390a(), this.f37245b.mo1390a(), handler, executor, this.f37248e.mo1390a(), ((C7460m) this.f37249f).mo1390a(), this.f37250g.mo1390a(), this.f37251h.mo1390a());
    }
}
