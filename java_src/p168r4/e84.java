package p168r4;

import android.os.Handler;
import java.util.concurrent.Executor;
/* renamed from: r4.e84 */
/* loaded from: classes2.dex */
public final class e84 implements Executor {

    /* renamed from: a */
    public final /* synthetic */ Handler f22911a;

    public e84(g84 g84Var, Handler handler) {
        this.f22911a = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f22911a.post(runnable);
    }
}
