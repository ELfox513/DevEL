package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: r4.cl */
/* loaded from: classes2.dex */
public final class C5655cl {

    /* renamed from: a */
    public byte[] f21572a;

    /* renamed from: b */
    public int f21573b;

    /* renamed from: c */
    public int f21574c;

    /* renamed from: d */
    public int f21575d;

    public C5655cl(byte[] bArr, int i) {
        this.f21572a = bArr;
        this.f21575d = i;
    }

    /* renamed from: a */
    public final int m12443a(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = i >> 3;
        boolean z = false;
        int i7 = 0;
        for (int i8 = 0; i8 < i6; i8++) {
            int i9 = this.f21574c;
            if (i9 != 0) {
                byte[] bArr = this.f21572a;
                int i10 = this.f21573b;
                i5 = ((bArr[i10 + 1] & DefaultClassResolver.NAME) >>> (8 - i9)) | ((bArr[i10] & DefaultClassResolver.NAME) << i9);
            } else {
                i5 = this.f21572a[this.f21573b];
            }
            i -= 8;
            i7 |= (255 & i5) << i;
            this.f21573b++;
        }
        if (i > 0) {
            int i11 = this.f21574c + i;
            byte b = (byte) (255 >> (8 - i));
            if (i11 > 8) {
                byte[] bArr2 = this.f21572a;
                int i12 = this.f21573b;
                int i13 = i12 + 1;
                i4 = (b & (((255 & bArr2[i13]) >> (16 - i11)) | ((bArr2[i12] & DefaultClassResolver.NAME) << (i11 - 8)))) | i7;
                this.f21573b = i13;
            } else {
                byte[] bArr3 = this.f21572a;
                int i14 = this.f21573b;
                i4 = (b & ((255 & bArr3[i14]) >> (8 - i11))) | i7;
                if (i11 == 8) {
                    this.f21573b = i14 + 1;
                }
            }
            i7 = i4;
            this.f21574c = i11 % 8;
        }
        int i15 = this.f21573b;
        if (i15 >= 0 && (i2 = this.f21574c) >= 0 && (i15 < (i3 = this.f21575d) || (i15 == i3 && i2 == 0))) {
            z = true;
        }
        C6358vk.m6137d(z);
        return i7;
    }
}
