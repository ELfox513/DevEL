package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* renamed from: r4.nl3 */
/* loaded from: classes2.dex */
public final class nl3 extends rl3 {

    /* renamed from: e */
    public final Iterable<ByteBuffer> f28333e;

    /* renamed from: f */
    public final Iterator<ByteBuffer> f28334f;

    /* renamed from: g */
    public ByteBuffer f28335g;

    /* renamed from: h */
    public int f28336h;

    /* renamed from: i */
    public int f28337i;

    /* renamed from: j */
    public int f28338j;

    /* renamed from: k */
    public int f28339k;

    /* renamed from: l */
    public int f28340l;

    /* renamed from: m */
    public long f28341m;

    /* renamed from: n */
    public long f28342n;

    /* renamed from: o */
    public long f28343o;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ nl3(Iterable iterable, Iterable<ByteBuffer> iterable2, int i, boolean z) {
        super(null);
        this.f28338j = Integer.MAX_VALUE;
        this.f28336h = iterable2;
        this.f28333e = iterable;
        this.f28334f = iterable.iterator();
        this.f28340l = 0;
        if (iterable2 == 0) {
            this.f28335g = zm3.f34683d;
            this.f28341m = 0L;
            this.f28342n = 0L;
            this.f28343o = 0L;
            return;
        }
        m9043E();
    }

    /* renamed from: F */
    public final void m9042F() {
        int i = this.f28336h + this.f28337i;
        this.f28336h = i;
        int i2 = this.f28338j;
        if (i <= i2) {
            this.f28337i = 0;
            return;
        }
        int i3 = i - i2;
        this.f28337i = i3;
        this.f28336h = i - i3;
    }

    /* renamed from: H */
    public final int m9040H() {
        return (int) (((this.f28336h - this.f28340l) - this.f28341m) + this.f28342n);
    }

    @Override // p168r4.rl3
    /* renamed from: a */
    public final void mo7463a(int i) {
        this.f28338j = i;
        m9042F();
    }

    @Override // p168r4.rl3
    /* renamed from: b */
    public final boolean mo7462b() {
        return (((long) this.f28340l) + this.f28341m) - this.f28342n == ((long) this.f28336h);
    }

    @Override // p168r4.rl3
    /* renamed from: c */
    public final int mo7461c() {
        return (int) ((this.f28340l + this.f28341m) - this.f28342n);
    }

    @Override // p168r4.rl3
    /* renamed from: h */
    public final void mo7456h(int i) {
        if (this.f28339k != i) {
            throw bn3.m12736h();
        }
    }

    @Override // p168r4.rl3
    /* renamed from: j */
    public final double mo7454j() {
        return Double.longBitsToDouble(m9035M());
    }

    @Override // p168r4.rl3
    /* renamed from: k */
    public final float mo7453k() {
        return Float.intBitsToFloat(m9036L());
    }

    @Override // p168r4.rl3
    /* renamed from: l */
    public final long mo7452l() {
        return m9038J();
    }

    @Override // p168r4.rl3
    /* renamed from: m */
    public final long mo7451m() {
        return m9038J();
    }

    @Override // p168r4.rl3
    /* renamed from: n */
    public final int mo7450n() {
        return m9039I();
    }

    @Override // p168r4.rl3
    /* renamed from: o */
    public final long mo7449o() {
        return m9035M();
    }

    @Override // p168r4.rl3
    /* renamed from: p */
    public final int mo7448p() {
        return m9036L();
    }

    @Override // p168r4.rl3
    /* renamed from: q */
    public final boolean mo7447q() {
        return m9038J() != 0;
    }

    @Override // p168r4.rl3
    /* renamed from: u */
    public final int mo7443u() {
        return m9039I();
    }

    @Override // p168r4.rl3
    /* renamed from: v */
    public final int mo7442v() {
        return m9039I();
    }

    @Override // p168r4.rl3
    /* renamed from: w */
    public final int mo7441w() {
        return m9036L();
    }

    @Override // p168r4.rl3
    /* renamed from: x */
    public final long mo7440x() {
        return m9035M();
    }

    @Override // p168r4.rl3
    /* renamed from: y */
    public final int mo7439y() {
        return rl3.m7459e(m9039I());
    }

    @Override // p168r4.rl3
    /* renamed from: z */
    public final long mo7438z() {
        return rl3.m7458f(m9038J());
    }

