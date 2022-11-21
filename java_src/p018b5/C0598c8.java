package p018b5;
/* renamed from: b5.c8 */
/* loaded from: classes2.dex */
public final class C0598c8 extends AbstractC0649f8 {

    /* renamed from: d */
    public final byte[] f1766d;

    /* renamed from: e */
    public final int f1767e;

    /* renamed from: f */
    public int f1768f;

    public C0598c8(byte[] bArr, int i, int i2) {
        super(null);
        if (bArr != null) {
            int length = bArr.length;
            if (((length - i2) | i2) >= 0) {
                this.f1766d = bArr;
                this.f1768f = 0;
                this.f1767e = i2;
                return;
            }
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i2)));
        }
        throw new NullPointerException("buffer");
    }

    /* renamed from: E */
    public final void m26101E(byte[] bArr, int i, int i2) {
        try {
            System.arraycopy(bArr, 0, this.f1766d, this.f1768f, i2);
            this.f1768f += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new C0615d8(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1768f), Integer.valueOf(this.f1767e), Integer.valueOf(i2)), e);
        }
    }

    @Override // p018b5.AbstractC0649f8
    /* renamed from: g */
    public final int mo25970g() {
        return this.f1767e - this.f1768f;
    }

    @Override // p018b5.AbstractC0649f8
    /* renamed from: q */
    public final void mo25960q(byte[] bArr, int i, int i2) {
        m26101E(bArr, 0, i2);
    }

    @Override // p018b5.AbstractC0649f8
    /* renamed from: s */
    public final void mo25958s(int i, int i2) {
        mo25956u((i << 3) | i2);
    }

    /* renamed from: F */
    public final void m26100F(String str) {
        int i = this.f1768f;
        try {
            int m25976a = AbstractC0649f8.m25976a(str.length() * 3);
            int m25976a2 = AbstractC0649f8.m25976a(str.length());
            if (m25976a2 == m25976a) {
                int i2 = i + m25976a2;
                this.f1768f = i2;
                int m25023b = C0941wb.m25023b(str, this.f1766d, i2, this.f1767e - i2);
                this.f1768f = i;
                mo25956u((m25023b - i) - m25976a2);
                this.f1768f = m25023b;
                return;
            }
            mo25956u(C0941wb.m25022c(str));
            byte[] bArr = this.f1766d;
            int i3 = this.f1768f;
            this.f1768f = C0941wb.m25023b(str, bArr, i3, this.f1767e - i3);
        } catch (C0924vb e) {
            this.f1768f = i;
            m25972e(str, e);
        } catch (IndexOutOfBoundsException e2) {
            throw new C0615d8(e2);
        }
    }

    @Override // p018b5.AbstractC0649f8
    /* renamed from: h */
    public final void mo25969h(byte b) {
        try {
            byte[] bArr = this.f1766d;
            int i = this.f1768f;
            this.f1768f = i + 1;
            bArr[i] = b;
        } catch (IndexOutOfBoundsException e) {
            throw new C0615d8(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1768f), Integer.valueOf(this.f1767e), 1), e);
        }
    }

    @Override // p018b5.AbstractC0649f8
    /* renamed from: i */
    public final void mo25968i(int i, boolean z) {
        mo25956u(i << 3);
        mo25969h(z ? (byte) 1 : (byte) 0);
    }

    @Override // p018b5.AbstractC0649f8
    /* renamed from: j */
    public final void mo25967j(int i, AbstractC0937w7 abstractC0937w7) {
        mo25956u((i << 3) | 2);
        mo25956u(abstractC0937w7.mo25037g());
        abstractC0937w7.mo25033m(this);
    }

    @Override // p018b5.AbstractC0649f8
    /* renamed from: k */
    public final void mo25966k(int i, int i2) {
        mo25956u((i << 3) | 5);
        mo25965l(i2);
    }

    @Override // p018b5.AbstractC0649f8
    /* renamed from: l */
    public final void mo25965l(int i) {
        try {
            byte[] bArr = this.f1766d;
            int i2 = this.f1768f;
            int i3 = i2 + 1;
            bArr[i2] = (byte) (i & 255);
            int i4 = i3 + 1;
            bArr[i3] = (byte) ((i >> 8) & 255);
            int i5 = i4 + 1;
            bArr[i4] = (byte) ((i >> 16) & 255);
            this.f1768f = i5 + 1;
            bArr[i5] = (byte) ((i >> 24) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new C0615d8(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1768f), Integer.valueOf(this.f1767e), 1), e);
        }
    }

    @Override // p018b5.AbstractC0649f8
    /* renamed from: m */
    public final void mo25964m(int i, long j) {
        mo25956u((i << 3) | 1);
        mo25963n(j);
    }

    @Override // p018b5.AbstractC0649f8
    /* renamed from: n */
    public final void mo25963n(long j) {
        try {
            byte[] bArr = this.f1766d;
            int i = this.f1768f;
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
            this.f1768f = i8 + 1;
            bArr[i8] = (byte) (((int) (j >> 56)) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new C0615d8(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1768f), Integer.valueOf(this.f1767e), 1), e);
        }
    }

    @Override // p018b5.AbstractC0649f8
    /* renamed from: o */
    public final void mo25962o(int i, int i2) {
        mo25956u(i << 3);
        mo25961p(i2);
    }

    @Override // p018b5.AbstractC0649f8
    /* renamed from: p */
    public final void mo25961p(int i) {
        if (i >= 0) {
            mo25956u(i);
        } else {
            mo25954w(i);
        }
    }

    @Override // p018b5.AbstractC0649f8
    /* renamed from: r */
    public final void mo25959r(int i, String str) {
        mo25956u((i << 3) | 2);
        m26100F(str);
    }

    @Override // p018b5.AbstractC0649f8
    /* renamed from: t */
    public final void mo25957t(int i, int i2) {
        mo25956u(i << 3);
        mo25956u(i2);
    }

    @Override // p018b5.AbstractC0649f8
    /* renamed from: v */
    public final void mo25955v(int i, long j) {
        mo25956u(i << 3);
        mo25954w(j);
    }

    @Override // p018b5.AbstractC0649f8
    /* renamed from: u */
    public final void mo25956u(int i) {
        boolean z;
        z = AbstractC0649f8.f1815c;
        if (z) {
            int i2 = C0682h7.f1846a;
        }
        while ((i & (-128)) != 0) {
            try {
                byte[] bArr = this.f1766d;
                int i3 = this.f1768f;
                this.f1768f = i3 + 1;
                bArr[i3] = (byte) ((i & 127) | 128);
                i >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new C0615d8(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1768f), Integer.valueOf(this.f1767e), 1), e);
            }
        }
        byte[] bArr2 = this.f1766d;
        int i4 = this.f1768f;
        this.f1768f = i4 + 1;
        bArr2[i4] = (byte) i;
    }

    @Override // p018b5.AbstractC0649f8
    /* renamed from: w */
    public final void mo25954w(long j) {
        boolean z;
        z = AbstractC0649f8.f1815c;
        if (z && this.f1767e - this.f1768f >= 10) {
            while ((j & (-128)) != 0) {
                byte[] bArr = this.f1766d;
                int i = this.f1768f;
                this.f1768f = i + 1;
                C0856rb.m25342s(bArr, i, (byte) ((((int) j) & 127) | 128));
                j >>>= 7;
            }
            byte[] bArr2 = this.f1766d;
            int i2 = this.f1768f;
            this.f1768f = i2 + 1;
            C0856rb.m25342s(bArr2, i2, (byte) j);
            return;
        }
        while ((j & (-128)) != 0) {
            try {
                byte[] bArr3 = this.f1766d;
                int i3 = this.f1768f;
                this.f1768f = i3 + 1;
                bArr3[i3] = (byte) ((((int) j) & 127) | 128);
                j >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new C0615d8(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1768f), Integer.valueOf(this.f1767e), 1), e);
            }
        }
        byte[] bArr4 = this.f1766d;
        int i4 = this.f1768f;
        this.f1768f = i4 + 1;
        bArr4[i4] = (byte) j;
    }
}
