package p168r4;
/* renamed from: r4.xi3 */
/* loaded from: classes2.dex */
public final class xi3 extends yi3 {
    public xi3(byte[] bArr, int i) {
        super(bArr, i);
    }

    @Override // p168r4.yi3
    /* renamed from: b */
    public final int[] mo4689b(int[] iArr, int i) {
        int length = iArr.length;
        if (length == 3) {
            int[] iArr2 = new int[16];
            yi3.m4685f(iArr2, this.f34100a);
            iArr2[12] = i;
            System.arraycopy(iArr, 0, iArr2, 13, 3);
            return iArr2;
        }
        throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(length * 32)));
    }

    @Override // p168r4.yi3
    /* renamed from: c */
    public final int mo4688c() {
        return 12;
    }
}
