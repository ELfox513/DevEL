package p016b3;

import android.util.Log;
import p168r4.cm0;
import p168r4.i10;
/* renamed from: b3.w1 */
/* loaded from: classes.dex */
public final class C0543w1 extends cm0 {
    /* renamed from: m */
    public static boolean m26249m() {
        if (cm0.m12433j(2) && i10.f24923a.m6673e().booleanValue()) {
            return true;
        }
        return false;
    }

    /* renamed from: k */
    public static void m26251k(String str) {
        if (m26249m()) {
            if (str != null && str.length() > 4000) {
                boolean z = true;
                for (String str2 : cm0.f21582a.m10442d(str)) {
                    if (z) {
                        Log.v("Ads", str2);
                    } else {
                        Log.v("Ads-cont", str2);
                    }
                    z = false;
                }
                return;
            }
            Log.v("Ads", str);
        }
    }

    /* renamed from: l */
    public static void m26250l(String str, Throwable th) {
        if (m26249m()) {
            Log.v("Ads", str, th);
        }
    }
}