    @Override // p168r4.rl3
    /* renamed from: A */
    public final int mo7464A(int i) {
        if (i >= 0) {
            int mo7461c = i + mo7461c();
            int i2 = this.f28338j;
            if (mo7461c <= i2) {
                this.f28338j = mo7461c;
                m9042F();
                return i2;
            }
            throw bn3.m12740d();
        }
        throw bn3.m12739e();
    }

    /* renamed from: B */
    public final byte m9046B() {
        if (this.f28343o - this.f28341m == 0) {
            m9044D();
        }
        long j = this.f28341m;
        this.f28341m = 1 + j;
        return rp3.m7364z(j);
    }

    /* renamed from: C */
    public final void m9045C(int i) {
        if (i >= 0 && i <= ((this.f28336h - this.f28340l) - this.f28341m) + this.f28342n) {
            while (i > 0) {
                if (this.f28343o - this.f28341m == 0) {
                    m9044D();
                }
                int min = Math.min(i, (int) (this.f28343o - this.f28341m));
                i -= min;
                this.f28341m += min;
            }
        } else if (i < 0) {
            throw bn3.m12739e();
        } else {
            throw bn3.m12740d();
        }
    }

    /* renamed from: D */
    public final void m9044D() {
        if (this.f28334f.hasNext()) {
            m9043E();
            return;
        }
        throw bn3.m12740d();
    }

    /* renamed from: E */
    public final void m9043E() {
        ByteBuffer next = this.f28334f.next();
        this.f28335g = next;
        this.f28340l += (int) (this.f28341m - this.f28342n);
        long position = next.position();
        this.f28341m = position;
        this.f28342n = position;
        this.f28343o = this.f28335g.limit();
        long m7397A = rp3.m7397A(this.f28335g);
        this.f28341m += m7397A;
        this.f28342n += m7397A;
        this.f28343o += m7397A;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0087, code lost:
        if (p168r4.rp3.m7364z(r4) >= 0) goto L13;
     */
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m9039I() {
        /*
            r10 = this;
            long r0 = r10.f28341m
            long r2 = r10.f28343o
            int r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r4 != 0) goto La
            goto L8c
        La:
            r2 = 1
            long r4 = r0 + r2
            byte r0 = p168r4.rp3.m7364z(r0)
            if (r0 < 0) goto L1a
            long r4 = r10.f28341m
            long r4 = r4 + r2
            r10.f28341m = r4
            return r0
        L1a:
            long r6 = r10.f28343o
            long r8 = r10.f28341m
            long r6 = r6 - r8
            r8 = 10
            int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r1 < 0) goto L8c
            long r6 = r4 + r2
            byte r1 = p168r4.rp3.m7364z(r4)
            int r1 = r1 << 7
            r0 = r0 ^ r1
            if (r0 >= 0) goto L33
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L89
        L33:
            long r4 = r6 + r2
            byte r1 = p168r4.rp3.m7364z(r6)
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L42
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
        L40:
            r6 = r4
            goto L89
        L42:
            long r6 = r4 + r2
            byte r1 = p168r4.rp3.m7364z(r4)
            int r1 = r1 << 21
            r0 = r0 ^ r1
            if (r0 >= 0) goto L52
            r1 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r1
            goto L89
        L52:
            long r4 = r6 + r2
            byte r1 = p168r4.rp3.m7364z(r6)
            int r6 = r1 << 28
            r0 = r0 ^ r6
            r6 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r6
            if (r1 >= 0) goto L40
            long r6 = r4 + r2
            byte r1 = p168r4.rp3.m7364z(r4)
            if (r1 >= 0) goto L89
            long r4 = r6 + r2
            byte r1 = p168r4.rp3.m7364z(r6)
            if (r1 >= 0) goto L40
            long r6 = r4 + r2
            byte r1 = p168r4.rp3.m7364z(r4)
            if (r1 >= 0) goto L89
            long r4 = r6 + r2
            byte r1 = p168r4.rp3.m7364z(r6)
            if (r1 >= 0) goto L40
            long r6 = r4 + r2
            byte r1 = p168r4.rp3.m7364z(r4)
            if (r1 < 0) goto L8c
        L89:
            r10.f28341m = r6
            return r0
        L8c:
            long r0 = r10.m9037K()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.nl3.m9039I():int");
    }

    /* renamed from: J */
    public final long m9038J() {
        long m7364z;
        long j;
        long j2;
        int i;
        long j3 = this.f28341m;
        if (this.f28343o != j3) {
            long j4 = j3 + 1;
            byte m7364z2 = rp3.m7364z(j3);
            if (m7364z2 >= 0) {
                this.f28341m++;
                return m7364z2;
            } else if (this.f28343o - this.f28341m >= 10) {
                long j5 = j4 + 1;
                int m7364z3 = m7364z2 ^ (rp3.m7364z(j4) << 7);
                if (m7364z3 < 0) {
                    i = m7364z3 ^ (-128);
                } else {
                    long j6 = j5 + 1;
                    int m7364z4 = m7364z3 ^ (rp3.m7364z(j5) << 14);
                    if (m7364z4 >= 0) {
                        m7364z = m7364z4 ^ 16256;
                    } else {
                        j5 = j6 + 1;
                        int m7364z5 = m7364z4 ^ (rp3.m7364z(j6) << 21);
                        if (m7364z5 < 0) {
                            i = m7364z5 ^ (-2080896);
                        } else {
                            j6 = j5 + 1;
                            long m7364z6 = m7364z5 ^ (rp3.m7364z(j5) << 28);
                            if (m7364z6 >= 0) {
                                j2 = 266354560;
                            } else {
                                long j7 = j6 + 1;
                                long m7364z7 = m7364z6 ^ (rp3.m7364z(j6) << 35);
                                if (m7364z7 < 0) {
                                    j = -34093383808L;
                                } else {
                                    j6 = j7 + 1;
                                    m7364z6 = m7364z7 ^ (rp3.m7364z(j7) << 42);
                                    if (m7364z6 >= 0) {
                                        j2 = 4363953127296L;
                                    } else {
                                        j7 = j6 + 1;
                                        m7364z7 = m7364z6 ^ (rp3.m7364z(j6) << 49);
                                        if (m7364z7 < 0) {
                                            j = -558586000294016L;
                                        } else {
                                            j6 = j7 + 1;
                                            m7364z = (m7364z7 ^ (rp3.m7364z(j7) << 56)) ^ 71499008037633920L;
                                            if (m7364z < 0) {
                                                long j8 = 1 + j6;
                                                if (rp3.m7364z(j6) >= 0) {
                                                    j5 = j8;
                                                    this.f28341m = j5;
                                                    return m7364z;
                                                }
                                            }
                                        }
                                    }
                                }
                                m7364z = m7364z7 ^ j;
                                j5 = j7;
                                this.f28341m = j5;
                                return m7364z;
                            }
                            m7364z = m7364z6 ^ j2;
                        }
                    }
                    j5 = j6;
                    this.f28341m = j5;
                    return m7364z;
                }
                m7364z = i;
                this.f28341m = j5;
                return m7364z;
            }
        }
        return m9037K();
    }

    /* renamed from: K */
    public final long m9037K() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte m9046B = m9046B();
            j |= (m9046B & Byte.MAX_VALUE) << i;
            if ((m9046B & 128) == 0) {
                return j;
            }
        }
        throw bn3.m12738f();
    }

