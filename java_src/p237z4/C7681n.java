package p237z4;
/* renamed from: z4.n */
/* loaded from: classes2.dex */
public final class C7681n extends C7706s {

    /* renamed from: q */
    public final int f37828q;

    /* renamed from: r */
    public final int f37829r;

    @Override // p237z4.C7706s, p237z4.AbstractC7652i
    public final int size() {
        return this.f37829r;
    }

    @Override // p237z4.C7706s, p237z4.AbstractC7652i
    /* renamed from: u */
    public final byte mo601u(int i) {
        return this.f37862p[this.f37828q + i];
    }

    @Override // p237z4.C7706s
    /* renamed from: x */
    public final int mo599x() {
        return this.f37828q;
    }

    public C7681n(byte[] bArr, int i, int i2) {
        super(bArr);
        AbstractC7652i.m701m(i, i + i2, bArr.length);
        this.f37828q = i;
        this.f37829r = i2;
    }

    @Override // p237z4.C7706s, p237z4.AbstractC7652i
    /* renamed from: t */
    public final byte mo602t(int i) {
        int size = size();
        if (((size - (i + 1)) | i) < 0) {
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
            sb2.append(size);
            throw new ArrayIndexOutOfBoundsException(sb2.toString());
        }
        return this.f37862p[this.f37828q + i];
    }
}
