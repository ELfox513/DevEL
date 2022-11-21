package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
/* renamed from: r4.l62 */
/* loaded from: classes2.dex */
public final class l62 implements y12<uo1, zp2, o32> {

    /* renamed from: a */
    public final Context f27111a;

    /* renamed from: b */
    public final Executor f27112b;

    /* renamed from: c */
    public final ap1 f27113c;

    public l62(Context context, Executor executor, ap1 ap1Var) {
        this.f27111a = context;
        this.f27112b = executor;
        this.f27113c = ap1Var;
    }

    /* renamed from: e */
    public static final void m9782e(bp2 bp2Var, no2 no2Var, t12<zp2, o32> t12Var) {
        String str;
        try {
            t12Var.f31617b.m4129o(bp2Var.f21153a.f34161a.f24779d, no2Var.f28435v.toString());
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

    @Override // p168r4.y12
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ uo1 mo4458a(bp2 bp2Var, no2 no2Var, final t12<zp2, o32> t12Var) {
        vo1 mo9879b = this.f27113c.mo9879b(new x31(bp2Var, no2Var, t12Var.f31616a), new wo1(new dh1(t12Var) { // from class: r4.h62

            /* renamed from: a */
            public final t12 f24481a;

            {
                this.f24481a = t12Var;
            }

            @Override // p168r4.dh1
            /* renamed from: a */
            public final void mo4920a(boolean z, Context context, w71 w71Var) {
                t12 t12Var2 = this.f24481a;
                try {
                    ((zp2) t12Var2.f31617b).m4122v(z);
                    ((zp2) t12Var2.f31617b).m4128p();
                } catch (mp2 e) {
                    cm0.m12436g("Cannot show rewarded video.", e);
                    throw new ch1(e.getCause());
                }
            }
        }));
        mo9879b.mo5996a().m4759K0(new sy0(t12Var.f31617b), this.f27112b);
        r81 mo10427b = mo9879b.mo10427b();
        h71 mo10426c = mo9879b.mo10426c();
        t12Var.f31618c.m8906g7(new k62(this, mo9879b.mo6051i(), mo10426c, mo10427b, mo9879b.mo6049k()));
        return mo9879b.mo6052h();
    }

    @Override // p168r4.y12
    /* renamed from: b */
    public final void mo4457b(bp2 bp2Var, no2 no2Var, t12<zp2, o32> t12Var) {
        if (!t12Var.f31617b.m4127q()) {
            t12Var.f31618c.m8905h7(new j62(this, bp2Var, no2Var, t12Var));
            t12Var.f31617b.m4130n(this.f27111a, bp2Var.f21153a.f34161a.f24779d, null, t12Var.f31618c, no2Var.f28435v.toString());
            return;
        }
        m9782e(bp2Var, no2Var, t12Var);
    }
}
