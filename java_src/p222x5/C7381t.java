package p222x5;

import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import p196u5.C6930f;
/* renamed from: x5.t */
/* loaded from: classes2.dex */
public final class C7381t {
    /* renamed from: a */
    public static void m1624a(String str, ExecutorService executorService) {
        m1623b(str, executorService, 2L, TimeUnit.SECONDS);
    }

    /* renamed from: e */
    public static ExecutorService m1620e(ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        return Executors.unconfigurableExecutorService(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), threadFactory, rejectedExecutionHandler));
    }

    /* renamed from: x5.t$a */
    /* loaded from: classes2.dex */
    public class ThreadFactoryC7382a implements ThreadFactory {

        /* renamed from: a */
        public final /* synthetic */ String f36959a;

        /* renamed from: b */
        public final /* synthetic */ AtomicLong f36960b;

        /* renamed from: x5.t$a$a */
        /* loaded from: classes2.dex */
        public class C7383a extends AbstractRunnableC7333c {

            /* renamed from: a */
            public final /* synthetic */ Runnable f36961a;

            public C7383a(Runnable runnable) {
                this.f36961a = runnable;
            }

            @Override // p222x5.AbstractRunnableC7333c
            /* renamed from: a */
            public void mo1619a() {
                this.f36961a.run();
            }
        }

        public ThreadFactoryC7382a(String str, AtomicLong atomicLong) {
            this.f36959a = str;
            this.f36960b = atomicLong;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(new C7383a(runnable));
            newThread.setName(this.f36959a + this.f36960b.getAndIncrement());
            return newThread;
        }
    }

    /* renamed from: x5.t$b */
    /* loaded from: classes2.dex */
    public class C7384b extends AbstractRunnableC7333c {

        /* renamed from: a */
        public final /* synthetic */ String f36963a;

        /* renamed from: b */
        public final /* synthetic */ ExecutorService f36964b;

        /* renamed from: d */
        public final /* synthetic */ long f36965d;

        /* renamed from: k */
        public final /* synthetic */ TimeUnit f36966k;

        public C7384b(String str, ExecutorService executorService, long j, TimeUnit timeUnit) {
            this.f36963a = str;
            this.f36964b = executorService;
            this.f36965d = j;
            this.f36966k = timeUnit;
        }

        @Override // p222x5.AbstractRunnableC7333c
        /* renamed from: a */
        public void mo1619a() {
            try {
                C6930f m3016f = C6930f.m3016f();
                m3016f.m3020b("Executing shutdown hook for " + this.f36963a);
                this.f36964b.shutdown();
                if (!this.f36964b.awaitTermination(this.f36965d, this.f36966k)) {
                    C6930f m3016f2 = C6930f.m3016f();
                    m3016f2.m3020b(this.f36963a + " did not shut down in the allocated time. Requesting immediate shutdown.");
                    this.f36964b.shutdownNow();
                }
            } catch (InterruptedException unused) {
                C6930f.m3016f().m3020b(String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", this.f36963a));
                this.f36964b.shutdownNow();
            }
        }
    }

    /* renamed from: d */
    public static ThreadFactory m1621d(String str) {
        return new ThreadFactoryC7382a(str, new AtomicLong(1L));
    }

    /* renamed from: b */
    public static void m1623b(String str, ExecutorService executorService, long j, TimeUnit timeUnit) {
        Runtime runtime = Runtime.getRuntime();
        C7384b c7384b = new C7384b(str, executorService, j, timeUnit);
        runtime.addShutdownHook(new Thread(c7384b, "Crashlytics Shutdown Hook for " + str));
    }

    /* renamed from: c */
    public static ExecutorService m1622c(String str) {
        ExecutorService m1620e = m1620e(m1621d(str), new ThreadPoolExecutor.DiscardPolicy());
        m1624a(str, m1620e);
        return m1620e;
    }
}
