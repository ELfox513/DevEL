package p168r4;

import android.content.Context;
import android.view.View;
/* renamed from: r4.c72 */
/* loaded from: classes2.dex */
public final class c72 implements q12<h11> {

    /* renamed from: a */
    public final Context f21427a;

    /* renamed from: b */
    public final f21 f21428b;

    /* renamed from: c */
    public final n00 f21429c;

    /* renamed from: d */
    public final i83 f21430d;

    /* renamed from: e */
    public final mt2 f21431e;

    public c72(Context context, f21 f21Var, mt2 mt2Var, i83 i83Var, n00 n00Var) {
        this.f21427a = context;
        this.f21428b = f21Var;
        this.f21431e = mt2Var;
        this.f21430d = i83Var;
        this.f21429c = n00Var;
    }

    @Override // p168r4.q12
    /* renamed from: a */
    public final boolean mo4841a(bp2 bp2Var, no2 no2Var) {
        uo2 uo2Var;
        return (this.f21429c == null || (uo2Var = no2Var.f28432s) == null || uo2Var.f32342a == null) ? false : true;
    }

    /* renamed from: c */
    public final /* synthetic */ void m12521c(i00 i00Var) {
        this.f21429c.mo9231S3(i00Var);
    }

    @Override // p168r4.q12
    /* renamed from: b */
    public final h83<h11> mo4840b(bp2 bp2Var, no2 no2Var) {
        i11 mo8151d = this.f21428b.mo8151d(new x31(bp2Var, no2Var, null), new a72(this, new View(this.f21427a), null, y62.f33986a, no2Var.f28434u.get(0)));
        b72 mo8990k = mo8151d.mo8990k();
        uo2 uo2Var = no2Var.f28432s;
        final i00 i00Var = new i00(mo8990k, uo2Var.f32343b, uo2Var.f32342a);
        mt2 mt2Var = this.f21431e;
        return xs2.m5025d(new qs2(this, i00Var) { // from class: r4.z62

            /* renamed from: a */
            public final c72 f34388a;

            /* renamed from: b */
            public final i00 f34389b;

            {
                this.f34388a = this;
                this.f34389b = i00Var;
            }

            @Override // p168r4.qs2
            public final void zza() {
                this.f34388a.m12521c(this.f34389b);
            }
        }, this.f21430d, gt2.CUSTOM_RENDER_SYN, mt2Var).m11947j(gt2.CUSTOM_RENDER_ACK).m11952e(y73.m4814a(mo8151d.mo8993h())).m11948i();
    }
}
