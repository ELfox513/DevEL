package p229y4;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* renamed from: y4.g1 */
/* loaded from: classes2.dex */
public final class C7439g1 {

    /* renamed from: a */
    public static final Handler f37157a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    public static final Executor f37158b = new ExecutorC7435f1("Google consent worker");

    /* renamed from: a */
    public static void m1447a() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        throw new IllegalStateException("Method must be call on main thread.");
    }
}
