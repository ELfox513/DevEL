package p168r4;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.rs2 */
/* loaded from: classes2.dex */
public final class rs2<E, V> implements h83<V> {

    /* renamed from: a */
    public final E f30677a;

    /* renamed from: b */
    public final String f30678b;

    /* renamed from: d */
    public final h83<V> f30679d;

    public rs2(E e, String str, h83<V> h83Var) {
        this.f30677a = e;
        this.f30678b = str;
        this.f30679d = h83Var;
    }

    /* renamed from: a */
    public final E m7343a() {
        return this.f30677a;
    }

    /* renamed from: b */
    public final String m7342b() {
        return this.f30678b;
    }

    @Override // p168r4.h83
    /* renamed from: c */
    public final void mo6087c(Runnable runnable, Executor executor) {
        this.f30679d.mo6087c(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f30679d.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final V get() {
        return this.f30679d.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f30679d.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f30679d.isDone();
    }

    public final String toString() {
        String str = this.f30678b;
        int identityHashCode = System.identityHashCode(this);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(str);
        sb.append("@");
        sb.append(identityHashCode);
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) {
        return this.f30679d.get(j, timeUnit);
    }
}
