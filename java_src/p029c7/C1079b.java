package p029c7;
/* renamed from: c7.b */
/* loaded from: classes2.dex */
public final class C1079b {
    /* renamed from: d */
    public static String m24630d(String str, String str2) {
        return String.format("%s/project/%s/performance/app/android:%s", "https://console.firebase.google.com", str, str2);
    }

    /* renamed from: a */
    public static String m24633a(String str, String str2, String str3) {
        return String.format("%s/metrics/trace/DURATION_TRACE/%s?utm_source=%s&utm_medium=%s", m24630d(str, str2), str3, "perf-android-sdk", "android-ide");
    }

    /* renamed from: b */
    public static String m24632b(String str, String str2) {
        return String.format("%s/trends?utm_source=%s&utm_medium=%s", m24630d(str, str2), "perf-android-sdk", "android-ide");
    }

    /* renamed from: c */
    public static String m24631c(String str, String str2, String str3) {
        return String.format("%s/metrics/trace/SCREEN_TRACE/%s?utm_source=%s&utm_medium=%s", m24630d(str, str2), str3, "perf-android-sdk", "android-ide");
    }
}
