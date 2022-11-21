package p038d0;

import android.os.Build;
import android.view.Gravity;
/* renamed from: d0.d */
/* loaded from: classes.dex */
public final class C3165d {
    /* renamed from: a */
    public static int m19464a(int i, int i2) {
        if (Build.VERSION.SDK_INT >= 17) {
            return Gravity.getAbsoluteGravity(i, i2);
        }
        return i & (-8388609);
    }
}
