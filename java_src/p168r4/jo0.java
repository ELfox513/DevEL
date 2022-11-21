package p168r4;

import android.os.Looper;
/* renamed from: r4.jo0 */
/* loaded from: classes2.dex */
public final class jo0 implements Runnable {
    public jo0(lo0 lo0Var) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Looper.myLooper().quit();
    }
}
