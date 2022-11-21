package p237z4;
/* renamed from: z4.w */
/* loaded from: classes2.dex */
public final class C7722w extends AbstractC7714u {

    /* renamed from: d */
    public final byte[] f37900d;

    /* renamed from: e */
    public final boolean f37901e;

    /* renamed from: f */
    public int f37902f;

    /* renamed from: g */
    public int f37903g;

    /* renamed from: h */
    public int f37904h;

    /* renamed from: i */
    public int f37905i;

    /* renamed from: j */
    public int f37906j;

    public C7722w(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.f37906j = Integer.MAX_VALUE;
        this.f37900d = bArr;
        this.f37902f = i2 + i;
        this.f37904h = i;
        this.f37905i = i;
        this.f37901e = z;
    }

    @Override // p237z4.AbstractC7714u
    /* renamed from: b */
    public final int mo555b() {
        return this.f37904h - this.f37905i;
    }

    @Override // p237z4.AbstractC7714u
    /* renamed from: c */
    public final int mo554c(int i) {
        if (i >= 0) {
            int mo555b = i + mo555b();
            int i2 = this.f37906j;
            if (mo555b <= i2) {
                this.f37906j = mo555b;
                int i3 = this.f37902f + this.f37903g;
                this.f37902f = i3;
                int i4 = i3 - this.f37905i;
                if (i4 > mo555b) {
                    int i5 = i4 - mo555b;
                    this.f37903g = i5;
                    this.f37902f = i3 - i5;
                } else {
                    this.f37903g = 0;
                }
                return i2;
            }
            throw C7702r0.m614a();
        }
        throw C7702r0.m613b();
    }
}
