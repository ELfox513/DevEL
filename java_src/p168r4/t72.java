package p168r4;

import android.os.Handler;
import java.util.concurrent.Executor;
/* renamed from: r4.t72 */
/* loaded from: classes2.dex */
public final /* synthetic */ class t72 implements Executor {

    /* renamed from: a */
    public final Handler f31726a;

    public t72(Handler handler) {
        this.f31726a = handler;
    }

    /* renamed from: a */
    public static Executor m6905a(Handler handler) {
        return new t72(handler);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f31726a.post(runnable);
    }
}
