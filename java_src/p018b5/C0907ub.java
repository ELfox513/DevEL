package p018b5;
/* renamed from: b5.ub */
/* loaded from: classes2.dex */
public final class C0907ub extends AbstractC0890tb {
    @Override // p018b5.AbstractC0890tb
    /* renamed from: a */
    public final int mo25092a(int i, byte[] bArr, int i2, int i3) {
        while (i2 < i3 && bArr[i2] >= 0) {
            i2++;
        }
        if (i2 >= i3) {
            return 0;
        }
        while (i2 < i3) {
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b < 0) {
                if (b < -32) {
                    if (i4 < i3) {
                        if (b >= -62) {
                            i2 = i4 + 1;
                            if (bArr[i4] > -65) {
                            }
                        }
                        return -1;
                    }
                    return b;
                }
                if (b < -16) {
                    if (i4 >= i3 - 1) {
                        return C0941wb.m25024a(bArr, i4, i3);
                    }
                    int i5 = i4 + 1;
                    byte b2 = bArr[i4];
                    if (b2 <= -65 && ((b != -32 || b2 >= -96) && (b != -19 || b2 < -96))) {
                        i2 = i5 + 1;
                        if (bArr[i5] > -65) {
                        }
                    }
                } else if (i4 >= i3 - 2) {
                    return C0941wb.m25024a(bArr, i4, i3);
                } else {
                    int i6 = i4 + 1;
                    byte b3 = bArr[i4];
                    if (b3 <= -65 && (((b << 28) + (b3 + 112)) >> 30) == 0) {
                        int i7 = i6 + 1;
                        if (bArr[i6] <= -65) {
                            i4 = i7 + 1;
                            if (bArr[i7] > -65) {
                            }
                        }
                    }
                }
                return -1;
            }
            i2 = i4;
        }
        return 0;
    }
}
