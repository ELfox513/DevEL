package p016b3;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import p168r4.C5592av;
import p168r4.C6225rz;
import p168r4.C6479yu;
import p168r4.vl0;
import p235z2.C7601t;
@TargetApi(24)
/* renamed from: b3.u2 */
/* loaded from: classes.dex */
public class C0537u2 extends C0529s2 {
    /* renamed from: t */
    public static final boolean m26255t(int i, int i2, int i3) {
        return Math.abs(i - i2) <= i3;
    }

    @Override // p016b3.C0478g
    /* renamed from: o */
    public final boolean mo26256o(Activity activity, Configuration configuration) {
        int i;
        boolean isInMultiWindowMode;
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31053k3)).booleanValue()) {
            return false;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31069m3)).booleanValue()) {
            isInMultiWindowMode = activity.isInMultiWindowMode();
            return isInMultiWindowMode;
        }
        C6479yu.m4568a();
        int m6111q = vl0.m6111q(activity, configuration.screenHeightDp);
        int m6111q2 = vl0.m6111q(activity, configuration.screenWidthDp);
        C7601t.m939d();
        DisplayMetrics m26317f0 = C0497k2.m26317f0((WindowManager) activity.getApplicationContext().getSystemService("window"));
        int i2 = m26317f0.heightPixels;
        int i3 = m26317f0.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            i = activity.getResources().getDimensionPixelSize(identifier);
        } else {
            i = 0;
        }
        double d = activity.getResources().getDisplayMetrics().density;
        Double.isNaN(d);
        int round = ((int) Math.round(d + 0.5d)) * ((Integer) C5592av.m12935c().m8098c(C6225rz.f31037i3)).intValue();
        if (m26255t(i2, m6111q + i, round) && m26255t(i3, m6111q2, round)) {
            return false;
        }
        return true;
    }
}
