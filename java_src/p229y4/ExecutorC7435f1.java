package p229y4;

import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: y4.f1 */
/* loaded from: classes2.dex */
public final class ExecutorC7435f1 implements Executor {

    /* renamed from: b */
    public final ThreadPoolExecutor f37153b;

    /* renamed from: a */
    public final AtomicInteger f37152a = new AtomicInteger(1);

    /* renamed from: d */
    public WeakReference<Thread> f37154d = new WeakReference<>(null);

    /* renamed from: a */
    public final /* synthetic */ Thread m1448a(String str, Runnable runnable) {
        int andIncrement = this.f37152a.getAndIncrement();
        StringBuilder sb = new StringBuilder(34);
        sb.append("Google consent worker #");
        sb.append(andIncrement);
        Thread thread = new Thread(runnable, sb.toString());
        this.f37154d = new WeakReference<>(thread);
        return thread;
    }

    public ExecutorC7435f1(String str) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory("Google consent worker") { // from class: y4.e1

            /* renamed from: b */
            public final /* synthetic */ String f37147b = "Google consent worker";

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return ExecutorC7435f1.this.m1448a(this.f37147b, runnable);
            }
        });
        this.f37153b = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Thread.currentThread() == this.f37154d.get()) {
            runnable.run();
        } else {
            this.f37153b.execute(runnable);
        }
    }
}
