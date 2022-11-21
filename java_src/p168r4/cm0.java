package p168r4;

import android.util.Log;
/* renamed from: r4.cm0 */
/* loaded from: classes2.dex */
public class cm0 {

    /* renamed from: a */
    public static final j13 f21582a = j13.m10443c(4000);

    /* renamed from: a */
    public static void m12442a(String str) {
        if (m12433j(3)) {
            if (str != null && str.length() > 4000) {
                boolean z = true;
                for (String str2 : f21582a.m10442d(str)) {
                    if (z) {
                        Log.d("Ads", str2);
                    } else {
                        Log.d("Ads-cont", str2);
                    }
                    z = false;
                }
                return;
            }
            Log.d("Ads", str);
        }
    }

    /* renamed from: b */
    public static void m12441b(String str, Throwable th) {
        if (m12433j(3)) {
            Log.d("Ads", str, th);
        }
    }

    /* renamed from: c */
    public static void m12440c(String str) {
        if (m12433j(6)) {
            if (str != null && str.length() > 4000) {
                boolean z = true;
                for (String str2 : f21582a.m10442d(str)) {
                    if (z) {
                        Log.e("Ads", str2);
                    } else {
                        Log.e("Ads-cont", str2);
                    }
                    z = false;
                }
                return;
            }
            Log.e("Ads", str);
        }
    }

    /* renamed from: d */
    public static void m12439d(String str, Throwable th) {
        if (m12433j(6)) {
            Log.e("Ads", str, th);
        }
    }

    /* renamed from: e */
    public static void m12438e(String str) {
        if (m12433j(4)) {
            if (str != null && str.length() > 4000) {
                boolean z = true;
                for (String str2 : f21582a.m10442d(str)) {
                    if (z) {
                        Log.i("Ads", str2);
                    } else {
                        Log.i("Ads-cont", str2);
                    }
                    z = false;
                }
                return;
            }
            Log.i("Ads", str);
        }
    }

    /* renamed from: f */
    public static void m12437f(String str) {
        if (m12433j(5)) {
            if (str != null && str.length() > 4000) {
                boolean z = true;
                for (String str2 : f21582a.m10442d(str)) {
                    if (z) {
                        Log.w("Ads", str2);
                    } else {
                        Log.w("Ads-cont", str2);
                    }
                    z = false;
                }
                return;
            }
            Log.w("Ads", str);
        }
    }

    /* renamed from: g */
    public static void m12436g(String str, Throwable th) {
        if (m12433j(5)) {
            Log.w("Ads", str, th);
        }
    }

    /* renamed from: i */
    public static void m12434i(String str, Throwable th) {
        if (m12433j(5)) {
            if (th != null) {
                m12436g(m12435h(str), th);
            } else {
                m12437f(m12435h(str));
            }
        }
    }

    /* renamed from: j */
    public static boolean m12433j(int i) {
        return i >= 5 || Log.isLoggable("Ads", i);
    }

    /* renamed from: h */
    public static String m12435h(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length >= 4) {
            int lineNumber = stackTrace[3].getLineNumber();
            StringBuilder sb = new StringBuilder(str.length() + 13);
            sb.append(str);
            sb.append(" @");
            sb.append(lineNumber);
            return sb.toString();
        }
        return str;
    }
}
