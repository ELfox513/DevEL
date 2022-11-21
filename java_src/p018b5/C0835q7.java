package p018b5;
/* renamed from: b5.q7 */
/* loaded from: classes2.dex */
public final class C0835q7 extends C0886t7 {

    /* renamed from: q */
    public final int f2168q;

    @Override // p018b5.C0886t7, p018b5.AbstractC0937w7
    /* renamed from: e */
    public final byte mo25038e(int i) {
        return this.f2316p[i];
    }

    @Override // p018b5.C0886t7, p018b5.AbstractC0937w7
    /* renamed from: g */
    public final int mo25037g() {
        return this.f2168q;
    }

    @Override // p018b5.C0886t7
    /* renamed from: v */
    public final int mo25114v() {
        return 0;
    }

    @Override // p018b5.C0886t7, p018b5.AbstractC0937w7
    /* renamed from: d */
    public final byte mo25039d(int i) {
        int i2 = this.f2168q;
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                StringBuilder sb = new StringBuilder(22);
                sb.append("Index < 0: ");
                sb.append(i);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            }
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Index > length: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            throw new ArrayIndexOutOfBoundsException(sb2.toString());
        }
        return this.f2316p[i];
    }

    public C0835q7(byte[] bArr, int i, int i2) {
        super(bArr);
        AbstractC0937w7.m25031q(0, i2, bArr.length);
        this.f2168q = i2;
    }
}
