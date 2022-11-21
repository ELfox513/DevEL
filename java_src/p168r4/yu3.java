package p168r4;

import java.util.Arrays;
import java.util.Random;
/* renamed from: r4.yu3 */
/* loaded from: classes2.dex */
public final class yu3 {

    /* renamed from: a */
    public final Random f34225a;

    /* renamed from: b */
    public final int[] f34226b;

    /* renamed from: c */
    public final int[] f34227c;

    public yu3(int i) {
        this(0, new Random());
    }

    /* renamed from: a */
    public final int m4557a() {
        return this.f34226b.length;
    }

    /* renamed from: d */
    public final int m4554d() {
        int[] iArr = this.f34226b;
        int length = iArr.length;
        if (length > 0) {
            return iArr[length - 1];
        }
        return -1;
    }

    /* renamed from: e */
    public final int m4553e() {
        int[] iArr = this.f34226b;
        if (iArr.length > 0) {
            return iArr[0];
        }
        return -1;
    }

    /* renamed from: h */
    public final yu3 m4550h() {
        return new yu3(0, new Random(this.f34225a.nextLong()));
    }

    public yu3(int i, Random random) {
        this(new int[0], random);
    }

    /* renamed from: b */
    public final int m4556b(int i) {
        int i2 = this.f34227c[i] + 1;
        int[] iArr = this.f34226b;
        if (i2 < iArr.length) {
            return iArr[i2];
        }
        return -1;
    }

    /* renamed from: c */
    public final int m4555c(int i) {
        int i2 = this.f34227c[i] - 1;
        if (i2 < 0) {
            return -1;
        }
        return this.f34226b[i2];
    }

    /* renamed from: f */
    public final yu3 m4552f(int i, int i2) {
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        int i3 = 0;
        int i4 = 0;
        while (i4 < i2) {
            iArr[i4] = this.f34225a.nextInt(this.f34226b.length + 1);
            int i5 = i4 + 1;
            int nextInt = this.f34225a.nextInt(i5);
            iArr2[i4] = iArr2[nextInt];
            iArr2[nextInt] = i4;
            i4 = i5;
        }
        Arrays.sort(iArr);
        int[] iArr3 = new int[this.f34226b.length + i2];
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int[] iArr4 = this.f34226b;
            if (i3 < iArr4.length + i2) {
                if (i6 < i2 && i7 == iArr[i6]) {
                    iArr3[i3] = iArr2[i6];
                    i6++;
                } else {
                    int i8 = i7 + 1;
                    int i9 = iArr4[i7];
                    iArr3[i3] = i9;
                    if (i9 >= 0) {
                        iArr3[i3] = i9 + i2;
                    }
                    i7 = i8;
                }
                i3++;
            } else {
                return new yu3(iArr3, new Random(this.f34225a.nextLong()));
            }
        }
    }

    /* renamed from: g */
    public final yu3 m4551g(int i, int i2) {
        int[] iArr = new int[this.f34226b.length - i2];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int[] iArr2 = this.f34226b;
            if (i3 < iArr2.length) {
                int i5 = iArr2[i3];
                if (i5 >= 0 && i5 < i2) {
                    i4++;
                } else {
                    int i6 = i3 - i4;
                    if (i5 >= 0) {
                        i5 -= i2;
                    }
                    iArr[i6] = i5;
                }
                i3++;
            } else {
                return new yu3(iArr, new Random(this.f34225a.nextLong()));
            }
        }
    }

    public yu3(int[] iArr, Random random) {
        this.f34226b = iArr;
        this.f34225a = random;
        this.f34227c = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            this.f34227c[iArr[i]] = i;
        }
    }
}
