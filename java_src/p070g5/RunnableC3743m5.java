package p070g5;

import p220x3.C7297q;
/* renamed from: g5.m5 */
/* loaded from: classes2.dex */
public final class RunnableC3743m5 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3784pa f16725a;

    /* renamed from: b */
    public final /* synthetic */ BinderC3839u5 f16726b;

    public RunnableC3743m5(BinderC3839u5 binderC3839u5, C3784pa c3784pa) {
        this.f16726b = binderC3839u5;
        this.f16725a = c3784pa;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3616ba c3616ba;
        C3616ba c3616ba2;
        c3616ba = this.f16726b.f16983a;
        c3616ba.m18483a();
        c3616ba2 = this.f16726b.f16983a;
        C3784pa c3784pa = this.f16725a;
        c3616ba2.mo17855P().mo17839c();
        c3616ba2.m18481b();
        C7297q.m1887f(c3784pa.f16846a);
        C3677h m18279b = C3677h.m18279b(c3784pa.f16845G);
        C3677h m18489U = c3616ba2.m18489U(c3784pa.f16846a);
        c3616ba2.mo17858F().m18014q().m18040c("Setting consent, package, consent", c3784pa.f16846a, m18279b);
        c3616ba2.m18453t(c3784pa.f16846a, m18279b);
        if (m18279b.m18268m(m18489U)) {
            c3616ba2.m18457p(c3784pa);
        }
    }
}
