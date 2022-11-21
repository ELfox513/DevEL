package p168r4;

import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.w71 */
/* loaded from: classes2.dex */
public final class w71 extends yc1<n71> implements n71 {

    /* renamed from: b */
    public final ScheduledExecutorService f33128b;

    /* renamed from: d */
    public ScheduledFuture<?> f33129d;

    /* renamed from: k */
    public boolean f33130k;

    /* renamed from: p */
    public final boolean f33131p;

    @Override // p168r4.n71
    /* renamed from: S */
    public final void mo5818S(final C5996lt c5996lt) {
        m4757S0(new xc1(c5996lt) { // from class: r4.o71

            /* renamed from: a */
            public final C5996lt f28918a;

            {
                this.f28918a = c5996lt;
            }

            @Override // p168r4.xc1
            /* renamed from: a */
            public final void mo4278a(Object obj) {
                ((n71) obj).mo5818S(this.f28918a);
            }
        });
    }

    /* renamed from: b */
    public final synchronized void m5816b() {
        if (this.f33131p) {
            ScheduledFuture<?> scheduledFuture = this.f33129d;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
        }
    }

    /* renamed from: d */
    public final /* synthetic */ void m5814d() {
        synchronized (this) {
            cm0.m12440c("Timeout waiting for show call succeed to be called.");
            mo5817U(new ch1("Timeout for show call succeed."));
            this.f33130k = true;
        }
    }

    @Override // p168r4.n71
    /* renamed from: e */
    public final void mo5813e() {
        m4757S0(q71.f30030a);
    }

    @Override // p168r4.n71
    /* renamed from: U */
    public final void mo5817U(final ch1 ch1Var) {
        if (this.f33131p) {
            if (this.f33130k) {
                return;
            }
            ScheduledFuture<?> scheduledFuture = this.f33129d;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
        }
        m4757S0(new xc1(ch1Var) { // from class: r4.p71

            /* renamed from: a */
            public final ch1 f29378a;

            {
                this.f29378a = ch1Var;
            }

            @Override // p168r4.xc1
            /* renamed from: a */
            public final void mo4278a(Object obj) {
                ((n71) obj).mo5817U(this.f29378a);
            }
        });
    }

    /* renamed from: c */
    public final void m5815c() {
        if (!this.f33131p) {
            return;
        }
        this.f33129d = this.f33128b.schedule(new Runnable(this) { // from class: r4.r71

            /* renamed from: a */
            public final w71 f30483a;

            {
                this.f30483a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f30483a.m5814d();
            }
        }, ((Integer) C5592av.m12935c().m8098c(C6225rz.f30957Y6)).intValue(), TimeUnit.MILLISECONDS);
    }

    public w71(v71 v71Var, Set<ve1<n71>> set, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        super(set);
        this.f33130k = false;
        this.f33128b = scheduledExecutorService;
        this.f33131p = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f30949X6)).booleanValue();
        m4759K0(v71Var, executor);
    }
}
