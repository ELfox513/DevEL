package p038d0;

import android.os.Build;
import android.view.ViewGroup;
/* renamed from: d0.i */
/* loaded from: classes.dex */
public final class C3185i {
    /* renamed from: a */
    public static int m19438a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        int marginEnd;
        if (Build.VERSION.SDK_INT >= 17) {
            marginEnd = marginLayoutParams.getMarginEnd();
            return marginEnd;
        }
        return marginLayoutParams.rightMargin;
    }

    /* renamed from: b */
    public static int m19437b(ViewGroup.MarginLayoutParams marginLayoutParams) {
        int marginStart;
        if (Build.VERSION.SDK_INT >= 17) {
            marginStart = marginLayoutParams.getMarginStart();
            return marginStart;
        }
        return marginLayoutParams.leftMargin;
    }
}
