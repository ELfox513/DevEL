package p168r4;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import p016b3.C0497k2;
import p016b3.HandlerC0546x1;
import p235z2.C7601t;
/* renamed from: r4.nm0 */
/* loaded from: classes2.dex */
public final class nm0 implements Executor {

    /* renamed from: a */
    public final Handler f28344a = new HandlerC0546x1(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            try {
                runnable.run();
                return;
            } catch (Throwable th) {
                C7601t.m939d();
                C0497k2.m26307o(C7601t.m935h().m9050q(), th);
                throw th;
            }
        }
        this.f28344a.post(runnable);
    }
}
