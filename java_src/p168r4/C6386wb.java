package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import com.prineside.luaj.Lua;
/* renamed from: r4.wb */
/* loaded from: classes2.dex */
public final class C6386wb {

    /* renamed from: a */
    public byte[] f33149a;

    /* renamed from: b */
    public int f33150b;

    /* renamed from: c */
    public int f33151c;

    /* renamed from: d */
    public int f33152d;

    public C6386wb() {
        this.f33149a = C5979lc.f27169f;
    }

    public C6386wb(byte[] bArr, int i) {
        this.f33149a = bArr;
        this.f33152d = i;
    }

    /* renamed from: a */
    public final void m5792a(byte[] bArr, int i) {
        this.f33149a = bArr;
        this.f33150b = 0;
        this.f33151c = 0;
        this.f33152d = i;
    }

    /* renamed from: b */
    public final int m5791b() {
        return ((this.f33152d - this.f33150b) * 8) - this.f33151c;
    }

    /* renamed from: c */
    public final int m5790c() {
        return (this.f33150b * 8) + this.f33151c;
    }

    /* renamed from: d */
    public final void m5789d(int i) {
        int i2 = i / 8;
        this.f33150b = i2;
        this.f33151c = i - (i2 * 8);
        m5780m();
    }

    /* renamed from: e */
    public final void m5788e() {
        int i = this.f33151c + 1;
        this.f33151c = i;
        if (i == 8) {
            this.f33151c = 0;
            this.f33150b++;
        }
        m5780m();
    }

    /* renamed from: f */
    public final void m5787f(int i) {
        int i2 = i / 8;
        int i3 = this.f33150b + i2;
        this.f33150b = i3;
        int i4 = this.f33151c + (i - (i2 * 8));
        this.f33151c = i4;
        if (i4 > 7) {
            this.f33150b = i3 + 1;
            this.f33151c = i4 - 8;
        }
        m5780m();
    }

    /* renamed from: h */
    public final int m5785h(int i) {
        int i2;
        if (i == 0) {
            return 0;
        }
        this.f33151c += i;
        int i3 = 0;
        while (true) {
            i2 = this.f33151c;
            if (i2 <= 8) {
                break;
            }
            int i4 = i2 - 8;
            this.f33151c = i4;
            byte[] bArr = this.f33149a;
            int i5 = this.f33150b;
            this.f33150b = i5 + 1;
            i3 |= (bArr[i5] & DefaultClassResolver.NAME) << i4;
        }
        byte[] bArr2 = this.f33149a;
        int i6 = this.f33150b;
        int i7 = ((-1) >>> (32 - i)) & (i3 | ((bArr2[i6] & DefaultClassResolver.NAME) >> (8 - i2)));
        if (i2 == 8) {
            this.f33151c = 0;
            this.f33150b = i6 + 1;
        }
        m5780m();
        return i7;
    }

    /* renamed from: j */
    public final void m5783j() {
        if (this.f33151c == 0) {
            return;
        }
        this.f33151c = 0;
        this.f33150b++;
        m5780m();
    }

    /* renamed from: m */
    public final void m5780m() {
        int i;
        int i2 = this.f33150b;
        boolean z = true;
        if (i2 < 0 || (i2 >= (i = this.f33152d) && (i2 != i || this.f33151c != 0))) {
            z = false;
        }
        C5903ja.m10371d(z);
    }

    /* renamed from: g */
    public final boolean m5786g() {
        boolean z;
        if ((this.f33149a[this.f33150b] & (128 >> this.f33151c)) != 0) {
            z = true;
        } else {
            z = false;
        }
        m5788e();
        return z;
    }

    /* renamed from: i */
    public final void m5784i(byte[] bArr, int i, int i2) {
        int i3 = i2 >> 3;
        for (int i4 = 0; i4 < i3; i4++) {
            byte[] bArr2 = this.f33149a;
            int i5 = this.f33150b;
            int i6 = i5 + 1;
            this.f33150b = i6;
            byte b = bArr2[i5];
            int i7 = this.f33151c;
            byte b2 = (byte) (b << i7);
            bArr[i4] = b2;
            bArr[i4] = (byte) (((255 & bArr2[i6]) >> (8 - i7)) | b2);
        }
        int i8 = i2 & 7;
        if (i8 == 0) {
            return;
        }
        byte b3 = (byte) (bArr[i3] & (255 >> i8));
        bArr[i3] = b3;
        int i9 = this.f33151c;
        if (i9 + i8 > 8) {
            byte[] bArr3 = this.f33149a;
            int i10 = this.f33150b;
            this.f33150b = i10 + 1;
            b3 = (byte) (b3 | ((bArr3[i10] & DefaultClassResolver.NAME) << i9));
            bArr[i3] = b3;
            i9 -= 8;
        }
        int i11 = i9 + i8;
        this.f33151c = i11;
        byte[] bArr4 = this.f33149a;
        int i12 = this.f33150b;
        bArr[i3] = (byte) (((byte) (((255 & bArr4[i12]) >> (8 - i11)) << (8 - i8))) | b3);
        if (i11 == 8) {
            this.f33151c = 0;
            this.f33150b = i12 + 1;
        }
        m5780m();
    }

    /* renamed from: k */
    public final void m5782k(int i) {
        boolean z;
        if (this.f33151c == 0) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10371d(z);
        this.f33150b += i;
        m5780m();
    }

    /* renamed from: l */
    public final void m5781l(int i, int i2) {
        int i3;
        int i4 = i & Lua.MASK_NOT_Bx;
        int min = Math.min(8 - this.f33151c, 14);
        int i5 = this.f33151c;
        int i6 = (8 - i5) - min;
        byte[] bArr = this.f33149a;
        int i7 = this.f33150b;
        byte b = (byte) (((65280 >> i5) | ((1 << i6) - 1)) & bArr[i7]);
        bArr[i7] = b;
        int i8 = 14 - min;
        bArr[i7] = (byte) (b | ((i4 >>> i8) << i6));
        int i9 = i7 + 1;
        while (i8 > 8) {
            i8 -= 8;
            this.f33149a[i9] = (byte) (i4 >>> i8);
            i9++;
        }
        byte[] bArr2 = this.f33149a;
        byte b2 = (byte) (bArr2[i9] & ((1 << i3) - 1));
        bArr2[i9] = b2;
        bArr2[i9] = (byte) (((i4 & ((1 << i8) - 1)) << (8 - i8)) | b2);
        m5787f(14);
        m5780m();
    }
}
