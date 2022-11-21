package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
import p016b3.C0460b1;
/* renamed from: r4.z32 */
/* loaded from: classes2.dex */
public final class z32 implements y12<xf1, zp2, n32> {

    /* renamed from: a */
    public final Context f34312a;

    /* renamed from: b */
    public final vg1 f34313b;

    /* renamed from: c */
    public final im0 f34314c;

    /* renamed from: d */
    public final Executor f34315d;

    public z32(Context context, im0 im0Var, vg1 vg1Var, Executor executor) {
        this.f34312a = context;
        this.f34314c = im0Var;
        this.f34313b = vg1Var;
        this.f34315d = executor;
    }

    @Override // p168r4.y12
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ xf1 mo4458a(bp2 bp2Var, no2 no2Var, final t12<zp2, n32> t12Var) {
        yf1 mo6159c = this.f34313b.mo6159c(new x31(bp2Var, no2Var, t12Var.f31616a), new bg1(new dh1(this, t12Var) { // from class: r4.y32

            /* renamed from: a */
            public final z32 f33873a;

            /* renamed from: b */
            public final t12 f33874b;

            {
                this.f33873a = this;
                this.f33874b = t12Var;
            }

            @Override // p168r4.dh1
            /* renamed from: a */
            public final void mo4920a(boolean z, Context context, w71 w71Var) {
                this.f33873a.m4456c(this.f33874b, z, context, w71Var);
            }
        }, null));
        mo6159c.mo5996a().m4759K0(new sy0(t12Var.f31617b), this.f34315d);
        t12Var.f31618c.m9201g7(mo6159c.mo5995f());
        return mo6159c.mo4736h();
    }

    @Override // p168r4.y12
    /* renamed from: b */
    public final void mo4457b(bp2 bp2Var, no2 no2Var, t12<zp2, n32> t12Var) {
        t12Var.f31617b.m4133k(this.f34312a, bp2Var.f21153a.f34161a.f24779d, no2Var.f28435v.toString(), C0460b1.m26418l(no2Var.f28432s), t12Var.f31618c);
    }

    /* renamed from: c */
    public final /* synthetic */ void m4456c(t12 t12Var, boolean z, Context context, w71 w71Var) {
        try {
            ((zp2) t12Var.f31617b).m4122v(z);
            if (this.f34314c.f25173d < ((Integer) C5592av.m12935c().m8098c(C6225rz.f31130u0)).intValue()) {
                ((zp2) t12Var.f31617b).m4137g();
            } else {
                ((zp2) t12Var.f31617b).m4136h(context);
            }
        } catch (mp2 e) {
            cm0.m12438e("Cannot show interstitial.");
            throw new ch1(e.getCause());
        }
    }
}
