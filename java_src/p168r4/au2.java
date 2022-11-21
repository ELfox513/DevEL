package p168r4;

import java.util.Map;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: r4.au2 */
/* loaded from: classes2.dex */
public final class au2 implements xt2 {

    /* renamed from: a */
    public final xt2 f20618a;

    /* renamed from: b */
    public final Queue<wt2> f20619b = new LinkedBlockingQueue();

    /* renamed from: c */
    public final int f20620c = ((Integer) C5592av.m12935c().m8098c(C6225rz.f31064l6)).intValue();

    /* renamed from: d */
    public final AtomicBoolean f20621d = new AtomicBoolean(false);

    @Override // p168r4.xt2
    /* renamed from: b */
    public final String mo4984b(wt2 wt2Var) {
        return this.f20618a.mo4984b(wt2Var);
    }

    @Override // p168r4.xt2
    /* renamed from: a */
    public final void mo4985a(wt2 wt2Var) {
        if (this.f20619b.size() >= this.f20620c) {
            if (!this.f20621d.getAndSet(true)) {
                Queue<wt2> queue = this.f20619b;
                wt2 m5590a = wt2.m5590a("dropped_event");
                Map<String, String> m5581j = wt2Var.m5581j();
                if (m5581j.containsKey("action")) {
                    m5590a.m5588c("dropped_action", m5581j.get("action"));
                }
                queue.offer(m5590a);
                return;
            }
            return;
        }
        this.f20619b.offer(wt2Var);
    }

    /* renamed from: c */
    public final /* bridge */ /* synthetic */ void m12938c() {
        while (!this.f20619b.isEmpty()) {
            this.f20618a.mo4985a(this.f20619b.remove());
        }
    }

    public au2(xt2 xt2Var, ScheduledExecutorService scheduledExecutorService) {
        this.f20618a = xt2Var;
        long intValue = ((Integer) C5592av.m12935c().m8098c(C6225rz.f31056k6)).intValue();
        scheduledExecutorService.scheduleAtFixedRate(new Runnable(this) { // from class: r4.zt2

            /* renamed from: a */
            public final au2 f34728a;

            {
                this.f34728a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f34728a.m12938c();
            }
        }, intValue, intValue, TimeUnit.MILLISECONDS);
    }
}
