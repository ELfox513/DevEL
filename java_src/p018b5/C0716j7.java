package p018b5;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: b5.j7 */
/* loaded from: classes2.dex */
public final class C0716j7 {
    /* renamed from: b */
    public static int m25752b(byte[] bArr, int i) {
        return ((bArr[i + 3] & DefaultClassResolver.NAME) << 24) | (bArr[i] & DefaultClassResolver.NAME) | ((bArr[i + 1] & DefaultClassResolver.NAME) << 8) | ((bArr[i + 2] & DefaultClassResolver.NAME) << 16);
    }

    /* renamed from: n */
    public static long m25740n(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* renamed from: c */
    public static int m25751c(InterfaceC0821pa interfaceC0821pa, byte[] bArr, int i, int i2, int i3, C0699i7 c0699i7) {
        C0685ha c0685ha = (C0685ha) interfaceC0821pa;
        Object mo25494c = c0685ha.mo25494c();
        int m25856D = c0685ha.m25856D(mo25494c, bArr, i, i2, i3, c0699i7);
        c0685ha.mo25493d(mo25494c);
        c0699i7.f1881c = mo25494c;
        return m25856D;
    }

    /* renamed from: d */
    public static int m25750d(InterfaceC0821pa interfaceC0821pa, byte[] bArr, int i, int i2, C0699i7 c0699i7) {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = m25743k(i4, bArr, i3, c0699i7);
            i4 = c0699i7.f1879a;
        }
        int i5 = i3;
        if (i4 >= 0 && i4 <= i2 - i5) {
            Object mo25494c = interfaceC0821pa.mo25494c();
            int i6 = i4 + i5;
            interfaceC0821pa.mo25490g(mo25494c, bArr, i5, i6, c0699i7);
            interfaceC0821pa.mo25493d(mo25494c);
            c0699i7.f1881c = mo25494c;
            return i6;
        }
        throw C0684h9.m25860f();
    }

    /* renamed from: f */
    public static int m25748f(byte[] bArr, int i, InterfaceC0633e9<?> interfaceC0633e9, C0699i7 c0699i7) {
        C0989z8 c0989z8 = (C0989z8) interfaceC0633e9;
        int m25744j = m25744j(bArr, i, c0699i7);
        int i2 = c0699i7.f1879a + m25744j;
        while (m25744j < i2) {
            m25744j = m25744j(bArr, m25744j, c0699i7);
            c0989z8.m24866Y(c0699i7.f1879a);
        }
        if (m25744j == i2) {
            return m25744j;
        }
        throw C0684h9.m25860f();
    }

