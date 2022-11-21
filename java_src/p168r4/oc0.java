package p168r4;

import android.os.Bundle;
import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p041d3.AbstractC3317v;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p202v2.AbstractC6977d;
/* renamed from: r4.oc0 */
/* loaded from: classes2.dex */
public final class oc0 extends tb0 {

    /* renamed from: a */
    public final AbstractC3317v f28950a;

    public oc0(AbstractC3317v abstractC3317v) {
        this.f28950a = abstractC3317v;
    }

    @Override // p168r4.ub0
    /* renamed from: E */
    public final void mo6588E() {
        this.f28950a.m19161s();
    }

    @Override // p168r4.ub0
    /* renamed from: G0 */
    public final void mo6587G0(InterfaceC3512a interfaceC3512a) {
        this.f28950a.m19163q((View) BinderC3514b.m18740t0(interfaceC3512a));
    }

    @Override // p168r4.ub0
    /* renamed from: L5 */
    public final void mo6586L5(InterfaceC3512a interfaceC3512a) {
        this.f28950a.m19185F((View) BinderC3514b.m18740t0(interfaceC3512a));
    }

    @Override // p168r4.ub0
    /* renamed from: P */
    public final float mo6585P() {
        return this.f28950a.m19175e();
    }

    @Override // p168r4.ub0
    /* renamed from: c */
    public final String mo6584c() {
        return this.f28950a.m19172h();
    }

    @Override // p168r4.ub0
    /* renamed from: g */
    public final String mo6580g() {
        return this.f28950a.m19177c();
    }

    @Override // p168r4.ub0
    /* renamed from: h */
    public final String mo6579h() {
        return this.f28950a.m19178b();
    }

    @Override // p168r4.ub0
    /* renamed from: i */
    public final double mo6578i() {
        if (this.f28950a.m19165o() != null) {
            return this.f28950a.m19165o().doubleValue();
        }
        return -1.0d;
    }

    @Override // p168r4.ub0
    /* renamed from: j */
    public final String mo6577j() {
        return this.f28950a.m19176d();
    }

    @Override // p168r4.ub0
    /* renamed from: k */
    public final String mo6576k() {
        return this.f28950a.m19164p();
    }

    @Override // p168r4.ub0
    /* renamed from: l */
    public final String mo6575l() {
        return this.f28950a.m19166n();
    }

    @Override // p168r4.ub0
    /* renamed from: n */
    public final boolean mo6573n() {
        return this.f28950a.m19167m();
    }

    @Override // p168r4.ub0
    /* renamed from: q */
    public final h20 mo6570q() {
        return null;
    }

    @Override // p168r4.ub0
    /* renamed from: r */
    public final Bundle mo6569r() {
        return this.f28950a.m19173g();
    }

    @Override // p168r4.ub0
    /* renamed from: t */
    public final boolean mo6568t() {
        return this.f28950a.m19168l();
    }

    @Override // p168r4.ub0
    /* renamed from: v */
    public final float mo6567v() {
        return this.f28950a.m19169k();
    }

    @Override // p168r4.ub0
    /* renamed from: z */
    public final float mo6565z() {
        return this.f28950a.m19174f();
    }

    @Override // p168r4.ub0
    /* renamed from: d */
    public final List mo6583d() {
        List<AbstractC6977d> m19170j = this.f28950a.m19170j();
        ArrayList arrayList = new ArrayList();
        if (m19170j != null) {
            for (AbstractC6977d abstractC6977d : m19170j) {
                arrayList.add(new z10(abstractC6977d.mo2815a(), abstractC6977d.mo2813c(), abstractC6977d.mo2814b(), abstractC6977d.mo2812d(), abstractC6977d.mo2811e()));
            }
        }
        return arrayList;
    }

    @Override // p168r4.ub0
    /* renamed from: f */
    public final p20 mo6581f() {
        AbstractC6977d m19171i = this.f28950a.m19171i();
        if (m19171i != null) {
            return new z10(m19171i.mo2815a(), m19171i.mo2813c(), m19171i.mo2814b(), m19171i.mo2812d(), m19171i.mo2811e());
        }
        return null;
    }

    @Override // p168r4.ub0
    /* renamed from: m */
    public final InterfaceC3512a mo6574m() {
        View m19181J = this.f28950a.m19181J();
        if (m19181J == null) {
            return null;
        }
        return BinderC3514b.m18741L0(m19181J);
    }

    @Override // p168r4.ub0
    /* renamed from: o */
    public final InterfaceC3512a mo6572o() {
        View m19179a = this.f28950a.m19179a();
        if (m19179a == null) {
            return null;
        }
        return BinderC3514b.m18741L0(m19179a);
    }

    @Override // p168r4.ub0
    /* renamed from: p */
    public final InterfaceC6000lx mo6571p() {
        if (this.f28950a.m19182I() != null) {
            return this.f28950a.m19182I().m3546c();
        }
        return null;
    }

    @Override // p168r4.ub0
    /* renamed from: w */
    public final InterfaceC3512a mo6566w() {
        Object m19180K = this.f28950a.m19180K();
        if (m19180K == null) {
            return null;
        }
        return BinderC3514b.m18741L0(m19180K);
    }

    @Override // p168r4.ub0
    /* renamed from: d5 */
    public final void mo6582d5(InterfaceC3512a interfaceC3512a, InterfaceC3512a interfaceC3512a2, InterfaceC3512a interfaceC3512a3) {
        this.f28950a.mo19186E((View) BinderC3514b.m18740t0(interfaceC3512a), (HashMap) BinderC3514b.m18740t0(interfaceC3512a2), (HashMap) BinderC3514b.m18740t0(interfaceC3512a3));
    }
}
