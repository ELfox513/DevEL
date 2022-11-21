package p168r4;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.n83 */
/* loaded from: classes2.dex */
public final class n83 extends k83 implements ScheduledExecutorService {

    /* renamed from: b */
    public final ScheduledExecutorService f28201b;

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        x83 m5449F = x83.m5449F(runnable, null);
        return new l83(m5449F, this.f28201b.schedule(m5449F, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        m83 m83Var = new m83(runnable);
        return new l83(m83Var, this.f28201b.scheduleAtFixedRate(m83Var, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        m83 m83Var = new m83(runnable);
        return new l83(m83Var, this.f28201b.scheduleWithFixedDelay(m83Var, j, j2, timeUnit));
    }

    public n83(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        scheduledExecutorService.getClass();
        this.f28201b = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        x83 x83Var = new x83(callable);
        return new l83(x83Var, this.f28201b.schedule(x83Var, j, timeUnit));
    }
}
