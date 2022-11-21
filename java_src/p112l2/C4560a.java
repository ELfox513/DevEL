package p112l2;

import android.util.Log;
/* renamed from: l2.a */
/* loaded from: classes.dex */
public final class C4560a {
    /* renamed from: a */
    public static void m16005a(String str, String str2, Object obj) {
        Log.d(m16002d(str), String.format(str2, obj));
    }

    /* renamed from: b */
    public static void m16004b(String str, String str2, Object... objArr) {
        Log.d(m16002d(str), String.format(str2, objArr));
    }

    /* renamed from: c */
    public static void m16003c(String str, String str2, Throwable th) {
        Log.e(m16002d(str), str2, th);
    }

    /* renamed from: d */
    public static String m16002d(String str) {
        return "TransportRuntime." + str;
    }

    /* renamed from: e */
    public static void m16001e(String str, String str2) {
        Log.i(m16002d(str), str2);
    }

    /* renamed from: f */
    public static void m16000f(String str, String str2, Object obj) {
        Log.w(m16002d(str), String.format(str2, obj));
    }
}
