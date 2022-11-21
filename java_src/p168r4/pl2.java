package p168r4;

import p168r4.r61;
/* renamed from: r4.pl2 */
/* loaded from: classes2.dex */
public final class pl2<RequestComponentT extends r61<AdT>, AdT> implements am2<RequestComponentT, AdT> {

    /* renamed from: a */
    public RequestComponentT f29515a;

    @Override // p168r4.am2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ h83 mo7802a(bm2 bm2Var, zl2 zl2Var, Object obj) {
        return m8277c(bm2Var, zl2Var, null);
    }

    @Override // p168r4.am2
    /* renamed from: b */
    public final synchronized RequestComponentT mo7799e() {
        return this.f29515a;
    }

    /* renamed from: c */
    public final synchronized h83<AdT> m8277c(bm2 bm2Var, zl2<RequestComponentT> zl2Var, RequestComponentT requestcomponentt) {
        m41<AdT> mo7604r;
        if (requestcomponentt != null) {
            this.f29515a = requestcomponentt;
        } else {
            this.f29515a = zl2Var.mo4187a(bm2Var.f21116b).mo8018d();
        }
        mo7604r = this.f29515a.mo7604r();
        return mo7604r.m9501d(mo7604r.m9502c());
    }
}
