package p183t1;

import p174s1.EnumC6573b;
/* renamed from: t1.k */
/* loaded from: classes.dex */
public class C6691k extends AbstractC6650f {

    /* renamed from: g */
    public final int f35297g;

    /* renamed from: h */
    public final int[] f35298h;

    public C6691k(EnumC6654j enumC6654j, int i, int i2, EnumC6573b enumC6573b, int i3, int[] iArr) {
        super(enumC6654j, i, i2, enumC6573b, 0, 0L);
        if (i3 == ((short) i3)) {
            this.f35297g = i3;
            this.f35298h = iArr;
            return;
        }
        throw new IllegalArgumentException("protoIndex doesn't fit in a short: " + i3);
    }

    @Override // p183t1.AbstractC6650f
    /* renamed from: C */
    public AbstractC6650f mo3615C(int i) {
        throw new UnsupportedOperationException("use withProtoIndex to update both the method and proto indices for invoke-polymorphic");
    }

    /* renamed from: E */
    public int m3639E() {
        int[] iArr = this.f35298h;
        if (iArr.length > 3) {
            return iArr[3];
        }
        return 0;
    }

    /* renamed from: F */
    public int m3638F() {
        int[] iArr = this.f35298h;
        if (iArr.length > 4) {
            return iArr[4];
        }
        return 0;
    }

    @Override // p183t1.AbstractC6650f
    /* renamed from: h */
    public int mo3618h() {
        int[] iArr = this.f35298h;
        if (iArr.length > 0) {
            return iArr[0];
        }
        return 0;
    }

    @Override // p183t1.AbstractC6650f
    /* renamed from: j */
    public int mo3637j() {
        int[] iArr = this.f35298h;
        if (iArr.length > 1) {
            return iArr[1];
        }
        return 0;
    }

    @Override // p183t1.AbstractC6650f
    /* renamed from: k */
    public int mo3636k() {
        int[] iArr = this.f35298h;
        if (iArr.length > 2) {
            return iArr[2];
        }
        return 0;
    }

    @Override // p183t1.AbstractC6650f
    /* renamed from: w */
    public short mo3634w() {
        return (short) this.f35297g;
    }

    @Override // p183t1.AbstractC6650f
    /* renamed from: x */
    public int mo3614x() {
        return this.f35298h.length;
    }

    @Override // p183t1.AbstractC6650f
    /* renamed from: D */
    public AbstractC6650f mo3635D(int i, int i2) {
        return new C6691k(m3697l(), m3688u(), i, m3695n(), i2, this.f35298h);
    }
}
