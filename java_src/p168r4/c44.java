package p168r4;
/* renamed from: r4.c44 */
/* loaded from: classes2.dex */
public final class c44 {

    /* renamed from: a */
    public static final int[] f21358a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    /* renamed from: a */
    public static boolean m12614a(b04 b04Var) {
        return m12612c(b04Var, true, false);
    }

    /* renamed from: b */
    public static boolean m12613b(b04 b04Var, boolean z) {
        return m12612c(b04Var, false, false);
    }

    /* renamed from: c */
    public static boolean m12612c(b04 b04Var, boolean z, boolean z2) {
        boolean z3;
        long mo5953q = b04Var.mo5953q();
        long j = 4096;
        long j2 = -1;
        if (mo5953q != -1 && mo5953q <= 4096) {
            j = mo5953q;
        }
        int i = (int) j;
        C6423xb c6423xb = new C6423xb(64);
        boolean z4 = false;
        int i2 = 0;
        boolean z5 = false;
        while (i2 < i) {
            c6423xb.m5410i(8);
            if (!b04Var.mo5960i(c6423xb.m5402q(), z4 ? 1 : 0, 8, true)) {
                break;
            }
            long m5425B = c6423xb.m5425B();
            int m5423D = c6423xb.m5423D();
            int i3 = 16;
            if (m5425B == 1) {
                b04Var.mo5962e(c6423xb.m5402q(), 8, 8);
                c6423xb.m5405n(16);
                m5425B = c6423xb.m5421F();
            } else {
                if (m5425B == 0) {
                    long mo5953q2 = b04Var.mo5953q();
                    if (mo5953q2 != j2) {
                        m5425B = 8 + (mo5953q2 - b04Var.mo5958l());
                    }
                }
                i3 = 8;
            }
            long j3 = i3;
            if (m5425B < j3) {
                return z4;
            }
            i2 += i3;
            if (m5423D == 1836019574) {
                i += (int) m5425B;
                if (mo5953q != -1 && i > mo5953q) {
                    i = (int) mo5953q;
                }
                j2 = -1;
            } else if (m5423D != 1836019558 && m5423D != 1836475768) {
                long j4 = mo5953q;
                if ((i2 + m5425B) - j3 >= i) {
                    break;
                }
                int i4 = (int) (m5425B - j3);
                i2 += i4;
                if (m5423D == 1718909296) {
                    if (i4 < 8) {
                        return false;
                    }
                    c6423xb.m5410i(i4);
                    b04Var.mo5962e(c6423xb.m5402q(), 0, i4);
                    int i5 = i4 >> 2;
                    for (int i6 = 0; i6 < i5; i6++) {
                        if (i6 == 1) {
                            c6423xb.m5400s(4);
                        } else {
                            int m5423D2 = c6423xb.m5423D();
                            if ((m5423D2 >>> 8) != 3368816) {
                                if (m5423D2 == 1751476579) {
                                    m5423D2 = 1751476579;
                                }
                                int[] iArr = f21358a;
                                for (int i7 = 0; i7 < 29; i7++) {
                                    if (iArr[i7] != m5423D2) {
                                    }
                                }
                                continue;
                            }
                            z5 = true;
                            break;
                        }
                    }
                    if (!z5) {
                        return false;
                    }
                } else if (i4 != 0) {
                    b04Var.mo5964T(i4);
                }
                j2 = -1;
                mo5953q = j4;
                z4 = false;
            } else {
                z3 = true;
                break;
            }
        }
        z3 = false;
        if (z5 && z == z3) {
            return true;
        }
        return false;
    }
}
