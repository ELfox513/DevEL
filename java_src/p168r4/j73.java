package p168r4;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* renamed from: r4.j73 */
/* loaded from: classes2.dex */
public abstract class j73<T> extends g83<T> {

    /* renamed from: d */
    public final Executor f25947d;

    /* renamed from: k */
    public final /* synthetic */ k73 f25948k;

    @Override // p168r4.g83
    /* renamed from: d */
    public final boolean mo5802d() {
        return this.f25948k.isDone();
    }

    /* renamed from: h */
    public abstract void mo10391h(T t);

    public j73(k73 k73Var, Executor executor) {
        this.f25948k = k73Var;
        executor.getClass();
        this.f25947d = executor;
    }

    @Override // p168r4.g83
    /* renamed from: e */
    public final void mo5801e(T t) {
        this.f25948k.f26338A = null;
        mo10391h(t);
    }

    @Override // p168r4.g83
    /* renamed from: f */
    public final void mo5800f(Throwable th) {
        this.f25948k.f26338A = null;
        if (th instanceof ExecutionException) {
            this.f25948k.mo8449v(((ExecutionException) th).getCause());
        } else if (th instanceof CancellationException) {
            this.f25948k.cancel(false);
        } else {
            this.f25948k.mo8449v(th);
        }
    }

    /* renamed from: i */
    public final void m10390i() {
        try {
            this.f25947d.execute(this);
        } catch (RejectedExecutionException e) {
            this.f25948k.mo8449v(e);
        }
    }
}
