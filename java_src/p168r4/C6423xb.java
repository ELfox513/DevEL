package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.nio.charset.Charset;
import java.util.Arrays;
/* renamed from: r4.xb */
/* loaded from: classes2.dex */
public final class C6423xb {

    /* renamed from: a */
    public byte[] f33537a;

    /* renamed from: b */
    public int f33538b;

    /* renamed from: c */
    public int f33539c;

    public C6423xb() {
        this.f33537a = C5979lc.f27169f;
    }

    public C6423xb(byte[] bArr, int i) {
        this.f33537a = bArr;
        this.f33539c = i;
    }

    /* renamed from: A */
    public final int m5426A() {
        byte[] bArr = this.f33537a;
        int i = this.f33538b;
        int i2 = i + 1;
        byte b = bArr[i];
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        this.f33538b = i3 + 1;
        return (bArr[i3] & DefaultClassResolver.NAME) | (((b & DefaultClassResolver.NAME) << 24) >> 8) | ((b2 & DefaultClassResolver.NAME) << 8);
    }

    /* renamed from: B */
    public final long m5425B() {
        byte[] bArr = this.f33537a;
        int i = this.f33538b;
        int i2 = i + 1;
        byte b = bArr[i];
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        byte b3 = bArr[i3];
        this.f33538b = i4 + 1;
        return ((b2 & 255) << 16) | ((b & 255) << 24) | ((b3 & 255) << 8) | (bArr[i4] & 255);
    }

    /* renamed from: C */
    public final long m5424C() {
        byte[] bArr = this.f33537a;
        int i = this.f33538b;
        int i2 = i + 1;
        byte b = bArr[i];
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        byte b3 = bArr[i3];
        this.f33538b = i4 + 1;
        return ((b2 & 255) << 8) | (b & 255) | ((b3 & 255) << 16) | ((bArr[i4] & 255) << 24);
    }

    /* renamed from: D */
    public final int m5423D() {
        byte[] bArr = this.f33537a;
        int i = this.f33538b;
        int i2 = i + 1;
        byte b = bArr[i];
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        byte b3 = bArr[i3];
        this.f33538b = i4 + 1;
        return (bArr[i4] & DefaultClassResolver.NAME) | ((b & DefaultClassResolver.NAME) << 24) | ((b2 & DefaultClassResolver.NAME) << 16) | ((b3 & DefaultClassResolver.NAME) << 8);
    }

    /* renamed from: E */
    public final int m5422E() {
        byte[] bArr = this.f33537a;
        int i = this.f33538b;
        int i2 = i + 1;
        byte b = bArr[i];
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        byte b3 = bArr[i3];
        this.f33538b = i4 + 1;
        return ((bArr[i4] & DefaultClassResolver.NAME) << 24) | (b & DefaultClassResolver.NAME) | ((b2 & DefaultClassResolver.NAME) << 8) | ((b3 & DefaultClassResolver.NAME) << 16);
    }

    /* renamed from: F */
    public final long m5421F() {
        byte[] bArr = this.f33537a;
        int i = this.f33538b;
        int i2 = i + 1;
        byte b = bArr[i];
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        byte b3 = bArr[i3];
        int i5 = i4 + 1;
        byte b4 = bArr[i4];
        int i6 = i5 + 1;
        byte b5 = bArr[i5];
        int i7 = i6 + 1;
        byte b6 = bArr[i6];
        int i8 = i7 + 1;
        byte b7 = bArr[i7];
        this.f33538b = i8 + 1;
        return ((b2 & 255) << 48) | ((b & 255) << 56) | ((b3 & 255) << 40) | ((b4 & 255) << 32) | ((b5 & 255) << 24) | ((b6 & 255) << 16) | ((b7 & 255) << 8) | (bArr[i8] & 255);
    }

