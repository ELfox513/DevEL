package p001a0;

import android.os.Handler;
import android.os.Looper;
/* renamed from: a0.b */
/* loaded from: classes.dex */
public class C0008b {
    /* renamed from: a */
    public static Handler m27837a() {
        if (Looper.myLooper() == null) {
            return new Handler(Looper.getMainLooper());
        }
        return new Handler();
    }
}
