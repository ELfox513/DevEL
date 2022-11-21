package p168r4;
/* renamed from: r4.tj3 */
/* loaded from: classes2.dex */
public final class tj3 {

    /* renamed from: a */
    public final byte[] f31878a;

    public tj3(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.f31878a = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i2);
    }

    /* renamed from: a */
    public static tj3 m6805a(byte[] bArr, int i, int i2) {
        return new tj3(bArr, 0, i2);
    }

    /* renamed from: b */
    public final byte[] m6804b() {
        byte[] bArr = this.f31878a;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }
}
