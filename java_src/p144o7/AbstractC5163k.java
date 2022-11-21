package p144o7;

import com.prineside.luaj.Lua;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import p144o7.C5220t1;
/* renamed from: o7.k */
/* loaded from: classes2.dex */
public abstract class AbstractC5163k extends AbstractC5134g {

    /* renamed from: c */
    public static final Logger f19463c = Logger.getLogger(AbstractC5163k.class.getName());

    /* renamed from: d */
    public static final boolean f19464d = C5212s1.m14077C();

    /* renamed from: a */
    public C5180l f19465a;

    /* renamed from: b */
    public boolean f19466b;

    /* renamed from: o7.k$b */
    /* loaded from: classes2.dex */
    public static class C5165b extends AbstractC5163k {

        /* renamed from: e */
        public final byte[] f19467e;

        /* renamed from: f */
        public final int f19468f;

        /* renamed from: g */
        public final int f19469g;

        /* renamed from: h */
        public int f19470h;

        public C5165b(byte[] bArr, int i, int i2) {
            super();
            if (bArr != null) {
                int i3 = i + i2;
                if ((i | i2 | (bArr.length - i3)) >= 0) {
                    this.f19467e = bArr;
                    this.f19468f = i;
                    this.f19470h = i;
                    this.f19469g = i3;
                    return;
                }
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            throw new NullPointerException("buffer");
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: B0 */
        public final void mo14281B0(int i, int i2) {
            mo14273T0(i, 0);
            mo14280C0(i2);
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: F0 */
        public final void mo14279F0(int i, InterfaceC5210s0 interfaceC5210s0, InterfaceC5150h1 interfaceC5150h1) {
            mo14273T0(i, 2);
            mo14271V0(((AbstractC5100a) interfaceC5210s0).m14667g(interfaceC5150h1));
            interfaceC5150h1.mo13825c(interfaceC5210s0, this.f19465a);
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: H0 */
        public final void mo14277H0(int i, InterfaceC5210s0 interfaceC5210s0) {
            mo14273T0(1, 3);
            mo14272U0(2, i);
            m14267Z0(3, interfaceC5210s0);
            mo14273T0(1, 4);
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: I0 */
        public final void mo14276I0(int i, AbstractC5137h abstractC5137h) {
            mo14273T0(1, 3);
            mo14272U0(2, i);
            mo14261l0(3, abstractC5137h);
            mo14273T0(1, 4);
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: R0 */
        public final void mo14275R0(int i, String str) {
            mo14273T0(i, 2);
            mo14274S0(str);
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: T0 */
        public final void mo14273T0(int i, int i2) {
            mo14271V0(C5230u1.m13942c(i, i2));
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: U0 */
        public final void mo14272U0(int i, int i2) {
            mo14273T0(i, 0);
            mo14271V0(i2);
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: W0 */
        public final void mo14270W0(int i, long j) {
            mo14273T0(i, 0);
            mo14269X0(j);
        }

        /* renamed from: Z0 */
        public final void m14267Z0(int i, InterfaceC5210s0 interfaceC5210s0) {
            mo14273T0(i, 2);
            mo14278G0(interfaceC5210s0);
        }

        @Override // p144o7.AbstractC5163k, p144o7.AbstractC5134g
        /* renamed from: a */
        public final void mo14266a(byte[] bArr, int i, int i2) {
            m14268Y0(bArr, i, i2);
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: f0 */
        public final int mo14265f0() {
            return this.f19469g - this.f19470h;
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: h0 */
        public final void mo14263h0(int i, boolean z) {
            mo14273T0(i, 0);
            mo14264g0(z ? (byte) 1 : (byte) 0);
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: l0 */
        public final void mo14261l0(int i, AbstractC5137h abstractC5137h) {
            mo14273T0(i, 2);
            mo14260m0(abstractC5137h);
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: r0 */
        public final void mo14259r0(int i, int i2) {
            mo14273T0(i, 5);
            mo14258s0(i2);
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: t0 */
        public final void mo14257t0(int i, long j) {
            mo14273T0(i, 1);
            mo14256u0(j);
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: C0 */
        public final void mo14280C0(int i) {
            if (i >= 0) {
                mo14271V0(i);
            } else {
                mo14269X0(i);
            }
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: S0 */
        public final void mo14274S0(String str) {
            int i = this.f19470h;
            try {
                int m14326W = AbstractC5163k.m14326W(str.length() * 3);
                int m14326W2 = AbstractC5163k.m14326W(str.length());
                if (m14326W2 == m14326W) {
                    int i2 = i + m14326W2;
                    this.f19470h = i2;
                    int m14013f = C5220t1.m14013f(str, this.f19467e, i2, mo14265f0());
                    this.f19470h = i;
                    mo14271V0((m14013f - i) - m14326W2);
                    this.f19470h = m14013f;
                } else {
                    mo14271V0(C5220t1.m14012g(str));
                    this.f19470h = C5220t1.m14013f(str, this.f19467e, this.f19470h, mo14265f0());
                }
            } catch (IndexOutOfBoundsException e) {
                throw new C5166c(e);
            } catch (C5220t1.C5224d e2) {
                this.f19470h = i;
                m14320b0(str, e2);
            }
        }

        /* renamed from: Y0 */
        public final void m14268Y0(byte[] bArr, int i, int i2) {
            try {
                System.arraycopy(bArr, i, this.f19467e, this.f19470h, i2);
                this.f19470h += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new C5166c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19470h), Integer.valueOf(this.f19469g), Integer.valueOf(i2)), e);
            }
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: g0 */
        public final void mo14264g0(byte b) {
            try {
                byte[] bArr = this.f19467e;
                int i = this.f19470h;
                this.f19470h = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new C5166c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19470h), Integer.valueOf(this.f19469g), 1), e);
            }
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: s0 */
        public final void mo14258s0(int i) {
            try {
                byte[] bArr = this.f19467e;
                int i2 = this.f19470h;
                int i3 = i2 + 1;
                bArr[i2] = (byte) (i & 255);
                int i4 = i3 + 1;
                bArr[i3] = (byte) ((i >> 8) & 255);
                int i5 = i4 + 1;
                bArr[i4] = (byte) ((i >> 16) & 255);
                this.f19470h = i5 + 1;
                bArr[i5] = (byte) ((i >> 24) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new C5166c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19470h), Integer.valueOf(this.f19469g), 1), e);
            }
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: u0 */
        public final void mo14256u0(long j) {
            try {
                byte[] bArr = this.f19467e;
                int i = this.f19470h;
                int i2 = i + 1;
                bArr[i] = (byte) (((int) j) & 255);
                int i3 = i2 + 1;
                bArr[i2] = (byte) (((int) (j >> 8)) & 255);
                int i4 = i3 + 1;
                bArr[i3] = (byte) (((int) (j >> 16)) & 255);
                int i5 = i4 + 1;
                bArr[i4] = (byte) (((int) (j >> 24)) & 255);
                int i6 = i5 + 1;
                bArr[i5] = (byte) (((int) (j >> 32)) & 255);
                int i7 = i6 + 1;
                bArr[i6] = (byte) (((int) (j >> 40)) & 255);
                int i8 = i7 + 1;
                bArr[i7] = (byte) (((int) (j >> 48)) & 255);
                this.f19470h = i8 + 1;
                bArr[i8] = (byte) (((int) (j >> 56)) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new C5166c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19470h), Integer.valueOf(this.f19469g), 1), e);
            }
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: G0 */
        public final void mo14278G0(InterfaceC5210s0 interfaceC5210s0) {
            mo14271V0(interfaceC5210s0.mo13795p());
            interfaceC5210s0.mo13796h(this);
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: V0 */
        public final void mo14271V0(int i) {
            if (AbstractC5163k.f19464d && !C5120d.m14626c() && mo14265f0() >= 5) {
                if ((i & (-128)) == 0) {
                    byte[] bArr = this.f19467e;
                    int i2 = this.f19470h;
                    this.f19470h = i2 + 1;
                    C5212s1.m14072H(bArr, i2, (byte) i);
                    return;
                }
                byte[] bArr2 = this.f19467e;
                int i3 = this.f19470h;
                this.f19470h = i3 + 1;
                C5212s1.m14072H(bArr2, i3, (byte) (i | 128));
                int i4 = i >>> 7;
                if ((i4 & (-128)) == 0) {
                    byte[] bArr3 = this.f19467e;
                    int i5 = this.f19470h;
                    this.f19470h = i5 + 1;
                    C5212s1.m14072H(bArr3, i5, (byte) i4);
                    return;
                }
                byte[] bArr4 = this.f19467e;
                int i6 = this.f19470h;
                this.f19470h = i6 + 1;
                C5212s1.m14072H(bArr4, i6, (byte) (i4 | 128));
                int i7 = i4 >>> 7;
                if ((i7 & (-128)) == 0) {
                    byte[] bArr5 = this.f19467e;
                    int i8 = this.f19470h;
                    this.f19470h = i8 + 1;
                    C5212s1.m14072H(bArr5, i8, (byte) i7);
                    return;
                }
                byte[] bArr6 = this.f19467e;
                int i9 = this.f19470h;
                this.f19470h = i9 + 1;
                C5212s1.m14072H(bArr6, i9, (byte) (i7 | 128));
                int i10 = i7 >>> 7;
                if ((i10 & (-128)) == 0) {
                    byte[] bArr7 = this.f19467e;
                    int i11 = this.f19470h;
                    this.f19470h = i11 + 1;
                    C5212s1.m14072H(bArr7, i11, (byte) i10);
                    return;
                }
                byte[] bArr8 = this.f19467e;
                int i12 = this.f19470h;
                this.f19470h = i12 + 1;
                C5212s1.m14072H(bArr8, i12, (byte) (i10 | 128));
                byte[] bArr9 = this.f19467e;
                int i13 = this.f19470h;
                this.f19470h = i13 + 1;
                C5212s1.m14072H(bArr9, i13, (byte) (i10 >>> 7));
                return;
            }
            while ((i & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f19467e;
                    int i14 = this.f19470h;
                    this.f19470h = i14 + 1;
                    bArr10[i14] = (byte) ((i & 127) | 128);
                    i >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new C5166c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19470h), Integer.valueOf(this.f19469g), 1), e);
                }
            }
            byte[] bArr11 = this.f19467e;
            int i15 = this.f19470h;
            this.f19470h = i15 + 1;
            bArr11[i15] = (byte) i;
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: X0 */
        public final void mo14269X0(long j) {
            if (AbstractC5163k.f19464d && mo14265f0() >= 10) {
                while ((j & (-128)) != 0) {
                    byte[] bArr = this.f19467e;
                    int i = this.f19470h;
                    this.f19470h = i + 1;
                    C5212s1.m14072H(bArr, i, (byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                }
                byte[] bArr2 = this.f19467e;
                int i2 = this.f19470h;
                this.f19470h = i2 + 1;
                C5212s1.m14072H(bArr2, i2, (byte) j);
                return;
            }
            while ((j & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f19467e;
                    int i3 = this.f19470h;
                    this.f19470h = i3 + 1;
                    bArr3[i3] = (byte) ((((int) j) & 127) | 128);
                    j >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new C5166c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19470h), Integer.valueOf(this.f19469g), 1), e);
                }
            }
            byte[] bArr4 = this.f19467e;
            int i4 = this.f19470h;
            this.f19470h = i4 + 1;
            bArr4[i4] = (byte) j;
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: k0 */
        public final void mo14262k0(byte[] bArr, int i, int i2) {
            mo14271V0(i2);
            m14268Y0(bArr, i, i2);
        }

        @Override // p144o7.AbstractC5163k
        /* renamed from: m0 */
        public final void mo14260m0(AbstractC5137h abstractC5137h) {
            mo14271V0(abstractC5137h.size());
            abstractC5137h.mo14540I(this);
        }
    }

    /* renamed from: o7.k$c */
    /* loaded from: classes2.dex */
    public static class C5166c extends IOException {
        public C5166c(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }

        public C5166c(String str, Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + str, th);
        }
    }

    /* renamed from: A */
    public static int m14359A(int i, C5132f0 c5132f0) {
        return m14328U(i) + m14357B(c5132f0);
    }

    /* renamed from: B */
    public static int m14357B(C5132f0 c5132f0) {
        return m14356C(c5132f0.m14574b());
    }

    /* renamed from: C */
    public static int m14356C(int i) {
        return m14326W(i) + i;
    }

    /* renamed from: D */
    public static int m14355D(int i, InterfaceC5210s0 interfaceC5210s0) {
        return (m14328U(1) * 2) + m14327V(2, i) + m14353E(3, interfaceC5210s0);
    }

    /* renamed from: E */
    public static int m14353E(int i, InterfaceC5210s0 interfaceC5210s0) {
        return m14328U(i) + m14350G(interfaceC5210s0);
    }

    /* renamed from: F */
    public static int m14351F(int i, InterfaceC5210s0 interfaceC5210s0, InterfaceC5150h1 interfaceC5150h1) {
        return m14328U(i) + m14349H(interfaceC5210s0, interfaceC5150h1);
    }

    /* renamed from: G */
    public static int m14350G(InterfaceC5210s0 interfaceC5210s0) {
        return m14356C(interfaceC5210s0.mo13795p());
    }

    /* renamed from: H */
    public static int m14349H(InterfaceC5210s0 interfaceC5210s0, InterfaceC5150h1 interfaceC5150h1) {
        return m14356C(((AbstractC5100a) interfaceC5210s0).m14667g(interfaceC5150h1));
    }

    /* renamed from: I */
    public static int m14348I(int i, AbstractC5137h abstractC5137h) {
        return (m14328U(1) * 2) + m14327V(2, i) + m14312g(3, abstractC5137h);
    }

    @Deprecated
    /* renamed from: J */
    public static int m14347J(int i) {
        return m14326W(i);
    }

    /* renamed from: K */
    public static int m14345K(int i, int i2) {
        return m14328U(i) + m14343L(i2);
    }

    /* renamed from: L */
    public static int m14343L(int i) {
        return 4;
    }

    /* renamed from: M */
    public static int m14341M(int i, long j) {
        return m14328U(i) + m14339N(j);
    }

    /* renamed from: N */
    public static int m14339N(long j) {
        return 8;
    }

    /* renamed from: O */
    public static int m14337O(int i, int i2) {
        return m14328U(i) + m14335P(i2);
    }

    /* renamed from: P */
    public static int m14335P(int i) {
        return m14326W(m14323Z(i));
    }

    /* renamed from: Q */
    public static int m14333Q(int i, long j) {
        return m14328U(i) + m14331R(j);
    }

    /* renamed from: R */
    public static int m14331R(long j) {
        return m14324Y(m14322a0(j));
    }

    /* renamed from: S */
    public static int m14330S(int i, String str) {
        return m14328U(i) + m14329T(str);
    }

    /* renamed from: U */
    public static int m14328U(int i) {
        return m14326W(C5230u1.m13942c(i, 0));
    }

    /* renamed from: V */
    public static int m14327V(int i, int i2) {
        return m14328U(i) + m14326W(i2);
    }

    /* renamed from: W */
    public static int m14326W(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & Lua.MASK_Bx) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    /* renamed from: X */
    public static int m14325X(int i, long j) {
        return m14328U(i) + m14324Y(j);
    }

    /* renamed from: Y */
    public static int m14324Y(long j) {
        int i;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            i = 6;
            j >>>= 28;
        } else {
            i = 2;
        }
        if (((-2097152) & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        return (j & (-16384)) != 0 ? i + 1 : i;
    }

    /* renamed from: Z */
    public static int m14323Z(int i) {
        return (i >> 31) ^ (i << 1);
    }

    /* renamed from: a0 */
    public static long m14322a0(long j) {
        return (j >> 63) ^ (j << 1);
    }

    /* renamed from: d */
    public static int m14317d(int i, boolean z) {
        return m14328U(i) + m14315e(z);
    }

    /* renamed from: d0 */
    public static AbstractC5163k m14316d0(byte[] bArr) {
        return m14314e0(bArr, 0, bArr.length);
    }

    /* renamed from: e */
    public static int m14315e(boolean z) {
        return 1;
    }

    /* renamed from: e0 */
    public static AbstractC5163k m14314e0(byte[] bArr, int i, int i2) {
        return new C5165b(bArr, i, i2);
    }

    /* renamed from: f */
    public static int m14313f(byte[] bArr) {
        return m14356C(bArr.length);
    }

    /* renamed from: g */
    public static int m14312g(int i, AbstractC5137h abstractC5137h) {
        return m14328U(i) + m14311h(abstractC5137h);
    }

    /* renamed from: h */
    public static int m14311h(AbstractC5137h abstractC5137h) {
        return m14356C(abstractC5137h.size());
    }

    /* renamed from: i */
    public static int m14310i(int i, double d) {
        return m14328U(i) + m14308j(d);
    }

    /* renamed from: j */
    public static int m14308j(double d) {
        return 8;
    }

    /* renamed from: k */
    public static int m14306k(int i, int i2) {
        return m14328U(i) + m14305l(i2);
    }

    /* renamed from: l */
    public static int m14305l(int i) {
        return m14289w(i);
    }

    /* renamed from: m */
    public static int m14304m(int i, int i2) {
        return m14328U(i) + m14303n(i2);
    }

    /* renamed from: n */
    public static int m14303n(int i) {
        return 4;
    }

    /* renamed from: o */
    public static int m14301o(int i, long j) {
        return m14328U(i) + m14299p(j);
    }

    /* renamed from: p */
    public static int m14299p(long j) {
        return 8;
    }

    /* renamed from: q */
    public static int m14297q(int i, float f) {
        return m14328U(i) + m14295r(f);
    }

    /* renamed from: r */
    public static int m14295r(float f) {
        return 4;
    }

    @Deprecated
    /* renamed from: s */
    public static int m14294s(int i, InterfaceC5210s0 interfaceC5210s0, InterfaceC5150h1 interfaceC5150h1) {
        return (m14328U(i) * 2) + m14292u(interfaceC5210s0, interfaceC5150h1);
    }

    @Deprecated
    /* renamed from: t */
    public static int m14293t(InterfaceC5210s0 interfaceC5210s0) {
        return interfaceC5210s0.mo13795p();
    }

    @Deprecated
    /* renamed from: u */
    public static int m14292u(InterfaceC5210s0 interfaceC5210s0, InterfaceC5150h1 interfaceC5150h1) {
        return ((AbstractC5100a) interfaceC5210s0).m14667g(interfaceC5150h1);
    }

    /* renamed from: v */
    public static int m14291v(int i, int i2) {
        return m14328U(i) + m14289w(i2);
    }

    /* renamed from: w */
    public static int m14289w(int i) {
        if (i >= 0) {
            return m14326W(i);
        }
        return 10;
    }

    /* renamed from: x */
    public static int m14287x(int i, long j) {
        return m14328U(i) + m14285y(j);
    }

    /* renamed from: y */
    public static int m14285y(long j) {
        return m14324Y(j);
    }

    /* renamed from: z */
    public static int m14283z(int i, C5132f0 c5132f0) {
        return (m14328U(1) * 2) + m14327V(2, i) + m14359A(3, c5132f0);
    }

    @Deprecated
    /* renamed from: A0 */
    public final void m14358A0(InterfaceC5210s0 interfaceC5210s0, InterfaceC5150h1 interfaceC5150h1) {
        interfaceC5150h1.mo13825c(interfaceC5210s0, this.f19465a);
    }

    /* renamed from: B0 */
    public abstract void mo14281B0(int i, int i2);

    /* renamed from: C0 */
    public abstract void mo14280C0(int i);

    /* renamed from: D0 */
    public final void m14354D0(int i, long j) {
        mo14270W0(i, j);
    }

    /* renamed from: E0 */
    public final void m14352E0(long j) {
        mo14269X0(j);
    }

    /* renamed from: F0 */
    public abstract void mo14279F0(int i, InterfaceC5210s0 interfaceC5210s0, InterfaceC5150h1 interfaceC5150h1);

    /* renamed from: G0 */
    public abstract void mo14278G0(InterfaceC5210s0 interfaceC5210s0);

    /* renamed from: H0 */
    public abstract void mo14277H0(int i, InterfaceC5210s0 interfaceC5210s0);

    /* renamed from: I0 */
    public abstract void mo14276I0(int i, AbstractC5137h abstractC5137h);

    /* renamed from: J0 */
    public final void m14346J0(int i, int i2) {
        mo14259r0(i, i2);
    }

    /* renamed from: K0 */
    public final void m14344K0(int i) {
        mo14258s0(i);
    }

    /* renamed from: L0 */
    public final void m14342L0(int i, long j) {
        mo14257t0(i, j);
    }

    /* renamed from: M0 */
    public final void m14340M0(long j) {
        mo14256u0(j);
    }

    /* renamed from: N0 */
    public final void m14338N0(int i, int i2) {
        mo14272U0(i, m14323Z(i2));
    }

    /* renamed from: O0 */
    public final void m14336O0(int i) {
        mo14271V0(m14323Z(i));
    }

    /* renamed from: P0 */
    public final void m14334P0(int i, long j) {
        mo14270W0(i, m14322a0(j));
    }

    /* renamed from: Q0 */
    public final void m14332Q0(long j) {
        mo14269X0(m14322a0(j));
    }

    /* renamed from: R0 */
    public abstract void mo14275R0(int i, String str);

    /* renamed from: S0 */
    public abstract void mo14274S0(String str);

    /* renamed from: T0 */
    public abstract void mo14273T0(int i, int i2);

    /* renamed from: U0 */
    public abstract void mo14272U0(int i, int i2);

    /* renamed from: V0 */
    public abstract void mo14271V0(int i);

    /* renamed from: W0 */
    public abstract void mo14270W0(int i, long j);

    /* renamed from: X0 */
    public abstract void mo14269X0(long j);

    @Override // p144o7.AbstractC5134g
    /* renamed from: a */
    public abstract void mo14266a(byte[] bArr, int i, int i2);

    /* renamed from: c0 */
    public boolean m14318c0() {
        return this.f19466b;
    }

    /* renamed from: f0 */
    public abstract int mo14265f0();

    /* renamed from: g0 */
    public abstract void mo14264g0(byte b);

    /* renamed from: h0 */
    public abstract void mo14263h0(int i, boolean z);

    /* renamed from: i0 */
    public final void m14309i0(boolean z) {
        mo14264g0(z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: j0 */
    public final void m14307j0(byte[] bArr) {
        mo14262k0(bArr, 0, bArr.length);
    }

    /* renamed from: k0 */
    public abstract void mo14262k0(byte[] bArr, int i, int i2);

    /* renamed from: l0 */
    public abstract void mo14261l0(int i, AbstractC5137h abstractC5137h);

    /* renamed from: m0 */
    public abstract void mo14260m0(AbstractC5137h abstractC5137h);

    /* renamed from: n0 */
    public final void m14302n0(int i, double d) {
        mo14257t0(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: o0 */
    public final void m14300o0(double d) {
        mo14256u0(Double.doubleToRawLongBits(d));
    }

    /* renamed from: p0 */
    public final void m14298p0(int i, int i2) {
        mo14281B0(i, i2);
    }

    /* renamed from: q0 */
    public final void m14296q0(int i) {
        mo14280C0(i);
    }

    /* renamed from: r0 */
    public abstract void mo14259r0(int i, int i2);

    /* renamed from: s0 */
    public abstract void mo14258s0(int i);

    /* renamed from: t0 */
    public abstract void mo14257t0(int i, long j);

    /* renamed from: u0 */
    public abstract void mo14256u0(long j);

    /* renamed from: v0 */
    public final void m14290v0(int i, float f) {
        mo14259r0(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: w0 */
    public final void m14288w0(float f) {
        mo14258s0(Float.floatToRawIntBits(f));
    }

    @Deprecated
    /* renamed from: x0 */
    public final void m14286x0(int i, InterfaceC5210s0 interfaceC5210s0) {
        mo14273T0(i, 3);
        m14282z0(interfaceC5210s0);
        mo14273T0(i, 4);
    }

    @Deprecated
    /* renamed from: y0 */
    public final void m14284y0(int i, InterfaceC5210s0 interfaceC5210s0, InterfaceC5150h1 interfaceC5150h1) {
        mo14273T0(i, 3);
        m14358A0(interfaceC5210s0, interfaceC5150h1);
        mo14273T0(i, 4);
    }

    @Deprecated
    /* renamed from: z0 */
    public final void m14282z0(InterfaceC5210s0 interfaceC5210s0) {
        interfaceC5210s0.mo13796h(this);
    }

    public AbstractC5163k() {
    }

    /* renamed from: b0 */
    public final void m14320b0(String str, C5220t1.C5224d c5224d) {
        f19463c.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) c5224d);
        byte[] bytes = str.getBytes(C5102a0.f19363a);
        try {
            mo14271V0(bytes.length);
            mo14266a(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e) {
            throw new C5166c(e);
        } catch (C5166c e2) {
            throw e2;
        }
    }

    /* renamed from: T */
    public static int m14329T(String str) {
        int length;
        try {
            length = C5220t1.m14012g(str);
        } catch (C5220t1.C5224d unused) {
            length = str.getBytes(C5102a0.f19363a).length;
        }
        return m14356C(length);
    }

    /* renamed from: c */
    public final void m14319c() {
        if (mo14265f0() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }
}
