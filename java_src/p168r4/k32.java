package p168r4;
/* renamed from: r4.k32 */
/* loaded from: classes2.dex */
public final class k32 implements t73<h11> {

    /* renamed from: a */
    public final /* synthetic */ l32 f26273a;

    public k32(l32 l32Var) {
        this.f26273a = l32Var;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        f21 f21Var;
        l71 l71Var;
        f21Var = this.f26273a.f27056a;
        C5996lt m9497h = f21Var.mo8154b().m9497h(th);
        l71Var = this.f26273a.f27059d;
        l71Var.mo5143B(m9497h);
        yp2.m4611a(m9497h.f27361a, th, "DelayedBannerAd.onFailure");
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo4626b(h11 h11Var) {
        h11Var.mo4221a();
    }
}
