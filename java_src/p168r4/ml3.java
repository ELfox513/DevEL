package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.util.Arrays;
/* renamed from: r4.ml3 */
/* loaded from: classes2.dex */
public final class ml3 extends rl3 {

    /* renamed from: e */
    public final byte[] f27766e;

    /* renamed from: f */
    public int f27767f;

    /* renamed from: g */
    public int f27768g;

    /* renamed from: h */
    public int f27769h;

    /* renamed from: i */
    public final int f27770i;

    /* renamed from: j */
    public int f27771j;

    /* renamed from: k */
    public int f27772k;

    public /* synthetic */ ml3(byte[] bArr, int i, int i2, boolean z, pl3 pl3Var) {
        super(null);
        this.f27772k = Integer.MAX_VALUE;
        this.f27766e = bArr;
        this.f27767f = i2 + i;
        this.f27769h = i;
        this.f27770i = i;
    }

    /* renamed from: D */
    public final void m9341D() {
        int i = this.f27767f + this.f27768g;
        this.f27767f = i;
        int i2 = i - this.f27770i;
        int i3 = this.f27772k;
        if (i2 <= i3) {
            this.f27768g = 0;
            return;
        }
        int i4 = i2 - i3;
        this.f27768g = i4;
        this.f27767f = i - i4;
    }

    @Override // p168r4.rl3
    /* renamed from: a */
    public final void mo7463a(int i) {
        this.f27772k = i;
        m9341D();
    }

    @Override // p168r4.rl3
    /* renamed from: b */
    public final boolean mo7462b() {
        return this.f27769h == this.f27767f;
    }

    @Override // p168r4.rl3
    /* renamed from: c */
    public final int mo7461c() {
        return this.f27769h - this.f27770i;
    }

    @Override // p168r4.rl3
    /* renamed from: h */
    public final void mo7456h(int i) {
        if (this.f27771j != i) {
            throw bn3.m12736h();
        }
    }

    @Override // p168r4.rl3
    /* renamed from: j */
    public final double mo7454j() {
        return Double.longBitsToDouble(m9336I());
    }

    @Override // p168r4.rl3
    /* renamed from: k */
    public final float mo7453k() {
        return Float.intBitsToFloat(m9337H());
    }

    @Override // p168r4.rl3
    /* renamed from: l */
    public final long mo7452l() {
        return m9339F();
    }

    @Override // p168r4.rl3
    /* renamed from: m */
    public final long mo7451m() {
        return m9339F();
    }

    @Override // p168r4.rl3
    /* renamed from: n */
    public final int mo7450n() {
        return m9340E();
    }

    @Override // p168r4.rl3
    /* renamed from: o */
    public final long mo7449o() {
        return m9336I();
    }

    @Override // p168r4.rl3
    /* renamed from: p */
    public final int mo7448p() {
        return m9337H();
    }

    @Override // p168r4.rl3
    /* renamed from: q */
    public final boolean mo7447q() {
        return m9339F() != 0;
    }

    @Override // p168r4.rl3
    /* renamed from: u */
    public final int mo7443u() {
        return m9340E();
    }

    @Override // p168r4.rl3
    /* renamed from: v */
    public final int mo7442v() {
        return m9340E();
    }

    @Override // p168r4.rl3
    /* renamed from: w */
    public final int mo7441w() {
        return m9337H();
    }

    @Override // p168r4.rl3
    /* renamed from: x */
    public final long mo7440x() {
        return m9336I();
    }

    @Override // p168r4.rl3
    /* renamed from: y */
    public final int mo7439y() {
        return rl3.m7459e(m9340E());
    }

    @Override // p168r4.rl3
    /* renamed from: z */
    public final long mo7438z() {
        return rl3.m7458f(m9339F());
    }

    @Override // p168r4.rl3
    /* renamed from: A */
    public final int mo7464A(int i) {
        if (i >= 0) {
            int i2 = i + (this.f27769h - this.f27770i);
            if (i2 >= 0) {
                int i3 = this.f27772k;
                if (i2 <= i3) {
                    this.f27772k = i2;
                    m9341D();
                    return i3;
                }
                throw bn3.m12740d();
            }
            throw bn3.m12733k();
        }
        throw bn3.m12739e();
    }

    /* renamed from: B */
    public final byte m9343B() {
        int i = this.f27769h;
        if (i != this.f27767f) {
            byte[] bArr = this.f27766e;
            this.f27769h = i + 1;
            return bArr[i];
        }
        throw bn3.m12740d();
    }

