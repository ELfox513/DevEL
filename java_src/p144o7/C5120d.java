package p144o7;
/* renamed from: o7.d */
/* loaded from: classes2.dex */
public final class C5120d {

    /* renamed from: a */
    public static final Class<?> f19374a = m14628a("libcore.io.Memory");

    /* renamed from: b */
    public static final boolean f19375b;

    /* renamed from: a */
    public static <T> Class<T> m14628a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: b */
    public static Class<?> m14627b() {
        return f19374a;
    }

    /* renamed from: c */
    public static boolean m14626c() {
        return (f19374a == null || f19375b) ? false : true;
    }

    static {
        boolean z;
        if (m14628a("org.robolectric.Robolectric") != null) {
            z = true;
        } else {
            z = false;
        }
        f19375b = z;
    }
}
