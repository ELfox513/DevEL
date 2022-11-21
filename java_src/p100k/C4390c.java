package p100k;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: k.c */
/* loaded from: classes.dex */
public class C4390c extends AbstractC4392d {

    /* renamed from: a */
    public final Object f18303a = new Object();

    /* renamed from: b */
    public final ExecutorService f18304b = Executors.newFixedThreadPool(4, new ThreadFactoryC4391a());

    /* renamed from: c */
    public volatile Handler f18305c;

    /* renamed from: k.c$a */
    /* loaded from: classes.dex */
    public class ThreadFactoryC4391a implements ThreadFactory {

        /* renamed from: a */
        public final AtomicInteger f18306a = new AtomicInteger(0);

        public ThreadFactoryC4391a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.f18306a.getAndIncrement())));
            return thread;
        }
    }

    @Override // p100k.AbstractC4392d
    /* renamed from: a */
    public void mo16715a(Runnable runnable) {
        this.f18304b.execute(runnable);
    }

    @Override // p100k.AbstractC4392d
    /* renamed from: b */
    public boolean mo16714b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* renamed from: d */
    public static Handler m16716d(Looper looper) {
        Handler createAsync;
        if (Build.VERSION.SDK_INT >= 28) {
            createAsync = Handler.createAsync(looper);
            return createAsync;
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException unused) {
            return new Handler(looper);
        } catch (InvocationTargetException unused2) {
            return new Handler(looper);
        }
    }

    @Override // p100k.AbstractC4392d
    /* renamed from: c */
    public void mo16713c(Runnable runnable) {
        if (this.f18305c == null) {
            synchronized (this.f18303a) {
                if (this.f18305c == null) {
                    this.f18305c = m16716d(Looper.getMainLooper());
                }
            }
        }
        this.f18305c.post(runnable);
    }
}
