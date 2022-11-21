package p168r4;
/* renamed from: r4.ds3 */
/* loaded from: classes2.dex */
public final class ds3 {
    /* renamed from: a */
    public static <T> T m11981a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: b */
    public static <T> T m11980b(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }

    /* renamed from: c */
    public static <T> void m11979c(T t, Class<T> cls) {
        if (t == null) {
            throw new IllegalStateException(String.valueOf(cls.getCanonicalName()).concat(" must be set"));
        }
    }
}
