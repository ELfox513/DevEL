package p237z4;

import com.prineside.luaj.Lua;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: z4.x */
/* loaded from: classes2.dex */
public abstract class AbstractC7726x extends AbstractC7647h {

    /* renamed from: b */
    public static final Logger f37913b = Logger.getLogger(AbstractC7726x.class.getName());

    /* renamed from: c */
    public static final boolean f37914c = C7627d3.m835r();

    /* renamed from: a */
    public C7736z f37915a;

    /* renamed from: z4.x$a */
    /* loaded from: classes2.dex */
    public static class C7727a extends AbstractC7726x {

        /* renamed from: d */
        public final byte[] f37916d;

        /* renamed from: e */
        public final int f37917e;

        /* renamed from: f */
        public final int f37918f;

        /* renamed from: g */
        public int f37919g;

        public C7727a(byte[] bArr, int i, int i2) {
            super();
            if (bArr != null) {
                int i3 = i2 + 0;
                if ((i2 | 0 | (bArr.length - i3)) >= 0) {
                    this.f37916d = bArr;
                    this.f37917e = 0;
                    this.f37919g = 0;
                    this.f37918f = i3;
                    return;
                }
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)));
            }
            throw new NullPointerException("buffer");
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: J */
        public final void mo483J(int i, int i2) {
            mo485D0((i << 3) | i2);
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: L */
        public final void mo482L(int i, AbstractC7652i abstractC7652i) {
            mo483J(1, 3);
            mo474e0(2, i);
            mo470k(3, abstractC7652i);
            mo483J(1, 4);
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: M */
        public final void mo481M(int i, boolean z) {
            mo483J(i, 0);
            mo479T(z ? (byte) 1 : (byte) 0);
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: U */
        public final void mo478U(int i, int i2) {
            mo483J(i, 0);
            mo486C0(i2);
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: V */
        public final void mo477V(int i, long j) {
            mo483J(i, 1);
            mo463v0(j);
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: X */
        public final int mo476X() {
            return this.f37918f - this.f37919g;
        }

        @Override // p237z4.AbstractC7647h
        /* renamed from: a */
        public final void mo475a(byte[] bArr, int i, int i2) {
            m484F0(bArr, i, i2);
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: e0 */
        public final void mo474e0(int i, int i2) {
            mo483J(i, 0);
            mo485D0(i2);
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: i */
        public final void mo473i(int i, long j) {
            mo483J(i, 0);
            mo465r0(j);
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: i0 */
        public final void mo472i0(int i, int i2) {
            mo483J(i, 5);
            mo466p(i2);
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: j */
        public final void mo471j(int i, String str) {
            mo483J(i, 2);
            mo464s0(str);
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: k */
        public final void mo470k(int i, AbstractC7652i abstractC7652i) {
            mo483J(i, 2);
            mo467o(abstractC7652i);
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: l */
        public final void mo469l(int i, InterfaceC7703r1 interfaceC7703r1) {
            mo483J(1, 3);
            mo474e0(2, i);
            mo483J(3, 2);
            mo480N(interfaceC7703r1);
            mo483J(1, 4);
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: m */
        public final void mo468m(int i, InterfaceC7703r1 interfaceC7703r1, InterfaceC7640f2 interfaceC7640f2) {
            mo483J(i, 2);
            AbstractC7618c abstractC7618c = (AbstractC7618c) interfaceC7703r1;
            int mo664g = abstractC7618c.mo664g();
            if (mo664g == -1) {
                mo664g = interfaceC7640f2.mo552a(abstractC7618c);
                abstractC7618c.mo663j(mo664g);
            }
            mo485D0(mo664g);
            interfaceC7640f2.mo549d(interfaceC7703r1, this.f37915a);
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: C0 */
        public final void mo486C0(int i) {
            if (i >= 0) {
                mo485D0(i);
            } else {
                mo465r0(i);
            }
        }

        /* renamed from: F0 */
        public final void m484F0(byte[] bArr, int i, int i2) {
            try {
                System.arraycopy(bArr, i, this.f37916d, this.f37919g, i2);
                this.f37919g += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new C7728b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f37919g), Integer.valueOf(this.f37918f), Integer.valueOf(i2)), e);
            }
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: T */
        public final void mo479T(byte b) {
            try {
                byte[] bArr = this.f37916d;
                int i = this.f37919g;
                this.f37919g = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new C7728b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f37919g), Integer.valueOf(this.f37918f), 1), e);
            }
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: p */
        public final void mo466p(int i) {
            try {
                byte[] bArr = this.f37916d;
                int i2 = this.f37919g;
                int i3 = i2 + 1;
                bArr[i2] = (byte) i;
                int i4 = i3 + 1;
                bArr[i3] = (byte) (i >> 8);
                int i5 = i4 + 1;
                bArr[i4] = (byte) (i >> 16);
                this.f37919g = i5 + 1;
                bArr[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new C7728b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f37919g), Integer.valueOf(this.f37918f), 1), e);
            }
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: s0 */
        public final void mo464s0(String str) {
            int i = this.f37919g;
            try {
                int m500s = AbstractC7726x.m500s(str.length() * 3);
                int m500s2 = AbstractC7726x.m500s(str.length());
                if (m500s2 == m500s) {
                    int i2 = i + m500s2;
                    this.f37919g = i2;
                    int m782b = C7641f3.m782b(str, this.f37916d, i2, mo476X());
                    this.f37919g = i;
                    mo485D0((m782b - i) - m500s2);
                    this.f37919g = m782b;
                    return;
                }
                mo485D0(C7641f3.m783a(str));
                this.f37919g = C7641f3.m782b(str, this.f37916d, this.f37919g, mo476X());
            } catch (IndexOutOfBoundsException e) {
                throw new C7728b(e);
            } catch (C7656i3 e2) {
                this.f37919g = i;
                m507n(str, e2);
            }
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: v0 */
        public final void mo463v0(long j) {
            try {
                byte[] bArr = this.f37916d;
                int i = this.f37919g;
                int i2 = i + 1;
                bArr[i] = (byte) j;
                int i3 = i2 + 1;
                bArr[i2] = (byte) (j >> 8);
                int i4 = i3 + 1;
                bArr[i3] = (byte) (j >> 16);
                int i5 = i4 + 1;
                bArr[i4] = (byte) (j >> 24);
                int i6 = i5 + 1;
                bArr[i5] = (byte) (j >> 32);
                int i7 = i6 + 1;
                bArr[i6] = (byte) (j >> 40);
                int i8 = i7 + 1;
                bArr[i7] = (byte) (j >> 48);
                this.f37919g = i8 + 1;
                bArr[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new C7728b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f37919g), Integer.valueOf(this.f37918f), 1), e);
            }
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: D0 */
        public final void mo485D0(int i) {
            if (AbstractC7726x.f37914c && !C7642g.m771a() && mo476X() >= 5) {
                if ((i & (-128)) == 0) {
                    byte[] bArr = this.f37916d;
                    int i2 = this.f37919g;
                    this.f37919g = i2 + 1;
                    C7627d3.m844i(bArr, i2, (byte) i);
                    return;
                }
                byte[] bArr2 = this.f37916d;
                int i3 = this.f37919g;
                this.f37919g = i3 + 1;
                C7627d3.m844i(bArr2, i3, (byte) (i | 128));
                int i4 = i >>> 7;
                if ((i4 & (-128)) == 0) {
                    byte[] bArr3 = this.f37916d;
                    int i5 = this.f37919g;
                    this.f37919g = i5 + 1;
                    C7627d3.m844i(bArr3, i5, (byte) i4);
                    return;
                }
                byte[] bArr4 = this.f37916d;
                int i6 = this.f37919g;
                this.f37919g = i6 + 1;
                C7627d3.m844i(bArr4, i6, (byte) (i4 | 128));
                int i7 = i4 >>> 7;
                if ((i7 & (-128)) == 0) {
                    byte[] bArr5 = this.f37916d;
                    int i8 = this.f37919g;
                    this.f37919g = i8 + 1;
                    C7627d3.m844i(bArr5, i8, (byte) i7);
                    return;
                }
                byte[] bArr6 = this.f37916d;
                int i9 = this.f37919g;
                this.f37919g = i9 + 1;
                C7627d3.m844i(bArr6, i9, (byte) (i7 | 128));
                int i10 = i7 >>> 7;
                if ((i10 & (-128)) == 0) {
                    byte[] bArr7 = this.f37916d;
                    int i11 = this.f37919g;
                    this.f37919g = i11 + 1;
                    C7627d3.m844i(bArr7, i11, (byte) i10);
                    return;
                }
                byte[] bArr8 = this.f37916d;
                int i12 = this.f37919g;
                this.f37919g = i12 + 1;
                C7627d3.m844i(bArr8, i12, (byte) (i10 | 128));
                byte[] bArr9 = this.f37916d;
                int i13 = this.f37919g;
                this.f37919g = i13 + 1;
                C7627d3.m844i(bArr9, i13, (byte) (i10 >>> 7));
                return;
            }
            while ((i & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f37916d;
                    int i14 = this.f37919g;
                    this.f37919g = i14 + 1;
                    bArr10[i14] = (byte) ((i & 127) | 128);
                    i >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new C7728b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f37919g), Integer.valueOf(this.f37918f), 1), e);
                }
            }
            byte[] bArr11 = this.f37916d;
            int i15 = this.f37919g;
            this.f37919g = i15 + 1;
            bArr11[i15] = (byte) i;
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: N */
        public final void mo480N(InterfaceC7703r1 interfaceC7703r1) {
            mo485D0(interfaceC7703r1.mo609h());
            interfaceC7703r1.mo611b(this);
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: o */
        public final void mo467o(AbstractC7652i abstractC7652i) {
            mo485D0(abstractC7652i.size());
            abstractC7652i.mo604k(this);
        }

        @Override // p237z4.AbstractC7726x
        /* renamed from: r0 */
        public final void mo465r0(long j) {
            if (AbstractC7726x.f37914c && mo476X() >= 10) {
                while ((j & (-128)) != 0) {
                    byte[] bArr = this.f37916d;
                    int i = this.f37919g;
                    this.f37919g = i + 1;
                    C7627d3.m844i(bArr, i, (byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                }
                byte[] bArr2 = this.f37916d;
                int i2 = this.f37919g;
                this.f37919g = i2 + 1;
                C7627d3.m844i(bArr2, i2, (byte) j);
                return;
            }
            while ((j & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f37916d;
                    int i3 = this.f37919g;
                    this.f37919g = i3 + 1;
                    bArr3[i3] = (byte) ((((int) j) & 127) | 128);
                    j >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new C7728b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f37919g), Integer.valueOf(this.f37918f), 1), e);
                }
            }
            byte[] bArr4 = this.f37916d;
            int i4 = this.f37919g;
            this.f37919g = i4 + 1;
            bArr4[i4] = (byte) j;
        }
    }

    /* renamed from: z4.x$b */
    /* loaded from: classes2.dex */
    public static class C7728b extends IOException {
        public C7728b(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C7728b(java.lang.String r3, java.lang.Throwable r4) {
            /*
                r2 = this;
                java.lang.String r0 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r1 = r3.length()
                if (r1 == 0) goto L11
                java.lang.String r3 = r0.concat(r3)
                goto L16
            L11:
                java.lang.String r3 = new java.lang.String
                r3.<init>(r0)
            L16:
                r2.<init>(r3, r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p237z4.AbstractC7726x.C7728b.<init>(java.lang.String, java.lang.Throwable):void");
        }
    }

    public AbstractC7726x() {
    }

    /* renamed from: A */
    public static int m546A(float f) {
        return 4;
    }

    /* renamed from: A0 */
    public static int m545A0(long j) {
        return 8;
    }

    /* renamed from: B */
    public static int m544B(int i, double d) {
        return m503q(i) + 8;
    }

    /* renamed from: B0 */
    public static long m543B0(long j) {
        return (j >> 63) ^ (j << 1);
    }

    /* renamed from: C */
    public static int m542C(int i, float f) {
        return m503q(i) + 4;
    }

    /* renamed from: D */
    public static int m541D(int i, String str) {
        return m503q(i) + m498t0(str);
    }

    /* renamed from: E */
    public static int m540E(int i, C7733y0 c7733y0) {
        return (m503q(1) << 1) + m509l0(2, i) + m524b(3, c7733y0);
    }

    /* renamed from: F */
    public static int m538F(int i, InterfaceC7703r1 interfaceC7703r1) {
        return (m503q(1) << 1) + m509l0(2, i) + m503q(3) + m530R(interfaceC7703r1);
    }

    /* renamed from: G */
    public static int m537G(int i, InterfaceC7703r1 interfaceC7703r1, InterfaceC7640f2 interfaceC7640f2) {
        return m503q(i) + m520d(interfaceC7703r1, interfaceC7640f2);
    }

    /* renamed from: I */
    public static AbstractC7726x m535I(byte[] bArr) {
        return new C7727a(bArr, 0, bArr.length);
    }

    /* renamed from: Q */
    public static int m531Q(int i, boolean z) {
        return m503q(i) + 1;
    }

    /* renamed from: S */
    public static int m529S(byte[] bArr) {
        int length = bArr.length;
        return m500s(length) + length;
    }

    /* renamed from: b0 */
    public static int m523b0(int i, AbstractC7652i abstractC7652i) {
        return (m503q(1) << 1) + m509l0(2, i) + m533O(3, abstractC7652i);
    }

    @Deprecated
    /* renamed from: c0 */
    public static int m521c0(InterfaceC7703r1 interfaceC7703r1) {
        return interfaceC7703r1.mo609h();
    }

    /* renamed from: d0 */
    public static int m519d0(boolean z) {
        return 1;
    }

    /* renamed from: f0 */
    public static int m516f0(int i, long j) {
        return m503q(i) + m491x0(j);
    }

    /* renamed from: j0 */
    public static int m511j0(int i, int i2) {
        return m503q(i) + m501r(i2);
    }

    /* renamed from: k0 */
    public static int m510k0(int i, long j) {
        return m503q(i) + 8;
    }

    /* renamed from: l0 */
    public static int m509l0(int i, int i2) {
        return m503q(i) + m500s(i2);
    }

    /* renamed from: m0 */
    public static int m508m0(int i, long j) {
        return m503q(i) + 8;
    }

    /* renamed from: o0 */
    public static int m505o0(int i, int i2) {
        return m503q(i) + 4;
    }

    /* renamed from: p0 */
    public static int m504p0(int i, int i2) {
        return m503q(i) + 4;
    }

    /* renamed from: q */
    public static int m503q(int i) {
        return m500s(i << 3);
    }

    /* renamed from: r */
    public static int m501r(int i) {
        if (i >= 0) {
            return m500s(i);
        }
        return 10;
    }

    /* renamed from: s */
    public static int m500s(int i) {
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

    /* renamed from: t */
    public static int m499t(int i) {
        return m500s(m492x(i));
    }

    /* renamed from: u */
    public static int m497u(int i) {
        return 4;
    }

    /* renamed from: v */
    public static int m495v(int i) {
        return 4;
    }

    /* renamed from: w */
    public static int m494w(int i) {
        return m501r(i);
    }

    /* renamed from: w0 */
    public static int m493w0(long j) {
        return m491x0(j);
    }

    /* renamed from: x */
    public static int m492x(int i) {
        return (i >> 31) ^ (i << 1);
    }

    /* renamed from: x0 */
    public static int m491x0(long j) {
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

    @Deprecated
    /* renamed from: y */
    public static int m490y(int i) {
        return m500s(i);
    }

    /* renamed from: y0 */
    public static int m489y0(long j) {
        return m491x0(m543B0(j));
    }

    /* renamed from: z */
    public static int m488z(double d) {
        return 8;
    }

    /* renamed from: z0 */
    public static int m487z0(long j) {
        return 8;
    }

    /* renamed from: C0 */
    public abstract void mo486C0(int i);

    /* renamed from: D0 */
    public abstract void mo485D0(int i);

    /* renamed from: E0 */
    public final void m539E0(int i) {
        mo485D0(m492x(i));
    }

    /* renamed from: J */
    public abstract void mo483J(int i, int i2);

    /* renamed from: K */
    public final void m534K(int i, long j) {
        mo473i(i, m543B0(j));
    }

    /* renamed from: L */
    public abstract void mo482L(int i, AbstractC7652i abstractC7652i);

    /* renamed from: M */
    public abstract void mo481M(int i, boolean z);

    /* renamed from: N */
    public abstract void mo480N(InterfaceC7703r1 interfaceC7703r1);

    /* renamed from: T */
    public abstract void mo479T(byte b);

    /* renamed from: U */
    public abstract void mo478U(int i, int i2);

    /* renamed from: V */
    public abstract void mo477V(int i, long j);

    /* renamed from: W */
    public final void m528W(boolean z) {
        mo479T(z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: X */
    public abstract int mo476X();

    /* renamed from: e */
    public final void m518e(double d) {
        mo463v0(Double.doubleToRawLongBits(d));
    }

    /* renamed from: e0 */
    public abstract void mo474e0(int i, int i2);

    /* renamed from: f */
    public final void m517f(float f) {
        mo466p(Float.floatToRawIntBits(f));
    }

    /* renamed from: g */
    public final void m515g(int i, double d) {
        mo477V(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: g0 */
    public final void m514g0(int i, int i2) {
        mo474e0(i, m492x(i2));
    }

    /* renamed from: h */
    public final void m513h(int i, float f) {
        mo472i0(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: i */
    public abstract void mo473i(int i, long j);

    /* renamed from: i0 */
    public abstract void mo472i0(int i, int i2);

    /* renamed from: j */
    public abstract void mo471j(int i, String str);

    /* renamed from: k */
    public abstract void mo470k(int i, AbstractC7652i abstractC7652i);

    /* renamed from: l */
    public abstract void mo469l(int i, InterfaceC7703r1 interfaceC7703r1);

    /* renamed from: m */
    public abstract void mo468m(int i, InterfaceC7703r1 interfaceC7703r1, InterfaceC7640f2 interfaceC7640f2);

    /* renamed from: o */
    public abstract void mo467o(AbstractC7652i abstractC7652i);

    /* renamed from: p */
    public abstract void mo466p(int i);

    /* renamed from: r0 */
    public abstract void mo465r0(long j);

    /* renamed from: s0 */
    public abstract void mo464s0(String str);

    /* renamed from: u0 */
    public final void m496u0(long j) {
        mo465r0(m543B0(j));
    }

    /* renamed from: v0 */
    public abstract void mo463v0(long j);

    /* renamed from: d */
    public static int m520d(InterfaceC7703r1 interfaceC7703r1, InterfaceC7640f2 interfaceC7640f2) {
        AbstractC7618c abstractC7618c = (AbstractC7618c) interfaceC7703r1;
        int mo664g = abstractC7618c.mo664g();
        if (mo664g == -1) {
            mo664g = interfaceC7640f2.mo552a(abstractC7618c);
            abstractC7618c.mo663j(mo664g);
        }
        return m500s(mo664g) + mo664g;
    }

    /* renamed from: n */
    public final void m507n(String str, C7656i3 c7656i3) {
        f37913b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) c7656i3);
        byte[] bytes = str.getBytes(C7687o0.f37833a);
        try {
            mo485D0(bytes.length);
            mo475a(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e) {
            throw new C7728b(e);
        } catch (C7728b e2) {
            throw e2;
        }
    }

    /* renamed from: H */
    public static int m536H(AbstractC7652i abstractC7652i) {
        int size = abstractC7652i.size();
        return m500s(size) + size;
    }

    /* renamed from: O */
    public static int m533O(int i, AbstractC7652i abstractC7652i) {
        int m503q = m503q(i);
        int size = abstractC7652i.size();
        return m503q + m500s(size) + size;
    }

    @Deprecated
    /* renamed from: P */
    public static int m532P(int i, InterfaceC7703r1 interfaceC7703r1, InterfaceC7640f2 interfaceC7640f2) {
        int m503q = m503q(i) << 1;
        AbstractC7618c abstractC7618c = (AbstractC7618c) interfaceC7703r1;
        int mo664g = abstractC7618c.mo664g();
        if (mo664g == -1) {
            mo664g = interfaceC7640f2.mo552a(abstractC7618c);
            abstractC7618c.mo663j(mo664g);
        }
        return m503q + mo664g;
    }

    /* renamed from: R */
    public static int m530R(InterfaceC7703r1 interfaceC7703r1) {
        int mo609h = interfaceC7703r1.mo609h();
        return m500s(mo609h) + mo609h;
    }

    /* renamed from: a0 */
    public static int m525a0(int i, long j) {
        return m503q(i) + m491x0(j);
    }

    /* renamed from: b */
    public static int m524b(int i, C7733y0 c7733y0) {
        int m503q = m503q(i);
        int m460b = c7733y0.m460b();
        return m503q + m500s(m460b) + m460b;
    }

    /* renamed from: c */
    public static int m522c(C7733y0 c7733y0) {
        int m460b = c7733y0.m460b();
        return m500s(m460b) + m460b;
    }

    /* renamed from: h0 */
    public static int m512h0(int i, long j) {
        return m503q(i) + m491x0(m543B0(j));
    }

    /* renamed from: n0 */
    public static int m506n0(int i, int i2) {
        return m503q(i) + m500s(m492x(i2));
    }

    /* renamed from: q0 */
    public static int m502q0(int i, int i2) {
        return m503q(i) + m501r(i2);
    }

    /* renamed from: t0 */
    public static int m498t0(String str) {
        int length;
        try {
            length = C7641f3.m783a(str);
        } catch (C7656i3 unused) {
            length = str.getBytes(C7687o0.f37833a).length;
        }
        return m500s(length) + length;
    }

    /* renamed from: Y */
    public final void m527Y() {
        if (mo476X() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }
}
