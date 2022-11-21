package p022c0;
/* renamed from: c0.g */
/* loaded from: classes.dex */
public final class C1024g {
    /* renamed from: a */
    public static int m24810a(int i) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public static <T> T m24809b(T t) {
        t.getClass();
        return t;
    }

    /* renamed from: c */
    public static <T> T m24808c(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }
}
