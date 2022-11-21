package p237z4;
/* renamed from: z4.g */
/* loaded from: classes2.dex */
public final class C7642g {

    /* renamed from: a */
    public static final Class<?> f37688a = m769c("libcore.io.Memory");

    /* renamed from: b */
    public static final boolean f37689b;

    /* renamed from: a */
    public static boolean m771a() {
        return (f37688a == null || f37689b) ? false : true;
    }

    /* renamed from: b */
    public static Class<?> m770b() {
        return f37688a;
    }

    /* renamed from: c */
    public static <T> Class<T> m769c(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    static {
        boolean z;
        if (m769c("org.robolectric.Robolectric") != null) {
            z = true;
        } else {
            z = false;
        }
        f37689b = z;
    }
}
