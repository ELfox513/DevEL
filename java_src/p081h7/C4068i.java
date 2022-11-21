package p081h7;

import android.annotation.SuppressLint;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p029c7.C1078a;
import p099j7.C4381h;
import p099j7.C4385k;
import p099j7.EnumC4375g;
import p108k7.C4481b;
/* renamed from: h7.i */
/* loaded from: classes2.dex */
public class C4068i {

    /* renamed from: f */
    public static final C1078a f17618f = C1078a.m24639e();
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: g */
    public static final C4068i f17619g = new C4068i();

    /* renamed from: a */
    public final ScheduledExecutorService f17620a;

    /* renamed from: b */
    public final ConcurrentLinkedQueue<C4481b> f17621b;

    /* renamed from: c */
    public final Runtime f17622c;

    /* renamed from: d */
    public ScheduledFuture f17623d;

    /* renamed from: e */
    public long f17624e;

    public C4068i() {
        this(Executors.newSingleThreadScheduledExecutor(), Runtime.getRuntime());
    }

    /* renamed from: e */
    public static C4068i m17454e() {
        return f17619g;
    }

    /* renamed from: f */
    public static boolean m17453f(long j) {
        return j <= 0;
    }

    /* renamed from: c */
    public void m17456c(C4381h c4381h) {
        m17450i(c4381h);
    }

    /* renamed from: i */
    public final synchronized void m17450i(final C4381h c4381h) {
        try {
            this.f17620a.schedule(new Runnable() { // from class: h7.h
                @Override // java.lang.Runnable
                public final void run() {
                    C4068i.this.m17452g(c4381h);
                }
            }, 0L, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e) {
            C1078a c1078a = f17618f;
            c1078a.m24635i("Unable to collect Memory Metric: " + e.getMessage());
        }
    }

    /* renamed from: j */
    public final synchronized void m17449j(long j, final C4381h c4381h) {
        this.f17624e = j;
        try {
            this.f17623d = this.f17620a.scheduleAtFixedRate(new Runnable() { // from class: h7.g
                @Override // java.lang.Runnable
                public final void run() {
                    C4068i.this.m17451h(c4381h);
                }
            }, 0L, j, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e) {
            C1078a c1078a = f17618f;
            c1078a.m24635i("Unable to start collecting Memory Metrics: " + e.getMessage());
        }
    }

    public C4068i(ScheduledExecutorService scheduledExecutorService, Runtime runtime) {
        this.f17623d = null;
        this.f17624e = -1L;
        this.f17620a = scheduledExecutorService;
        this.f17621b = new ConcurrentLinkedQueue<>();
        this.f17622c = runtime;
    }

    /* renamed from: d */
    public final int m17455d() {
        return C4385k.m16722c(EnumC4375g.f18290q.m16734c(this.f17622c.totalMemory() - this.f17622c.freeMemory()));
    }

    /* renamed from: l */
    public void m17447l() {
        ScheduledFuture scheduledFuture = this.f17623d;
        if (scheduledFuture == null) {
            return;
        }
        scheduledFuture.cancel(false);
        this.f17623d = null;
        this.f17624e = -1L;
    }

    /* renamed from: m */
    public final C4481b m17446m(C4381h c4381h) {
        if (c4381h == null) {
            return null;
        }
        return C4481b.m16310T().m16307Q(c4381h.m16733a()).m16306S(m17455d()).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m17452g(C4381h c4381h) {
        C4481b m17446m = m17446m(c4381h);
        if (m17446m != null) {
            this.f17621b.add(m17446m);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m17451h(C4381h c4381h) {
        C4481b m17446m = m17446m(c4381h);
        if (m17446m != null) {
            this.f17621b.add(m17446m);
        }
    }

    /* renamed from: k */
    public void m17448k(long j, C4381h c4381h) {
        if (m17453f(j)) {
            return;
        }
        if (this.f17623d != null) {
            if (this.f17624e != j) {
                m17447l();
                m17449j(j, c4381h);
                return;
            }
            return;
        }
        m17449j(j, c4381h);
    }
}
