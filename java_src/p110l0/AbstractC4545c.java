package p110l0;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: l0.c */
/* loaded from: classes.dex */
public abstract class AbstractC4545c<Params, Progress, Result> {

    /* renamed from: q */
    public static final ThreadFactory f18581q;

    /* renamed from: r */
    public static final BlockingQueue<Runnable> f18582r;

    /* renamed from: s */
    public static final Executor f18583s;

    /* renamed from: t */
    public static HandlerC4551f f18584t;

    /* renamed from: u */
    public static volatile Executor f18585u;

    /* renamed from: a */
    public final AbstractCallableC4553h<Params, Result> f18586a;

    /* renamed from: b */
    public final FutureTask<Result> f18587b;

    /* renamed from: d */
    public volatile EnumC4552g f18588d = EnumC4552g.PENDING;

    /* renamed from: k */
    public final AtomicBoolean f18589k = new AtomicBoolean();

    /* renamed from: p */
    public final AtomicBoolean f18590p = new AtomicBoolean();

    /* renamed from: l0.c$a */
    /* loaded from: classes.dex */
    public static class ThreadFactoryC4546a implements ThreadFactory {

        /* renamed from: a */
        public final AtomicInteger f18591a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "ModernAsyncTask #" + this.f18591a.getAndIncrement());
        }
    }

    /* renamed from: l0.c$b */
    /* loaded from: classes.dex */
    public class C4547b extends AbstractCallableC4553h<Params, Result> {
        public C4547b() {
        }

        @Override // java.util.concurrent.Callable
        public Result call() {
            AbstractC4545c.this.f18590p.set(true);
            Result result = null;
            try {
                Process.setThreadPriority(10);
                result = (Result) AbstractC4545c.this.mo16025b(this.f18601a);
                Binder.flushPendingCommands();
                return result;
            } finally {
            }
        }
    }

    /* renamed from: l0.c$c */
    /* loaded from: classes.dex */
    public class C4548c extends FutureTask<Result> {
        public C4548c(Callable callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        public void done() {
            try {
                AbstractC4545c.this.m16014m(get());
            } catch (InterruptedException e) {
                Log.w("AsyncTask", e);
            } catch (CancellationException unused) {
                AbstractC4545c.this.m16014m(null);
            } catch (ExecutionException e2) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e2.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    }

    /* renamed from: l0.c$d */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C4549d {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18594a;

        static {
            int[] iArr = new int[EnumC4552g.values().length];
            f18594a = iArr;
            try {
                iArr[EnumC4552g.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18594a[EnumC4552g.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: l0.c$f */
    /* loaded from: classes.dex */
    public static class HandlerC4551f extends Handler {
        public HandlerC4551f() {
            super(Looper.getMainLooper());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            C4550e c4550e = (C4550e) message.obj;
            int i = message.what;
            if (i != 1) {
                if (i == 2) {
                    c4550e.f18595a.m16016k(c4550e.f18596b);
                    return;
                }
                return;
            }
            c4550e.f18595a.m16023d(c4550e.f18596b[0]);
        }
    }

    /* renamed from: l0.c$g */
    /* loaded from: classes.dex */
    public enum EnumC4552g {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* renamed from: l0.c$h */
    /* loaded from: classes.dex */
    public static abstract class AbstractCallableC4553h<Params, Result> implements Callable<Result> {

        /* renamed from: a */
        public Params[] f18601a;
    }

    /* renamed from: b */
    public abstract Result mo16025b(Params... paramsArr);

    /* renamed from: f */
    public final boolean m16021f() {
        return this.f18589k.get();
    }

    /* renamed from: g */
    public void m16020g() {
    }

    /* renamed from: h */
    public void mo16019h(Result result) {
        m16020g();
    }

    /* renamed from: i */
    public void mo16018i(Result result) {
    }

    /* renamed from: j */
    public void m16017j() {
    }

    /* renamed from: k */
    public void m16016k(Progress... progressArr) {
    }

    /* renamed from: l0.c$e */
    /* loaded from: classes.dex */
    public static class C4550e<Data> {

        /* renamed from: a */
        public final AbstractC4545c f18595a;

        /* renamed from: b */
        public final Data[] f18596b;

        public C4550e(AbstractC4545c abstractC4545c, Data... dataArr) {
            this.f18595a = abstractC4545c;
            this.f18596b = dataArr;
        }
    }

    static {
        ThreadFactoryC4546a threadFactoryC4546a = new ThreadFactoryC4546a();
        f18581q = threadFactoryC4546a;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(10);
        f18582r = linkedBlockingQueue;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, linkedBlockingQueue, threadFactoryC4546a);
        f18583s = threadPoolExecutor;
        f18585u = threadPoolExecutor;
    }

    /* renamed from: e */
    public static Handler m16022e() {
        HandlerC4551f handlerC4551f;
        synchronized (AbstractC4545c.class) {
            if (f18584t == null) {
                f18584t = new HandlerC4551f();
            }
            handlerC4551f = f18584t;
        }
        return handlerC4551f;
    }

    /* renamed from: a */
    public final boolean m16026a(boolean z) {
        this.f18589k.set(true);
        return this.f18587b.cancel(z);
    }

    /* renamed from: c */
    public final AbstractC4545c<Params, Progress, Result> m16024c(Executor executor, Params... paramsArr) {
        if (this.f18588d != EnumC4552g.PENDING) {
            int i = C4549d.f18594a[this.f18588d.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("We should never reach this state");
                }
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
            throw new IllegalStateException("Cannot execute task: the task is already running.");
        }
        this.f18588d = EnumC4552g.RUNNING;
        m16017j();
        this.f18586a.f18601a = paramsArr;
        executor.execute(this.f18587b);
        return this;
    }

    /* renamed from: m */
    public void m16014m(Result result) {
        if (!this.f18590p.get()) {
            m16015l(result);
        }
    }

    public AbstractC4545c() {
        C4547b c4547b = new C4547b();
        this.f18586a = c4547b;
        this.f18587b = new C4548c(c4547b);
    }

    /* renamed from: d */
    public void m16023d(Result result) {
        if (m16021f()) {
            mo16019h(result);
        } else {
            mo16018i(result);
        }
        this.f18588d = EnumC4552g.FINISHED;
    }

    /* renamed from: l */
    public Result m16015l(Result result) {
        m16022e().obtainMessage(1, new C4550e(this, result)).sendToTarget();
        return result;
    }
}
