package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
/* renamed from: r4.ql3 */
/* loaded from: classes2.dex */
public final class ql3 extends rl3 {

    /* renamed from: e */
    public final InputStream f30181e;

    /* renamed from: f */
    public final byte[] f30182f;

    /* renamed from: g */
    public int f30183g;

    /* renamed from: h */
    public int f30184h;

    /* renamed from: i */
    public int f30185i;

    /* renamed from: j */
    public int f30186j;

    /* renamed from: k */
    public int f30187k;

    /* renamed from: l */
    public int f30188l;

    public /* synthetic */ ql3(InputStream inputStream, int i, pl3 pl3Var) {
        super(null);
        this.f30188l = Integer.MAX_VALUE;
        zm3.m4179b(inputStream, "input");
        this.f30181e = inputStream;
        this.f30182f = new byte[4096];
        this.f30183g = 0;
        this.f30185i = 0;
        this.f30187k = 0;
    }

    /* renamed from: D */
    public final void m7796D() {
        int i = this.f30183g + this.f30184h;
        this.f30183g = i;
        int i2 = this.f30187k + i;
        int i3 = this.f30188l;
        if (i2 <= i3) {
            this.f30184h = 0;
            return;
        }
        int i4 = i2 - i3;
        this.f30184h = i4;
        this.f30183g = i - i4;
    }

    @Override // p168r4.rl3
    /* renamed from: a */
    public final void mo7463a(int i) {
        this.f30188l = i;
        m7796D();
    }

    @Override // p168r4.rl3
    /* renamed from: b */
    public final boolean mo7462b() {
        return this.f30185i == this.f30183g && !m7794F(1);
    }

    @Override // p168r4.rl3
    /* renamed from: c */
    public final int mo7461c() {
        return this.f30187k + this.f30185i;
    }

    @Override // p168r4.rl3
    /* renamed from: h */
    public final void mo7456h(int i) {
        if (this.f30186j != i) {
            throw bn3.m12736h();
        }
    }

    @Override // p168r4.rl3
    /* renamed from: j */
    public final double mo7454j() {
        return Double.longBitsToDouble(m7786N());
    }

    @Override // p168r4.rl3
    /* renamed from: k */
    public final float mo7453k() {
        return Float.intBitsToFloat(m7787M());
    }

    @Override // p168r4.rl3
    /* renamed from: l */
    public final long mo7452l() {
        return m7789K();
    }

    @Override // p168r4.rl3
    /* renamed from: m */
    public final long mo7451m() {
        return m7789K();
    }

    @Override // p168r4.rl3
    /* renamed from: n */
    public final int mo7450n() {
        return m7790J();
    }

    @Override // p168r4.rl3
    /* renamed from: o */
    public final long mo7449o() {
        return m7786N();
    }

    @Override // p168r4.rl3
    /* renamed from: p */
    public final int mo7448p() {
        return m7787M();
    }

    @Override // p168r4.rl3
    /* renamed from: q */
    public final boolean mo7447q() {
        return m7789K() != 0;
    }

    @Override // p168r4.rl3
    /* renamed from: u */
    public final int mo7443u() {
        return m7790J();
    }

    @Override // p168r4.rl3
    /* renamed from: v */
    public final int mo7442v() {
        return m7790J();
    }

    @Override // p168r4.rl3
    /* renamed from: w */
    public final int mo7441w() {
        return m7787M();
    }

    @Override // p168r4.rl3
    /* renamed from: x */
    public final long mo7440x() {
        return m7786N();
    }

    @Override // p168r4.rl3
    /* renamed from: y */
    public final int mo7439y() {
        return rl3.m7459e(m7790J());
    }

    @Override // p168r4.rl3
    /* renamed from: z */
    public final long mo7438z() {
        return rl3.m7458f(m7789K());
    }

    @Override // p168r4.rl3
    /* renamed from: A */
    public final int mo7464A(int i) {
        if (i >= 0) {
            int i2 = i + this.f30187k + this.f30185i;
            int i3 = this.f30188l;
            if (i2 <= i3) {
                this.f30188l = i2;
                m7796D();
                return i3;
            }
            throw bn3.m12740d();
        }
        throw bn3.m12739e();
    }

