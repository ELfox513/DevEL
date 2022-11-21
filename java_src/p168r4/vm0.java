package p168r4;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import p235z2.C7601t;
/* renamed from: r4.vm0 */
/* loaded from: classes2.dex */
public class vm0<T> implements h83<T> {

    /* renamed from: a */
    public final p83<T> f32761a = p83.m8451E();

    @Override // p168r4.h83
    /* renamed from: c */
    public final void mo6087c(Runnable runnable, Executor executor) {
        this.f32761a.mo6087c(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.f32761a.cancel(z);
    }

    /* renamed from: e */
    public final boolean m6086e(T t) {
        boolean mo8450u = this.f32761a.mo8450u(t);
        m6088b(mo8450u);
        return mo8450u;
    }

    /* renamed from: f */
    public final boolean m6085f(Throwable th) {
        boolean mo8449v = this.f32761a.mo8449v(th);
        m6088b(mo8449v);
        return mo8449v;
    }

    @Override // java.util.concurrent.Future
    public final T get() {
        return this.f32761a.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f32761a.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f32761a.isDone();
    }

    /* renamed from: b */
    public static final boolean m6088b(boolean z) {
        if (!z) {
            C7601t.m935h().m9055l(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture");
        }
        return z;
    }

    @Override // java.util.concurrent.Future
    public final T get(long j, TimeUnit timeUnit) {
        return this.f32761a.get(j, timeUnit);
    }
}
