package p038d0;

import android.os.Build;
import android.view.ViewGroup;
import p154q.C5379b;
/* renamed from: d0.f1 */
/* loaded from: classes.dex */
public final class C3176f1 {
    /* renamed from: a */
    public static boolean m19447a(ViewGroup viewGroup) {
        boolean isTransitionGroup;
        if (Build.VERSION.SDK_INT >= 21) {
            isTransitionGroup = viewGroup.isTransitionGroup();
            return isTransitionGroup;
        }
        Boolean bool = (Boolean) viewGroup.getTag(C5379b.f20003O);
        if ((bool == null || !bool.booleanValue()) && viewGroup.getBackground() == null && C3218s0.m19334r(viewGroup) == null) {
            return false;
        }
        return true;
    }
}
