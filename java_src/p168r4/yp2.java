package p168r4;

import android.content.Context;
import p016b3.C0543w1;
import p235z2.C7601t;
/* renamed from: r4.yp2 */
/* loaded from: classes2.dex */
public final class yp2 {
    /* renamed from: a */
    public static void m4611a(int i, Throwable th, String str) {
        StringBuilder sb = new StringBuilder(31);
        sb.append("Ad failed to load : ");
        sb.append(i);
        cm0.m12438e(sb.toString());
        C0543w1.m26250l(str, th);
        if (i == 3) {
            return;
        }
        C7601t.m935h().m9055l(th, str);
    }

    /* renamed from: b */
    public static void m4610b(Context context, boolean z) {
        if (z) {
            cm0.m12438e("This request is sent from a test device.");
            return;
        }
        C6479yu.m4568a();
        String m6110r = vl0.m6110r(context);
        StringBuilder sb = new StringBuilder(String.valueOf(m6110r).length() + 102);
        sb.append("Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"");
        sb.append(m6110r);
        sb.append("\")) to get test ads on this device.");
        cm0.m12438e(sb.toString());
    }
}
