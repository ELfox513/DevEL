package p168r4;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.l83 */
/* loaded from: classes2.dex */
public final class l83<V> extends r73<V> implements ScheduledFuture<V> {

    /* renamed from: b */
    public final ScheduledFuture<?> f27127b;

    public l83(h83<V> h83Var, ScheduledFuture<?> scheduledFuture) {
        super(h83Var);
        this.f27127b = scheduledFuture;
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.f27127b.getDelay(timeUnit);
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Delayed delayed) {
        return this.f27127b.compareTo(delayed);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean cancel = mo7596h().cancel(z);
        if (cancel) {
            this.f27127b.cancel(z);
        }
        return cancel;
    }
}
