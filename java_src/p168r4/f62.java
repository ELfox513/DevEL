package p168r4;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* renamed from: r4.f62 */
/* loaded from: classes2.dex */
public final class f62 implements q12<uo1> {

    /* renamed from: a */
    public final Context f23388a;

    /* renamed from: b */
    public final rp1 f23389b;

    /* renamed from: c */
    public final ap1 f23390c;

    /* renamed from: d */
    public final hp2 f23391d;

    /* renamed from: e */
    public final Executor f23392e;

    /* renamed from: f */
    public final im0 f23393f;

    /* renamed from: g */
    public final x50 f23394g;

    /* renamed from: h */
    public final boolean f23395h = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31088o6)).booleanValue();

    @Override // p168r4.q12
    /* renamed from: a */
    public final boolean mo4841a(bp2 bp2Var, no2 no2Var) {
        uo2 uo2Var = no2Var.f28432s;
        return (uo2Var == null || uo2Var.f32342a == null) ? false : true;
    }

    @Override // p168r4.q12
    /* renamed from: b */
    public final h83<uo1> mo4840b(final bp2 bp2Var, final no2 no2Var) {
        final wp1 wp1Var = new wp1();
        h83<uo1> m4806i = y73.m4806i(y73.m4814a(null), new e73(this, no2Var, bp2Var, wp1Var) { // from class: r4.y52

            /* renamed from: a */
            public final f62 f33974a;

            /* renamed from: b */
            public final no2 f33975b;

            /* renamed from: c */
            public final bp2 f33976c;

            /* renamed from: d */
            public final wp1 f33977d;

            {
                this.f33974a = this;
                this.f33975b = no2Var;
                this.f33976c = bp2Var;
                this.f33977d = wp1Var;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f33974a.m11602c(this.f33975b, this.f33976c, this.f33977d, obj);
            }
        }, this.f23392e);
        m4806i.mo6087c(z52.m4428a(wp1Var), this.f23392e);
        return m4806i;
    }

    /* renamed from: c */
    public final /* synthetic */ h83 m11602c(final no2 no2Var, bp2 bp2Var, wp1 wp1Var, Object obj) {
        x50 x50Var;
        final cs0 m7400b = this.f23389b.m7400b(this.f23391d.f24780e, no2Var, bp2Var.f21154b.f20574b);
        m7400b.mo5095a0(no2Var.f28396S);
        wp1Var.m5633a(this.f23388a, (View) m7400b);
        vm0 vm0Var = new vm0();
        final vo1 mo9879b = this.f23390c.mo9879b(new x31(bp2Var, no2Var, null), new wo1(new e62(this.f23388a, this.f23389b, this.f23391d, this.f23393f, no2Var, vm0Var, m7400b, this.f23394g, this.f23395h), m7400b));
        vm0Var.m6086e(mo9879b);
        l60.m9785b(m7400b, mo9879b.mo6049k());
        mo9879b.mo4737d().m4759K0(new d81(m7400b) { // from class: r4.a62

            /* renamed from: a */
            public final cs0 f20396a;

            {
                this.f20396a = m7400b;
            }

            @Override // p168r4.d81
            /* renamed from: g */
            public final void mo5385g() {
                cs0 cs0Var = this.f20396a;
                if (cs0Var.mo5057o0() != null) {
                    cs0Var.mo5057o0().mo7006h();
                }
            }
        }, qm0.f30195f);
        qp1 mo6048l = mo9879b.mo6048l();
        if (this.f23395h) {
            x50Var = this.f23394g;
        } else {
            x50Var = null;
        }
        mo6048l.m7728i(m7400b, true, x50Var);
        mo9879b.mo6048l();
        uo2 uo2Var = no2Var.f28432s;
        return y73.m4805j(qp1.m7727j(m7400b, uo2Var.f32343b, uo2Var.f32342a), new p03(this, m7400b, no2Var, mo9879b) { // from class: r4.b62

            /* renamed from: a */
            public final f62 f20868a;

            /* renamed from: b */
            public final cs0 f20869b;

            /* renamed from: c */
            public final no2 f20870c;

            /* renamed from: d */
            public final vo1 f20871d;

            {
                this.f20868a = this;
                this.f20869b = m7400b;
                this.f20870c = no2Var;
                this.f20871d = mo9879b;
            }

            @Override // p168r4.p03
            public final Object apply(Object obj2) {
                cs0 cs0Var = this.f20869b;
                no2 no2Var2 = this.f20870c;
                vo1 vo1Var = this.f20871d;
                if (no2Var2.f28386I) {
                    cs0Var.mo5115O();
                }
                cs0Var.mo5037w0();
                cs0Var.onPause();
                return vo1Var.mo6052h();
            }
        }, this.f23392e);
    }

    public f62(Context context, im0 im0Var, hp2 hp2Var, Executor executor, ap1 ap1Var, rp1 rp1Var, x50 x50Var) {
        this.f23388a = context;
        this.f23391d = hp2Var;
        this.f23390c = ap1Var;
        this.f23392e = executor;
        this.f23393f = im0Var;
        this.f23389b = rp1Var;
        this.f23394g = x50Var;
    }
}
