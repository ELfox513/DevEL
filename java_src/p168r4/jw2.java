package p168r4;

import android.os.Build;
import android.view.View;
/* renamed from: r4.jw2 */
/* loaded from: classes2.dex */
public final class jw2 {
    /* renamed from: a */
    public static float m10163a(View view) {
        float z;
        if (Build.VERSION.SDK_INT >= 21) {
            z = view.getZ();
            return z;
        }
        return 0.0f;
    }

    /* renamed from: b */
    public static String m10162b(View view) {
        boolean isAttachedToWindow;
        if (Build.VERSION.SDK_INT >= 19) {
            isAttachedToWindow = view.isAttachedToWindow();
            if (!isAttachedToWindow) {
                return "notAttached";
            }
        }
        int visibility = view.getVisibility();
        if (visibility != 0) {
            if (visibility != 4) {
                if (visibility != 8) {
                    return "viewNotVisible";
                }
                return "viewGone";
            }
            return "viewInvisible";
        } else if (view.getAlpha() == 0.0f) {
            return "viewAlphaZero";
        } else {
            return null;
        }
    }
}
