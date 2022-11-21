package p168r4;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.i61 */
/* loaded from: classes2.dex */
public final class i61 implements j71, me1, ic1, z71 {

    /* renamed from: a */
    public final b81 f24978a;

    /* renamed from: b */
    public final no2 f24979b;

    /* renamed from: d */
    public final ScheduledExecutorService f24980d;

    /* renamed from: k */
    public final Executor f24981k;

    /* renamed from: p */
    public final p83<Boolean> f24982p = p83.m8451E();

    /* renamed from: q */
    public ScheduledFuture<?> f24983q;

    public i61(b81 b81Var, no2 no2Var, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f24978a = b81Var;
        this.f24979b = no2Var;
        this.f24980d = scheduledExecutorService;
        this.f24981k = executor;
    }

    @Override // p168r4.ic1
    /* renamed from: b */
    public final synchronized void mo6029b() {
        if (this.f24982p.isDone()) {
            return;
        }
        ScheduledFuture<?> scheduledFuture = this.f24983q;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        this.f24982p.mo8450u(Boolean.TRUE);
    }

    @Override // p168r4.ic1
    /* renamed from: c */
    public final void mo6028c() {
    }

    @Override // p168r4.me1
    /* renamed from: e */
    public final void mo9405e() {
    }

    @Override // p168r4.j71
    /* renamed from: f */
    public final void mo5386f() {
        int i = this.f24979b.f28398U;
        if (i == 0 || i == 1) {
            this.f24978a.zza();
        }
    }

    /* renamed from: g */
    public final /* synthetic */ void m10717g() {
        synchronized (this) {
            if (this.f24982p.isDone()) {
                return;
            }
            this.f24982p.mo8450u(Boolean.TRUE);
        }
    }

    @Override // p168r4.j71
    /* renamed from: h */
    public final void mo5384h() {
    }

    @Override // p168r4.j71
    /* renamed from: j */
    public final void mo5383j() {
    }

    @Override // p168r4.j71
    /* renamed from: k */
    public final void mo5382k() {
    }

    @Override // p168r4.j71
    /* renamed from: l */
    public final void mo5381l() {
    }

    @Override // p168r4.z71
    /* renamed from: o */
    public final synchronized void mo4410o(C5996lt c5996lt) {
        if (this.f24982p.isDone()) {
            return;
        }
        ScheduledFuture<?> scheduledFuture = this.f24983q;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        this.f24982p.mo8449v(new Exception());
    }

    @Override // p168r4.j71
    /* renamed from: q */
    public final void mo5378q(eh0 eh0Var, String str, String str2) {
    }

    @Override // p168r4.me1
    /* renamed from: a */
    public final void mo9406a() {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30968a1)).booleanValue()) {
            no2 no2Var = this.f24979b;
            if (no2Var.f28398U == 2) {
                if (no2Var.f28430q == 0) {
                    this.f24978a.zza();
                    return;
                }
                y73.m4799p(this.f24982p, new h61(this), this.f24981k);
                this.f24983q = this.f24980d.schedule(new Runnable(this) { // from class: r4.g61

                    /* renamed from: a */
                    public final i61 f23913a;

                    {
                        this.f23913a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f23913a.m10717g();
                    }
                }, this.f24979b.f28430q, TimeUnit.MILLISECONDS);
            }
        }
    }
}
