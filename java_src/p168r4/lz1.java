package p168r4;
/* renamed from: r4.lz1 */
/* loaded from: classes2.dex */
public final class lz1 implements ga1, y81, m71, la1 {

    /* renamed from: a */
    public final wt2 f27424a;

    /* renamed from: b */
    public final xt2 f27425b;

    /* renamed from: d */
    public final rl0 f27426d;

    public lz1(wt2 wt2Var, xt2 xt2Var, rl0 rl0Var) {
        this.f27424a = wt2Var;
        this.f27425b = xt2Var;
        this.f27426d = rl0Var;
    }

    @Override // p168r4.ga1
    /* renamed from: A0 */
    public final void mo4833A0(bp2 bp2Var) {
        this.f27424a.m5584g(bp2Var, this.f27426d);
    }

    @Override // p168r4.ga1
    /* renamed from: c0 */
    public final void mo4832c0(og0 og0Var) {
        this.f27424a.m5585f(og0Var.f28978a);
    }

    @Override // p168r4.y81
    /* renamed from: d */
    public final void mo4268d() {
        xt2 xt2Var = this.f27425b;
        wt2 wt2Var = this.f27424a;
        wt2Var.m5588c("action", "loaded");
        xt2Var.mo4985a(wt2Var);
    }

    @Override // p168r4.m71
    /* renamed from: B */
    public final void mo5143B(C5996lt c5996lt) {
        wt2 wt2Var = this.f27424a;
        wt2Var.m5588c("action", "ftl");
        wt2Var.m5588c("ftl", String.valueOf(c5996lt.f27361a));
        wt2Var.m5588c("ed", c5996lt.f27363d);
        this.f27425b.mo4985a(this.f27424a);
    }

    @Override // p168r4.la1
    /* renamed from: Q */
    public final void mo5142Q(boolean z) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31063l5)).booleanValue()) {
            this.f27424a.m5588c("scar", "true");
        }
    }
}
