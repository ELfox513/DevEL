package p084i1;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import p066g1.ExecutorC3556i;
/* renamed from: i1.b */
/* loaded from: classes.dex */
public class C4087b implements InterfaceC4086a {

    /* renamed from: a */
    public final ExecutorC3556i f17667a;

    /* renamed from: b */
    public final Handler f17668b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    public final Executor f17669c = new ExecutorC4088a();

    /* renamed from: i1.b$a */
    /* loaded from: classes.dex */
    public class ExecutorC4088a implements Executor {
        public ExecutorC4088a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C4087b.this.m17405d(runnable);
        }
    }

    @Override // p084i1.InterfaceC4086a
    /* renamed from: a */
    public Executor mo17408a() {
        return this.f17669c;
    }

    @Override // p084i1.InterfaceC4086a
    /* renamed from: b */
    public void mo17407b(Runnable runnable) {
        this.f17667a.execute(runnable);
    }

    @Override // p084i1.InterfaceC4086a
    /* renamed from: c */
    public ExecutorC3556i mo17406c() {
        return this.f17667a;
    }

    /* renamed from: d */
    public void m17405d(Runnable runnable) {
        this.f17668b.post(runnable);
    }

    public C4087b(Executor executor) {
        this.f17667a = new ExecutorC3556i(executor);
    }
}
