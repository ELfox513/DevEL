package p168r4;

import android.os.Process;
import java.util.concurrent.BlockingQueue;
/* renamed from: r4.b84 */
/* loaded from: classes2.dex */
public final class b84 extends Thread {

    /* renamed from: r */
    public static final boolean f20906r = c94.f21450b;

    /* renamed from: a */
    public final BlockingQueue<q84<?>> f20907a;

    /* renamed from: b */
    public final BlockingQueue<q84<?>> f20908b;

    /* renamed from: d */
    public final z74 f20909d;

    /* renamed from: k */
    public volatile boolean f20910k = false;

    /* renamed from: p */
    public final d94 f20911p;

    /* renamed from: q */
    public final g84 f20912q;

    /* renamed from: b */
    public final void m12843b() {
        this.f20910k = true;
        interrupt();
    }

    /* renamed from: c */
    public final void m12842c() {
        q84<?> take = this.f20907a.take();
        take.m7938h("cache-queue-take");
        take.m7936l(1);
        try {
            take.m7953A();
            y74 mo4406q = this.f20909d.mo4406q(take.m7932v());
            if (mo4406q == null) {
                take.m7938h("cache-miss");
                if (!this.f20911p.m12189c(take)) {
                    this.f20908b.put(take);
                }
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (mo4406q.m4796a(currentTimeMillis)) {
                take.m7938h("cache-hit-expired");
                take.m7931x(mo4406q);
                if (!this.f20911p.m12189c(take)) {
                    this.f20908b.put(take);
                }
                return;
            }
            take.m7938h("cache-hit");
            w84<?> mo5795H = take.mo5795H(new l84(mo4406q.f33997a, mo4406q.f34003g));
            take.m7938h("cache-hit-parsed");
            if (!mo5795H.m5797c()) {
                take.m7938h("cache-parsing-failed");
                this.f20909d.mo4407c(take.m7932v(), true);
                take.m7931x(null);
                if (!this.f20911p.m12189c(take)) {
                    this.f20908b.put(take);
                }
                return;
            }
            if (mo4406q.f34002f < currentTimeMillis) {
                take.m7938h("cache-hit-refresh-needed");
                take.m7931x(mo4406q);
                mo5795H.f33142d = true;
                if (!this.f20911p.m12189c(take)) {
                    this.f20912q.m11250a(take, mo5795H, new a84(this, take));
                } else {
                    this.f20912q.m11250a(take, mo5795H, null);
                }
            } else {
                this.f20912q.m11250a(take, mo5795H, null);
            }
        } finally {
            take.m7936l(2);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (f20906r) {
            c94.m12507a("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f20909d.mo4408b();
        while (true) {
            try {
                m12842c();
            } catch (InterruptedException unused) {
                if (this.f20910k) {
                    Thread.currentThread().interrupt();
                    return;
                }
                c94.m12505c("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b84(BlockingQueue blockingQueue, BlockingQueue<q84<?>> blockingQueue2, BlockingQueue<q84<?>> blockingQueue3, z74 z74Var, g84 g84Var) {
        this.f20907a = blockingQueue;
        this.f20908b = blockingQueue2;
        this.f20909d = blockingQueue3;
        this.f20912q = z74Var;
        this.f20911p = new d94(this, blockingQueue2, z74Var, null);
    }
}
