package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: r4.yb */
/* loaded from: classes2.dex */
public final class C6460yb {

    /* renamed from: a */
    public byte[] f34013a;

    /* renamed from: b */
    public int f34014b;

    /* renamed from: c */
    public int f34015c;

    /* renamed from: d */
    public int f34016d;

    public C6460yb(byte[] bArr, int i, int i2) {
        m4792a(bArr, i, i2);
    }

    /* renamed from: a */
    public final void m4792a(byte[] bArr, int i, int i2) {
        this.f34013a = bArr;
        this.f34015c = i;
        this.f34014b = i2;
        this.f34016d = 0;
        m4783j();
    }

    /* renamed from: f */
    public final int m4787f() {
        return m4785h();
    }

    /* renamed from: g */
    public final int m4786g() {
        int m4785h = m4785h();
        return (m4785h % 2 == 0 ? -1 : 1) * ((m4785h + 1) / 2);
    }

    /* renamed from: h */
    public final int m4785h() {
        int i = 0;
        while (!m4789d()) {
            i++;
        }
        return ((1 << i) - 1) + (i > 0 ? m4788e(i) : 0);
    }

    /* renamed from: i */
    public final boolean m4784i(int i) {
        if (i < 2 || i >= this.f34014b) {
            return false;
        }
        byte[] bArr = this.f34013a;
        return bArr[i] == 3 && bArr[i + (-2)] == 0 && bArr[i + (-1)] == 0;
    }

    /* renamed from: j */
    public final void m4783j() {
        int i;
        int i2 = this.f34015c;
        boolean z = true;
        if (i2 < 0 || (i2 >= (i = this.f34014b) && (i2 != i || this.f34016d != 0))) {
            z = false;
        }
        C5903ja.m10371d(z);
    }

    /* renamed from: b */
    public final void m4791b() {
        int i = 1;
        int i2 = this.f34016d + 1;
        this.f34016d = i2;
        if (i2 == 8) {
            this.f34016d = 0;
            int i3 = this.f34015c;
            if (true == m4784i(i3 + 1)) {
                i = 2;
            }
            this.f34015c = i3 + i;
        }
        m4783j();
    }

    /* renamed from: c */
    public final void m4790c(int i) {
        int i2 = this.f34015c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        this.f34015c = i4;
        int i5 = this.f34016d + (i - (i3 * 8));
        this.f34016d = i5;
        if (i5 > 7) {
            this.f34015c = i4 + 1;
            this.f34016d = i5 - 8;
        }
        while (true) {
            i2++;
            if (i2 <= this.f34015c) {
                if (m4784i(i2)) {
                    this.f34015c++;
                    i2 += 2;
                }
            } else {
                m4783j();
                return;
            }
        }
    }

    /* renamed from: d */
    public final boolean m4789d() {
        boolean z;
        if ((this.f34013a[this.f34015c] & (128 >> this.f34016d)) != 0) {
            z = true;
        } else {
            z = false;
        }
        m4791b();
        return z;
    }

    /* renamed from: e */
    public final int m4788e(int i) {
        int i2;
        int i3;
        this.f34016d += i;
        int i4 = 0;
        while (true) {
            i2 = this.f34016d;
            i3 = 2;
            if (i2 <= 8) {
                break;
            }
            int i5 = i2 - 8;
            this.f34016d = i5;
            byte[] bArr = this.f34013a;
            int i6 = this.f34015c;
            i4 |= (bArr[i6] & DefaultClassResolver.NAME) << i5;
            if (true != m4784i(i6 + 1)) {
                i3 = 1;
            }
            this.f34015c = i6 + i3;
        }
        byte[] bArr2 = this.f34013a;
        int i7 = this.f34015c;
        int i8 = ((-1) >>> (32 - i)) & (i4 | ((bArr2[i7] & DefaultClassResolver.NAME) >> (8 - i2)));
        if (i2 == 8) {
            this.f34016d = 0;
            if (true != m4784i(i7 + 1)) {
                i3 = 1;
            }
            this.f34015c = i7 + i3;
        }
        m4783j();
        return i8;
    }
}
