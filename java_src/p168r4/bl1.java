package p168r4;

import p145p.C5270a;
/* renamed from: r4.bl1 */
/* loaded from: classes2.dex */
public final class bl1 implements d81 {

    /* renamed from: a */
    public final ej1 f21095a;

    /* renamed from: b */
    public final jj1 f21096b;

    public bl1(ej1 ej1Var, jj1 jj1Var) {
        this.f21095a = ej1Var;
        this.f21096b = jj1Var;
    }

    @Override // p168r4.d81
    /* renamed from: g */
    public final void mo5385g() {
        if (this.f21095a.m11741u() == null) {
            return;
        }
        cs0 m11742t = this.f21095a.m11742t();
        cs0 m11744r = this.f21095a.m11744r();
        if (m11742t == null) {
            m11742t = m11744r != null ? m11744r : null;
        }
        if (!this.f21096b.mo10269d() || m11742t == null) {
            return;
        }
        m11742t.mo5125H0("onSdkImpression", new C5270a());
    }
}
