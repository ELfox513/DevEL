package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: r4.el */
/* loaded from: classes2.dex */
public final class C5730el {

    /* renamed from: a */
    public final byte[] f23058a;

    /* renamed from: b */
    public final int f23059b;

    /* renamed from: c */
    public int f23060c;

    /* renamed from: d */
    public int f23061d = 0;

    public C5730el(byte[] bArr, int i, int i2) {
        this.f23058a = bArr;
        this.f23060c = i;
        this.f23059b = i2;
        m11711h();
    }

    /* renamed from: b */
    public final boolean m11717b() {
        return m11716c(1) == 1;
    }

    /* renamed from: d */
    public final int m11715d() {
        return m11713f();
    }

    /* renamed from: e */
    public final int m11714e() {
        int m11713f = m11713f();
        return (m11713f % 2 == 0 ? -1 : 1) * ((m11713f + 1) / 2);
    }

    /* renamed from: f */
    public final int m11713f() {
        int i = 0;
        while (!m11717b()) {
            i++;
        }
        return ((1 << i) - 1) + (i > 0 ? m11716c(i) : 0);
    }

    /* renamed from: g */
    public final boolean m11712g(int i) {
        if (i < 2 || i >= this.f23059b) {
            return false;
        }
        byte[] bArr = this.f23058a;
        return bArr[i] == 3 && bArr[i + (-2)] == 0 && bArr[i + (-1)] == 0;
    }

    /* renamed from: h */
    public final void m11711h() {
        int i;
        int i2;
        int i3 = this.f23060c;
        boolean z = true;
        if (i3 < 0 || (i = this.f23061d) < 0 || i >= 8 || (i3 >= (i2 = this.f23059b) && (i3 != i2 || i != 0))) {
            z = false;
        }
        C6358vk.m6137d(z);
    }

    /* renamed from: a */
    public final void m11718a(int i) {
        int i2 = this.f23060c;
        int i3 = (i >> 3) + i2;
        this.f23060c = i3;
        int i4 = this.f23061d + (i & 7);
        this.f23061d = i4;
        if (i4 > 7) {
            this.f23060c = i3 + 1;
            this.f23061d = i4 - 8;
        }
        while (true) {
            i2++;
            if (i2 <= this.f23060c) {
                if (m11712g(i2)) {
                    this.f23060c++;
                    i2 += 2;
                }
            } else {
                m11711h();
                return;
            }
        }
    }

    /* renamed from: c */
    public final int m11716c(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = i >> 3;
        int i7 = 0;
        for (int i8 = 0; i8 < i6; i8++) {
            if (m11712g(this.f23060c + 1)) {
                i4 = this.f23060c + 2;
            } else {
                i4 = this.f23060c + 1;
            }
            int i9 = this.f23061d;
            if (i9 != 0) {
                byte[] bArr = this.f23058a;
                i5 = ((bArr[i4] & DefaultClassResolver.NAME) >>> (8 - i9)) | ((bArr[this.f23060c] & DefaultClassResolver.NAME) << i9);
            } else {
                i5 = this.f23058a[this.f23060c];
            }
            i -= 8;
            i7 |= (255 & i5) << i;
            this.f23060c = i4;
        }
        if (i > 0) {
            int i10 = this.f23061d + i;
            byte b = (byte) (255 >> (8 - i));
            if (m11712g(this.f23060c + 1)) {
                i2 = this.f23060c + 2;
            } else {
                i2 = this.f23060c + 1;
            }
            if (i10 > 8) {
                byte[] bArr2 = this.f23058a;
                i3 = (b & (((255 & bArr2[i2]) >> (16 - i10)) | ((bArr2[this.f23060c] & DefaultClassResolver.NAME) << (i10 - 8)))) | i7;
                this.f23060c = i2;
            } else {
                i3 = (b & ((255 & this.f23058a[this.f23060c]) >> (8 - i10))) | i7;
                if (i10 == 8) {
                    this.f23060c = i2;
                }
            }
            i7 = i3;
            this.f23061d = i10 % 8;
        }
        m11711h();
        return i7;
    }
}
