package p168r4;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* renamed from: r4.j84 */
/* loaded from: classes2.dex */
public final class j84 extends Thread {

    /* renamed from: a */
    public final BlockingQueue<q84<?>> f25955a;

    /* renamed from: b */
    public final i84 f25956b;

    /* renamed from: d */
    public final z74 f25957d;

    /* renamed from: k */
    public volatile boolean f25958k = false;

    /* renamed from: p */
    public final g84 f25959p;

    /* JADX WARN: Multi-variable type inference failed */
    public j84(BlockingQueue blockingQueue, BlockingQueue<q84<?>> blockingQueue2, i84 i84Var, z74 z74Var, g84 g84Var) {
        this.f25955a = blockingQueue;
        this.f25956b = blockingQueue2;
        this.f25957d = i84Var;
        this.f25959p = z74Var;
    }

    /* renamed from: a */
    public final void m10381a() {
        this.f25958k = true;
        interrupt();
    }

    /* renamed from: b */
    public final void m10380b() {
        q84<?> take = this.f25955a.take();
        SystemClock.elapsedRealtime();
        take.m7936l(3);
        try {
            take.m7938h("network-queue-take");
            take.m7953A();
            TrafficStats.setThreadStatsTag(take.m7939f());
            l84 mo10712a = this.f25956b.mo10712a(take);
            take.m7938h("network-http-complete");
            if (mo10712a.f27132e && take.m7948F()) {
                take.m7937j("not-modified");
                take.m7943M();
                return;
            }
            w84<?> mo5795H = take.mo5795H(mo10712a);
            take.m7938h("network-parse-complete");
            if (mo5795H.f33140b != null) {
                this.f25957d.mo4409a(take.m7932v(), mo5795H.f33140b);
                take.m7938h("network-cache-written");
            }
            take.m7949E();
            this.f25959p.m11250a(take, mo5795H, null);
            take.m7944L(mo5795H);
        } catch (z84 e) {
            SystemClock.elapsedRealtime();
            this.f25959p.m11249b(take, e);
            take.m7943M();
        } catch (Exception e2) {
            c94.m12504d(e2, "Unhandled exception %s", e2.toString());
            z84 z84Var = new z84(e2);
            SystemClock.elapsedRealtime();
            this.f25959p.m11249b(take, z84Var);
            take.m7943M();
        } finally {
            take.m7936l(4);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                m10380b();
            } catch (InterruptedException unused) {
                if (this.f25958k) {
                    Thread.currentThread().interrupt();
                    return;
                }
                c94.m12505c("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
