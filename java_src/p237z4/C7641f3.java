package p237z4;
/* renamed from: z4.f3 */
/* loaded from: classes2.dex */
public final class C7641f3 {

    /* renamed from: a */
    public static final AbstractC7646g3 f37687a;

    /* renamed from: b */
    public static int m782b(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f37687a.mo675b(charSequence, bArr, i, i2);
    }

    /* renamed from: c */
    public static int m781c(int i) {
        if (i > -12) {
            return -1;
        }
        return i;
    }

    /* renamed from: e */
    public static int m779e(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* renamed from: g */
    public static boolean m777g(byte[] bArr) {
        return f37687a.m765c(bArr, 0, bArr.length);
    }

    /* renamed from: h */
    public static boolean m776h(byte[] bArr, int i, int i2) {
        return f37687a.m765c(bArr, i, i2);
    }

    /* renamed from: k */
    public static int m773k(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* renamed from: i */
    public static int m775i(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 == 2) {
                    return m779e(b, bArr[i], bArr[i + 1]);
                }
                throw new AssertionError();
            }
            return m773k(b, bArr[i]);
        }
        return m781c(b);
    }

    static {
        boolean z;
        AbstractC7646g3 c7651h3;
        if (C7627d3.m835r() && C7627d3.m834s()) {
            z = true;
        } else {
            z = false;
        }
        if (z && !C7642g.m771a()) {
            c7651h3 = new C7661j3();
        } else {
            c7651h3 = new C7651h3();
        }
        f37687a = c7651h3;
    }

    /* renamed from: a */
    public static int m783a(CharSequence charSequence) {
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
                        if (55296 <= charAt2 && charAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i2) >= 65536) {
                                i2++;
                            } else {
                                throw new C7656i3(i2, length2);
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
}
