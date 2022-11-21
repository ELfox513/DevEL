package p111l1;
/* renamed from: l1.f */
/* loaded from: classes.dex */
public final class C4559f {
    /* renamed from: a */
    public static int m16007a(int i, int i2) {
        if (i == i2) {
            return 0;
        }
        return (((long) i) & 4294967295L) < (((long) i2) & 4294967295L) ? -1 : 1;
    }

    /* renamed from: b */
    public static int m16006b(short s, short s2) {
        if (s == s2) {
            return 0;
        }
        return (s & 65535) < (s2 & 65535) ? -1 : 1;
    }
}