    /* renamed from: B */
    public final byte m7798B() {
        if (this.f30185i == this.f30183g) {
            m7795E(1);
        }
        byte[] bArr = this.f30182f;
        int i = this.f30185i;
        this.f30185i = i + 1;
        return bArr[i];
    }

    /* renamed from: C */
    public final void m7797C(int i) {
        int i2 = this.f30183g;
        int i3 = this.f30185i;
        int i4 = i2 - i3;
        if (i <= i4 && i >= 0) {
            this.f30185i = i3 + i;
        } else if (i >= 0) {
            int i5 = this.f30187k;
            int i6 = i5 + i3;
            int i7 = this.f30188l;
            if (i6 + i <= i7) {
                this.f30187k = i6;
                this.f30183g = 0;
                this.f30185i = 0;
                while (i4 < i) {
                    try {
                        long j = i - i4;
                        try {
                            long skip = this.f30181e.skip(j);
                            if (skip >= 0 && skip <= j) {
                                if (skip == 0) {
                                    break;
                                }
                                i4 += (int) skip;
                            } else {
                                String valueOf = String.valueOf(this.f30181e.getClass());
                                StringBuilder sb = new StringBuilder(valueOf.length() + 92);
                                sb.append(valueOf);
                                sb.append("#skip returned invalid result: ");
                                sb.append(skip);
                                sb.append("\nThe InputStream implementation is buggy.");
                                throw new IllegalStateException(sb.toString());
                            }
                        } catch (bn3 e) {
                            e.m12742b();
                            throw e;
                        }
                    } finally {
                        this.f30187k += i4;
                        m7796D();
                    }
                }
                if (i4 < i) {
                    int i8 = this.f30183g;
                    int i9 = i8 - this.f30185i;
                    this.f30185i = i8;
                    m7795E(1);
                    while (true) {
                        int i10 = i - i9;
                        int i11 = this.f30183g;
                        if (i10 > i11) {
                            i9 += i11;
                            this.f30185i = i11;
                            m7795E(1);
                        } else {
                            this.f30185i = i10;
                            return;
                        }
                    }
                }
            } else {
                m7797C((i7 - i5) - i3);
                throw bn3.m12740d();
            }
        } else {
            throw bn3.m12739e();
        }
    }

    /* renamed from: F */
    public final boolean m7794F(int i) {
        int i2 = this.f30185i;
        int i3 = this.f30183g;
        if (i2 + i > i3) {
            int i4 = this.f30187k;
            if (i > (Integer.MAX_VALUE - i4) - i2 || i4 + i2 + i > this.f30188l) {
                return false;
            }
            if (i2 > 0) {
                if (i3 > i2) {
                    byte[] bArr = this.f30182f;
                    System.arraycopy(bArr, i2, bArr, 0, i3 - i2);
                }
                i4 = this.f30187k + i2;
                this.f30187k = i4;
                i3 = this.f30183g - i2;
                this.f30183g = i3;
                this.f30185i = 0;
            }
            try {
                int read = this.f30181e.read(this.f30182f, i3, Math.min(4096 - i3, (Integer.MAX_VALUE - i4) - i3));
                if (read != 0 && read >= -1 && read <= 4096) {
                    if (read <= 0) {
                        return false;
                    }
                    this.f30183g += read;
                    m7796D();
                    if (this.f30183g >= i) {
                        return true;
                    }
                    return m7794F(i);
                }
                String valueOf = String.valueOf(this.f30181e.getClass());
                StringBuilder sb = new StringBuilder(valueOf.length() + 91);
                sb.append(valueOf);
                sb.append("#read(byte[]) returned invalid result: ");
                sb.append(read);
                sb.append("\nThe InputStream implementation is buggy.");
                throw new IllegalStateException(sb.toString());
            } catch (bn3 e) {
                e.m12742b();
                throw e;
            }
        }
        StringBuilder sb2 = new StringBuilder(77);
        sb2.append("refillBuffer() called when ");
        sb2.append(i);
        sb2.append(" bytes were already available in buffer");
        throw new IllegalStateException(sb2.toString());
    }

