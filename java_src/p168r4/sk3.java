package p168r4;
/* renamed from: r4.sk3 */
/* loaded from: classes2.dex */
public final class sk3 {

    /* renamed from: a */
    public final byte[] f31388a = new byte[256];

    /* renamed from: b */
    public int f31389b;

    /* renamed from: c */
    public int f31390c;

    /* renamed from: a */
    public final void m7147a(byte[] bArr) {
        int i = this.f31389b;
        int i2 = this.f31390c;
        for (int i3 = 0; i3 < 256; i3++) {
            i = (i + 1) & 255;
            byte[] bArr2 = this.f31388a;
            byte b = bArr2[i];
            i2 = (i2 + b) & 255;
            bArr2[i] = bArr2[i2];
            bArr2[i2] = b;
            bArr[i3] = (byte) (bArr2[(bArr2[i] + b) & 255] ^ bArr[i3]);
        }
        this.f31389b = i;
        this.f31390c = i2;
    }

    public sk3(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.f31388a[i] = (byte) i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            byte[] bArr2 = this.f31388a;
            byte b = bArr2[i3];
            i2 = (i2 + b + bArr[i3 % bArr.length]) & 255;
            bArr2[i3] = bArr2[i2];
            bArr2[i2] = b;
        }
        this.f31389b = 0;
        this.f31390c = 0;
    }
}
