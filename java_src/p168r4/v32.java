package p168r4;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* renamed from: r4.v32 */
/* loaded from: classes2.dex */
public final class v32 implements q12<xf1> {

    /* renamed from: a */
    public final Context f32564a;

    /* renamed from: b */
    public final rp1 f32565b;

    /* renamed from: c */
    public final vg1 f32566c;

    /* renamed from: d */
    public final hp2 f32567d;

    /* renamed from: e */
    public final Executor f32568e;

    /* renamed from: f */
    public final im0 f32569f;

    /* renamed from: g */
    public final x50 f32570g;

    /* renamed from: h */
    public final boolean f32571h = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31088o6)).booleanValue();

    @Override // p168r4.q12
    /* renamed from: a */
    public final boolean mo4841a(bp2 bp2Var, no2 no2Var) {
        uo2 uo2Var = no2Var.f28432s;
        return (uo2Var == null || uo2Var.f32342a == null) ? false : true;
    }

    @Override // p168r4.q12
    /* renamed from: b */
    public final h83<xf1> mo4840b(final bp2 bp2Var, final no2 no2Var) {
        final wp1 wp1Var = new wp1();
        h83<xf1> m4806i = y73.m4806i(y73.m4814a(null), new e73(this, no2Var, bp2Var, wp1Var) { // from class: r4.q32

            /* renamed from: a */
            public final v32 f29959a;

            /* renamed from: b */
            public final no2 f29960b;

            /* renamed from: c */
            public final bp2 f29961c;

            /* renamed from: d */
            public final wp1 f29962d;

            {
                this.f29959a = this;
                this.f29960b = no2Var;
                this.f29961c = bp2Var;
                this.f29962d = wp1Var;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f29959a.m6237c(this.f29960b, this.f29961c, this.f29962d, obj);
            }
        }, this.f32568e);
        m4806i.mo6087c(r32.m7618a(wp1Var), this.f32568e);
        return m4806i;
    }

    /* renamed from: c */
    public final /* synthetic */ h83 m6237c(final no2 no2Var, bp2 bp2Var, wp1 wp1Var, Object obj) {
        x50 x50Var;
        final cs0 m7400b = this.f32565b.m7400b(this.f32567d.f24780e, no2Var, bp2Var.f21154b.f20574b);
        m7400b.mo5095a0(no2Var.f28396S);
        wp1Var.m5633a(this.f32564a, (View) m7400b);
        vm0 vm0Var = new vm0();
        final yf1 mo6159c = this.f32566c.mo6159c(new x31(bp2Var, no2Var, null), new bg1(new u32(this.f32564a, this.f32569f, vm0Var, no2Var, m7400b, this.f32567d, this.f32571h, this.f32570g), m7400b));
        vm0Var.m6086e(mo6159c);
        mo6159c.mo4737d().m4759K0(new d81(m7400b) { // from class: r4.s32

            /* renamed from: a */
            public final cs0 f31239a;

            {
                this.f31239a = m7400b;
            }

            @Override // p168r4.d81
            /* renamed from: g */
            public final void mo5385g() {
                cs0 cs0Var = this.f31239a;
                if (cs0Var.mo5057o0() != null) {
                    cs0Var.mo5057o0().mo7006h();
                }
            }
        }, qm0.f30195f);
        qp1 mo4733k = mo6159c.mo4733k();
        if (this.f32571h) {
            x50Var = this.f32570g;
        } else {
            x50Var = null;
        }
        mo4733k.m7728i(m7400b, true, x50Var);
        mo6159c.mo4733k();
        uo2 uo2Var = no2Var.f28432s;
        return y73.m4805j(qp1.m7727j(m7400b, uo2Var.f32343b, uo2Var.f32342a), new p03(this, m7400b, no2Var, mo6159c) { // from class: r4.t32

            /* renamed from: a */
            public final v32 f31636a;

            /* renamed from: b */
            public final cs0 f31637b;

            /* renamed from: c */
            public final no2 f31638c;

            /* renamed from: d */
            public final yf1 f31639d;

            {
                this.f31636a = this;
                this.f31637b = m7400b;
                this.f31638c = no2Var;
                this.f31639d = mo6159c;
            }

            @Override // p168r4.p03
            public final Object apply(Object obj2) {
                cs0 cs0Var = this.f31637b;
                no2 no2Var2 = this.f31638c;
                yf1 yf1Var = this.f31639d;
                if (no2Var2.f28386I) {
                    cs0Var.mo5115O();
                }
                cs0Var.mo5037w0();
                cs0Var.onPause();
                return yf1Var.mo4736h();
            }
        }, this.f32568e);
    }

    public v32(Context context, im0 im0Var, hp2 hp2Var, Executor executor, vg1 vg1Var, rp1 rp1Var, x50 x50Var) {
        this.f32564a = context;
        this.f32567d = hp2Var;
        this.f32566c = vg1Var;
        this.f32568e = executor;
        this.f32569f = im0Var;
        this.f32565b = rp1Var;
        this.f32570g = x50Var;
    }
}
