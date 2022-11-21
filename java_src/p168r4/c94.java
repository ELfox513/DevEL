package p168r4;

import android.util.Log;
import java.util.Locale;
/* renamed from: r4.c94 */
/* loaded from: classes2.dex */
public final class c94 {

    /* renamed from: a */
    public static final String f21449a = "Volley";

    /* renamed from: b */
    public static final boolean f21450b = Log.isLoggable(f21449a, 2);

    /* renamed from: c */
    public static final String f21451c = c94.class.getName();

    /* renamed from: a */
    public static void m12507a(String str, Object... objArr) {
        if (f21450b) {
            Log.v(f21449a, m12503e(str, objArr));
        }
    }

    /* renamed from: b */
    public static void m12506b(String str, Object... objArr) {
        Log.d(f21449a, m12503e(str, objArr));
    }

    /* renamed from: c */
    public static void m12505c(String str, Object... objArr) {
        Log.e(f21449a, m12503e(str, objArr));
    }

    /* renamed from: d */
    public static void m12504d(Throwable th, String str, Object... objArr) {
        Log.e(f21449a, m12503e(str, objArr), th);
    }

    /* renamed from: e */
    public static String m12503e(String str, Object... objArr) {
        String str2;
        String format = String.format(Locale.US, str, objArr);
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 2;
        while (true) {
            if (i < stackTrace.length) {
                if (!stackTrace[i].getClassName().equals(f21451c)) {
                    String className = stackTrace[i].getClassName();
                    String substring = className.substring(className.lastIndexOf(46) + 1);
                    String substring2 = substring.substring(substring.lastIndexOf(36) + 1);
                    String methodName = stackTrace[i].getMethodName();
                    StringBuilder sb = new StringBuilder(String.valueOf(substring2).length() + 1 + String.valueOf(methodName).length());
                    sb.append(substring2);
                    sb.append(".");
                    sb.append(methodName);
                    str2 = sb.toString();
                    break;
                }
                i++;
            } else {
                str2 = "<unknown>";
                break;
            }
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, format);
    }
}
