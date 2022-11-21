package p168r4;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p026c4.InterfaceC1045f;
import p235z2.C7601t;
/* renamed from: r4.b01 */
/* loaded from: classes2.dex */
public final class b01 implements InterfaceC5806gn {

    /* renamed from: a */
    public final ScheduledExecutorService f20788a;

    /* renamed from: b */
    public final InterfaceC1045f f20789b;

    /* renamed from: c */
    public ScheduledFuture<?> f20790c;

    /* renamed from: d */
    public long f20791d = -1;

    /* renamed from: e */
    public long f20792e = -1;

    /* renamed from: f */
    public Runnable f20793f = null;

    /* renamed from: g */
    public boolean f20794g = false;

    public b01(ScheduledExecutorService scheduledExecutorService, InterfaceC1045f interfaceC1045f) {
        this.f20788a = scheduledExecutorService;
        this.f20789b = interfaceC1045f;
        C7601t.m936g().m10859b(this);
    }

    /* renamed from: a */
    public final synchronized void m12895a(int i, Runnable runnable) {
        this.f20793f = runnable;
        long j = i;
        this.f20791d = this.f20789b.mo24762b() + j;
        this.f20790c = this.f20788a.schedule(runnable, j, TimeUnit.MILLISECONDS);
    }

    /* renamed from: b */
    public final synchronized void m12894b() {
        if (!this.f20794g) {
            ScheduledFuture<?> scheduledFuture = this.f20790c;
            if (scheduledFuture != null && !scheduledFuture.isDone()) {
                this.f20790c.cancel(true);
                this.f20792e = this.f20791d - this.f20789b.mo24762b();
            } else {
                this.f20792e = -1L;
            }
            this.f20794g = true;
        }
    }

    /* renamed from: c */
    public final synchronized void m12893c() {
        ScheduledFuture<?> scheduledFuture;
        if (this.f20794g) {
            if (this.f20792e > 0 && (scheduledFuture = this.f20790c) != null && scheduledFuture.isCancelled()) {
                this.f20790c = this.f20788a.schedule(this.f20793f, this.f20792e, TimeUnit.MILLISECONDS);
            }
            this.f20794g = false;
        }
    }

    @Override // p168r4.InterfaceC5806gn
    /* renamed from: R */
    public final void mo7475R(boolean z) {
        if (z) {
            m12893c();
        } else {
            m12894b();
        }
    }
}
