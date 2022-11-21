package p168r4;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.q73 */
/* loaded from: classes2.dex */
public abstract class q73<V> extends f33 implements Future<V> {
    @Override // java.util.concurrent.Future
    public final V get() {
        return mo7596h().get();
    }

    /* renamed from: h */
    public abstract Future<? extends V> mo7596h();

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return mo7596h().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return mo7596h().isDone();
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) {
        return mo7596h().get(j, timeUnit);
    }
}
