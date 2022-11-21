package p168r4;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.om0 */
/* loaded from: classes2.dex */
public final class om0 extends q63 {

    /* renamed from: a */
    public final Executor f29068a;

    public /* synthetic */ om0(Executor executor, pm0 pm0Var) {
        this.f29068a = executor;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f29068a.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ExecutorService
    public final List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException();
    }
}