    /* renamed from: H */
    public final byte[] m7792H(int i) {
        if (i == 0) {
            return zm3.f34682c;
        }
        if (i >= 0) {
            int i2 = this.f30187k;
            int i3 = this.f30185i;
            int i4 = i2 + i3 + i;
            if ((-2147483647) + i4 <= 0) {
                int i5 = this.f30188l;
                if (i4 <= i5) {
                    int i6 = this.f30183g - i3;
                    int i7 = i - i6;
                    if (i7 >= 4096) {
                        try {
                            if (i7 > this.f30181e.available()) {
                                return null;
                            }
                        } catch (bn3 e) {
                            e.m12742b();
                            throw e;
                        }
                    }
                    byte[] bArr = new byte[i];
                    System.arraycopy(this.f30182f, this.f30185i, bArr, 0, i6);
                    this.f30187k += this.f30183g;
                    this.f30185i = 0;
                    this.f30183g = 0;
                    while (i6 < i) {
                        try {
                            int read = this.f30181e.read(bArr, i6, i - i6);
                            if (read != -1) {
                                this.f30187k += read;
                                i6 += read;
                            } else {
                                throw bn3.m12740d();
                            }
                        } catch (bn3 e2) {
                            e2.m12742b();
                            throw e2;
                        }
                    }
                    return bArr;
                }
                m7797C((i5 - i2) - i3);
                throw bn3.m12740d();
            }
            throw bn3.m12734j();
        }
        throw bn3.m12739e();
    }

