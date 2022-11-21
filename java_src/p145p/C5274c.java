package p145p;
/* renamed from: p.c */
/* loaded from: classes.dex */
public class C5274c {

    /* renamed from: a */
    public static final int[] f19785a = new int[0];

    /* renamed from: b */
    public static final long[] f19786b = new long[0];

    /* renamed from: c */
    public static final Object[] f19787c = new Object[0];

    /* renamed from: a */
    public static int m13714a(int[] iArr, int i, int i2) {
        int i3 = i - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            int i6 = iArr[i5];
            if (i6 < i2) {
                i4 = i5 + 1;
            } else if (i6 <= i2) {
                return i5;
            } else {
                i3 = i5 - 1;
            }
        }
        return i4 ^ (-1);
    }

    /* renamed from: b */
    public static int m13713b(long[] jArr, int i, long j) {
        int i2 = i - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            long j2 = jArr[i4];
            if (j2 < j) {
                i3 = i4 + 1;
            } else if (j2 <= j) {
                return i4;
            } else {
                i2 = i4 - 1;
            }
        }
        return i3 ^ (-1);
    }

    /* renamed from: c */
    public static boolean m13712c(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: d */
    public static int m13711d(int i) {
        for (int i2 = 4; i2 < 32; i2++) {
            int i3 = (1 << i2) - 12;
            if (i <= i3) {
                return i3;
            }
        }
        return i;
    }

    /* renamed from: e */
    public static int m13710e(int i) {
        return m13711d(i * 4) / 4;
    }

    /* renamed from: f */
    public static int m13709f(int i) {
        return m13711d(i * 8) / 8;
    }
}
