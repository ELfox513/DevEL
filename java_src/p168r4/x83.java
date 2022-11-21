package p168r4;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
/* renamed from: r4.x83 */
/* loaded from: classes2.dex */
public final class x83<V> extends n73<V> implements RunnableFuture<V> {

    /* renamed from: s */
    public volatile g83<?> f33516s;

    public x83(d73<V> d73Var) {
        this.f33516s = new u83(this, d73Var);
    }

    /* renamed from: F */
    public static <V> x83<V> m5449F(Runnable runnable, V v) {
        return new x83<>(Executors.callable(runnable, v));
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        g83<?> g83Var = this.f33516s;
        if (g83Var != null) {
            g83Var.run();
        }
        this.f33516s = null;
    }

    public x83(Callable<V> callable) {
        this.f33516s = new w83(this, callable);
    }

    @Override // p168r4.p63
    /* renamed from: i */
    public final String mo5448i() {
        g83<?> g83Var = this.f33516s;
        if (g83Var != null) {
            String obj = g83Var.toString();
            StringBuilder sb = new StringBuilder(obj.length() + 7);
            sb.append("task=[");
            sb.append(obj);
            sb.append("]");
            return sb.toString();
        }
        return super.mo5448i();
    }

    @Override // p168r4.p63
    /* renamed from: j */
    public final void mo5447j() {
        g83<?> g83Var;
        if (m8459t() && (g83Var = this.f33516s) != null) {
            g83Var.m11251g();
        }
        this.f33516s = null;
    }
}