    /* renamed from: I */
    public final List<byte[]> m7791I(int i) {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            int min = Math.min(i, 4096);
            byte[] bArr = new byte[min];
            int i2 = 0;
            while (i2 < min) {
                int read = this.f30181e.read(bArr, i2, min - i2);
                if (read != -1) {
                    this.f30187k += read;
                    i2 += read;
                } else {
                    throw bn3.m12740d();
                }
            }
            i -= min;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
        if (r2[r3] >= 0) goto L13;
     */
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m7790J() {
        /*
            r5 = this;
            int r0 = r5.f30185i
            int r1 = r5.f30183g
            if (r1 != r0) goto L7
            goto L6c
        L7:
            byte[] r2 = r5.f30182f
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L12
            r5.f30185i = r3
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
            r5.f30185i = r1
            return r0
        L6c:
            long r0 = r5.m7788L()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.ql3.m7790J():int");
    }

    /* renamed from: K */
    public final long m7789K() {
        long j;
        long j2;
        long j3;
        long j4;
        int i;
        int i2 = this.f30185i;
        int i3 = this.f30183g;
        if (i3 != i2) {
            byte[] bArr = this.f30182f;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f30185i = i4;
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
                                                    this.f30185i = i5;
                                                    return j2;
                                                }
                                            }
                                        }
                                    }
                                }
                                j2 = j3 ^ j6;
                                i5 = i10;
                                this.f30185i = i5;
                                return j2;
                            }
                            j = j5 ^ j4;
                        }
                    }
                    i5 = i7;
                    j2 = j;
                    this.f30185i = i5;
                    return j2;
                }
                j2 = i;
                this.f30185i = i5;
                return j2;
            }
        }
        return m7788L();
    }

    /* renamed from: L */
    public final long m7788L() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte m7798B = m7798B();
            j |= (m7798B & Byte.MAX_VALUE) << i;
            if ((m7798B & 128) == 0) {
                return j;
            }
        }
        throw bn3.m12738f();
    }

    /* renamed from: M */
    public final int m7787M() {
        int i = this.f30185i;
        if (this.f30183g - i < 4) {
            m7795E(4);
            i = this.f30185i;
        }
        byte[] bArr = this.f30182f;
        this.f30185i = i + 4;
        return ((bArr[i + 3] & DefaultClassResolver.NAME) << 24) | (bArr[i] & DefaultClassResolver.NAME) | ((bArr[i + 1] & DefaultClassResolver.NAME) << 8) | ((bArr[i + 2] & DefaultClassResolver.NAME) << 16);
    }

    /* renamed from: N */
    public final long m7786N() {
        int i = this.f30185i;
        if (this.f30183g - i < 8) {
            m7795E(8);
            i = this.f30185i;
        }
        byte[] bArr = this.f30182f;
        this.f30185i = i + 8;
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
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
                            m7797C(4);
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
                m7797C(m7790J());
                return true;
            }
            m7797C(8);
            return true;
        }
        if (this.f30183g - this.f30185i >= 10) {
            while (i3 < 10) {
                byte[] bArr = this.f30182f;
                int i4 = this.f30185i;
                this.f30185i = i4 + 1;
                if (bArr[i4] < 0) {
                    i3++;
                }
            }
            throw bn3.m12738f();
        }
        while (i3 < 10) {
            if (m7798B() < 0) {
                i3++;
            }
        }
        throw bn3.m12738f();
        return true;
    }

    /* renamed from: E */
    public final void m7795E(int i) {
        if (!m7794F(i)) {
            if (i > (Integer.MAX_VALUE - this.f30187k) - this.f30185i) {
                throw bn3.m12734j();
            }
            throw bn3.m12740d();
        }
    }

    /* renamed from: G */
    public final byte[] m7793G(int i, boolean z) {
        byte[] m7792H = m7792H(i);
        if (m7792H != null) {
            return m7792H;
        }
        int i2 = this.f30185i;
        int i3 = this.f30183g;
        int i4 = i3 - i2;
        this.f30187k += i3;
        this.f30185i = 0;
        this.f30183g = 0;
        List<byte[]> m7791I = m7791I(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.f30182f, i2, bArr, 0, i4);
        for (byte[] bArr2 : m7791I) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i4, length);
            i4 += length;
        }
        return bArr;
    }

    @Override // p168r4.rl3
    /* renamed from: g */
    public final int mo7457g() {
        if (mo7462b()) {
            this.f30186j = 0;
            return 0;
        }
        int m7790J = m7790J();
        this.f30186j = m7790J;
        if ((m7790J >>> 3) != 0) {
            return m7790J;
        }
        throw bn3.m12737g();
    }

    @Override // p168r4.rl3
    /* renamed from: r */
    public final String mo7446r() {
        int m7790J = m7790J();
        if (m7790J > 0) {
            int i = this.f30183g;
            int i2 = this.f30185i;
            if (m7790J <= i - i2) {
                String str = new String(this.f30182f, i2, m7790J, zm3.f34680a);
                this.f30185i += m7790J;
                return str;
            }
        }
        if (m7790J == 0) {
            return "";
        }
        if (m7790J <= this.f30183g) {
            m7795E(m7790J);
            String str2 = new String(this.f30182f, this.f30185i, m7790J, zm3.f34680a);
            this.f30185i += m7790J;
            return str2;
        }
        return new String(m7793G(m7790J, false), zm3.f34680a);
    }

    @Override // p168r4.rl3
    /* renamed from: s */
    public final String mo7445s() {
        byte[] m7793G;
        int m7790J = m7790J();
        int i = this.f30185i;
        int i2 = this.f30183g;
        if (m7790J <= i2 - i && m7790J > 0) {
            m7793G = this.f30182f;
            this.f30185i = i + m7790J;
        } else if (m7790J == 0) {
            return "";
        } else {
            if (m7790J <= i2) {
                m7795E(m7790J);
                m7793G = this.f30182f;
                this.f30185i = m7790J;
            } else {
                m7793G = m7793G(m7790J, false);
            }
            i = 0;
        }
        return wp3.m5621j(m7793G, i, m7790J);
    }

    @Override // p168r4.rl3
    /* renamed from: t */
    public final ll3 mo7444t() {
        int m7790J = m7790J();
        int i = this.f30183g;
        int i2 = this.f30185i;
        if (m7790J <= i - i2 && m7790J > 0) {
            ll3 m9633H = ll3.m9633H(this.f30182f, i2, m7790J);
            this.f30185i += m7790J;
            return m9633H;
        } else if (m7790J != 0) {
            byte[] m7792H = m7792H(m7790J);
            if (m7792H != null) {
                return ll3.m9632I(m7792H);
            }
            int i3 = this.f30185i;
            int i4 = this.f30183g;
            int i5 = i4 - i3;
            this.f30187k += i4;
            this.f30185i = 0;
            this.f30183g = 0;
            List<byte[]> m7791I = m7791I(m7790J - i5);
            byte[] bArr = new byte[m7790J];
            System.arraycopy(this.f30182f, i3, bArr, 0, i5);
            for (byte[] bArr2 : m7791I) {
                int length = bArr2.length;
                System.arraycopy(bArr2, 0, bArr, i5, length);
                i5 += length;
            }
            return ll3.m9631K(bArr);
        } else {
            return ll3.f27255b;
        }
    }
}
