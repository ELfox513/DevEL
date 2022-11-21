package p168r4;
/* renamed from: r4.k92 */
/* loaded from: classes2.dex */
public final class k92 implements s92<xf1> {

    /* renamed from: a */
    public final /* synthetic */ l92 f26348a;

    public k92(l92 l92Var) {
        this.f26348a = l92Var;
    }

    @Override // p168r4.s92
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo7189b(xf1 xf1Var) {
        xf1 xf1Var2;
        xf1 xf1Var3 = xf1Var;
        synchronized (this.f26348a) {
            this.f26348a.f27142r = xf1Var3;
            xf1Var2 = this.f26348a.f27142r;
            xf1Var2.mo4221a();
        }
    }

    @Override // p168r4.s92
    public final void zza() {
        synchronized (this.f26348a) {
            this.f26348a.f27142r = null;
        }
    }
}
