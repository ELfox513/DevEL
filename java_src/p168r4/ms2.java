package p168r4;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* renamed from: r4.ms2 */
/* loaded from: classes2.dex */
public final class ms2 implements vr3<ScheduledExecutorService> {

    /* renamed from: a */
    public final is3<ThreadFactory> f27866a;

    public ms2(is3<ThreadFactory> is3Var) {
        this.f27866a = is3Var;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        a03.m13063a();
        ScheduledExecutorService unconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, this.f27866a.mo4079a()));
        ds3.m11980b(unconfigurableScheduledExecutorService);
        return unconfigurableScheduledExecutorService;
    }
}
