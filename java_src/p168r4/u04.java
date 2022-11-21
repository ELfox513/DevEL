package p168r4;
/* renamed from: r4.u04 */
/* loaded from: classes2.dex */
public final class u04 {

    /* renamed from: a */
    public static final String[] f32110a = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* renamed from: b */
    public static final int[] f32111b = {44100, 48000, 32000};

    /* renamed from: c */
    public static final int[] f32112c = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: d */
    public static final int[] f32113d = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* renamed from: e */
    public static final int[] f32114e = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* renamed from: f */
    public static final int[] f32115f = {32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};

    /* renamed from: g */
    public static final int[] f32116g = {8000, 16000, 24000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    /* renamed from: i */
    public static int m6659i(int i) {
        int i2;
        int i3;
        if (!m6656l(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0) {
            return -1;
        }
        int i4 = (i >>> 12) & 15;
        int i5 = (i >>> 10) & 3;
        if (i4 == 0 || i4 == 15 || i5 == 3) {
            return -1;
        }
        return m6655m(i2, i3);
    }

    /* renamed from: l */
    public static boolean m6656l(int i) {
        return (i & (-2097152)) == -2097152;
    }

    /* renamed from: m */
    public static int m6655m(int i, int i2) {
        return i2 != 1 ? i2 != 2 ? 384 : 1152 : i == 3 ? 1152 : 576;
    }

    /* renamed from: h */
    public static int m6660h(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (!m6656l(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return -1;
        }
        int i8 = f32111b[i5];
        if (i2 == 2) {
            i8 /= 2;
        } else if (i2 == 0) {
            i8 /= 4;
        }
        int i9 = (i >>> 9) & 1;
        if (i3 == 3) {
            if (i2 == 3) {
                i7 = f32112c[i4 - 1];
            } else {
                i7 = f32113d[i4 - 1];
            }
            return (((i7 * 12) / i8) + i9) * 4;
        }
        if (i2 == 3) {
            if (i3 == 2) {
                i6 = f32114e[i4 - 1];
            } else {
                i6 = f32115f[i4 - 1];
            }
        } else {
            i6 = f32116g[i4 - 1];
        }
        int i10 = 144;
        if (i2 == 3) {
            return ((i6 * 144) / i8) + i9;
        }
        if (i3 == 1) {
            i10 = 72;
        }
        return ((i10 * i6) / i8) + i9;
    }
}
