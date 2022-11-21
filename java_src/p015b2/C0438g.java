package p015b2;

import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* renamed from: b2.g */
/* loaded from: classes.dex */
public final class C0438g {
    /* renamed from: b */
    public static String m26483b(int i) {
        char[] cArr = new char[3];
        if (i < 0) {
            cArr[0] = SignatureVisitor.SUPER;
            i = -i;
        } else {
            cArr[0] = SignatureVisitor.EXTENDS;
        }
        for (int i2 = 0; i2 < 2; i2++) {
            cArr[2 - i2] = Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new String(cArr);
    }

    /* renamed from: c */
    public static String m26482c(int i) {
        char[] cArr = new char[5];
        if (i < 0) {
            cArr[0] = SignatureVisitor.SUPER;
            i = -i;
        } else {
            cArr[0] = SignatureVisitor.EXTENDS;
        }
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[4 - i2] = Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new String(cArr);
    }

    /* renamed from: f */
    public static String m26479f(int i) {
        char[] cArr = new char[2];
        for (int i2 = 0; i2 < 2; i2++) {
            cArr[1 - i2] = Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new String(cArr);
    }

    /* renamed from: g */
    public static String m26478g(int i) {
        char[] cArr = new char[4];
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[3 - i2] = Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new String(cArr);
    }

    /* renamed from: h */
    public static String m26477h(int i) {
        if (i == ((char) i)) {
            return m26478g(i);
        }
        return m26475j(i);
    }

    /* renamed from: i */
    public static String m26476i(int i) {
        char[] cArr = new char[6];
        for (int i2 = 0; i2 < 6; i2++) {
            cArr[5 - i2] = Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new String(cArr);
    }

    /* renamed from: l */
    public static String m26473l(int i) {
        return new String(new char[]{Character.forDigit(i & 15, 16)});
    }

    /* renamed from: a */
    public static String m26484a(byte[] bArr, int i, int i2, int i3, int i4, int i5) {
        String m26479f;
        int i6 = i + i2;
        if ((i | i2 | i6) >= 0 && i6 <= bArr.length) {
            if (i3 >= 0) {
                if (i2 == 0) {
                    return "";
                }
                StringBuilder sb = new StringBuilder((i2 * 4) + 6);
                int i7 = 0;
                while (i2 > 0) {
                    if (i7 == 0) {
                        if (i5 != 2) {
                            if (i5 != 4) {
                                if (i5 != 6) {
                                    m26479f = m26475j(i3);
                                } else {
                                    m26479f = m26476i(i3);
                                }
                            } else {
                                m26479f = m26478g(i3);
                            }
                        } else {
                            m26479f = m26479f(i3);
                        }
                        sb.append(m26479f);
                        sb.append(": ");
                    } else if ((i7 & 1) == 0) {
                        sb.append(' ');
                    }
                    sb.append(m26479f(bArr[i]));
                    i3++;
                    i++;
                    i7++;
                    if (i7 == i4) {
                        sb.append('\n');
                        i7 = 0;
                    }
                    i2--;
                }
                if (i7 != 0) {
                    sb.append('\n');
                }
                return sb.toString();
            }
            throw new IllegalArgumentException("outOffset < 0");
        }
        throw new IndexOutOfBoundsException("arr.length " + bArr.length + "; " + i + "..!" + i6);
    }

    /* renamed from: d */
    public static String m26481d(int i) {
        char[] cArr = new char[9];
        if (i < 0) {
            cArr[0] = SignatureVisitor.SUPER;
            i = -i;
        } else {
            cArr[0] = SignatureVisitor.EXTENDS;
        }
        for (int i2 = 0; i2 < 8; i2++) {
            cArr[8 - i2] = Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new String(cArr);
    }

    /* renamed from: e */
    public static String m26480e(long j) {
        char[] cArr = new char[17];
        if (j < 0) {
            cArr[0] = SignatureVisitor.SUPER;
            j = -j;
        } else {
            cArr[0] = SignatureVisitor.EXTENDS;
        }
        for (int i = 0; i < 16; i++) {
            cArr[16 - i] = Character.forDigit(((int) j) & 15, 16);
            j >>= 4;
        }
        return new String(cArr);
    }

    /* renamed from: j */
    public static String m26475j(int i) {
        char[] cArr = new char[8];
        for (int i2 = 0; i2 < 8; i2++) {
            cArr[7 - i2] = Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new String(cArr);
    }

    /* renamed from: k */
    public static String m26474k(long j) {
        char[] cArr = new char[16];
        for (int i = 0; i < 16; i++) {
            cArr[15 - i] = Character.forDigit(((int) j) & 15, 16);
            j >>= 4;
        }
        return new String(cArr);
    }
}
