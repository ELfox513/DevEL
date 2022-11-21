package p168r4;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: r4.c83 */
/* loaded from: classes2.dex */
public final class c83<V> implements h83<V> {

    /* renamed from: b */
    public static final h83<?> f21444b = new c83(null);

    /* renamed from: d */
    public static final Logger f21445d = Logger.getLogger(c83.class.getName());

    /* renamed from: a */
    public final V f21446a;

    public c83(V v) {
        this.f21446a = v;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final V get() {
        return this.f21446a;
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.f21446a;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return true;
    }

    public final String toString() {
        String obj = super.toString();
        String valueOf = String.valueOf(this.f21446a);
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 27 + valueOf.length());
        sb.append(obj);
        sb.append("[status=SUCCESS, result=[");
        sb.append(valueOf);
        sb.append("]]");
        return sb.toString();
    }

    @Override // p168r4.h83
    /* renamed from: c */
    public final void mo6087c(Runnable runnable, Executor executor) {
        z03.m4494c(runnable, "Runnable was null.");
        z03.m4494c(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f21445d;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(valueOf.length() + 57 + valueOf2.length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(valueOf);
            sb.append(" with executor ");
            sb.append(valueOf2);
            logger.logp(level, "com.google.common.util.concurrent.ImmediateFuture", "addListener", sb.toString(), (Throwable) e);
        }
    }
}
