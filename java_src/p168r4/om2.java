package p168r4;

import java.util.concurrent.Executor;
/* renamed from: r4.om2 */
/* loaded from: classes2.dex */
public final class om2 implements t73<xf1> {

    /* renamed from: a */
    public final /* synthetic */ s92 f29071a;

    /* renamed from: b */
    public final /* synthetic */ vg1 f29072b;

    /* renamed from: c */
    public final /* synthetic */ pm2 f29073c;

    public om2(pm2 pm2Var, s92 s92Var, vg1 vg1Var) {
        this.f29073c = pm2Var;
        this.f29071a = s92Var;
        this.f29072b = vg1Var;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        Executor executor;
        Executor executor2;
        final C5996lt m9497h = this.f29072b.mo6160b().m9497h(th);
        synchronized (this.f29073c) {
            this.f29073c.f29529h = null;
            this.f29072b.mo6161a().mo5143B(m9497h);
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30892Q5)).booleanValue()) {
                executor = this.f29073c.f29523b;
                executor.execute(new Runnable(this, m9497h) { // from class: r4.lm2

                    /* renamed from: a */
                    public final om2 f27264a;

                    /* renamed from: b */
                    public final C5996lt f27265b;

                    {
                        this.f27264a = this;
                        this.f27265b = m9497h;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        d92 d92Var;
                        om2 om2Var = this.f27264a;
                        C5996lt c5996lt = this.f27265b;
                        d92Var = om2Var.f29073c.f29525d;
                        d92Var.mo5143B(c5996lt);
                    }
                });
                executor2 = this.f29073c.f29523b;
                executor2.execute(new Runnable(this, m9497h) { // from class: r4.nm2

                    /* renamed from: a */
                    public final om2 f28347a;

                    /* renamed from: b */
                    public final C5996lt f28348b;

                    {
                        this.f28347a = this;
                        this.f28348b = m9497h;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        qn2 qn2Var;
                        om2 om2Var = this.f28347a;
                        C5996lt c5996lt = this.f28348b;
                        qn2Var = om2Var.f29073c.f29526e;
                        qn2Var.mo5143B(c5996lt);
                    }
                });
            }
            yp2.m4611a(m9497h.f27361a, th, "InterstitialAdLoader.onFailure");
            this.f29071a.zza();
        }
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo4626b(xf1 xf1Var) {
        Executor executor;
        Executor executor2;
        d92 d92Var;
        qn2 qn2Var;
        xf1 xf1Var2 = xf1Var;
        synchronized (this.f29073c) {
            this.f29073c.f29529h = null;
            AbstractC5928jz<Boolean> abstractC5928jz = C6225rz.f30892Q5;
            if (((Boolean) C5592av.m12935c().m8098c(abstractC5928jz)).booleanValue()) {
                ub1 m10730f = xf1Var2.m10730f();
                d92Var = this.f29073c.f29525d;
                m10730f.m6564a(d92Var);
                qn2Var = this.f29073c.f29526e;
                m10730f.m6561d(qn2Var);
            }
            this.f29071a.mo7189b(xf1Var2);
            if (((Boolean) C5592av.m12935c().m8098c(abstractC5928jz)).booleanValue()) {
                executor = this.f29073c.f29523b;
                executor.execute(new Runnable(this) { // from class: r4.jm2

                    /* renamed from: a */
                    public final om2 f26076a;

                    {
                        this.f26076a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        d92 d92Var2;
                        d92Var2 = this.f26076a.f29073c.f29525d;
                        d92Var2.mo4268d();
                    }
                });
                executor2 = this.f29073c.f29523b;
                executor2.execute(new Runnable(this) { // from class: r4.km2

                    /* renamed from: a */
                    public final om2 f26482a;

                    {
                        this.f26482a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        qn2 qn2Var2;
                        qn2Var2 = this.f26482a.f29073c.f29526e;
                        qn2Var2.mo4268d();
                    }
                });
            }
        }
    }
}