    /* renamed from: L */
    public final int m9036L() {
        int m9046B;
        byte m9046B2;
        long j = this.f28343o;
        long j2 = this.f28341m;
        if (j - j2 >= 4) {
            this.f28341m = 4 + j2;
            m9046B = (rp3.m7364z(j2) & DefaultClassResolver.NAME) | ((rp3.m7364z(1 + j2) & DefaultClassResolver.NAME) << 8) | ((rp3.m7364z(2 + j2) & DefaultClassResolver.NAME) << 16);
            m9046B2 = rp3.m7364z(j2 + 3);
        } else {
            m9046B = (m9046B() & DefaultClassResolver.NAME) | ((m9046B() & DefaultClassResolver.NAME) << 8) | ((m9046B() & DefaultClassResolver.NAME) << 16);
            m9046B2 = m9046B();
        }
        return m9046B | ((m9046B2 & DefaultClassResolver.NAME) << 24);
    }

    /* renamed from: M */
    public final long m9035M() {
        long m9046B;
        byte m9046B2;
        long j = this.f28343o;
        long j2 = this.f28341m;
        if (j - j2 >= 8) {
            this.f28341m = 8 + j2;
            m9046B = (rp3.m7364z(j2) & 255) | ((rp3.m7364z(1 + j2) & 255) << 8) | ((rp3.m7364z(2 + j2) & 255) << 16) | ((rp3.m7364z(3 + j2) & 255) << 24) | ((rp3.m7364z(4 + j2) & 255) << 32) | ((rp3.m7364z(5 + j2) & 255) << 40) | ((rp3.m7364z(6 + j2) & 255) << 48);
            m9046B2 = rp3.m7364z(j2 + 7);
        } else {
            m9046B = (m9046B() & 255) | ((m9046B() & 255) << 8) | ((m9046B() & 255) << 16) | ((m9046B() & 255) << 24) | ((m9046B() & 255) << 32) | ((m9046B() & 255) << 40) | ((m9046B() & 255) << 48);
            m9046B2 = m9046B();
        }
        return m9046B | ((m9046B2 & 255) << 56);
    }

