package p015b2;
/* renamed from: b2.c */
/* loaded from: classes.dex */
public final class C0431c {
    /* renamed from: a */
    public static boolean m26534a(int[] iArr, int i, int i2) {
        int m26530e = m26530e(iArr, i);
        return m26530e >= 0 && m26530e < i2;
    }

    /* renamed from: b */
    public static int m26533b(int[] iArr) {
        int i = 0;
        for (int i2 : iArr) {
            i += Integer.bitCount(i2);
        }
        return i;
    }

    /* renamed from: c */
    public static void m26532c(int[] iArr, int i) {
        int i2 = i >> 5;
        iArr[i2] = ((1 << (i & 31)) ^ (-1)) & iArr[i2];
    }

    /* renamed from: d */
    public static int m26531d(int i, int i2) {
        int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i & (((1 << i2) - 1) ^ (-1)));
        if (numberOfTrailingZeros == 32) {
            return -1;
        }
        return numberOfTrailingZeros;
    }

    /* renamed from: e */
    public static int m26530e(int[] iArr, int i) {
        int m26531d;
        int length = iArr.length;
        int i2 = i & 31;
        for (int i3 = i >> 5; i3 < length; i3++) {
            int i4 = iArr[i3];
            if (i4 != 0 && (m26531d = m26531d(i4, i2)) >= 0) {
                return (i3 << 5) + m26531d;
            }
            i2 = 0;
        }
        return -1;
    }

    /* renamed from: f */
    public static boolean m26529f(int[] iArr, int i) {
        return (iArr[i >> 5] & (1 << (i & 31))) != 0;
    }

    /* renamed from: g */
    public static int m26528g(int[] iArr) {
        return iArr.length * 32;
    }

    /* renamed from: h */
    public static boolean m26527h(int[] iArr) {
        for (int i : iArr) {
            if (i != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: i */
    public static int[] m26526i(int i) {
        return new int[(i + 31) >> 5];
    }

    /* renamed from: j */
    public static void m26525j(int[] iArr, int[] iArr2) {
        for (int i = 0; i < iArr2.length; i++) {
            iArr[i] = iArr[i] | iArr2[i];
        }
    }

    /* renamed from: k */
    public static void m26524k(int[] iArr, int i) {
        int i2 = i >> 5;
        iArr[i2] = (1 << (i & 31)) | iArr[i2];
    }

    /* renamed from: l */
    public static void m26523l(int[] iArr, int i, boolean z) {
        int i2 = i >> 5;
        int i3 = 1 << (i & 31);
        if (z) {
            iArr[i2] = i3 | iArr[i2];
            return;
        }
        iArr[i2] = (i3 ^ (-1)) & iArr[i2];
    }
}
