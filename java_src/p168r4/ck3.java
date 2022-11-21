package p168r4;
/* renamed from: r4.ck3 */
/* loaded from: classes2.dex */
public final class ck3 {
    /* renamed from: a */
    public static boolean m12445a() {
        return "The Android Project".equals(System.getProperty("java.vendor"));
    }

    /* renamed from: b */
    public static int m12444b() {
        try {
            return Class.forName("android.os.Build$VERSION").getDeclaredField("SDK_INT").getInt(null);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException unused) {
            return -1;
        }
    }
}
