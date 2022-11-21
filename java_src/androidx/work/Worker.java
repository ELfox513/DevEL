package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.work.ListenableWorker;
import p075h1.C3944d;
import p115l5.InterfaceFutureC4566a;
/* loaded from: classes.dex */
public abstract class Worker extends ListenableWorker {

    /* renamed from: q */
    public C3944d<ListenableWorker.AbstractC0370a> f1323q;

    /* renamed from: androidx.work.Worker$a */
    /* loaded from: classes.dex */
    public class RunnableC0374a implements Runnable {
        public RunnableC0374a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Worker.this.f1323q.mo17694q(Worker.this.doWork());
            } catch (Throwable th) {
                Worker.this.f1323q.mo17693r(th);
            }
        }
    }

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public abstract ListenableWorker.AbstractC0370a doWork();

    @Override // androidx.work.ListenableWorker
    public final InterfaceFutureC4566a<ListenableWorker.AbstractC0370a> startWork() {
        this.f1323q = C3944d.m17691u();
        getBackgroundExecutor().execute(new RunnableC0374a());
        return this.f1323q;
    }
}
