package p168r4;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.p73 */
/* loaded from: classes2.dex */
public final class p73<V> extends o73<V> {

    /* renamed from: s */
    public final h83<V> f29380s;

    public p73(h83<V> h83Var) {
        h83Var.getClass();
        this.f29380s = h83Var;
    }

    @Override // p168r4.p63, p168r4.h83
    /* renamed from: c */
    public final void mo6087c(Runnable runnable, Executor executor) {
        this.f29380s.mo6087c(runnable, executor);
    }

    @Override // p168r4.p63, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f29380s.cancel(z);
    }

    @Override // p168r4.p63, java.util.concurrent.Future
    public final V get() {
        return this.f29380s.get();
    }

    @Override // p168r4.p63, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f29380s.isCancelled();
    }

    @Override // p168r4.p63, java.util.concurrent.Future
    public final boolean isDone() {
        return this.f29380s.isDone();
    }

    @Override // p168r4.p63
    public final String toString() {
        return this.f29380s.toString();
    }

    @Override // p168r4.p63, java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) {
        return this.f29380s.get(j, timeUnit);
    }
}
