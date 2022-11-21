package p103k2;
/* renamed from: k2.d */
/* loaded from: classes.dex */
public final class C4440d {
    /* renamed from: a */
    public static <T> void m16482a(T t, Class<T> cls) {
        if (t != null) {
            return;
        }
        throw new IllegalStateException(cls.getCanonicalName() + " must be set");
    }

    /* renamed from: b */
    public static <T> T m16481b(T t) {
        t.getClass();
        return t;
    }

    /* renamed from: c */
    public static <T> T m16480c(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }
}
