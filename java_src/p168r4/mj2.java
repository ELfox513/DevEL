package p168r4;

import java.util.concurrent.Executor;
/* renamed from: r4.mj2 */
/* loaded from: classes2.dex */
public final class mj2 implements t73 {

    /* renamed from: a */
    public final /* synthetic */ s92 f27750a;

    /* renamed from: b */
    public final /* synthetic */ nj2 f27751b;

    /* renamed from: c */
    public final /* synthetic */ pj2 f27752c;

    public mj2(pj2 pj2Var, s92 s92Var, nj2 nj2Var) {
        this.f27752c = pj2Var;
        this.f27750a = s92Var;
        this.f27751b = nj2Var;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        am2 am2Var;
        final C5996lt m9497h;
        fk2 fk2Var;
        q61 m8293k;
        Executor executor;
        am2Var = this.f27752c.f29489e;
        o01 o01Var = (o01) am2Var.mo7799e();
        if (o01Var == null) {
            m9497h = dq2.m11991b(th, null);
        } else {
            m9497h = o01Var.mo7604r().m9497h(th);
        }
        synchronized (this.f27752c) {
            this.f27752c.f29492h = null;
            if (o01Var != null) {
                o01Var.mo8944x().mo5143B(m9497h);
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30884P5)).booleanValue()) {
                    executor = this.f27752c.f29486b;
                    executor.execute(new Runnable(this, m9497h) { // from class: r4.lj2

                        /* renamed from: a */
                        public final mj2 f27235a;

                        /* renamed from: b */
                        public final C5996lt f27236b;

                        {
                            this.f27235a = this;
                            this.f27236b = m9497h;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            fk2 fk2Var2;
                            mj2 mj2Var = this.f27235a;
                            C5996lt c5996lt = this.f27236b;
                            fk2Var2 = mj2Var.f27752c.f29488d;
                            fk2Var2.mo5143B(c5996lt);
                        }
                    });
                }
            } else {
                fk2Var = this.f27752c.f29488d;
                fk2Var.mo5143B(m9497h);
                m8293k = this.f27752c.m8293k(this.f27751b);
                ((o01) m8293k.mo8018d()).mo7604r().m9500e().mo5882o();
            }
            yp2.m4611a(m9497h.f27361a, th, "AppOpenAdLoader.onFailure");
            this.f27750a.zza();
        }
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo4626b(Object obj) {
        fk2 fk2Var;
        i31 i31Var = (i31) obj;
        synchronized (this.f27752c) {
            this.f27752c.f29492h = null;
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30884P5)).booleanValue()) {
                ub1 m10730f = i31Var.m10730f();
                fk2Var = this.f27752c.f29488d;
                m10730f.m6562c(fk2Var);
            }
            this.f27750a.mo7189b(i31Var);
        }
    }
}
