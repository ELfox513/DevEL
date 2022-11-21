package p168r4;

import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.k83 */
/* loaded from: classes2.dex */
public class k83 extends q63 {

    /* renamed from: a */
    public final ExecutorService f26343a;

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j, TimeUnit timeUnit) {
        return this.f26343a.awaitTermination(j, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f26343a.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return this.f26343a.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return this.f26343a.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        this.f26343a.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final List<Runnable> shutdownNow() {
        return this.f26343a.shutdownNow();
    }

    public final String toString() {
        String obj = super.toString();
        String valueOf = String.valueOf(this.f26343a);
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2 + valueOf.length());
        sb.append(obj);
        sb.append("[");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }

    public k83(ExecutorService executorService) {
        executorService.getClass();
        this.f26343a = executorService;
    }
}
