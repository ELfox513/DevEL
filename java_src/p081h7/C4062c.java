package p081h7;

import android.os.Build;
import android.os.Process;
import android.system.C0124Os;
import android.system.OsConstants;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p029c7.C1078a;
import p099j7.C4381h;
import p108k7.C4491e;
/* renamed from: h7.c */
/* loaded from: classes2.dex */
public class C4062c {

    /* renamed from: g */
    public static final C1078a f17593g = C1078a.m24639e();

    /* renamed from: h */
    public static final long f17594h = TimeUnit.SECONDS.toMicros(1);

    /* renamed from: i */
    public static C4062c f17595i = null;

    /* renamed from: c */
    public final String f17598c;

    /* renamed from: d */
    public final long f17599d;

    /* renamed from: e */
    public ScheduledFuture f17600e = null;

    /* renamed from: f */
    public long f17601f = -1;

    /* renamed from: a */
    public final ConcurrentLinkedQueue<C4491e> f17596a = new ConcurrentLinkedQueue<>();

    /* renamed from: b */
    public final ScheduledExecutorService f17597b = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: g */
    public static boolean m17471g(long j) {
        return j <= 0;
    }

    /* renamed from: c */
    public void m17475c(C4381h c4381h) {
        m17468j(c4381h);
    }

    /* renamed from: d */
    public final long m17474d(long j) {
        double d = j;
        double d2 = this.f17599d;
        Double.isNaN(d);
        Double.isNaN(d2);
        double d3 = d / d2;
        double d4 = f17594h;
        Double.isNaN(d4);
        return Math.round(d3 * d4);
    }

    /* renamed from: j */
    public final synchronized void m17468j(final C4381h c4381h) {
        try {
            this.f17597b.schedule(new Runnable() { // from class: h7.b
                @Override // java.lang.Runnable
                public final void run() {
                    C4062c.this.m17470h(c4381h);
                }
            }, 0L, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e) {
            C1078a c1078a = f17593g;
            c1078a.m24635i("Unable to collect Cpu Metric: " + e.getMessage());
        }
    }

    /* renamed from: k */
    public final synchronized void m17467k(long j, final C4381h c4381h) {
        this.f17601f = j;
        try {
            this.f17600e = this.f17597b.scheduleAtFixedRate(new Runnable() { // from class: h7.a
                @Override // java.lang.Runnable
                public final void run() {
                    C4062c.this.m17469i(c4381h);
                }
            }, 0L, j, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e) {
            C1078a c1078a = f17593g;
            c1078a.m24635i("Unable to start collecting Cpu Metrics: " + e.getMessage());
        }
    }

    /* renamed from: n */
    public final C4491e m17464n(C4381h c4381h) {
        if (c4381h == null) {
            return null;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(this.f17598c));
            try {
                long m16733a = c4381h.m16733a();
                String[] split = bufferedReader.readLine().split(" ");
                long parseLong = Long.parseLong(split[13]);
                long parseLong2 = Long.parseLong(split[15]);
                C4491e build = C4491e.m16273U().m16269Q(m16733a).m16268S(m17474d(Long.parseLong(split[14]) + Long.parseLong(split[16]))).m16267T(m17474d(parseLong + parseLong2)).build();
                bufferedReader.close();
                return build;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                }
                throw th;
            }
        } catch (IOException e) {
            C1078a c1078a = f17593g;
            c1078a.m24635i("Unable to read 'proc/[pid]/stat' file: " + e.getMessage());
            return null;
        } catch (ArrayIndexOutOfBoundsException e2) {
            e = e2;
            C1078a c1078a2 = f17593g;
            c1078a2.m24635i("Unexpected '/proc/[pid]/stat' file format encountered: " + e.getMessage());
            return null;
        } catch (NullPointerException e3) {
            e = e3;
            C1078a c1078a22 = f17593g;
            c1078a22.m24635i("Unexpected '/proc/[pid]/stat' file format encountered: " + e.getMessage());
            return null;
        } catch (NumberFormatException e4) {
            e = e4;
            C1078a c1078a222 = f17593g;
            c1078a222.m24635i("Unexpected '/proc/[pid]/stat' file format encountered: " + e.getMessage());
            return null;
        }
    }

    /* renamed from: f */
    public static C4062c m17472f() {
        if (f17595i == null) {
            f17595i = new C4062c();
        }
        return f17595i;
    }

    /* renamed from: e */
    public final long m17473e() {
        if (Build.VERSION.SDK_INT >= 21) {
            return C0124Os.sysconf(OsConstants._SC_CLK_TCK);
        }
        return -1L;
    }

    /* renamed from: l */
    public void m17466l(long j, C4381h c4381h) {
        long j2 = this.f17599d;
        if (j2 == -1 || j2 == 0 || m17471g(j)) {
            return;
        }
        if (this.f17600e != null) {
            if (this.f17601f != j) {
                m17465m();
                m17467k(j, c4381h);
                return;
            }
            return;
        }
        m17467k(j, c4381h);
    }

    /* renamed from: m */
    public void m17465m() {
        ScheduledFuture scheduledFuture = this.f17600e;
        if (scheduledFuture == null) {
            return;
        }
        scheduledFuture.cancel(false);
        this.f17600e = null;
        this.f17601f = -1L;
    }

    public C4062c() {
        int myPid = Process.myPid();
        this.f17598c = "/proc/" + Integer.toString(myPid) + "/stat";
        this.f17599d = m17473e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m17470h(C4381h c4381h) {
        C4491e m17464n = m17464n(c4381h);
        if (m17464n != null) {
            this.f17596a.add(m17464n);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ void m17469i(C4381h c4381h) {
        C4491e m17464n = m17464n(c4381h);
        if (m17464n != null) {
            this.f17596a.add(m17464n);
        }
    }
}
