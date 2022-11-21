package p168r4;

import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
/* renamed from: r4.y44 */
/* loaded from: classes2.dex */
public final class y44 extends w44 {

    /* renamed from: n */
    public x44 f33942n;

    /* renamed from: o */
    public int f33943o;

    /* renamed from: p */
    public boolean f33944p;

    /* renamed from: q */
    public i14 f33945q;

    /* renamed from: r */
    public f14 f33946r;

    @Override // p168r4.w44
    /* renamed from: a */
    public final void mo4838a(boolean z) {
        super.mo4838a(z);
        if (z) {
            this.f33942n = null;
            this.f33945q = null;
            this.f33946r = null;
        }
        this.f33943o = 0;
        this.f33944p = false;
    }

    @Override // p168r4.w44
    /* renamed from: i */
    public final void mo4835i(long j) {
        super.mo4835i(j);
        this.f33944p = j != 0;
        i14 i14Var = this.f33945q;
        this.f33943o = i14Var != null ? i14Var.f24929e : 0;
    }

    @Override // p168r4.w44
    /* renamed from: c */
    public final boolean mo4836c(C6423xb c6423xb, long j, u44 u44Var) {
        x44 x44Var;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z;
        if (this.f33942n != null) {
            u44Var.f32171a.getClass();
            return false;
        }
        i14 i14Var = this.f33945q;
        if (i14Var == null) {
            j14.m10436c(1, c6423xb, false);
            int m5416c = c6423xb.m5416c();
            int m5397v = c6423xb.m5397v();
            int m5416c2 = c6423xb.m5416c();
            int m5422E = c6423xb.m5422E();
            if (m5422E <= 0) {
                i7 = -1;
            } else {
                i7 = m5422E;
            }
            int m5422E2 = c6423xb.m5422E();
            if (m5422E2 <= 0) {
                i8 = -1;
            } else {
                i8 = m5422E2;
            }
            int m5422E3 = c6423xb.m5422E();
            if (m5422E3 <= 0) {
                i9 = -1;
            } else {
                i9 = m5422E3;
            }
            int m5397v2 = c6423xb.m5397v();
            int pow = (int) Math.pow(2.0d, m5397v2 & 15);
            int pow2 = (int) Math.pow(2.0d, (m5397v2 & 240) >> 4);
            int m5397v3 = c6423xb.m5397v();
            byte[] copyOf = Arrays.copyOf(c6423xb.m5402q(), c6423xb.m5406m());
            if (1 != (m5397v3 & 1)) {
                z = false;
            } else {
                z = true;
            }
            this.f33945q = new i14(m5416c, m5397v, m5416c2, i7, i8, i9, pow, pow2, z, copyOf);
        } else {
            f14 f14Var = this.f33946r;
            if (f14Var == null) {
                this.f33946r = j14.m10437b(c6423xb, true, true);
            } else {
                byte[] bArr = new byte[c6423xb.m5406m()];
                System.arraycopy(c6423xb.m5402q(), 0, bArr, 0, c6423xb.m5406m());
                int i10 = i14Var.f24925a;
                int i11 = 5;
                j14.m10436c(5, c6423xb, false);
                int m5397v4 = c6423xb.m5397v() + 1;
                e14 e14Var = new e14(c6423xb.m5402q());
                e14Var.m11878c(c6423xb.m5404o() * 8);
                int i12 = 0;
                while (i12 < m5397v4) {
                    if (e14Var.m11879b(24) == 5653314) {
                        int m11879b = e14Var.m11879b(16);
                        int m11879b2 = e14Var.m11879b(24);
                        long[] jArr = new long[m11879b2];
                        long j2 = 0;
                        if (!e14Var.m11880a()) {
                            boolean m11880a = e14Var.m11880a();
                            int i13 = 0;
                            while (i13 < m11879b2) {
                                if (m11880a) {
                                    if (e14Var.m11880a()) {
                                        i6 = m5397v4;
                                        jArr[i13] = e14Var.m11879b(i11) + 1;
                                    } else {
                                        i6 = m5397v4;
                                        jArr[i13] = 0;
                                    }
                                } else {
                                    i6 = m5397v4;
                                    jArr[i13] = e14Var.m11879b(5) + 1;
                                }
                                i13++;
                                m5397v4 = i6;
                                i11 = 5;
                            }
                            i5 = m5397v4;
                        } else {
                            i5 = m5397v4;
                            int m11879b3 = e14Var.m11879b(5) + 1;
                            int i14 = 0;
                            while (i14 < m11879b2) {
                                int m11879b4 = e14Var.m11879b(j14.m10438a(m11879b2 - i14));
                                int i15 = 0;
                                while (i15 < m11879b4 && i14 < m11879b2) {
                                    jArr[i14] = m11879b3;
                                    i14++;
                                    i15++;
                                    f14Var = f14Var;
                                    bArr = bArr;
                                }
                                m11879b3++;
                                f14Var = f14Var;
                                bArr = bArr;
                            }
                        }
                        f14 f14Var2 = f14Var;
                        byte[] bArr2 = bArr;
                        int m11879b5 = e14Var.m11879b(4);
                        if (m11879b5 <= 2) {
                            if (m11879b5 != 1) {
                                if (m11879b5 == 2) {
                                    m11879b5 = 2;
                                } else {
                                    i12++;
                                    f14Var = f14Var2;
                                    m5397v4 = i5;
                                    bArr = bArr2;
                                    i11 = 5;
                                }
                            }
                            e14Var.m11878c(32);
                            e14Var.m11878c(32);
                            int m11879b6 = e14Var.m11879b(4) + 1;
                            e14Var.m11878c(1);
                            if (m11879b5 == 1) {
                                if (m11879b != 0) {
                                    double d = m11879b;
                                    Double.isNaN(d);
                                    j2 = (long) Math.floor(Math.pow(m11879b2, 1.0d / d));
                                }
                            } else {
                                j2 = m11879b2 * m11879b;
                            }
                            e14Var.m11878c((int) (m11879b6 * j2));
                            i12++;
                            f14Var = f14Var2;
                            m5397v4 = i5;
                            bArr = bArr2;
                            i11 = 5;
                        } else {
                            StringBuilder sb = new StringBuilder(53);
                            sb.append("lookup type greater than 2 not decodable: ");
                            sb.append(m11879b5);
                            throw C5973l6.m9787b(sb.toString(), null);
                        }
                    } else {
                        int m11877d = e14Var.m11877d();
                        StringBuilder sb2 = new StringBuilder(66);
                        sb2.append("expected code book to start with [0x56, 0x43, 0x42] at ");
                        sb2.append(m11877d);
                        throw C5973l6.m9787b(sb2.toString(), null);
                    }
                }
                f14 f14Var3 = f14Var;
                byte[] bArr3 = bArr;
                int i16 = 6;
                int m11879b7 = e14Var.m11879b(6) + 1;
                for (int i17 = 0; i17 < m11879b7; i17++) {
                    if (e14Var.m11879b(16) != 0) {
                        throw C5973l6.m9787b("placeholder of time domain transforms not zeroed out", null);
                    }
                }
                int i18 = 1;
                int m11879b8 = e14Var.m11879b(6) + 1;
                int i19 = 0;
                while (true) {
                    int i20 = 3;
                    if (i19 < m11879b8) {
                        int m11879b9 = e14Var.m11879b(16);
                        if (m11879b9 != 0) {
                            if (m11879b9 == i18) {
                                int m11879b10 = e14Var.m11879b(5);
                                int[] iArr = new int[m11879b10];
                                int i21 = -1;
                                for (int i22 = 0; i22 < m11879b10; i22++) {
                                    int m11879b11 = e14Var.m11879b(4);
                                    iArr[i22] = m11879b11;
                                    if (m11879b11 > i21) {
                                        i21 = m11879b11;
                                    }
                                }
                                int i23 = i21 + 1;
                                int[] iArr2 = new int[i23];
                                int i24 = 0;
                                while (i24 < i23) {
                                    iArr2[i24] = e14Var.m11879b(i20) + 1;
                                    int m11879b12 = e14Var.m11879b(2);
                                    if (m11879b12 > 0) {
                                        i4 = 8;
                                        e14Var.m11878c(8);
                                    } else {
                                        i4 = 8;
                                    }
                                    int i25 = 0;
                                    for (int i26 = 1; i25 < (i26 << m11879b12); i26 = 1) {
                                        e14Var.m11878c(i4);
                                        i25++;
                                        i4 = 8;
                                    }
                                    i24++;
                                    i20 = 3;
                                }
                                e14Var.m11878c(2);
                                int m11879b13 = e14Var.m11879b(4);
                                int i27 = 0;
                                int i28 = 0;
                                for (int i29 = 0; i29 < m11879b10; i29++) {
                                    i27 += iArr2[iArr[i29]];
                                    while (i28 < i27) {
                                        e14Var.m11878c(m11879b13);
                                        i28++;
                                    }
                                }
                            } else {
                                StringBuilder sb3 = new StringBuilder(52);
                                sb3.append("floor type greater than 1 not decodable: ");
                                sb3.append(m11879b9);
                                throw C5973l6.m9787b(sb3.toString(), null);
                            }
                        } else {
                            int i30 = 8;
                            e14Var.m11878c(8);
                            e14Var.m11878c(16);
                            e14Var.m11878c(16);
                            e14Var.m11878c(6);
                            e14Var.m11878c(8);
                            int m11879b14 = e14Var.m11879b(4) + 1;
                            int i31 = 0;
                            while (i31 < m11879b14) {
                                e14Var.m11878c(i30);
                                i31++;
                                i30 = 8;
                            }
                        }
                        i19++;
                        i16 = 6;
                        i18 = 1;
                    } else {
                        int i32 = 1;
                        int m11879b15 = e14Var.m11879b(i16) + 1;
                        int i33 = 0;
                        while (i33 < m11879b15) {
                            if (e14Var.m11879b(16) <= 2) {
                                e14Var.m11878c(24);
                                e14Var.m11878c(24);
                                e14Var.m11878c(24);
                                int m11879b16 = e14Var.m11879b(i16) + i32;
                                int i34 = 8;
                                e14Var.m11878c(8);
                                int[] iArr3 = new int[m11879b16];
                                for (int i35 = 0; i35 < m11879b16; i35++) {
                                    int m11879b17 = e14Var.m11879b(3);
                                    if (e14Var.m11880a()) {
                                        i3 = e14Var.m11879b(5);
                                    } else {
                                        i3 = 0;
                                    }
                                    iArr3[i35] = (i3 * 8) + m11879b17;
                                }
                                int i36 = 0;
                                while (i36 < m11879b16) {
                                    int i37 = 0;
                                    while (i37 < i34) {
                                        if ((iArr3[i36] & (1 << i37)) != 0) {
                                            e14Var.m11878c(i34);
                                        }
                                        i37++;
                                        i34 = 8;
                                    }
                                    i36++;
                                    i34 = 8;
                                }
                                i33++;
                                i16 = 6;
                                i32 = 1;
                            } else {
                                throw C5973l6.m9787b("residueType greater than 2 is not decodable", null);
                            }
                        }
                        int m11879b18 = e14Var.m11879b(i16) + 1;
                        for (int i38 = 0; i38 < m11879b18; i38++) {
                            int m11879b19 = e14Var.m11879b(16);
                            if (m11879b19 != 0) {
                                StringBuilder sb4 = new StringBuilder(52);
                                sb4.append("mapping type other than 0 not supported: ");
                                sb4.append(m11879b19);
                                Log.e("VorbisUtil", sb4.toString());
                            } else {
                                if (e14Var.m11880a()) {
                                    i = 1;
                                    i2 = e14Var.m11879b(4) + 1;
                                } else {
                                    i = 1;
                                    i2 = 1;
                                }
                                if (e14Var.m11880a()) {
                                    int m11879b20 = e14Var.m11879b(8) + i;
                                    for (int i39 = 0; i39 < m11879b20; i39++) {
                                        int i40 = i10 - 1;
                                        e14Var.m11878c(j14.m10438a(i40));
                                        e14Var.m11878c(j14.m10438a(i40));
                                    }
                                }
                                if (e14Var.m11879b(2) == 0) {
                                    if (i2 > 1) {
                                        for (int i41 = 0; i41 < i10; i41++) {
                                            e14Var.m11878c(4);
                                        }
                                    }
                                    for (int i42 = 0; i42 < i2; i42++) {
                                        e14Var.m11878c(8);
                                        e14Var.m11878c(8);
                                        e14Var.m11878c(8);
                                    }
                                } else {
                                    throw C5973l6.m9787b("to reserved bits must be zero after mapping coupling steps", null);
                                }
                            }
                        }
                        int m11879b21 = e14Var.m11879b(6) + 1;
                        h14[] h14VarArr = new h14[m11879b21];
                        for (int i43 = 0; i43 < m11879b21; i43++) {
                            h14VarArr[i43] = new h14(e14Var.m11880a(), e14Var.m11879b(16), e14Var.m11879b(16), e14Var.m11879b(8));
                        }
                        if (e14Var.m11880a()) {
                            x44Var = new x44(i14Var, f14Var3, bArr3, h14VarArr, j14.m10438a(m11879b21 - 1));
                        } else {
                            throw C5973l6.m9787b("framing bit after modes not set as expected", null);
                        }
                    }
                }
            }
        }
        x44Var = null;
        this.f33942n = x44Var;
        if (x44Var == null) {
            return true;
        }
        i14 i14Var2 = x44Var.f33450a;
        ArrayList arrayList = new ArrayList();
        arrayList.add(i14Var2.f24931g);
        arrayList.add(x44Var.f33452c);
        C5639c5 c5639c5 = new C5639c5();
        c5639c5.m12564n("audio/vorbis");
        c5639c5.m12569i(i14Var2.f24928d);
        c5639c5.m12568j(i14Var2.f24927c);
        c5639c5.m12610B(i14Var2.f24925a);
        c5639c5.m12609C(i14Var2.f24926b);
        c5639c5.m12562p(arrayList);
        u44Var.f32171a = c5639c5.m12603I();
        return true;
    }

