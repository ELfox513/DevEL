package p168r4;
/* renamed from: r4.tl3 */
/* loaded from: classes2.dex */
public final class tl3 extends wl3 {

    /* renamed from: d */
    public final byte[] f31894d;

    /* renamed from: e */
    public final int f31895e;

    /* renamed from: f */
    public int f31896f;

    public tl3(byte[] bArr, int i, int i2) {
        super(null);
        if (bArr != null) {
            int length = bArr.length;
            if (((length - i2) | i2) >= 0) {
                this.f31894d = bArr;
                this.f31896f = 0;
                this.f31895e = i2;
                return;
            }
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i2)));
        }
        throw new NullPointerException("buffer");
    }

    @Override // p168r4.wl3
    /* renamed from: g */
    public final void mo5667g(int i, int i2) {
        mo5656r((i << 3) | i2);
    }

    @Override // p168r4.wl3
    /* renamed from: v */
    public final void mo5652v(byte[] bArr, int i, int i2) {
        m6792E(bArr, 0, i2);
    }

    @Override // p168r4.wl3
    /* renamed from: w */
    public final int mo5651w() {
        return this.f31895e - this.f31896f;
    }

    /* renamed from: E */
    public final void m6792E(byte[] bArr, int i, int i2) {
        try {
            System.arraycopy(bArr, i, this.f31894d, this.f31896f, i2);
            this.f31896f += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new vl3(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31896f), Integer.valueOf(this.f31895e), Integer.valueOf(i2)), e);
        }
    }

    /* renamed from: F */
    public final void m6791F(String str) {
        int i = this.f31896f;
        try {
            int m5676B = wl3.m5676B(str.length() * 3);
            int m5676B2 = wl3.m5676B(str.length());
            if (m5676B2 == m5676B) {
                int i2 = i + m5676B2;
                this.f31896f = i2;
                int m5623h = wp3.m5623h(str, this.f31894d, i2, this.f31895e - i2);
                this.f31896f = i;
                mo5656r((m5623h - i) - m5676B2);
                this.f31896f = m5623h;
                return;
            }
            mo5656r(wp3.m5624g(str));
            byte[] bArr = this.f31894d;
            int i3 = this.f31896f;
            this.f31896f = wp3.m5623h(str, bArr, i3, this.f31895e - i3);
        } catch (IndexOutOfBoundsException e) {
            throw new vl3(e);
        } catch (vp3 e2) {
            this.f31896f = i;
            m5669e(str, e2);
        }
    }

    @Override // p168r4.wl3
    /* renamed from: h */
    public final void mo5666h(int i, int i2) {
        mo5656r(i << 3);
        mo5657q(i2);
    }

    @Override // p168r4.wl3
    /* renamed from: i */
    public final void mo5665i(int i, int i2) {
        mo5656r(i << 3);
        mo5656r(i2);
    }

    @Override // p168r4.wl3
    /* renamed from: j */
    public final void mo5664j(int i, int i2) {
        mo5656r((i << 3) | 5);
        mo5655s(i2);
    }

    @Override // p168r4.wl3
    /* renamed from: k */
    public final void mo5663k(int i, long j) {
        mo5656r(i << 3);
        mo5654t(j);
    }

    @Override // p168r4.wl3
    /* renamed from: l */
    public final void mo5662l(int i, long j) {
        mo5656r((i << 3) | 1);
        mo5653u(j);
    }

    @Override // p168r4.wl3
    /* renamed from: m */
    public final void mo5661m(int i, boolean z) {
        mo5656r(i << 3);
        mo5658p(z ? (byte) 1 : (byte) 0);
    }

    @Override // p168r4.wl3
    /* renamed from: n */
    public final void mo5660n(int i, String str) {
        mo5656r((i << 3) | 2);
        m6791F(str);
    }

    @Override // p168r4.wl3
    /* renamed from: o */
    public final void mo5659o(int i, ll3 ll3Var) {
        mo5656r((i << 3) | 2);
        mo5656r(ll3Var.mo7747o());
        ll3Var.mo7742w(this);
    }

    @Override // p168r4.wl3
    /* renamed from: p */
    public final void mo5658p(byte b) {
        try {
            byte[] bArr = this.f31894d;
            int i = this.f31896f;
            this.f31896f = i + 1;
            bArr[i] = b;
        } catch (IndexOutOfBoundsException e) {
            throw new vl3(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31896f), Integer.valueOf(this.f31895e), 1), e);
        }
    }

    @Override // p168r4.wl3
    /* renamed from: q */
    public final void mo5657q(int i) {
        if (i >= 0) {
            mo5656r(i);
        } else {
            mo5654t(i);
        }
    }

    @Override // p168r4.wl3
    /* renamed from: s */
    public final void mo5655s(int i) {
        try {
            byte[] bArr = this.f31894d;
            int i2 = this.f31896f;
            int i3 = i2 + 1;
            bArr[i2] = (byte) (i & 255);
            int i4 = i3 + 1;
            bArr[i3] = (byte) ((i >> 8) & 255);
            int i5 = i4 + 1;
            bArr[i4] = (byte) ((i >> 16) & 255);
            this.f31896f = i5 + 1;
            bArr[i5] = (byte) ((i >> 24) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new vl3(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31896f), Integer.valueOf(this.f31895e), 1), e);
        }
    }

    @Override // p168r4.wl3
    /* renamed from: u */
    public final void mo5653u(long j) {
        try {
            byte[] bArr = this.f31894d;
            int i = this.f31896f;
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
            this.f31896f = i8 + 1;
            bArr[i8] = (byte) (((int) (j >> 56)) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new vl3(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31896f), Integer.valueOf(this.f31895e), 1), e);
        }
    }

    @Override // p168r4.wl3
    /* renamed from: r */
    public final void mo5656r(int i) {
        boolean z;
        z = wl3.f33255c;
        if (z) {
            int i2 = wk3.f33218a;
        }
        while ((i & (-128)) != 0) {
            try {
                byte[] bArr = this.f31894d;
                int i3 = this.f31896f;
                this.f31896f = i3 + 1;
                bArr[i3] = (byte) ((i & 127) | 128);
                i >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new vl3(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31896f), Integer.valueOf(this.f31895e), 1), e);
            }
        }
        byte[] bArr2 = this.f31894d;
        int i4 = this.f31896f;
        this.f31896f = i4 + 1;
        bArr2[i4] = (byte) i;
    }

    @Override // p168r4.wl3
    /* renamed from: t */
    public final void mo5654t(long j) {
        boolean z;
        z = wl3.f33255c;
        if (z && this.f31895e - this.f31896f >= 10) {
            while ((j & (-128)) != 0) {
                byte[] bArr = this.f31894d;
                int i = this.f31896f;
                this.f31896f = i + 1;
                rp3.m7366x(bArr, i, (byte) ((((int) j) & 127) | 128));
                j >>>= 7;
            }
            byte[] bArr2 = this.f31894d;
            int i2 = this.f31896f;
            this.f31896f = i2 + 1;
            rp3.m7366x(bArr2, i2, (byte) j);
            return;
        }
        while ((j & (-128)) != 0) {
            try {
                byte[] bArr3 = this.f31894d;
                int i3 = this.f31896f;
                this.f31896f = i3 + 1;
                bArr3[i3] = (byte) ((((int) j) & 127) | 128);
                j >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new vl3(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31896f), Integer.valueOf(this.f31895e), 1), e);
            }
        }
        byte[] bArr4 = this.f31894d;
        int i4 = this.f31896f;
        this.f31896f = i4 + 1;
        bArr4[i4] = (byte) j;
    }
}
