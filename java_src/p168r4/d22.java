package p168r4;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* renamed from: r4.d22 */
/* loaded from: classes2.dex */
public final class d22 implements q12<a11> {

    /* renamed from: a */
    public final u01 f22051a;

    /* renamed from: b */
    public final Context f22052b;

    /* renamed from: c */
    public final rp1 f22053c;

    /* renamed from: d */
    public final hp2 f22054d;

    /* renamed from: e */
    public final Executor f22055e;

    /* renamed from: f */
    public final im0 f22056f;

    /* renamed from: g */
    public final x50 f22057g;

    /* renamed from: h */
    public final boolean f22058h = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31088o6)).booleanValue();

    @Override // p168r4.q12
    /* renamed from: a */
    public final boolean mo4841a(bp2 bp2Var, no2 no2Var) {
        uo2 uo2Var = no2Var.f28432s;
        return (uo2Var == null || uo2Var.f32342a == null) ? false : true;
    }

    @Override // p168r4.q12
    /* renamed from: b */
    public final h83<a11> mo4840b(final bp2 bp2Var, final no2 no2Var) {
        final wp1 wp1Var = new wp1();
        h83<a11> m4806i = y73.m4806i(y73.m4814a(null), new e73(this, no2Var, bp2Var, wp1Var) { // from class: r4.z12

            /* renamed from: a */
            public final d22 f34288a;

            /* renamed from: b */
            public final no2 f34289b;

            /* renamed from: c */
            public final bp2 f34290c;

            /* renamed from: d */
            public final wp1 f34291d;

            {
                this.f34288a = this;
                this.f34289b = no2Var;
                this.f34290c = bp2Var;
                this.f34291d = wp1Var;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f34288a.m12233c(this.f34289b, this.f34290c, this.f34291d, obj);
            }
        }, this.f22055e);
        m4806i.mo6087c(a22.m13057a(wp1Var), this.f22055e);
        return m4806i;
    }

    /* renamed from: c */
    public final /* synthetic */ h83 m12233c(final no2 no2Var, bp2 bp2Var, wp1 wp1Var, Object obj) {
        x50 x50Var;
        final cs0 m7400b = this.f22053c.m7400b(this.f22054d.f24780e, no2Var, bp2Var.f21154b.f20574b);
        m7400b.mo5095a0(no2Var.f28396S);
        wp1Var.m5633a(this.f22052b, (View) m7400b);
        vm0 vm0Var = new vm0();
        final r01 mo6672a = this.f22051a.mo6672a(new x31(bp2Var, no2Var, null), new bg1(new f22(this.f22056f, vm0Var, no2Var, m7400b, this.f22054d, this.f22058h, this.f22057g), m7400b), new s01(no2Var.f28400W));
        qp1 mo7630i = mo6672a.mo7630i();
        if (this.f22058h) {
            x50Var = this.f22057g;
        } else {
            x50Var = null;
        }
        mo7630i.m7728i(m7400b, false, x50Var);
        vm0Var.m6086e(mo6672a);
        mo6672a.mo4737d().m4759K0(new d81(m7400b) { // from class: r4.b22

            /* renamed from: a */
            public final cs0 f20816a;

            {
                this.f20816a = m7400b;
            }

            @Override // p168r4.d81
            /* renamed from: g */
            public final void mo5385g() {
                cs0 cs0Var = this.f20816a;
                if (cs0Var.mo5057o0() != null) {
                    cs0Var.mo5057o0().mo7006h();
                }
            }
        }, qm0.f30195f);
        mo6672a.mo7630i();
        uo2 uo2Var = no2Var.f28432s;
        return y73.m4805j(qp1.m7727j(m7400b, uo2Var.f32343b, uo2Var.f32342a), new p03(this, m7400b, no2Var, mo6672a) { // from class: r4.c22

            /* renamed from: a */
            public final d22 f21315a;

            /* renamed from: b */
            public final cs0 f21316b;

            /* renamed from: c */
            public final no2 f21317c;

            /* renamed from: d */
            public final r01 f21318d;

            {
                this.f21315a = this;
                this.f21316b = m7400b;
                this.f21317c = no2Var;
                this.f21318d = mo6672a;
            }

            @Override // p168r4.p03
            public final Object apply(Object obj2) {
                cs0 cs0Var = this.f21316b;
                no2 no2Var2 = this.f21317c;
                r01 r01Var = this.f21318d;
                if (no2Var2.f28386I) {
                    cs0Var.mo5115O();
                }
                cs0Var.mo5037w0();
                cs0Var.onPause();
                return r01Var.mo7631h();
            }
        }, this.f22055e);
    }

    public d22(u01 u01Var, Context context, Executor executor, rp1 rp1Var, hp2 hp2Var, im0 im0Var, x50 x50Var) {
        this.f22052b = context;
        this.f22051a = u01Var;
        this.f22055e = executor;
        this.f22053c = rp1Var;
        this.f22054d = hp2Var;
        this.f22056f = im0Var;
        this.f22057g = x50Var;
    }
}
