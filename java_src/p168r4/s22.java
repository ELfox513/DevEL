package p168r4;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
import p016b3.C0547y;
/* renamed from: r4.s22 */
/* loaded from: classes2.dex */
public final class s22 implements q12<h11> {

    /* renamed from: a */
    public final f21 f31223a;

    /* renamed from: b */
    public final Context f31224b;

    /* renamed from: c */
    public final rp1 f31225c;

    /* renamed from: d */
    public final hp2 f31226d;

    /* renamed from: e */
    public final Executor f31227e;

    /* renamed from: f */
    public final p03<no2, C0547y> f31228f;

    public s22(f21 f21Var, Context context, Executor executor, rp1 rp1Var, hp2 hp2Var, p03<no2, C0547y> p03Var) {
        this.f31224b = context;
        this.f31223a = f21Var;
        this.f31227e = executor;
        this.f31225c = rp1Var;
        this.f31226d = hp2Var;
        this.f31228f = p03Var;
    }

    @Override // p168r4.q12
    /* renamed from: a */
    public final boolean mo4841a(bp2 bp2Var, no2 no2Var) {
        uo2 uo2Var = no2Var.f28432s;
        return (uo2Var == null || uo2Var.f32342a == null) ? false : true;
    }

    @Override // p168r4.q12
    /* renamed from: b */
    public final h83<h11> mo4840b(final bp2 bp2Var, final no2 no2Var) {
        return y73.m4806i(y73.m4814a(null), new e73(this, bp2Var, no2Var) { // from class: r4.l22

            /* renamed from: a */
            public final s22 f27051a;

            /* renamed from: b */
            public final bp2 f27052b;

            /* renamed from: c */
            public final no2 f27053c;

            {
                this.f27051a = this;
                this.f27052b = bp2Var;
                this.f27053c = no2Var;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f27051a.m7232d(this.f27052b, this.f27053c, obj);
            }
        }, this.f31227e);
    }

    /* renamed from: d */
    public final /* synthetic */ h83 m7232d(bp2 bp2Var, no2 no2Var, Object obj) {
        View up1Var;
        C6478yt m9587b = lp2.m9587b(this.f31224b, no2Var.f28434u);
        final cs0 m7400b = this.f31225c.m7400b(m9587b, no2Var, bp2Var.f21154b.f20574b);
        m7400b.mo5095a0(no2Var.f28396S);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30772B5)).booleanValue() && no2Var.f28411d0) {
            up1Var = w21.m5935a(this.f31224b, (View) m7400b, no2Var);
        } else {
            up1Var = new up1(this.f31224b, (View) m7400b, this.f31228f.apply(no2Var));
        }
        final i11 mo8151d = this.f31223a.mo8151d(new x31(bp2Var, no2Var, null), new o11(up1Var, m7400b, m22.m9515a(m7400b), lp2.m9586c(m9587b)));
        mo8151d.mo8992i().m7728i(m7400b, false, null);
        b81 mo4737d = mo8151d.mo4737d();
        d81 d81Var = new d81(m7400b) { // from class: r4.n22

            /* renamed from: a */
            public final cs0 f28098a;

            {
                this.f28098a = m7400b;
            }

            @Override // p168r4.d81
            /* renamed from: g */
            public final void mo5385g() {
                cs0 cs0Var = this.f28098a;
                if (cs0Var.mo5057o0() != null) {
                    cs0Var.mo5057o0().mo7006h();
                }
            }
        };
        i83 i83Var = qm0.f30195f;
        mo4737d.m4759K0(d81Var, i83Var);
        mo8151d.mo8992i();
        uo2 uo2Var = no2Var.f28432s;
        h83<?> m7727j = qp1.m7727j(m7400b, uo2Var.f32343b, uo2Var.f32342a);
        if (no2Var.f28386I) {
            m7727j.mo6087c(p22.m8501a(m7400b), this.f31227e);
        }
        m7727j.mo6087c(new Runnable(this, m7400b) { // from class: r4.q22

            /* renamed from: a */
            public final s22 f29895a;

            /* renamed from: b */
            public final cs0 f29896b;

            {
                this.f29895a = this;
                this.f29896b = m7400b;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f29895a.m7233c(this.f29896b);
            }
        }, this.f31227e);
        return y73.m4805j(m7727j, new p03(mo8151d) { // from class: r4.r22

            /* renamed from: a */
            public final i11 f30424a;

            {
                this.f30424a = mo8151d;
            }

            @Override // p168r4.p03
            public final Object apply(Object obj2) {
                return this.f30424a.mo8993h();
            }
        }, i83Var);
    }

    /* renamed from: c */
    public final /* synthetic */ void m7233c(cs0 cs0Var) {
        cs0Var.mo5037w0();
        at0 mo5084f = cs0Var.mo5084f();
        C6446xy c6446xy = this.f31226d.f24776a;
        if (c6446xy != null && mo5084f != null) {
            mo5084f.m12948g7(c6446xy);
        }
    }
}
