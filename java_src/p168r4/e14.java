package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: r4.e14 */
/* loaded from: classes2.dex */
public final class e14 {

    /* renamed from: a */
    public final byte[] f22739a;

    /* renamed from: b */
    public final int f22740b;

    /* renamed from: c */
    public int f22741c;

    /* renamed from: d */
    public int f22742d;

    public e14(byte[] bArr) {
        this.f22739a = bArr;
        this.f22740b = bArr.length;
    }

    /* renamed from: c */
    public final void m11878c(int i) {
        int i2;
        int i3 = i / 8;
        int i4 = this.f22741c + i3;
        this.f22741c = i4;
        int i5 = this.f22742d + (i - (i3 * 8));
        this.f22742d = i5;
        if (i5 > 7) {
            i4++;
            this.f22741c = i4;
            i5 -= 8;
            this.f22742d = i5;
        }
        boolean z = false;
        if (i4 >= 0 && (i4 < (i2 = this.f22740b) || (i4 == i2 && i5 == 0))) {
            z = true;
        }
        C5903ja.m10371d(z);
    }

    /* renamed from: d */
    public final int m11877d() {
        return (this.f22741c * 8) + this.f22742d;
    }

    /* renamed from: a */
    public final boolean m11880a() {
        byte b = this.f22739a[this.f22741c];
        int i = this.f22742d;
        m11878c(1);
        if (1 == (((b & DefaultClassResolver.NAME) >> i) & 1)) {
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public final int m11879b(int i) {
        int i2 = this.f22741c;
        int min = Math.min(i, 8 - this.f22742d);
        int i3 = i2 + 1;
        int i4 = ((this.f22739a[i2] & DefaultClassResolver.NAME) >> this.f22742d) & (255 >> (8 - min));
        while (min < i) {
            i4 |= (this.f22739a[i3] & DefaultClassResolver.NAME) << min;
            min += 8;
            i3++;
        }
        m11878c(i);
        return ((-1) >>> (32 - i)) & i4;
    }
}
