package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: r4.yk3 */
/* loaded from: classes2.dex */
public final class yk3 {
    /* renamed from: d */
    public static int m4647d(byte[] bArr, int i) {
        return ((bArr[i + 3] & DefaultClassResolver.NAME) << 24) | (bArr[i] & DefaultClassResolver.NAME) | ((bArr[i + 1] & DefaultClassResolver.NAME) << 8) | ((bArr[i + 2] & DefaultClassResolver.NAME) << 16);
    }

    /* renamed from: e */
    public static long m4646e(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* renamed from: a */
    public static int m4650a(byte[] bArr, int i, xk3 xk3Var) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            xk3Var.f33622a = b;
            return i2;
        }
        return m4649b(b, bArr, i2, xk3Var);
    }

    /* renamed from: b */
    public static int m4649b(int i, byte[] bArr, int i2, xk3 xk3Var) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            xk3Var.f33622a = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            xk3Var.f33622a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            xk3Var.f33622a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            xk3Var.f33622a = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] < 0) {
                i10 = i12;
            } else {
                xk3Var.f33622a = i11;
                return i12;
            }
        }
    }

    /* renamed from: c */
    public static int m4648c(byte[] bArr, int i, xk3 xk3Var) {
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
            xk3Var.f33623b = j2;
            return i3;
        }
        xk3Var.f33623b = j;
        return i2;
    }

    /* renamed from: i */
    public static int m4642i(ro3 ro3Var, byte[] bArr, int i, int i2, xk3 xk3Var) {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = m4649b(i4, bArr, i3, xk3Var);
            i4 = xk3Var.f33622a;
        }
        int i5 = i3;
        if (i4 >= 0 && i4 <= i2 - i5) {
            Object zza = ro3Var.zza();
            int i6 = i4 + i5;
            ro3Var.mo7406h(zza, bArr, i5, i6, xk3Var);
            ro3Var.mo7409e(zza);
            xk3Var.f33624c = zza;
            return i6;
        }
        throw bn3.m12740d();
    }

    /* renamed from: j */
    public static int m4641j(ro3 ro3Var, byte[] bArr, int i, int i2, int i3, xk3 xk3Var) {
        do3 do3Var = (do3) ro3Var;
        Object zza = do3Var.zza();
        int m12050I = do3Var.m12050I(zza, bArr, i, i2, i3, xk3Var);
        do3Var.mo7409e(zza);
        xk3Var.f33624c = zza;
        return m12050I;
    }

    /* renamed from: k */
    public static int m4640k(int i, byte[] bArr, int i2, int i3, ym3<?> ym3Var, xk3 xk3Var) {
        qm3 qm3Var = (qm3) ym3Var;
        int m4650a = m4650a(bArr, i2, xk3Var);
        qm3Var.mo6483Y(xk3Var.f33622a);
        while (m4650a < i3) {
            int m4650a2 = m4650a(bArr, m4650a, xk3Var);
            if (i != xk3Var.f33622a) {
                break;
            }
            m4650a = m4650a(bArr, m4650a2, xk3Var);
            qm3Var.mo6483Y(xk3Var.f33622a);
        }
        return m4650a;
    }

    /* renamed from: l */
    public static int m4639l(byte[] bArr, int i, ym3<?> ym3Var, xk3 xk3Var) {
        qm3 qm3Var = (qm3) ym3Var;
        int m4650a = m4650a(bArr, i, xk3Var);
        int i2 = xk3Var.f33622a + m4650a;
        while (m4650a < i2) {
            m4650a = m4650a(bArr, m4650a, xk3Var);
            qm3Var.mo6483Y(xk3Var.f33622a);
        }
        if (m4650a == i2) {
            return m4650a;
        }
        throw bn3.m12740d();
    }

    /* renamed from: n */
    public static int m4637n(int i, byte[] bArr, int i2, int i3, ip3 ip3Var, xk3 xk3Var) {
        if ((i >>> 3) != 0) {
            int i4 = i & 7;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 3) {
                            if (i4 == 5) {
                                ip3Var.m10565h(i, Integer.valueOf(m4647d(bArr, i2)));
                                return i2 + 4;
                            }
                            throw bn3.m12737g();
                        }
                        int i5 = (i & (-8)) | 4;
                        ip3 m10571b = ip3.m10571b();
                        int i6 = 0;
                        while (true) {
                            if (i2 >= i3) {
                                break;
                            }
                            int m4650a = m4650a(bArr, i2, xk3Var);
                            int i7 = xk3Var.f33622a;
                            if (i7 == i5) {
                                i6 = i7;
                                i2 = m4650a;
                                break;
                            }
                            i6 = i7;
                            i2 = m4637n(i7, bArr, m4650a, i3, m10571b, xk3Var);
                        }
                        if (i2 <= i3 && i6 == i5) {
                            ip3Var.m10565h(i, m10571b);
                            return i2;
                        }
                        throw bn3.m12733k();
                    }
                    int m4650a2 = m4650a(bArr, i2, xk3Var);
                    int i8 = xk3Var.f33622a;
                    if (i8 >= 0) {
                        if (i8 <= bArr.length - m4650a2) {
                            if (i8 == 0) {
                                ip3Var.m10565h(i, ll3.f27255b);
                            } else {
                                ip3Var.m10565h(i, ll3.m9633H(bArr, m4650a2, i8));
                            }
                            return m4650a2 + i8;
                        }
                        throw bn3.m12740d();
                    }
                    throw bn3.m12739e();
                }
                ip3Var.m10565h(i, Long.valueOf(m4646e(bArr, i2)));
                return i2 + 8;
            }
            int m4648c = m4648c(bArr, i2, xk3Var);
            ip3Var.m10565h(i, Long.valueOf(xk3Var.f33623b));
            return m4648c;
        }
        throw bn3.m12737g();
    }

    /* renamed from: f */
    public static int m4645f(byte[] bArr, int i, xk3 xk3Var) {
        int m4650a = m4650a(bArr, i, xk3Var);
        int i2 = xk3Var.f33622a;
        if (i2 >= 0) {
            if (i2 == 0) {
                xk3Var.f33624c = "";
                return m4650a;
            }
            xk3Var.f33624c = new String(bArr, m4650a, i2, zm3.f34680a);
            return m4650a + i2;
        }
        throw bn3.m12739e();
    }

    /* renamed from: g */
    public static int m4644g(byte[] bArr, int i, xk3 xk3Var) {
        int m4650a = m4650a(bArr, i, xk3Var);
        int i2 = xk3Var.f33622a;
        if (i2 >= 0) {
            if (i2 == 0) {
                xk3Var.f33624c = "";
                return m4650a;
            }
            xk3Var.f33624c = wp3.m5621j(bArr, m4650a, i2);
            return m4650a + i2;
        }
        throw bn3.m12739e();
    }

    /* renamed from: h */
    public static int m4643h(byte[] bArr, int i, xk3 xk3Var) {
        int m4650a = m4650a(bArr, i, xk3Var);
        int i2 = xk3Var.f33622a;
        if (i2 >= 0) {
            if (i2 <= bArr.length - m4650a) {
                if (i2 == 0) {
                    xk3Var.f33624c = ll3.f27255b;
                    return m4650a;
                }
                xk3Var.f33624c = ll3.m9633H(bArr, m4650a, i2);
                return m4650a + i2;
            }
            throw bn3.m12740d();
        }
        throw bn3.m12739e();
    }

    /* renamed from: m */
    public static int m4638m(ro3<?> ro3Var, int i, byte[] bArr, int i2, int i3, ym3<?> ym3Var, xk3 xk3Var) {
        int m4642i = m4642i(ro3Var, bArr, i2, i3, xk3Var);
        ym3Var.add(xk3Var.f33624c);
        while (m4642i < i3) {
            int m4650a = m4650a(bArr, m4642i, xk3Var);
            if (i != xk3Var.f33622a) {
                break;
            }
            m4642i = m4642i(ro3Var, bArr, m4650a, i3, xk3Var);
            ym3Var.add(xk3Var.f33624c);
        }
        return m4642i;
    }
}
