package p168r4;

import android.content.Context;
import p016b3.C0547y;
/* renamed from: r4.d61 */
/* loaded from: classes2.dex */
public final class d61 implements vr3<p03<no2, C0547y>> {

    /* renamed from: a */
    public final is3<Context> f22109a;

    /* renamed from: b */
    public final is3<im0> f22110b;

    /* renamed from: c */
    public final is3<hp2> f22111c;

    public d61(is3<Context> is3Var, is3<im0> is3Var2, is3<hp2> is3Var3) {
        this.f22109a = is3Var;
        this.f22110b = is3Var2;
        this.f22111c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        final Context mo4079a = this.f22109a.mo4079a();
        final im0 m8207b = ((pu0) this.f22110b).m8207b();
        final hp2 m4418b = ((z61) this.f22111c).m4418b();
        return new p03(mo4079a, m8207b, m4418b) { // from class: r4.c61

            /* renamed from: a */
            public final Context f21414a;

            /* renamed from: b */
            public final im0 f21415b;

            /* renamed from: c */
            public final hp2 f21416c;

            {
                this.f21414a = mo4079a;
                this.f21415b = m8207b;
                this.f21416c = m4418b;
            }

            @Override // p168r4.p03
            public final Object apply(Object obj) {
                Context context = this.f21414a;
                im0 im0Var = this.f21415b;
                hp2 hp2Var = this.f21416c;
                no2 no2Var = (no2) obj;
                C0547y c0547y = new C0547y(context);
                c0547y.m26244e(no2Var.f28379B);
                c0547y.m26243f(no2Var.f28380C.toString());
                c0547y.m26245d(im0Var.f25171a);
                c0547y.m26246c(hp2Var.f24781f);
                return c0547y;
            }
        };
    }
}
