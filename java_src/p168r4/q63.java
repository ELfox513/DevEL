package p168r4;

import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
/* renamed from: r4.q63 */
/* loaded from: classes2.dex */
public abstract class q63 extends AbstractExecutorService implements i83 {
    @Override // p168r4.i83
    /* renamed from: c */
    public final <T> h83<T> mo8015c(Callable<T> callable) {
        return (h83) super.submit(callable);
    }

    @Override // p168r4.i83
    /* renamed from: d */
    public final h83<?> mo8014d(Runnable runnable) {
        return (h83) super.submit(runnable);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    public final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return x83.m5449F(runnable, t);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* bridge */ /* synthetic */ Future submit(Runnable runnable) {
        return (h83) super.submit(runnable);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    public final <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return new x83(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* bridge */ /* synthetic */ Future submit(Runnable runnable, Object obj) {
        return (h83) super.submit(runnable, obj);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* bridge */ /* synthetic */ Future submit(Callable callable) {
        return (h83) super.submit(callable);
    }
}
