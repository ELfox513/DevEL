package p229y4;
/* renamed from: y4.m1 */
/* loaded from: classes2.dex */
public final class C7462m1 {
    /* renamed from: a */
    public static <T> T m1417a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }

    /* renamed from: b */
    public static <T> void m1416b(T t, Class<T> cls) {
        if (t == null) {
            throw new IllegalStateException(String.valueOf(cls.getCanonicalName()).concat(" must be set"));
        }
    }
}
