package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: r4.dl */
/* loaded from: classes2.dex */
public final class C5692dl {

    /* renamed from: a */
    public byte[] f22312a;

    /* renamed from: b */
    public int f22313b;

    /* renamed from: c */
    public int f22314c;

    public C5692dl() {
    }

    public C5692dl(int i) {
        this.f22312a = new byte[i];
        this.f22314c = i;
    }

    /* renamed from: a */
    public final void m12122a(int i) {
        m12121b(m12115h() < i ? new byte[i] : this.f22312a, i);
    }

    /* renamed from: b */
    public final void m12121b(byte[] bArr, int i) {
        this.f22312a = bArr;
        this.f22314c = i;
        this.f22313b = 0;
    }

    /* renamed from: c */
    public final void m12120c() {
        this.f22313b = 0;
        this.f22314c = 0;
    }

    /* renamed from: d */
    public final int m12119d() {
        return this.f22314c - this.f22313b;
    }

    /* renamed from: e */
    public final int m12118e() {
        return this.f22314c;
    }

    /* renamed from: f */
    public final void m12117f(int i) {
        boolean z = false;
        if (i >= 0 && i <= this.f22312a.length) {
            z = true;
        }
        C6358vk.m6140a(z);
        this.f22314c = i;
    }

    /* renamed from: g */
    public final int m12116g() {
        return this.f22313b;
    }

    /* renamed from: h */
    public final int m12115h() {
        byte[] bArr = this.f22312a;
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    /* renamed from: i */
    public final void m12114i(int i) {
        boolean z = false;
        if (i >= 0 && i <= this.f22314c) {
            z = true;
        }
        C6358vk.m6140a(z);
        this.f22313b = i;
    }

    /* renamed from: j */
    public final void m12113j(int i) {
        m12114i(this.f22313b + i);
    }

    /* renamed from: k */
    public final void m12112k(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f22312a, this.f22313b, bArr, i, i2);
        this.f22313b += i2;
    }

    /* renamed from: l */
    public final int m12111l() {
        byte[] bArr = this.f22312a;
        int i = this.f22313b;
        this.f22313b = i + 1;
        return bArr[i] & DefaultClassResolver.NAME;
    }

    /* renamed from: m */
    public final int m12110m() {
        byte[] bArr = this.f22312a;
        int i = this.f22313b;
        int i2 = i + 1;
        byte b = bArr[i];
        this.f22313b = i2 + 1;
        return (bArr[i2] & DefaultClassResolver.NAME) | ((b & DefaultClassResolver.NAME) << 8);
    }

    /* renamed from: n */
    public final int m12109n() {
        byte[] bArr = this.f22312a;
        int i = this.f22313b;
        int i2 = i + 1;
        byte b = bArr[i];
        this.f22313b = i2 + 1;
        return ((bArr[i2] & DefaultClassResolver.NAME) << 8) | (b & DefaultClassResolver.NAME);
    }

    /* renamed from: o */
    public final short m12108o() {
        byte[] bArr = this.f22312a;
        int i = this.f22313b;
        int i2 = i + 1;
        byte b = bArr[i];
        this.f22313b = i2 + 1;
        return (short) ((bArr[i2] & DefaultClassResolver.NAME) | ((b & DefaultClassResolver.NAME) << 8));
    }

    /* renamed from: p */
    public final long m12107p() {
        byte[] bArr = this.f22312a;
        int i = this.f22313b;
        int i2 = i + 1;
        byte b = bArr[i];
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        byte b3 = bArr[i3];
        this.f22313b = i4 + 1;
        return ((b2 & 255) << 16) | ((b & 255) << 24) | ((b3 & 255) << 8) | (bArr[i4] & 255);
    }

    /* renamed from: q */
    public final long m12106q() {
        byte[] bArr = this.f22312a;
        int i = this.f22313b;
        int i2 = i + 1;
        byte b = bArr[i];
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        byte b3 = bArr[i3];
        this.f22313b = i4 + 1;
        return ((b2 & 255) << 8) | (b & 255) | ((b3 & 255) << 16) | ((bArr[i4] & 255) << 24);
    }

    /* renamed from: r */
    public final int m12105r() {
        byte[] bArr = this.f22312a;
        int i = this.f22313b;
        int i2 = i + 1;
        byte b = bArr[i];
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        byte b3 = bArr[i3];
        this.f22313b = i4 + 1;
        return (bArr[i4] & DefaultClassResolver.NAME) | ((b & DefaultClassResolver.NAME) << 24) | ((b2 & DefaultClassResolver.NAME) << 16) | ((b3 & DefaultClassResolver.NAME) << 8);
    }

    /* renamed from: s */
    public final long m12104s() {
        byte[] bArr = this.f22312a;
        int i = this.f22313b;
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
        this.f22313b = i8 + 1;
        return ((b2 & 255) << 48) | ((b & 255) << 56) | ((b3 & 255) << 40) | ((b4 & 255) << 32) | ((b5 & 255) << 24) | ((b6 & 255) << 16) | ((b7 & 255) << 8) | (bArr[i8] & 255);
    }

    /* renamed from: t */
    public final int m12103t() {
        byte[] bArr = this.f22312a;
        int i = this.f22313b;
        int i2 = i + 1;
        byte b = bArr[i];
        byte b2 = bArr[i2];
        this.f22313b = i2 + 1 + 2;
        return (b2 & DefaultClassResolver.NAME) | ((b & DefaultClassResolver.NAME) << 8);
    }

    /* renamed from: w */
    public final String m12100w(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.f22313b;
        int i3 = (i2 + i) - 1;
        String str = new String(this.f22312a, i2, (i3 >= this.f22314c || this.f22312a[i3] != 0) ? i : i - 1);
        this.f22313b += i;
        return str;
    }

    public C5692dl(byte[] bArr) {
        this.f22312a = bArr;
        this.f22314c = bArr.length;
    }

    /* renamed from: u */
    public final int m12102u() {
        int m12105r = m12105r();
        if (m12105r >= 0) {
            return m12105r;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(m12105r);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: v */
    public final long m12101v() {
        long m12104s = m12104s();
        if (m12104s >= 0) {
            return m12104s;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(m12104s);
        throw new IllegalStateException(sb.toString());
    }
}
