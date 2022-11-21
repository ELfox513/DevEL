package p018b5;
/* renamed from: b5.sb */
/* loaded from: classes2.dex */
public final class C0873sb {
    /* renamed from: d */
    public static /* bridge */ /* synthetic */ boolean m25248d(byte b) {
        return b >= 0;
    }

    /* renamed from: e */
    public static boolean m25247e(byte b) {
        return b > -65;
    }

    /* renamed from: c */
    public static /* bridge */ /* synthetic */ void m25249c(byte b, byte b2, char[] cArr, int i) {
        if (b >= -62 && !m25247e(b2)) {
            cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
            return;
        }
        throw C0684h9.m25863c();
    }

    /* renamed from: a */
    public static /* bridge */ /* synthetic */ void m25251a(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) {
        if (!m25247e(b2) && (((b << 28) + (b2 + 112)) >> 30) == 0 && !m25247e(b3) && !m25247e(b4)) {
            int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
            cArr[i] = (char) ((i2 >>> 10) + 55232);
            cArr[i + 1] = (char) ((i2 & 1023) + 56320);
            return;
        }
        throw C0684h9.m25863c();
    }

    /* renamed from: b */
    public static /* bridge */ /* synthetic */ void m25250b(byte b, byte b2, byte b3, char[] cArr, int i) {
        if (!m25247e(b2)) {
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
            if (!m25247e(b3)) {
                cArr[i] = (char) (((b & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
                return;
            }
        }
        throw C0684h9.m25863c();
    }
}
