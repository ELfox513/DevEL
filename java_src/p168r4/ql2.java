package p168r4;

import p168r4.r61;
/* renamed from: r4.ql2 */
/* loaded from: classes2.dex */
public final class ql2<RequestComponentT extends r61<AdT>, AdT> implements am2<RequestComponentT, AdT> {

    /* renamed from: a */
    public final am2<RequestComponentT, AdT> f30179a;

    /* renamed from: b */
    public RequestComponentT f30180b;

    public ql2(am2<RequestComponentT, AdT> am2Var) {
        this.f30179a = am2Var;
    }

    @Override // p168r4.am2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ h83 mo7802a(bm2 bm2Var, zl2 zl2Var, Object obj) {
        return m7800c(bm2Var, zl2Var, null);
    }

    @Override // p168r4.am2
    /* renamed from: b */
    public final synchronized RequestComponentT mo7799e() {
        return this.f30180b;
    }

    /* renamed from: c */
    public final synchronized h83<AdT> m7800c(bm2 bm2Var, zl2<RequestComponentT> zl2Var, RequestComponentT requestcomponentt) {
        this.f30180b = requestcomponentt;
        if (bm2Var.f21115a != null) {
            m41<AdT> mo7604r = requestcomponentt.mo7604r();
            return mo7604r.m9501d(mo7604r.m9503b(y73.m4814a(bm2Var.f21115a)));
        }
        return ((pl2) this.f30179a).m8277c(bm2Var, zl2Var, requestcomponentt);
    }
}
