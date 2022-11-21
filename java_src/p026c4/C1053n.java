package p026c4;

import androidx.annotation.RecentlyNonNull;
/* renamed from: c4.n */
/* loaded from: classes.dex */
public class C1053n {
    /* renamed from: a */
    public static int m24741a(@RecentlyNonNull byte[] bArr, int i, int i2, int i3) {
        int i4 = (i2 & (-4)) + i;
        while (i < i4) {
            int i5 = ((bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | (bArr[i + 3] << 24)) * (-862048943);
            int i6 = i3 ^ (((i5 << 15) | (i5 >>> 17)) * 461845907);
            i3 = (((i6 >>> 19) | (i6 << 13)) * 5) - 430675100;
            i += 4;
        }
        int i7 = i2 & 3;
        int i8 = 0;
        if (i7 != 1) {
            if (i7 != 2) {
                if (i7 == 3) {
                    i8 = (bArr[i4 + 2] & 255) << 16;
                }
                int i9 = i3 ^ i2;
                int i10 = (i9 ^ (i9 >>> 16)) * (-2048144789);
                int i11 = (i10 ^ (i10 >>> 13)) * (-1028477387);
                return i11 ^ (i11 >>> 16);
            }
            i8 |= (bArr[i4 + 1] & 255) << 8;
        }
        int i12 = ((bArr[i4] & 255) | i8) * (-862048943);
        i3 ^= ((i12 >>> 17) | (i12 << 15)) * 461845907;
        int i92 = i3 ^ i2;
        int i102 = (i92 ^ (i92 >>> 16)) * (-2048144789);
        int i112 = (i102 ^ (i102 >>> 13)) * (-1028477387);
        return i112 ^ (i112 >>> 16);
    }
}