    /* renamed from: G */
    public final long m5420G() {
        byte[] bArr = this.f33537a;
        int i = this.f33538b;
        int i2 = i + 1;
        byte b = bArr[i];
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        byte b3 = bArr[i3];
        int i5 = i4 + 1;
        byte b4 = bArr[i4];
        int i6 = i5 + 1;
        byte b5 = bArr[i5];
        int i7 = i6 + 1;
        byte b6 = bArr[i6];
        int i8 = i7 + 1;
        byte b7 = bArr[i7];
        this.f33538b = i8 + 1;
        return ((b2 & 255) << 8) | (b & 255) | ((b3 & 255) << 16) | ((b4 & 255) << 24) | ((b5 & 255) << 32) | ((b6 & 255) << 40) | ((b7 & 255) << 48) | ((bArr[i8] & 255) << 56);
    }

    /* renamed from: H */
    public final int m5419H() {
        byte[] bArr = this.f33537a;
        int i = this.f33538b;
        int i2 = i + 1;
        byte b = bArr[i];
        byte b2 = bArr[i2];
        this.f33538b = i2 + 1 + 2;
        return (b2 & DefaultClassResolver.NAME) | ((b & DefaultClassResolver.NAME) << 8);
    }

    /* renamed from: e */
    public final String m5414e(int i, Charset charset) {
        String str = new String(this.f33537a, this.f33538b, i, charset);
        this.f33538b += i;
        return str;
    }

    /* renamed from: j */
    public final void m5409j(byte[] bArr, int i) {
        this.f33537a = bArr;
        this.f33539c = i;
        this.f33538b = 0;
    }

    /* renamed from: l */
    public final int m5407l() {
        return this.f33539c - this.f33538b;
    }

    /* renamed from: m */
    public final int m5406m() {
        return this.f33539c;
    }

    /* renamed from: n */
    public final void m5405n(int i) {
        boolean z = false;
        if (i >= 0 && i <= this.f33537a.length) {
            z = true;
        }
        C5903ja.m10374a(z);
        this.f33539c = i;
    }

    /* renamed from: o */
    public final int m5404o() {
        return this.f33538b;
    }

    /* renamed from: p */
    public final void m5403p(int i) {
        boolean z = false;
        if (i >= 0 && i <= this.f33539c) {
            z = true;
        }
        C5903ja.m10374a(z);
        this.f33538b = i;
    }

    /* renamed from: q */
    public final byte[] m5402q() {
        return this.f33537a;
    }

    /* renamed from: r */
    public final int m5401r() {
        return this.f33537a.length;
    }

    /* renamed from: s */
    public final void m5400s(int i) {
        m5403p(this.f33538b + i);
    }