    /* renamed from: i */
    public static int m25745i(int i, byte[] bArr, int i2, int i3, C0703ib c0703ib, C0699i7 c0699i7) {
        if ((i >>> 3) != 0) {
            int i4 = i & 7;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 3) {
                            if (i4 == 5) {
                                c0703ib.m25787h(i, Integer.valueOf(m25752b(bArr, i2)));
                                return i2 + 4;
                            }
                            throw C0684h9.m25864b();
                        }
                        int i5 = (i & (-8)) | 4;
                        C0703ib m25790e = C0703ib.m25790e();
                        int i6 = 0;
                        while (true) {
                            if (i2 >= i3) {
                                break;
                            }
                            int m25744j = m25744j(bArr, i2, c0699i7);
                            int i7 = c0699i7.f1879a;
                            if (i7 == i5) {
                                i6 = i7;
                                i2 = m25744j;
                                break;
                            }
                            i6 = i7;
                            i2 = m25745i(i7, bArr, m25744j, i3, m25790e, c0699i7);
                        }
                        if (i2 <= i3 && i6 == i5) {
                            c0703ib.m25787h(i, m25790e);
                            return i2;
                        }
                        throw C0684h9.m25861e();
                    }
                    int m25744j2 = m25744j(bArr, i2, c0699i7);
                    int i8 = c0699i7.f1879a;
                    if (i8 >= 0) {
                        if (i8 <= bArr.length - m25744j2) {
                            if (i8 == 0) {
                                c0703ib.m25787h(i, AbstractC0937w7.f2373b);
                            } else {
                                c0703ib.m25787h(i, AbstractC0937w7.m25029s(bArr, m25744j2, i8));
                            }
                            return m25744j2 + i8;
                        }
                        throw C0684h9.m25860f();
                    }
                    throw C0684h9.m25862d();
                }
                c0703ib.m25787h(i, Long.valueOf(m25740n(bArr, i2)));
                return i2 + 8;
            }
            int m25741m = m25741m(bArr, i2, c0699i7);
            c0703ib.m25787h(i, Long.valueOf(c0699i7.f1880b));
            return m25741m;
        }
        throw C0684h9.m25864b();
    }

    /* renamed from: j */
    public static int m25744j(byte[] bArr, int i, C0699i7 c0699i7) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            c0699i7.f1879a = b;
            return i2;
        }
        return m25743k(b, bArr, i2, c0699i7);
    }

    /* renamed from: k */
    public static int m25743k(int i, byte[] bArr, int i2, C0699i7 c0699i7) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            c0699i7.f1879a = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            c0699i7.f1879a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            c0699i7.f1879a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            c0699i7.f1879a = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] < 0) {
                i10 = i12;
            } else {
                c0699i7.f1879a = i11;
                return i12;
            }
        }
    }

    /* renamed from: l */
    public static int m25742l(int i, byte[] bArr, int i2, int i3, InterfaceC0633e9<?> interfaceC0633e9, C0699i7 c0699i7) {
        C0989z8 c0989z8 = (C0989z8) interfaceC0633e9;
        int m25744j = m25744j(bArr, i2, c0699i7);
        c0989z8.m24866Y(c0699i7.f1879a);
        while (m25744j < i3) {
            int m25744j2 = m25744j(bArr, m25744j, c0699i7);
            if (i != c0699i7.f1879a) {
                break;
            }
            m25744j = m25744j(bArr, m25744j2, c0699i7);
            c0989z8.m24866Y(c0699i7.f1879a);
        }
        return m25744j;
    }

    /* renamed from: m */
    public static int m25741m(byte[] bArr, int i, C0699i7 c0699i7) {
        byte b;
        int i2 = i + 1;
        long j = bArr[i];
        if (j < 0) {
            int i3 = i2 + 1;
            byte b2 = bArr[i2];
            long j2 = (j & 127) | ((b2 & Byte.MAX_VALUE) << 7);
            int i4 = 7;
            while (b2 < 0) {
                int i5 = i3 + 1;
                i4 += 7;
                j2 |= (b & Byte.MAX_VALUE) << i4;
                b2 = bArr[i3];
                i3 = i5;
            }
            c0699i7.f1880b = j2;
            return i3;
        }
        c0699i7.f1880b = j;
        return i2;
    }

    /* renamed from: a */
    public static int m25753a(byte[] bArr, int i, C0699i7 c0699i7) {
        int m25744j = m25744j(bArr, i, c0699i7);
        int i2 = c0699i7.f1879a;
        if (i2 >= 0) {
            if (i2 <= bArr.length - m25744j) {
                if (i2 == 0) {
                    c0699i7.f1881c = AbstractC0937w7.f2373b;
                    return m25744j;
                }
                c0699i7.f1881c = AbstractC0937w7.m25029s(bArr, m25744j, i2);
                return m25744j + i2;
            }
            throw C0684h9.m25860f();
        }
        throw C0684h9.m25862d();
    }

    /* renamed from: e */
    public static int m25749e(InterfaceC0821pa<?> interfaceC0821pa, int i, byte[] bArr, int i2, int i3, InterfaceC0633e9<?> interfaceC0633e9, C0699i7 c0699i7) {
        int m25750d = m25750d(interfaceC0821pa, bArr, i2, i3, c0699i7);
        interfaceC0633e9.add(c0699i7.f1881c);
        while (m25750d < i3) {
            int m25744j = m25744j(bArr, m25750d, c0699i7);
            if (i != c0699i7.f1879a) {
                break;
            }
            m25750d = m25750d(interfaceC0821pa, bArr, m25744j, i3, c0699i7);
            interfaceC0633e9.add(c0699i7.f1881c);
        }
        return m25750d;
    }

    /* renamed from: g */
    public static int m25747g(byte[] bArr, int i, C0699i7 c0699i7) {
        int m25744j = m25744j(bArr, i, c0699i7);
        int i2 = c0699i7.f1879a;
        if (i2 >= 0) {
            if (i2 == 0) {
                c0699i7.f1881c = "";
                return m25744j;
            }
            c0699i7.f1881c = new String(bArr, m25744j, i2, C0650f9.f1817a);
            return m25744j + i2;
        }
        throw C0684h9.m25862d();
    }

    /* renamed from: h */
    public static int m25746h(byte[] bArr, int i, C0699i7 c0699i7) {
        int m25744j = m25744j(bArr, i, c0699i7);
        int i2 = c0699i7.f1879a;
        if (i2 >= 0) {
            if (i2 == 0) {
                c0699i7.f1881c = "";
                return m25744j;
            }
            c0699i7.f1881c = C0941wb.m25021d(bArr, m25744j, i2);
            return m25744j + i2;
        }
        throw C0684h9.m25862d();
    }
}
