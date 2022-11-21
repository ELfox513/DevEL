package p168r4;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* renamed from: r4.j22 */
/* loaded from: classes2.dex */
public final class j22 implements q12<p01> {

    /* renamed from: a */
    public final j01 f25865a;

    /* renamed from: b */
    public final Context f25866b;

    /* renamed from: c */
    public final rp1 f25867c;

    /* renamed from: d */
    public final Executor f25868d;

    public j22(j01 j01Var, Context context, Executor executor, rp1 rp1Var) {
        this.f25866b = context;
        this.f25865a = j01Var;
        this.f25868d = executor;
        this.f25867c = rp1Var;
    }

    @Override // p168r4.q12
    /* renamed from: a */
    public final boolean mo4841a(bp2 bp2Var, no2 no2Var) {
        uo2 uo2Var = no2Var.f28432s;
        return (uo2Var == null || uo2Var.f32342a == null) ? false : true;
    }

    @Override // p168r4.q12
    /* renamed from: b */
    public final h83<p01> mo4840b(final bp2 bp2Var, final no2 no2Var) {
        return y73.m4806i(y73.m4814a(null), new e73(this, bp2Var, no2Var) { // from class: r4.g22

            /* renamed from: a */
            public final j22 f23838a;

            /* renamed from: b */
            public final bp2 f23839b;

            /* renamed from: c */
            public final no2 f23840c;

            {
                this.f23838a = this;
                this.f23839b = bp2Var;
                this.f23840c = no2Var;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f23838a.m10433c(this.f23839b, this.f23840c, obj);
            }
        }, this.f25868d);
    }

    /* renamed from: c */
    public final /* synthetic */ h83 m10433c(bp2 bp2Var, no2 no2Var, Object obj) {
        C6478yt m9587b = lp2.m9587b(this.f25866b, no2Var.f28434u);
        final cs0 m7400b = this.f25867c.m7400b(m9587b, no2Var, bp2Var.f21154b.f20574b);
        final c01 mo9930a = this.f25865a.mo9930a(new x31(bp2Var, no2Var, null), new d01((View) m7400b, m7400b, lp2.m9586c(m9587b), no2Var.f28400W, no2Var.f28405a0, no2Var.f28388K));
        mo9930a.mo11363i().m7728i(m7400b, false, null);
        b81 mo4737d = mo9930a.mo4737d();
        d81 d81Var = new d81(m7400b) { // from class: r4.h22

            /* renamed from: a */
            public final cs0 f24412a;

            {
                this.f24412a = m7400b;
            }

            @Override // p168r4.d81
            /* renamed from: g */
            public final void mo5385g() {
                cs0 cs0Var = this.f24412a;
                if (cs0Var.mo5057o0() != null) {
                    cs0Var.mo5057o0().mo7006h();
                }
            }
        };
        i83 i83Var = qm0.f30195f;
        mo4737d.m4759K0(d81Var, i83Var);
        mo9930a.mo11363i();
        uo2 uo2Var = no2Var.f28432s;
        return y73.m4805j(qp1.m7727j(m7400b, uo2Var.f32343b, uo2Var.f32342a), new p03(mo9930a) { // from class: r4.i22

            /* renamed from: a */
            public final c01 f24936a;

            {
                this.f24936a = mo9930a;
            }

            @Override // p168r4.p03
            public final Object apply(Object obj2) {
                return this.f24936a.mo11364h();
            }
        }, i83Var);
    }
}
