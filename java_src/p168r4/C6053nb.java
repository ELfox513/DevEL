package p168r4;

import java.util.Arrays;
/* renamed from: r4.nb */
/* loaded from: classes2.dex */
public final class C6053nb {

    /* renamed from: a */
    public static final byte[] f28240a = {0, 0, 0, 1};

    /* renamed from: b */
    public static final float[] f28241b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c */
    public static final Object f28242c = new Object();

    /* renamed from: d */
    public static int[] f28243d = new int[10];

    /* renamed from: e */
    public static void m9130e(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    /* renamed from: a */
    public static int m9134a(byte[] bArr, int i) {
        int i2;
        synchronized (f28242c) {
            int i3 = 0;
            int i4 = 0;
            while (i3 < i) {
                while (true) {
                    if (i3 < i - 2) {
                        try {
                            if (bArr[i3] == 0 && bArr[i3 + 1] == 0 && bArr[i3 + 2] == 3) {
                                break;
                            }
                            i3++;
                        } catch (Throwable th) {
                            throw th;
                        }
                    } else {
                        i3 = i;
                        break;
                    }
                }
                if (i3 < i) {
                    int[] iArr = f28243d;
                    if (iArr.length <= i4) {
                        int length = iArr.length;
                        f28243d = Arrays.copyOf(iArr, length + length);
                    }
                    f28243d[i4] = i3;
                    i3 += 3;
                    i4++;
                }
            }
            i2 = i - i4;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < i4; i7++) {
                int i8 = f28243d[i7] - i5;
                System.arraycopy(bArr, i5, bArr, i6, i8);
                int i9 = i6 + i8;
                int i10 = i9 + 1;
                bArr[i9] = 0;
                i6 = i10 + 1;
                bArr[i10] = 0;
                i5 += i8 + 3;
            }
            System.arraycopy(bArr, i5, bArr, i6, i2 - i6);
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0168  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p168r4.C6015mb m9133b(byte[] r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6053nb.m9133b(byte[], int, int):r4.mb");
    }

    /* renamed from: c */
    public static C5978lb m9132c(byte[] bArr, int i, int i2) {
        C6460yb c6460yb = new C6460yb(bArr, 3, i2);
        c6460yb.m4790c(8);
        int m4787f = c6460yb.m4787f();
        int m4787f2 = c6460yb.m4787f();
        c6460yb.m4791b();
        return new C5978lb(m4787f, m4787f2, c6460yb.m4789d());
    }

    /* renamed from: d */
    public static int m9131d(byte[] bArr, int i, int i2, boolean[] zArr) {
        boolean z;
        boolean z2;
        boolean z3;
        int i3 = i2 - i;
        boolean z4 = false;
        if (i3 >= 0) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10371d(z);
        if (i3 == 0) {
            return i2;
        }
        if (zArr[0]) {
            m9130e(zArr);
            return i - 3;
        } else if (i3 > 1 && zArr[1] && bArr[i] == 1) {
            m9130e(zArr);
            return i - 2;
        } else if (i3 > 2 && zArr[2] && bArr[i] == 0 && bArr[i + 1] == 1) {
            m9130e(zArr);
            return i - 1;
        } else {
            int i4 = i2 - 1;
            int i5 = i + 2;
            while (i5 < i4) {
                byte b = bArr[i5];
                if ((b & 254) == 0) {
                    int i6 = i5 - 2;
                    if (bArr[i6] == 0 && bArr[i5 - 1] == 0 && b == 1) {
                        m9130e(zArr);
                        return i6;
                    }
                    i5 = i6;
                }
                i5 += 3;
            }
            if (i3 <= 2 ? i3 != 2 ? !zArr[1] || bArr[i4] != 1 : !zArr[2] || bArr[i2 - 2] != 0 || bArr[i4] != 1 : bArr[i2 - 3] != 0 || bArr[i2 - 2] != 0 || bArr[i4] != 1) {
                z2 = false;
            } else {
                z2 = true;
            }
            zArr[0] = z2;
            if (i3 <= 1 ? !(!zArr[2] || bArr[i4] != 0) : !(bArr[i2 - 2] != 0 || bArr[i4] != 0)) {
                z3 = true;
            } else {
                z3 = false;
            }
            zArr[1] = z3;
            if (bArr[i4] == 0) {
                z4 = true;
            }
            zArr[2] = z4;
            return i2;
        }
    }
}
