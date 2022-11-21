package p178s5;
/* renamed from: s5.d0 */
/* loaded from: classes2.dex */
public final class C6595d0 {
    /* renamed from: a */
    public static void m3839a(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    /* renamed from: b */
    public static <T> T m3838b(T t) {
        t.getClass();
        return t;
    }

    /* renamed from: c */
    public static <T> T m3837c(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: d */
    public static void m3836d(boolean z, String str) {
        if (!z) {
            throw new IllegalStateException(str);
        }
    }
}
