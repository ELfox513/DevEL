package p183t1;

import p174s1.EnumC6573b;
/* renamed from: t1.l */
/* loaded from: classes.dex */
public class C6692l extends AbstractC6650f {

    /* renamed from: g */
    public final int f35299g;

    /* renamed from: h */
    public final int f35300h;

    /* renamed from: i */
    public final int f35301i;

    public C6692l(EnumC6654j enumC6654j, int i, int i2, EnumC6573b enumC6573b, int i3, int i4, int i5) {
        super(enumC6654j, i, i2, enumC6573b, 0, 0L);
        if (i5 == ((short) i5)) {
            this.f35299g = i3;
            this.f35300h = i4;
            this.f35301i = i5;
            return;
        }
        throw new IllegalArgumentException("protoIndex doesn't fit in a short: " + i5);
    }

    @Override // p183t1.AbstractC6650f
    /* renamed from: C */
    public AbstractC6650f mo3615C(int i) {
        throw new UnsupportedOperationException("use withProtoIndex to update both the method and proto indices for invoke-polymorphic/range");
    }

    @Override // p183t1.AbstractC6650f
    /* renamed from: h */
    public int mo3618h() {
        return this.f35299g;
    }

    @Override // p183t1.AbstractC6650f
    /* renamed from: w */
    public short mo3634w() {
        return (short) this.f35301i;
    }

    @Override // p183t1.AbstractC6650f
    /* renamed from: x */
    public int mo3614x() {
        return this.f35300h;
    }

    @Override // p183t1.AbstractC6650f
    /* renamed from: D */
    public AbstractC6650f mo3635D(int i, int i2) {
        return new C6692l(m3697l(), m3688u(), i, m3695n(), this.f35299g, this.f35300h, i2);
    }
}
