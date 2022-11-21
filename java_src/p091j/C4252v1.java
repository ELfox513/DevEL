package p091j;

import android.os.Build;
import android.view.View;
/* renamed from: j.v1 */
/* loaded from: classes.dex */
public class C4252v1 {
    /* renamed from: a */
    public static void m16932a(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
        } else {
            View$OnLongClickListenerC4257w1.m16911f(view, charSequence);
        }
    }
}
