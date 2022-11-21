package p099j7;

import android.content.Context;
import android.content.pm.PackageManager;
import p029c7.C1078a;
import p180s7.C6631c;
/* renamed from: j7.k */
/* loaded from: classes2.dex */
public class C4385k {

    /* renamed from: a */
    public static Boolean f18297a;

    /* renamed from: a */
    public static void m16724a(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    /* renamed from: c */
    public static int m16722c(long j) {
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j;
    }

    /* renamed from: b */
    public static boolean m16723b(Context context) {
        Boolean bool = f18297a;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            Boolean valueOf = Boolean.valueOf(context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("firebase_performance_logcat_enabled", false));
            f18297a = valueOf;
            return valueOf.booleanValue();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            C1078a m24639e = C1078a.m24639e();
            m24639e.m24643a("No perf logcat meta data found " + e.getMessage());
            return false;
        }
    }

    /* renamed from: d */
    public static String m16721d(String str) {
        C6631c m3752n = C6631c.m3752n(str);
        if (m3752n != null) {
            return m3752n.m3753m().m3727r("").m3735j("").m3731n(null).m3740e(null).toString();
        }
        return str;
    }

    /* renamed from: e */
    public static String m16720e(String str, int i) {
        int lastIndexOf;
        if (str.length() <= i) {
            return str;
        }
        if (str.charAt(i) == '/') {
            return str.substring(0, i);
        }
        C6631c m3752n = C6631c.m3752n(str);
        if (m3752n == null) {
            return str.substring(0, i);
        }
        if (m3752n.m3759g().lastIndexOf(47) >= 0 && (lastIndexOf = str.lastIndexOf(47, i - 1)) >= 0) {
            return str.substring(0, lastIndexOf);
        }
        return str.substring(0, i);
    }
}
