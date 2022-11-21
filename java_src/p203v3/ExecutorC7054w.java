package p203v3;

import android.os.Handler;
import java.util.concurrent.Executor;
/* renamed from: v3.w */
/* loaded from: classes.dex */
public final /* synthetic */ class ExecutorC7054w implements Executor {

    /* renamed from: a */
    public final Handler f36050a;

    public ExecutorC7054w(Handler handler) {
        this.f36050a = handler;
    }

    /* renamed from: a */
    public static Executor m2587a(Handler handler) {
        return new ExecutorC7054w(handler);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f36050a.post(runnable);
    }
}
