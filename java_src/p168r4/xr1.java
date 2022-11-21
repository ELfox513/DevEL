package p168r4;
/* renamed from: r4.xr1 */
/* loaded from: classes2.dex */
public final class xr1 implements ga1, y81, m71, la1 {

    /* renamed from: a */
    public final hs1 f33702a;

    /* renamed from: b */
    public final qs1 f33703b;

    public xr1(hs1 hs1Var, qs1 qs1Var) {
        this.f33702a = hs1Var;
        this.f33703b = qs1Var;
    }

    @Override // p168r4.ga1
    /* renamed from: A0 */
    public final void mo4833A0(bp2 bp2Var) {
        this.f33702a.m10829a(bp2Var);
    }

    @Override // p168r4.ga1
    /* renamed from: c0 */
    public final void mo4832c0(og0 og0Var) {
        this.f33702a.m10828b(og0Var.f28978a);
    }

    @Override // p168r4.m71
    /* renamed from: B */
    public final void mo5143B(C5996lt c5996lt) {
        this.f33702a.m10827c().put("action", "ftl");
        this.f33702a.m10827c().put("ftl", String.valueOf(c5996lt.f27361a));
        this.f33702a.m10827c().put("ed", c5996lt.f27363d);
        this.f33703b.m7016a(this.f33702a.m10827c());
    }

    @Override // p168r4.la1
    /* renamed from: Q */
    public final void mo5142Q(boolean z) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31063l5)).booleanValue()) {
            this.f33702a.m10827c().put("scar", "true");
        }
    }

    @Override // p168r4.y81
    /* renamed from: d */
    public final void mo4268d() {
        this.f33702a.m10827c().put("action", "loaded");
        this.f33703b.m7016a(this.f33702a.m10827c());
    }
}