    /* renamed from: C */
    public final void m9342C(int i) {
        if (i >= 0) {
            int i2 = this.f27767f;
            int i3 = this.f27769h;
            if (i <= i2 - i3) {
                this.f27769h = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw bn3.m12739e();
        }
        throw bn3.m12740d();
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
        if (r2[r3] >= 0) goto L13;
     */
    /* renamed from: E */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m9340E() {
        /*
            r5 = this;
            int r0 = r5.f27769h
            int r1 = r5.f27767f
            if (r1 != r0) goto L7
            goto L6c
        L7:
            byte[] r2 = r5.f27766e
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L12
            r5.f27769h = r3
            return r0
        L12:
            int r1 = r1 - r3
            r4 = 9
            if (r1 < r4) goto L6c
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            if (r0 >= 0) goto L23
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L69
        L23:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L30
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
        L2e:
            r1 = r3
            goto L69
        L30:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 21
            r0 = r0 ^ r3
            if (r0 >= 0) goto L3e
            r2 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            goto L69
        L3e:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r4 = r1 << 28
            r0 = r0 ^ r4
            r4 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r4
            if (r1 >= 0) goto L2e
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L69
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L2e
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L69
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L2e
            int r1 = r3 + 1
            r2 = r2[r3]
            if (r2 < 0) goto L6c
        L69:
            r5.f27769h = r1
            return r0
        L6c:
            long r0 = r5.m9338G()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.ml3.m9340E():int");
    }

    /* renamed from: F */
    public final long m9339F() {
        long j;
        long j2;
        long j3;
        long j4;
        int i;
        int i2 = this.f27769h;
        int i3 = this.f27767f;
        if (i3 != i2) {
            byte[] bArr = this.f27766e;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f27769h = i4;
                return b;
            } else if (i3 - i4 >= 9) {
                int i5 = i4 + 1;
                int i6 = b ^ (bArr[i4] << 7);
                if (i6 < 0) {
                    i = i6 ^ (-128);
                } else {
                    int i7 = i5 + 1;
                    int i8 = i6 ^ (bArr[i5] << 14);
                    if (i8 >= 0) {
                        j = i8 ^ 16256;
                    } else {
                        i5 = i7 + 1;
                        int i9 = i8 ^ (bArr[i7] << 21);
                        if (i9 < 0) {
                            i = i9 ^ (-2080896);
                        } else {
                            i7 = i5 + 1;
                            long j5 = (bArr[i5] << 28) ^ i9;
                            if (j5 >= 0) {
                                j4 = 266354560;
                            } else {
                                int i10 = i7 + 1;
                                long j6 = j5 ^ (bArr[i7] << 35);
                                if (j6 < 0) {
                                    j3 = -34093383808L;
                                } else {
                                    i7 = i10 + 1;
                                    j5 = j6 ^ (bArr[i10] << 42);
                                    if (j5 >= 0) {
                                        j4 = 4363953127296L;
                                    } else {
                                        i10 = i7 + 1;
                                        j6 = j5 ^ (bArr[i7] << 49);
                                        if (j6 < 0) {
                                            j3 = -558586000294016L;
                                        } else {
                                            i7 = i10 + 1;
                                            j = (j6 ^ (bArr[i10] << 56)) ^ 71499008037633920L;
                                            if (j < 0) {
                                                i10 = i7 + 1;
                                                if (bArr[i7] >= 0) {
                                                    j2 = j;
                                                    i5 = i10;
                                                    this.f27769h = i5;
                                                    return j2;
                                                }
                                            }
                                        }
                                    }
                                }
                                j2 = j3 ^ j6;
                                i5 = i10;
                                this.f27769h = i5;
                                return j2;
                            }
                            j = j5 ^ j4;
                        }
                    }
                    i5 = i7;
                    j2 = j;
                    this.f27769h = i5;
                    return j2;
                }
                j2 = i;
                this.f27769h = i5;
                return j2;
            }
        }
        return m9338G();
    }

    /* renamed from: G */
    public final long m9338G() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte m9343B = m9343B();
            j |= (m9343B & Byte.MAX_VALUE) << i;
            if ((m9343B & 128) == 0) {
                return j;
            }
        }
        throw bn3.m12738f();
    }

