package p168r4;

import java.nio.ByteBuffer;
/* renamed from: r4.wp3 */
/* loaded from: classes2.dex */
public final class wp3 {

    /* renamed from: a */
    public static final tp3 f33276a;

    /* renamed from: a */
    public static boolean m5630a(byte[] bArr) {
        return f33276a.m6762a(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public static boolean m5629b(byte[] bArr, int i, int i2) {
        return f33276a.m6762a(bArr, i, i2);
    }

    /* renamed from: c */
    public static int m5628c(int i, byte[] bArr, int i2, int i3) {
        return f33276a.mo6393b(i, bArr, i2, i3);
    }

    /* renamed from: j */
    public static String m5621j(byte[] bArr, int i, int i2) {
        return f33276a.mo6392c(bArr, i, i2);
    }

    /* renamed from: k */
    public static int m5620k(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* renamed from: l */
    public static int m5619l(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* renamed from: f */
    public static /* synthetic */ int m5625f(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 == 2) {
                    return m5619l(b, bArr[i], bArr[i + 1]);
                }
                throw new AssertionError();
            }
            return m5620k(b, bArr[i]);
        } else if (b > -12) {
            return -1;
        } else {
            return b;
        }
    }

    /* renamed from: i */
    public static String m5622i(ByteBuffer byteBuffer, int i, int i2) {
        tp3 tp3Var = f33276a;
        if (byteBuffer.hasArray()) {
            return tp3Var.mo6392c(byteBuffer.array(), byteBuffer.arrayOffset() + i, i2);
        } else if (byteBuffer.isDirect()) {
            return tp3.m6761d(byteBuffer, i, i2);
        } else {
            return tp3.m6761d(byteBuffer, i, i2);
        }
    }

    static {
        if (rp3.m7381i() && rp3.m7380j()) {
            int i = wk3.f33218a;
        }
        f33276a = new up3();
    }

    /* renamed from: g */
    public static int m5624g(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i2);
            if (charAt < 2048) {
                i3 += (127 - charAt) >>> 31;
                i2++;
            } else {
                int length2 = charSequence.length();
                while (i2 < length2) {
                    char charAt2 = charSequence.charAt(i2);
                    if (charAt2 < 2048) {
                        i += (127 - charAt2) >>> 31;
                    } else {
                        i += 2;
                        if (charAt2 >= 55296 && charAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i2) >= 65536) {
                                i2++;
                            } else {
                                throw new vp3(i2, length2);
                            }
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append("UTF-8 length does not fit in int: ");
        sb.append(i3 + 4294967296L);
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0100, code lost:
        return r9 + r0;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m5623h(java.lang.CharSequence r7, byte[] r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.wp3.m5623h(java.lang.CharSequence, byte[], int, int):int");
    }
}
