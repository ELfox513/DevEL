package p162q7;
/* renamed from: q7.b */
/* loaded from: classes2.dex */
public final class C5436b {
    /* renamed from: a */
    public static <T> void m13303a(T t, Class<T> cls) {
        if (t != null) {
            return;
        }
        throw new IllegalStateException(cls.getCanonicalName() + " must be set");
    }

    /* renamed from: b */
    public static <T> T m13302b(T t) {
        t.getClass();
        return t;
    }

    /* renamed from: c */
    public static <T> T m13301c(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }
}
