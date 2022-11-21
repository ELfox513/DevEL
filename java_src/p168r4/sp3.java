package p168r4;
/* renamed from: r4.sp3 */
/* loaded from: classes2.dex */
public final class sp3 {
    /* renamed from: a */
    public static /* synthetic */ boolean m7067a(byte b) {
        return b >= 0;
    }

    /* renamed from: b */
    public static /* synthetic */ boolean m7066b(byte b) {
        return b < -32;
    }

    /* renamed from: c */
    public static /* synthetic */ boolean m7065c(byte b) {
        return b < -16;
    }

    /* renamed from: g */
    public static boolean m7061g(byte b) {
        return b > -65;
    }

    /* renamed from: d */
    public static /* synthetic */ void m7064d(byte b, byte b2, char[] cArr, int i) {
        if (b >= -62 && !m7061g(b2)) {
            cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
            return;
        }
        throw bn3.m12732l();
    }

    /* renamed from: e */
    public static /* synthetic */ void m7063e(byte b, byte b2, byte b3, char[] cArr, int i) {
        if (!m7061g(b2)) {
            if (b == -32) {
                if (b2 >= -96) {
                    b = -32;
                }
            }
            if (b == -19) {
                if (b2 < -96) {
                    b = -19;
                }
            }
            if (!m7061g(b3)) {
                cArr[i] = (char) (((b & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
                return;
            }
        }
        throw bn3.m12732l();
    }

    /* renamed from: f */
    public static /* synthetic */ void m7062f(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) {
        if (!m7061g(b2) && (((b << 28) + (b2 + 112)) >> 30) == 0 && !m7061g(b3) && !m7061g(b4)) {
            int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
            cArr[i] = (char) ((i2 >>> 10) + 55232);
            cArr[i + 1] = (char) ((i2 & 1023) + 56320);
            return;
        }
        throw bn3.m12732l();
    }
}