    @Override // p168r4.w44
    /* renamed from: b */
    public final long mo4837b(C6423xb c6423xb) {
        int i;
        int i2 = 0;
        if ((c6423xb.m5402q()[0] & 1) == 1) {
            return -1L;
        }
        byte b = c6423xb.m5402q()[0];
        x44 x44Var = this.f33942n;
        C5903ja.m10370e(x44Var);
        if (!x44Var.f33453d[(b >> 1) & (255 >>> (8 - x44Var.f33454e))].f24407a) {
            i = x44Var.f33450a.f24929e;
        } else {
            i = x44Var.f33450a.f24930f;
        }
        if (this.f33944p) {
            i2 = (this.f33943o + i) / 4;
        }
        long j = i2;
        if (c6423xb.m5401r() < c6423xb.m5406m() + 4) {
            byte[] copyOf = Arrays.copyOf(c6423xb.m5402q(), c6423xb.m5406m() + 4);
            c6423xb.m5409j(copyOf, copyOf.length);
        } else {
            c6423xb.m5405n(c6423xb.m5406m() + 4);
        }
        byte[] m5402q = c6423xb.m5402q();
        m5402q[c6423xb.m5406m() - 4] = (byte) (j & 255);
        m5402q[c6423xb.m5406m() - 3] = (byte) ((j >>> 8) & 255);
        m5402q[c6423xb.m5406m() - 2] = (byte) ((j >>> 16) & 255);
        m5402q[c6423xb.m5406m() - 1] = (byte) ((j >>> 24) & 255);
        this.f33944p = true;
        this.f33943o = i;
        return j;
    }
}
