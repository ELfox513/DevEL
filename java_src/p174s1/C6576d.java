package p174s1;
/* renamed from: s1.d */
/* loaded from: classes.dex */
public final class C6576d {
    /* renamed from: a */
    public static int m3884a(int i) {
        int i2 = i & 255;
        return (i2 == 0 || i2 == 255) ? i : i2;
    }

    /* renamed from: b */
    public static boolean m3883b(int i) {
        int i2;
        if (i < -1) {
            return false;
        }
        return i == -1 || (i2 = i & 255) == 0 || i2 == 255 || (i & 65280) == 0;
    }
}