    @Override // p168r4.rl3
    /* renamed from: i */
    public final boolean mo7455i(int i) {
        int mo7457g;
        int i2 = i & 7;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 == 4) {
                            return false;
                        }
                        if (i2 == 5) {
                            m9045C(4);
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
                m9045C(m9039I());
                return true;
            }
            m9045C(8);
            return true;
        }
        for (int i3 = 0; i3 < 10; i3++) {
            if (m9046B() >= 0) {
                return true;
            }
        }
        throw bn3.m12738f();
    }

    /* renamed from: G */
    public final void m9041G(byte[] bArr, int i, int i2) {
        if (i2 <= m9040H()) {
            int i3 = i2;
            while (i3 > 0) {
                if (this.f28343o - this.f28341m == 0) {
                    m9044D();
                }
                int min = Math.min(i3, (int) (this.f28343o - this.f28341m));
                long j = min;
                rp3.m7365y(this.f28341m, bArr, i2 - i3, j);
                i3 -= min;
                this.f28341m += j;
            }
        } else if (i2 <= 0) {
        } else {
            throw bn3.m12740d();
        }
    }

    @Override // p168r4.rl3
    /* renamed from: g */
    public final int mo7457g() {
        if (mo7462b()) {
            this.f28339k = 0;
            return 0;
        }
        int m9039I = m9039I();
        this.f28339k = m9039I;
        if ((m9039I >>> 3) != 0) {
            return m9039I;
        }
        throw bn3.m12737g();
    }

    @Override // p168r4.rl3
    /* renamed from: r */
    public final String mo7446r() {
        int m9039I = m9039I();
        if (m9039I > 0) {
            long j = m9039I;
            long j2 = this.f28343o;
            long j3 = this.f28341m;
            if (j <= j2 - j3) {
                byte[] bArr = new byte[m9039I];
                rp3.m7365y(j3, bArr, 0L, j);
                String str = new String(bArr, zm3.f34680a);
                this.f28341m += j;
                return str;
            }
        }
        if (m9039I > 0 && m9039I <= m9040H()) {
            byte[] bArr2 = new byte[m9039I];
            m9041G(bArr2, 0, m9039I);
            return new String(bArr2, zm3.f34680a);
        } else if (m9039I == 0) {
            return "";
        } else {
            if (m9039I < 0) {
                throw bn3.m12739e();
            }
            throw bn3.m12740d();
        }
    }

    @Override // p168r4.rl3
    /* renamed from: s */
    public final String mo7445s() {
        int m9039I = m9039I();
        if (m9039I > 0) {
            long j = m9039I;
            long j2 = this.f28343o;
            long j3 = this.f28341m;
            if (j <= j2 - j3) {
                String m5622i = wp3.m5622i(this.f28335g, (int) (j3 - this.f28342n), m9039I);
                this.f28341m += j;
                return m5622i;
            }
        }
        if (m9039I >= 0 && m9039I <= m9040H()) {
            byte[] bArr = new byte[m9039I];
            m9041G(bArr, 0, m9039I);
            return wp3.m5621j(bArr, 0, m9039I);
        } else if (m9039I == 0) {
            return "";
        } else {
            if (m9039I <= 0) {
                throw bn3.m12739e();
            }
            throw bn3.m12740d();
        }
    }

    @Override // p168r4.rl3
    /* renamed from: t */
    public final ll3 mo7444t() {
        int m9039I = m9039I();
        if (m9039I > 0) {
            long j = m9039I;
            long j2 = this.f28343o;
            long j3 = this.f28341m;
            if (j <= j2 - j3) {
                byte[] bArr = new byte[m9039I];
                rp3.m7365y(j3, bArr, 0L, j);
                this.f28341m += j;
                return ll3.m9631K(bArr);
            }
        }
        if (m9039I > 0 && m9039I <= m9040H()) {
            byte[] bArr2 = new byte[m9039I];
            m9041G(bArr2, 0, m9039I);
            return ll3.m9631K(bArr2);
        } else if (m9039I == 0) {
            return ll3.f27255b;
        } else {
            if (m9039I < 0) {
                throw bn3.m12739e();
            }
            throw bn3.m12740d();
        }
    }
}
