package p168r4;

import java.util.concurrent.Executor;
/* renamed from: r4.xn2 */
/* loaded from: classes2.dex */
public final class xn2 implements t73<uo1> {

    /* renamed from: a */
    public final /* synthetic */ s92 f33644a;

    /* renamed from: b */
    public final /* synthetic */ zn2 f33645b;

    /* renamed from: c */
    public final /* synthetic */ ao2 f33646c;

    public xn2(ao2 ao2Var, s92 s92Var, zn2 zn2Var) {
        this.f33646c = ao2Var;
        this.f33644a = s92Var;
        this.f33645b = zn2Var;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        am2 am2Var;
        final C5996lt m9497h;
        qn2 qn2Var;
        zo1 m12982h;
        Executor executor;
        am2Var = this.f33646c.f20567e;
        ap1 ap1Var = (ap1) am2Var.mo7799e();
        if (ap1Var == null) {
            m9497h = dq2.m11991b(th, null);
        } else {
            m9497h = ap1Var.mo7604r().m9497h(th);
        }
        synchronized (this.f33646c) {
            if (ap1Var != null) {
                ap1Var.mo9880a().mo5143B(m9497h);
                executor = this.f33646c.f20564b;
                executor.execute(new Runnable(this, m9497h) { // from class: r4.wn2

                    /* renamed from: a */
                    public final xn2 f33266a;

                    /* renamed from: b */
                    public final C5996lt f33267b;

                    {
                        this.f33266a = this;
                        this.f33267b = m9497h;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        qn2 qn2Var2;
                        xn2 xn2Var = this.f33266a;
                        C5996lt c5996lt = this.f33267b;
                        qn2Var2 = xn2Var.f33646c.f20566d;
                        qn2Var2.mo5143B(c5996lt);
                    }
                });
            } else {
                qn2Var = this.f33646c.f20566d;
                qn2Var.mo5143B(m9497h);
                m12982h = this.f33646c.m12982h(this.f33645b);
                m12982h.zza().mo7604r().m9500e().mo5882o();
            }
            yp2.m4611a(m9497h.f27361a, th, "RewardedAdLoader.onFailure");
            this.f33644a.zza();
        }
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo4626b(uo1 uo1Var) {
        qn2 qn2Var;
        Executor executor;
        qn2 qn2Var2;
        qn2 qn2Var3;
        uo1 uo1Var2 = uo1Var;
        synchronized (this.f33646c) {
            ub1 m10730f = uo1Var2.m10730f();
            qn2Var = this.f33646c.f20566d;
            m10730f.m6561d(qn2Var);
            this.f33644a.mo7189b(uo1Var2);
            executor = this.f33646c.f20564b;
            qn2Var2 = this.f33646c.f20566d;
            qn2Var2.getClass();
            executor.execute(vn2.m6059a(qn2Var2));
            qn2Var3 = this.f33646c.f20566d;
            qn2Var3.mo5376v();
        }
    }
}
