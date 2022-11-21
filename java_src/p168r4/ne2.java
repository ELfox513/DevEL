package p168r4;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p168r4.dg2;
/* renamed from: r4.ne2 */
/* loaded from: classes2.dex */
public final class ne2<S extends dg2> implements eg2<S> {

    /* renamed from: a */
    public final eg2<S> f28259a;

    /* renamed from: b */
    public final long f28260b;

    /* renamed from: c */
    public final ScheduledExecutorService f28261c;

    public ne2(eg2<S> eg2Var, long j, ScheduledExecutorService scheduledExecutorService) {
        this.f28259a = eg2Var;
        this.f28260b = j;
        this.f28261c = scheduledExecutorService;
    }

    @Override // p168r4.eg2
    public final h83<S> zza() {
        h83<S> zza = this.f28259a.zza();
        long j = this.f28260b;
        if (j > 0) {
            zza = y73.m4807h(zza, j, TimeUnit.MILLISECONDS, this.f28261c);
        }
        return y73.m4808g(zza, Throwable.class, me2.f27588a, qm0.f30195f);
    }
}
