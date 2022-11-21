package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
import p016b3.C0460b1;
/* renamed from: r4.o42 */
/* loaded from: classes2.dex */
public final class o42 implements y12<zi1, zp2, n32> {

    /* renamed from: a */
    public final Context f28847a;

    /* renamed from: b */
    public final sh1 f28848b;

    /* renamed from: c */
    public final Executor f28849c;

    public o42(Context context, sh1 sh1Var, Executor executor) {
        this.f28847a = context;
        this.f28848b = sh1Var;
        this.f28849c = executor;
    }

    /* renamed from: c */
    public static final boolean m8890c(bp2 bp2Var, int i) {
        return bp2Var.f21153a.f34161a.f24782g.contains(Integer.toString(i));
    }

    @Override // p168r4.y12
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ zi1 mo4458a(bp2 bp2Var, no2 no2Var, t12<zp2, n32> t12Var) {
        ej1 m11793C;
        qb0 m4142b = t12Var.f31617b.m4142b();
        rb0 m4141c = t12Var.f31617b.m4141c();
        ub0 m4120x = t12Var.f31617b.m4120x();
        if (m4120x != null && m8890c(bp2Var, 6)) {
            m11793C = ej1.m11794B(m4120x);
        } else if (m4142b != null && m8890c(bp2Var, 6)) {
            m11793C = ej1.m11791E(m4142b);
        } else if (m4142b != null && m8890c(bp2Var, 2)) {
            m11793C = ej1.m11792D(m4142b);
        } else if (m4141c != null && m8890c(bp2Var, 6)) {
            m11793C = ej1.m11790F(m4141c);
        } else if (m4141c != null && m8890c(bp2Var, 1)) {
            m11793C = ej1.m11793C(m4141c);
        } else {
            throw new j52(1, "No native ad mappers");
        }
        if (bp2Var.f21153a.f34161a.f24782g.contains(Integer.toString(m11793C.m11762d0()))) {
            gj1 mo7158d = this.f28848b.mo7158d(new x31(bp2Var, no2Var, t12Var.f31616a), new qj1(m11793C), new fl1(m4141c, m4142b, m4120x, null));
            t12Var.f31618c.m9201g7(mo7158d.mo5995f());
            mo7158d.mo5996a().m4759K0(new sy0(t12Var.f31617b), this.f28849c);
            return mo7158d.mo5993h();
        }
        throw new j52(1, "No corresponding native ad listener");
    }

    @Override // p168r4.y12
    /* renamed from: b */
    public final void mo4457b(bp2 bp2Var, no2 no2Var, t12<zp2, n32> t12Var) {
        hp2 hp2Var = bp2Var.f21153a.f34161a;
        t12Var.f31617b.m4126r(this.f28847a, bp2Var.f21153a.f34161a.f24779d, no2Var.f28435v.toString(), C0460b1.m26418l(no2Var.f28432s), t12Var.f31618c, hp2Var.f24784i, hp2Var.f24782g);
    }
}
