package p168r4;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* renamed from: r4.j83 */
/* loaded from: classes2.dex */
public final class j83 implements Executor {

    /* renamed from: a */
    public final /* synthetic */ Executor f25953a;

    /* renamed from: b */
    public final /* synthetic */ p63 f25954b;

    public j83(Executor executor, p63 p63Var) {
        this.f25953a = executor;
        this.f25954b = p63Var;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.f25953a.execute(runnable);
        } catch (RejectedExecutionException e) {
            this.f25954b.mo8449v(e);
        }
    }
}
