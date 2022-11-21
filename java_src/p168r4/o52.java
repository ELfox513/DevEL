package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
/* renamed from: r4.o52 */
/* loaded from: classes2.dex */
public final class o52 implements y12<uo1, zp2, n32> {

    /* renamed from: a */
    public final Context f28858a;

    /* renamed from: b */
    public final Executor f28859b;

    /* renamed from: c */
    public final ap1 f28860c;

    public o52(Context context, Executor executor, ap1 ap1Var) {
        this.f28858a = context;
        this.f28859b = executor;
        this.f28860c = ap1Var;
    }

    @Override // p168r4.y12
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ uo1 mo4458a(bp2 bp2Var, no2 no2Var, final t12<zp2, n32> t12Var) {
        vo1 mo9879b = this.f28860c.mo9879b(new x31(bp2Var, no2Var, t12Var.f31616a), new wo1(new dh1(t12Var) { // from class: r4.n52

            /* renamed from: a */
            public final t12 f28163a;

            {
                this.f28163a = t12Var;
            }

            @Override // p168r4.dh1
            /* renamed from: a */
            public final void mo4920a(boolean z, Context context, w71 w71Var) {
                t12 t12Var2 = this.f28163a;
                try {
                    ((zp2) t12Var2.f31617b).m4122v(z);
                    ((zp2) t12Var2.f31617b).m4118z(context);
                } catch (mp2 e) {
                    throw new ch1(e.getCause());
                }
            }
        }));
        mo9879b.mo5996a().m4759K0(new sy0(t12Var.f31617b), this.f28859b);
        t12Var.f31618c.m9201g7(mo9879b.mo6047m());
        return mo9879b.mo6052h();
    }

    @Override // p168r4.y12
    /* renamed from: b */
    public final void mo4457b(bp2 bp2Var, no2 no2Var, t12<zp2, n32> t12Var) {
        String str;
        try {
            hp2 hp2Var = bp2Var.f21153a.f34161a;
            if (hp2Var.f24790o.f33649a == 3) {
                t12Var.f31617b.m4146A(this.f28858a, hp2Var.f24779d, no2Var.f28435v.toString(), t12Var.f31618c);
            } else {
                t12Var.f31617b.m4119y(this.f28858a, hp2Var.f24779d, no2Var.f28435v.toString(), t12Var.f31618c);
            }
        } catch (Exception e) {
            String valueOf = String.valueOf(t12Var.f31616a);
            if (valueOf.length() != 0) {
                str = "Fail to load ad from adapter ".concat(valueOf);
            } else {
                str = new String("Fail to load ad from adapter ");
            }
            cm0.m12436g(str, e);
        }
    }
}
