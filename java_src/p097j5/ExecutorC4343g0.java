package p097j5;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import p043d5.HandlerC3326a;
/* renamed from: j5.g0 */
/* loaded from: classes2.dex */
public final class ExecutorC4343g0 implements Executor {

    /* renamed from: a */
    public final Handler f18214a = new HandlerC3326a(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f18214a.post(runnable);
    }
}
