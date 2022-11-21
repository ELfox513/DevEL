package p144o7;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.util.Arrays;
/* renamed from: o7.i */
/* loaded from: classes2.dex */
public abstract class AbstractC5151i {

    /* renamed from: a */
    public int f19434a;

    /* renamed from: b */
    public int f19435b;

    /* renamed from: c */
    public int f19436c;

    /* renamed from: d */
    public C5159j f19437d;

    /* renamed from: e */
    public boolean f19438e;

    /* renamed from: o7.i$b */
    /* loaded from: classes2.dex */
    public static final class C5153b extends AbstractC5151i {

        /* renamed from: f */
        public final byte[] f19439f;

        /* renamed from: g */
        public final boolean f19440g;

        /* renamed from: h */
        public int f19441h;

        /* renamed from: i */
        public int f19442i;

        /* renamed from: j */
        public int f19443j;

        /* renamed from: k */
        public int f19444k;

        /* renamed from: l */
        public int f19445l;

        /* renamed from: m */
        public boolean f19446m;

        /* renamed from: n */
        public int f19447n;

        @Override // p144o7.AbstractC5151i
        /* renamed from: A */
        public int mo14524A() {
            return m14517H();
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: B */
        public long mo14523B() {
            return m14516I();
        }

        /* renamed from: O */
        public final void m14510O() {
            for (int i = 0; i < 10; i++) {
                byte[] bArr = this.f19439f;
                int i2 = this.f19443j;
                this.f19443j = i2 + 1;
                if (bArr[i2] >= 0) {
                    return;
                }
            }
            throw C5117c0.m14634e();
        }

        /* renamed from: P */
        public final void m14509P() {
            for (int i = 0; i < 10; i++) {
                if (m14521D() >= 0) {
                    return;
                }
            }
            throw C5117c0.m14634e();
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: d */
        public int mo14507d() {
            return this.f19443j - this.f19444k;
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: e */
        public boolean mo14506e() {
            return this.f19443j == this.f19441h;
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: k */
        public boolean mo14503k() {
            return m14516I() != 0;
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: m */
        public double mo14501m() {
            return Double.longBitsToDouble(m14518G());
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: n */
        public int mo14500n() {
            return m14517H();
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: o */
        public int mo14499o() {
            return m14519F();
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: p */
        public long mo14498p() {
            return m14518G();
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: q */
        public float mo14497q() {
            return Float.intBitsToFloat(m14519F());
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: r */
        public int mo14496r() {
            return m14517H();
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: s */
        public long mo14495s() {
            return m14516I();
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: t */
        public int mo14494t() {
            return m14519F();
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: u */
        public long mo14493u() {
            return m14518G();
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: v */
        public int mo14492v() {
            return AbstractC5151i.m14529b(m14517H());
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: w */
        public long mo14491w() {
            return AbstractC5151i.m14528c(m14516I());
        }

        public C5153b(byte[] bArr, int i, int i2, boolean z) {
            super();
            this.f19447n = Integer.MAX_VALUE;
            this.f19439f = bArr;
            this.f19441h = i2 + i;
            this.f19443j = i;
            this.f19444k = i;
            this.f19440g = z;
        }

        /* renamed from: D */
        public byte m14521D() {
            int i = this.f19443j;
            if (i != this.f19441h) {
                byte[] bArr = this.f19439f;
                this.f19443j = i + 1;
                return bArr[i];
            }
            throw C5117c0.m14629j();
        }

        /* renamed from: E */
        public byte[] m14520E(int i) {
            if (i > 0) {
                int i2 = this.f19441h;
                int i3 = this.f19443j;
                if (i <= i2 - i3) {
                    int i4 = i + i3;
                    this.f19443j = i4;
                    return Arrays.copyOfRange(this.f19439f, i3, i4);
                }
            }
            if (i <= 0) {
                if (i == 0) {
                    return C5102a0.f19365c;
                }
                throw C5117c0.m14633f();
            }
            throw C5117c0.m14629j();
        }

        /* renamed from: F */
        public int m14519F() {
            int i = this.f19443j;
            if (this.f19441h - i >= 4) {
                byte[] bArr = this.f19439f;
                this.f19443j = i + 4;
                return ((bArr[i + 3] & DefaultClassResolver.NAME) << 24) | (bArr[i] & DefaultClassResolver.NAME) | ((bArr[i + 1] & DefaultClassResolver.NAME) << 8) | ((bArr[i + 2] & DefaultClassResolver.NAME) << 16);
            }
            throw C5117c0.m14629j();
        }

        /* renamed from: G */
        public long m14518G() {
            int i = this.f19443j;
            if (this.f19441h - i >= 8) {
                byte[] bArr = this.f19439f;
                this.f19443j = i + 8;
                return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
            }
            throw C5117c0.m14629j();
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
            if (r2[r3] < 0) goto L34;
         */
        /* renamed from: H */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int m14517H() {
            /*
                r5 = this;
                int r0 = r5.f19443j
                int r1 = r5.f19441h
                if (r1 != r0) goto L7
                goto L6a
            L7:
                byte[] r2 = r5.f19439f
                int r3 = r0 + 1
                r0 = r2[r0]
                if (r0 < 0) goto L12
                r5.f19443j = r3
                return r0
            L12:
                int r1 = r1 - r3
                r4 = 9
                if (r1 >= r4) goto L18
                goto L6a
            L18:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 7
                r0 = r0 ^ r3
                if (r0 >= 0) goto L24
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L70
            L24:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L31
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L2f:
                r1 = r3
                goto L70
            L31:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 21
                r0 = r0 ^ r3
                if (r0 >= 0) goto L3f
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L70
            L3f:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r4 = r1 << 28
                r0 = r0 ^ r4
                r4 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r4
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r2 = r2[r3]
                if (r2 >= 0) goto L70
            L6a:
                long r0 = r5.m14515J()
                int r1 = (int) r0
                return r1
            L70:
                r5.f19443j = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p144o7.AbstractC5151i.C5153b.m14517H():int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:40:0x00b4, code lost:
            if (r2[r0] < 0) goto L42;
         */
        /* renamed from: I */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long m14516I() {
            /*
                Method dump skipped, instructions count: 192
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p144o7.AbstractC5151i.C5153b.m14516I():long");
        }

        /* renamed from: J */
        public long m14515J() {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                byte m14521D = m14521D();
                j |= (m14521D & Byte.MAX_VALUE) << i;
                if ((m14521D & 128) == 0) {
                    return j;
                }
            }
            throw C5117c0.m14634e();
        }

        /* renamed from: K */
        public final void m14514K() {
            int i = this.f19441h + this.f19442i;
            this.f19441h = i;
            int i2 = i - this.f19444k;
            int i3 = this.f19447n;
            if (i2 > i3) {
                int i4 = i2 - i3;
                this.f19442i = i4;
                this.f19441h = i - i4;
                return;
            }
            this.f19442i = 0;
        }

        /* renamed from: M */
        public void m14512M(int i) {
            if (i >= 0) {
                int i2 = this.f19441h;
                int i3 = this.f19443j;
                if (i <= i2 - i3) {
                    this.f19443j = i3 + i;
                    return;
                }
            }
            if (i < 0) {
                throw C5117c0.m14633f();
            }
            throw C5117c0.m14629j();
        }

        /* renamed from: N */
        public final void m14511N() {
            if (this.f19441h - this.f19443j >= 10) {
                m14510O();
            } else {
                m14509P();
            }
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: a */
        public void mo14508a(int i) {
            if (this.f19445l == i) {
                return;
            }
            throw C5117c0.m14638a();
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: i */
        public void mo14505i(int i) {
            this.f19447n = i;
            m14514K();
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: j */
        public int mo14504j(int i) {
            if (i >= 0) {
                int mo14507d = i + mo14507d();
                int i2 = this.f19447n;
                if (mo14507d <= i2) {
                    this.f19447n = mo14507d;
                    m14514K();
                    return i2;
                }
                throw C5117c0.m14629j();
            }
            throw C5117c0.m14633f();
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: C */
        public boolean mo14522C(int i) {
            int m13943b = C5230u1.m13943b(i);
            if (m13943b != 0) {
                if (m13943b != 1) {
                    if (m13943b != 2) {
                        if (m13943b != 3) {
                            if (m13943b != 4) {
                                if (m13943b == 5) {
                                    m14512M(4);
                                    return true;
                                }
                                throw C5117c0.m14635d();
                            }
                            return false;
                        }
                        m14513L();
                        mo14508a(C5230u1.m13942c(C5230u1.m13944a(i), 4));
                        return true;
                    }
                    m14512M(m14517H());
                    return true;
                }
                m14512M(8);
                return true;
            }
            m14511N();
            return true;
        }

        /* renamed from: L */
        public void m14513L() {
            int mo14488z;
            do {
                mo14488z = mo14488z();
                if (mo14488z == 0) {
                    return;
                }
            } while (mo14522C(mo14488z));
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: l */
        public AbstractC5137h mo14502l() {
            AbstractC5137h m14554k;
            int m14517H = m14517H();
            if (m14517H > 0) {
                int i = this.f19441h;
                int i2 = this.f19443j;
                if (m14517H <= i - i2) {
                    if (this.f19440g && this.f19446m) {
                        m14554k = AbstractC5137h.m14558H(this.f19439f, i2, m14517H);
                    } else {
                        m14554k = AbstractC5137h.m14554k(this.f19439f, i2, m14517H);
                    }
                    this.f19443j += m14517H;
                    return m14554k;
                }
            }
            if (m14517H == 0) {
                return AbstractC5137h.f19422b;
            }
            return AbstractC5137h.m14559G(m14520E(m14517H));
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: x */
        public String mo14490x() {
            int m14517H = m14517H();
            if (m14517H > 0) {
                int i = this.f19441h;
                int i2 = this.f19443j;
                if (m14517H <= i - i2) {
                    String str = new String(this.f19439f, i2, m14517H, C5102a0.f19363a);
                    this.f19443j += m14517H;
                    return str;
                }
            }
            if (m14517H == 0) {
                return "";
            }
            if (m14517H < 0) {
                throw C5117c0.m14633f();
            }
            throw C5117c0.m14629j();
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: y */
        public String mo14489y() {
            int m14517H = m14517H();
            if (m14517H > 0) {
                int i = this.f19441h;
                int i2 = this.f19443j;
                if (m14517H <= i - i2) {
                    String m14014e = C5220t1.m14014e(this.f19439f, i2, m14517H);
                    this.f19443j += m14517H;
                    return m14014e;
                }
            }
            if (m14517H == 0) {
                return "";
            }
            if (m14517H <= 0) {
                throw C5117c0.m14633f();
            }
            throw C5117c0.m14629j();
        }

        @Override // p144o7.AbstractC5151i
        /* renamed from: z */
        public int mo14488z() {
            if (mo14506e()) {
                this.f19445l = 0;
                return 0;
            }
            int m14517H = m14517H();
            this.f19445l = m14517H;
            if (C5230u1.m13944a(m14517H) != 0) {
                return this.f19445l;
            }
            throw C5117c0.m14637b();
        }
    }

    /* renamed from: b */
    public static int m14529b(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    /* renamed from: c */
    public static long m14528c(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    /* renamed from: f */
    public static AbstractC5151i m14527f(byte[] bArr) {
        return m14526g(bArr, 0, bArr.length);
    }

    /* renamed from: g */
    public static AbstractC5151i m14526g(byte[] bArr, int i, int i2) {
        return m14525h(bArr, i, i2, false);
    }

    /* renamed from: A */
    public abstract int mo14524A();

    /* renamed from: B */
    public abstract long mo14523B();

    /* renamed from: C */
    public abstract boolean mo14522C(int i);

    /* renamed from: a */
    public abstract void mo14508a(int i);

    /* renamed from: d */
    public abstract int mo14507d();

    /* renamed from: e */
    public abstract boolean mo14506e();

    /* renamed from: i */
    public abstract void mo14505i(int i);

    /* renamed from: j */
    public abstract int mo14504j(int i);

    /* renamed from: k */
    public abstract boolean mo14503k();

    /* renamed from: l */
    public abstract AbstractC5137h mo14502l();

    /* renamed from: m */
    public abstract double mo14501m();

    /* renamed from: n */
    public abstract int mo14500n();

    /* renamed from: o */
    public abstract int mo14499o();

    /* renamed from: p */
    public abstract long mo14498p();

    /* renamed from: q */
    public abstract float mo14497q();

    /* renamed from: r */
    public abstract int mo14496r();

    /* renamed from: s */
    public abstract long mo14495s();

    /* renamed from: t */
    public abstract int mo14494t();

    /* renamed from: u */
    public abstract long mo14493u();

    /* renamed from: v */
    public abstract int mo14492v();

    /* renamed from: w */
    public abstract long mo14491w();

    /* renamed from: x */
    public abstract String mo14490x();

    /* renamed from: y */
    public abstract String mo14489y();

    /* renamed from: z */
    public abstract int mo14488z();

    public AbstractC5151i() {
        this.f19435b = 100;
        this.f19436c = Integer.MAX_VALUE;
        this.f19438e = false;
    }

    /* renamed from: h */
    public static AbstractC5151i m14525h(byte[] bArr, int i, int i2, boolean z) {
        C5153b c5153b = new C5153b(bArr, i, i2, z);
        try {
            c5153b.mo14504j(i2);
            return c5153b;
        } catch (C5117c0 e) {
            throw new IllegalArgumentException(e);
        }
    }
}
