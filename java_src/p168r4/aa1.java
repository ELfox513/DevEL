package p168r4;

import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p026c4.InterfaceC1045f;
/* renamed from: r4.aa1 */
/* loaded from: classes2.dex */
public final class aa1 extends yc1<ba1> {

    /* renamed from: b */
    public final ScheduledExecutorService f20431b;

    /* renamed from: d */
    public final InterfaceC1045f f20432d;

    /* renamed from: k */
    public long f20433k;

    /* renamed from: p */
    public long f20434p;

    /* renamed from: q */
    public boolean f20435q;

    /* renamed from: r */
    public ScheduledFuture<?> f20436r;

    public aa1(ScheduledExecutorService scheduledExecutorService, InterfaceC1045f interfaceC1045f) {
        super(Collections.emptySet());
        this.f20433k = -1L;
        this.f20434p = -1L;
        this.f20435q = false;
        this.f20431b = scheduledExecutorService;
        this.f20432d = interfaceC1045f;
    }

    /* renamed from: T0 */
    public final synchronized void m13041T0(int i) {
        if (i <= 0) {
            return;
        }
        long millis = TimeUnit.SECONDS.toMillis(i);
        if (this.f20435q) {
            long j = this.f20434p;
            if (j <= 0 || millis >= j) {
                millis = j;
            }
            this.f20434p = millis;
            return;
        }
        long mo24762b = this.f20432d.mo24762b();
        long j2 = this.f20433k;
        if (mo24762b <= j2 && j2 - this.f20432d.mo24762b() <= millis) {
            return;
        }
        m13040Z0(millis);
    }

    /* renamed from: Z0 */
    public final synchronized void m13040Z0(long j) {
        ScheduledFuture<?> scheduledFuture = this.f20436r;
        if (scheduledFuture != null && !scheduledFuture.isDone()) {
            this.f20436r.cancel(true);
        }
        this.f20433k = this.f20432d.mo24762b() + j;
        this.f20436r = this.f20431b.schedule(new z91(this, null), j, TimeUnit.MILLISECONDS);
    }

    /* renamed from: a */
    public final synchronized void m13039a() {
        if (this.f20435q) {
            if (this.f20434p > 0 && this.f20436r.isCancelled()) {
                m13040Z0(this.f20434p);
            }
            this.f20435q = false;
        }
    }

    /* renamed from: b */
    public final synchronized void m13038b() {
        this.f20435q = false;
        m13040Z0(0L);
    }

    public final synchronized void zza() {
        if (!this.f20435q) {
            ScheduledFuture<?> scheduledFuture = this.f20436r;
            if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                this.f20436r.cancel(true);
                this.f20434p = this.f20433k - this.f20432d.mo24762b();
            } else {
                this.f20434p = -1L;
            }
            this.f20435q = true;
        }
    }
}
