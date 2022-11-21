package p168r4;

import android.os.Handler;
/* renamed from: r4.pw2 */
/* loaded from: classes2.dex */
public final class pw2 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        Handler handler;
        Handler handler2;
        Runnable runnable;
        Handler handler3;
        Runnable runnable2;
        handler = sw2.f31545i;
        if (handler != null) {
            handler2 = sw2.f31545i;
            runnable = sw2.f31546j;
            handler2.post(runnable);
            handler3 = sw2.f31545i;
            runnable2 = sw2.f31547k;
            handler3.postDelayed(runnable2, 200L);
        }
    }
}