    /* renamed from: u */
    public final void m5398u(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f33537a, this.f33538b, bArr, i, i2);
        this.f33538b += i2;
    }

    /* renamed from: v */
    public final int m5397v() {
        byte[] bArr = this.f33537a;
        int i = this.f33538b;
        this.f33538b = i + 1;
        return bArr[i] & DefaultClassResolver.NAME;
    }

    /* renamed from: w */
    public final int m5396w() {
        byte[] bArr = this.f33537a;
        int i = this.f33538b;
        int i2 = i + 1;
        byte b = bArr[i];
        this.f33538b = i2 + 1;
        return (bArr[i2] & DefaultClassResolver.NAME) | ((b & DefaultClassResolver.NAME) << 8);
    }

    /* renamed from: x */
    public final int m5395x() {
        byte[] bArr = this.f33537a;
        int i = this.f33538b;
        int i2 = i + 1;
        byte b = bArr[i];
        this.f33538b = i2 + 1;
        return ((bArr[i2] & DefaultClassResolver.NAME) << 8) | (b & DefaultClassResolver.NAME);
    }

    /* renamed from: y */
    public final short m5394y() {
        byte[] bArr = this.f33537a;
        int i = this.f33538b;
        int i2 = i + 1;
        byte b = bArr[i];
        this.f33538b = i2 + 1;
        return (short) ((bArr[i2] & DefaultClassResolver.NAME) | ((b & DefaultClassResolver.NAME) << 8));
    }

    /* renamed from: z */
    public final int m5393z() {
        byte[] bArr = this.f33537a;
        int i = this.f33538b;
        int i2 = i + 1;
        byte b = bArr[i];
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        this.f33538b = i3 + 1;
        return (bArr[i3] & DefaultClassResolver.NAME) | ((b & DefaultClassResolver.NAME) << 16) | ((b2 & DefaultClassResolver.NAME) << 8);
    }

    public C6423xb(int i) {
        this.f33537a = new byte[i];
        this.f33539c = i;
    }

    /* renamed from: f */
    public final String m5413f(int i) {
        int i2;
        if (i == 0) {
            return "";
        }
        int i3 = this.f33538b;
        int i4 = (i3 + i) - 1;
        if (i4 < this.f33539c && this.f33537a[i4] == 0) {
            i2 = i - 1;
        } else {
            i2 = i;
        }
        String m9714W = C5979lc.m9714W(this.f33537a, i3, i2);
        this.f33538b += i;
        return m9714W;
    }

    /* renamed from: g */
    public final String m5412g(char c) {
        int i = this.f33539c;
        int i2 = this.f33538b;
        if (i - i2 != 0) {
            while (i2 < this.f33539c && this.f33537a[i2] != 0) {
                i2++;
            }
            byte[] bArr = this.f33537a;
            int i3 = this.f33538b;
            String m9714W = C5979lc.m9714W(bArr, i3, i2 - i3);
            this.f33538b = i2;
            if (i2 < this.f33539c) {
                this.f33538b = i2 + 1;
            }
            return m9714W;
        }
        return null;
    }

    /* renamed from: h */
    public final long m5411h() {
        int i;
        int i2;
        byte b;
        int i3;
        long j = this.f33537a[this.f33538b];
        int i4 = 7;
        while (true) {
            i = 0;
            if (i4 < 0) {
                break;
            }
            if (((1 << i4) & j) != 0) {
                i4--;
            } else if (i4 < 6) {
                j &= i3 - 1;
                i = 7 - i4;
            } else if (i4 == 7) {
                i = 1;
            }
        }
        if (i != 0) {
            for (i2 = 1; i2 < i; i2++) {
                if ((this.f33537a[this.f33538b + i2] & 192) == 128) {
                    j = (j << 6) | (b & 63);
                } else {
                    StringBuilder sb = new StringBuilder(62);
                    sb.append("Invalid UTF-8 sequence continuation byte: ");
                    sb.append(j);
                    throw new NumberFormatException(sb.toString());
                }
            }
            this.f33538b += i;
            return j;
        }
        StringBuilder sb2 = new StringBuilder(55);
        sb2.append("Invalid UTF-8 sequence first byte: ");
        sb2.append(j);
        throw new NumberFormatException(sb2.toString());
    }

    /* renamed from: i */
    public final void m5410i(int i) {
        byte[] bArr = this.f33537a;
        if (bArr.length < i) {
            bArr = new byte[i];
        }
        m5409j(bArr, i);
    }

    /* renamed from: k */
    public final void m5408k(int i) {
        byte[] bArr = this.f33537a;
        if (i > bArr.length) {
            this.f33537a = Arrays.copyOf(bArr, i);
        }
    }

    /* renamed from: t */
    public final void m5399t(C6386wb c6386wb, int i) {
        m5398u(c6386wb.f33149a, 0, i);
        c6386wb.m5789d(0);
    }

    public C6423xb(byte[] bArr) {
        this.f33537a = bArr;
        this.f33539c = bArr.length;
    }

    /* renamed from: a */
    public final int m5418a() {
        return (m5397v() << 21) | (m5397v() << 14) | (m5397v() << 7) | m5397v();
    }

    /* renamed from: b */
    public final int m5417b() {
        int m5423D = m5423D();
        if (m5423D >= 0) {
            return m5423D;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(m5423D);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: c */
    public final int m5416c() {
        int m5422E = m5422E();
        if (m5422E >= 0) {
            return m5422E;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(m5422E);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: d */
    public final long m5415d() {
        long m5421F = m5421F();
        if (m5421F >= 0) {
            return m5421F;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(m5421F);
        throw new IllegalStateException(sb.toString());
    }
}
