package p229y4;

import android.app.Application;
import android.os.Handler;
import java.util.concurrent.Executor;
/* renamed from: y4.h2 */
/* loaded from: classes2.dex */
public final class C7444h2 implements InterfaceC7455k1<C7440g2> {

    /* renamed from: a */
    public final InterfaceC7465n1<Application> f37171a;

    /* renamed from: b */
    public final InterfaceC7465n1<C7425d> f37172b;

    /* renamed from: c */
    public final InterfaceC7465n1<Handler> f37173c;

    /* renamed from: d */
    public final InterfaceC7465n1<Executor> f37174d;

    /* renamed from: e */
    public final InterfaceC7465n1<C7463n> f37175e;

    /* renamed from: f */
    public final InterfaceC7465n1<C7422c0> f37176f;

    /* renamed from: g */
    public final InterfaceC7465n1<C7498y1> f37177g;

    /* renamed from: h */
    public final InterfaceC7465n1<C7456k2> f37178h;

    /* renamed from: i */
    public final InterfaceC7465n1<C7480s1> f37179i;

    public C7444h2(InterfaceC7465n1<Application> interfaceC7465n1, InterfaceC7465n1<C7425d> interfaceC7465n12, InterfaceC7465n1<Handler> interfaceC7465n13, InterfaceC7465n1<Executor> interfaceC7465n14, InterfaceC7465n1<C7463n> interfaceC7465n15, InterfaceC7465n1<C7422c0> interfaceC7465n16, InterfaceC7465n1<C7498y1> interfaceC7465n17, InterfaceC7465n1<C7456k2> interfaceC7465n18, InterfaceC7465n1<C7480s1> interfaceC7465n19) {
        this.f37171a = interfaceC7465n1;
        this.f37172b = interfaceC7465n12;
        this.f37173c = interfaceC7465n13;
        this.f37174d = interfaceC7465n14;
        this.f37175e = interfaceC7465n15;
        this.f37176f = interfaceC7465n16;
        this.f37177g = interfaceC7465n17;
        this.f37178h = interfaceC7465n18;
        this.f37179i = interfaceC7465n19;
    }

    @Override // p229y4.InterfaceC7465n1
    /* renamed from: b */
    public final C7440g2 mo1390a() {
        Handler handler = C7439g1.f37157a;
        C7462m1.m1417a(handler);
        Executor executor = C7439g1.f37158b;
        C7462m1.m1417a(executor);
        return new C7440g2(this.f37171a.mo1390a(), this.f37172b.mo1390a(), handler, executor, this.f37175e.mo1390a(), this.f37176f.mo1390a(), ((C7416a2) this.f37177g).mo1390a(), ((C7421c) this.f37178h).mo1390a(), this.f37179i.mo1390a());
    }
}
