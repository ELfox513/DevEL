package p232z;

import android.os.Build;
/* renamed from: z.a */
/* loaded from: classes.dex */
public class C7519a {
    @Deprecated
    /* renamed from: b */
    public static boolean m1309b() {
        return Build.VERSION.SDK_INT >= 30;
    }

    /* renamed from: c */
    public static boolean m1308c() {
        return Build.VERSION.SDK_INT >= 31 || m1310a("S", Build.VERSION.CODENAME);
    }

    /* renamed from: a */
    public static boolean m1310a(String str, String str2) {
        if ("REL".equals(str2) || str2.compareTo(str) < 0) {
            return false;
        }
        return true;
    }
}