    /* renamed from: H */
    public final int m9337H() {
        int i = this.f27769h;
        if (this.f27767f - i >= 4) {
            byte[] bArr = this.f27766e;
            this.f27769h = i + 4;
            return ((bArr[i + 3] & DefaultClassResolver.NAME) << 24) | (bArr[i] & DefaultClassResolver.NAME) | ((bArr[i + 1] & DefaultClassResolver.NAME) << 8) | ((bArr[i + 2] & DefaultClassResolver.NAME) << 16);
        }
        throw bn3.m12740d();
    }

    /* renamed from: I */
    public final long m9336I() {
        int i = this.f27769h;
        if (this.f27767f - i >= 8) {
            byte[] bArr = this.f27766e;
            this.f27769h = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }
        throw bn3.m12740d();
    }

    @Override // p168r4.rl3
    /* renamed from: i */
    public final boolean mo7455i(int i) {
        int mo7457g;
        int i2 = i & 7;
        int i3 = 0;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 == 4) {
                            return false;
                        }
                        if (i2 == 5) {
                            m9342C(4);
                            return true;
                        }
                        throw bn3.m12735i();
                    }
                    do {
                        mo7457g = mo7457g();
                        if (mo7457g == 0) {
                            break;
                        }
                    } while (mo7455i(mo7457g));
                    mo7456h(((i >>> 3) << 3) | 4);
                    return true;
                }
                m9342C(m9340E());
                return true;
            }
            m9342C(8);
            return true;
        }
        if (this.f27767f - this.f27769h >= 10) {
            while (i3 < 10) {
                byte[] bArr = this.f27766e;
                int i4 = this.f27769h;
                this.f27769h = i4 + 1;
                if (bArr[i4] < 0) {
                    i3++;
                }
            }
            throw bn3.m12738f();
        }
        while (i3 < 10) {
            if (m9343B() < 0) {
                i3++;
            }
        }
        throw bn3.m12738f();
        return true;
    }

    @Override // p168r4.rl3
    /* renamed from: g */
    public final int mo7457g() {
        if (mo7462b()) {
            this.f27771j = 0;
            return 0;
        }
        int m9340E = m9340E();
        this.f27771j = m9340E;
        if ((m9340E >>> 3) != 0) {
            return m9340E;
        }
        throw bn3.m12737g();
    }

    @Override // p168r4.rl3
    /* renamed from: r */
    public final String mo7446r() {
        int m9340E = m9340E();
        if (m9340E > 0) {
            int i = this.f27767f;
            int i2 = this.f27769h;
            if (m9340E <= i - i2) {
                String str = new String(this.f27766e, i2, m9340E, zm3.f34680a);
                this.f27769h += m9340E;
                return str;
            }
        }
        if (m9340E == 0) {
            return "";
        }
        if (m9340E < 0) {
            throw bn3.m12739e();
        }
        throw bn3.m12740d();
    }

    @Override // p168r4.rl3
    /* renamed from: s */
    public final String mo7445s() {
        int m9340E = m9340E();
        if (m9340E > 0) {
            int i = this.f27767f;
            int i2 = this.f27769h;
            if (m9340E <= i - i2) {
                String m5621j = wp3.m5621j(this.f27766e, i2, m9340E);
                this.f27769h += m9340E;
                return m5621j;
            }
        }
        if (m9340E == 0) {
            return "";
        }
        if (m9340E <= 0) {
            throw bn3.m12739e();
        }
        throw bn3.m12740d();
    }

    @Override // p168r4.rl3
    /* renamed from: t */
    public final ll3 mo7444t() {
        int m9340E = m9340E();
        if (m9340E > 0) {
            int i = this.f27767f;
            int i2 = this.f27769h;
            if (m9340E <= i - i2) {
                ll3 m9633H = ll3.m9633H(this.f27766e, i2, m9340E);
                this.f27769h += m9340E;
                return m9633H;
            }
        }
        if (m9340E != 0) {
            if (m9340E > 0) {
                int i3 = this.f27767f;
                int i4 = this.f27769h;
                if (m9340E <= i3 - i4) {
                    int i5 = m9340E + i4;
                    this.f27769h = i5;
                    return ll3.m9631K(Arrays.copyOfRange(this.f27766e, i4, i5));
                }
            }
            if (m9340E <= 0) {
                throw bn3.m12739e();
            }
            throw bn3.m12740d();
        }
        return ll3.f27255b;
    }
}
