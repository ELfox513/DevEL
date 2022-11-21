package p001a0;

import android.os.Handler;
import android.os.Process;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p022c0.InterfaceC1018a;
/* renamed from: a0.g */
/* loaded from: classes.dex */
public class C0022g {

    /* renamed from: a0.g$b */
    /* loaded from: classes.dex */
    public static class RunnableC0025b<T> implements Runnable {

        /* renamed from: a */
        public Callable<T> f42a;

        /* renamed from: b */
        public InterfaceC1018a<T> f43b;

        /* renamed from: d */
        public Handler f44d;

        /* renamed from: a0.g$b$a */
        /* loaded from: classes.dex */
        public class RunnableC0026a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ InterfaceC1018a f45a;

            /* renamed from: b */
            public final /* synthetic */ Object f46b;

            public RunnableC0026a(InterfaceC1018a interfaceC1018a, Object obj) {
                this.f45a = interfaceC1018a;
                this.f46b = obj;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                this.f45a.accept(this.f46b);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            T t;
            try {
                t = this.f42a.call();
            } catch (Exception unused) {
                t = null;
            }
            this.f44d.post(new RunnableC0026a(this.f43b, t));
        }

        public RunnableC0025b(Handler handler, Callable<T> callable, InterfaceC1018a<T> interfaceC1018a) {
            this.f42a = callable;
            this.f43b = interfaceC1018a;
            this.f44d = handler;
        }
    }

    /* renamed from: a0.g$a */
    /* loaded from: classes.dex */
    public static class ThreadFactoryC0023a implements ThreadFactory {

        /* renamed from: a */
        public String f39a;

        /* renamed from: b */
        public int f40b;

        /* renamed from: a0.g$a$a */
        /* loaded from: classes.dex */
        public static class C0024a extends Thread {

            /* renamed from: a */
            public final int f41a;

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(this.f41a);
                super.run();
            }

            public C0024a(Runnable runnable, String str, int i) {
                super(runnable, str);
                this.f41a = i;
            }
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new C0024a(runnable, this.f39a, this.f40b);
        }

        public ThreadFactoryC0023a(String str, int i) {
            this.f39a = str;
            this.f40b = i;
        }
    }

    /* renamed from: a */
    public static ThreadPoolExecutor m27802a(String str, int i, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, i2, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new ThreadFactoryC0023a(str, i));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    /* renamed from: b */
    public static <T> void m27801b(Executor executor, Callable<T> callable, InterfaceC1018a<T> interfaceC1018a) {
        executor.execute(new RunnableC0025b(C0008b.m27837a(), callable, interfaceC1018a));
    }

    /* renamed from: c */
    public static <T> T m27800c(ExecutorService executorService, Callable<T> callable, int i) {
        try {
            return executorService.submit(callable).get(i, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw e;
        } catch (ExecutionException e2) {
            throw new RuntimeException(e2);
        } catch (TimeoutException unused) {
            throw new InterruptedException("timeout");
        }
    }
}
