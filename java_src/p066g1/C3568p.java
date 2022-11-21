package p066g1;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import p209w0.AbstractC7114j;
/* renamed from: g1.p */
/* loaded from: classes.dex */
public class C3568p {

    /* renamed from: f */
    public static final String f16134f = AbstractC7114j.m2489f("WorkTimer");

    /* renamed from: a */
    public final ThreadFactory f16135a;

    /* renamed from: b */
    public final ScheduledExecutorService f16136b;

    /* renamed from: c */
    public final Map<String, RunnableC3571c> f16137c;

    /* renamed from: d */
    public final Map<String, InterfaceC3570b> f16138d;

    /* renamed from: e */
    public final Object f16139e;

    /* renamed from: g1.p$a */
    /* loaded from: classes.dex */
    public class ThreadFactoryC3569a implements ThreadFactory {

        /* renamed from: a */
        public int f16140a = 0;

        public ThreadFactoryC3569a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
            newThread.setName("WorkManager-WorkTimer-thread-" + this.f16140a);
            this.f16140a = this.f16140a + 1;
            return newThread;
        }
    }

    /* renamed from: g1.p$b */
    /* loaded from: classes.dex */
    public interface InterfaceC3570b {
        /* renamed from: a */
        void mo18608a(String str);
    }

    /* renamed from: g1.p$c */
    /* loaded from: classes.dex */
    public static class RunnableC3571c implements Runnable {

        /* renamed from: a */
        public final C3568p f16142a;

        /* renamed from: b */
        public final String f16143b;

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f16142a.f16139e) {
                if (this.f16142a.f16137c.remove(this.f16143b) != null) {
                    InterfaceC3570b remove = this.f16142a.f16138d.remove(this.f16143b);
                    if (remove != null) {
                        remove.mo18608a(this.f16143b);
                    }
                } else {
                    AbstractC7114j.m2491c().mo2488a("WrkTimerRunnable", String.format("Timer with %s is already marked as complete.", this.f16143b), new Throwable[0]);
                }
            }
        }

        public RunnableC3571c(C3568p c3568p, String str) {
            this.f16142a = c3568p;
            this.f16143b = str;
        }
    }

    /* renamed from: a */
    public void m18611a() {
        if (!this.f16136b.isShutdown()) {
            this.f16136b.shutdownNow();
        }
    }

    /* renamed from: b */
    public void m18610b(String str, long j, InterfaceC3570b interfaceC3570b) {
        synchronized (this.f16139e) {
            AbstractC7114j.m2491c().mo2488a(f16134f, String.format("Starting timer for %s", str), new Throwable[0]);
            m18609c(str);
            RunnableC3571c runnableC3571c = new RunnableC3571c(this, str);
            this.f16137c.put(str, runnableC3571c);
            this.f16138d.put(str, interfaceC3570b);
            this.f16136b.schedule(runnableC3571c, j, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: c */
    public void m18609c(String str) {
        synchronized (this.f16139e) {
            if (this.f16137c.remove(str) != null) {
                AbstractC7114j.m2491c().mo2488a(f16134f, String.format("Stopping timer for %s", str), new Throwable[0]);
                this.f16138d.remove(str);
            }
        }
    }

    public C3568p() {
        ThreadFactoryC3569a threadFactoryC3569a = new ThreadFactoryC3569a();
        this.f16135a = threadFactoryC3569a;
        this.f16137c = new HashMap();
        this.f16138d = new HashMap();
        this.f16139e = new Object();
        this.f16136b = Executors.newSingleThreadScheduledExecutor(threadFactoryC3569a);
    }
}
