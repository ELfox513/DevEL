package p168r4;

import java.util.Arrays;
/* renamed from: r4.ek3 */
/* loaded from: classes2.dex */
public final class ek3 extends yi3 {
    public ek3(byte[] bArr, int i) {
        super(bArr, i);
    }

    @Override // p168r4.yi3
    /* renamed from: b */
    public final int[] mo4689b(int[] iArr, int i) {
        int length = iArr.length;
        if (length == 6) {
            int[] iArr2 = new int[16];
            yi3.m4685f(r0, this.f34100a);
            int[] iArr3 = {0, 0, 0, 0, iArr3[12], iArr3[13], iArr3[14], iArr3[15], 0, 0, 0, 0, iArr[0], iArr[1], iArr[2], iArr[3]};
            yi3.m4684g(iArr3);
            yi3.m4685f(iArr2, Arrays.copyOf(iArr3, 8));
            iArr2[12] = i;
            iArr2[13] = 0;
            iArr2[14] = iArr[4];
            iArr2[15] = iArr[5];
            return iArr2;
        }
        throw new IllegalArgumentException(String.format("XChaCha20 uses 192-bit nonces, but got a %d-bit nonce", Integer.valueOf(length * 32)));
    }

    @Override // p168r4.yi3
    /* renamed from: c */
    public final int mo4688c() {
        return 24;
    }
}
