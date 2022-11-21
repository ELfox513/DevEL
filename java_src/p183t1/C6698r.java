package p183t1;
/* renamed from: t1.r */
/* loaded from: classes.dex */
public final class C6698r extends AbstractC6650f {

    /* renamed from: g */
    public final int[] f35309g;

    /* renamed from: h */
    public final int[] f35310h;

    public C6698r(EnumC6654j enumC6654j, int i, int[] iArr, int[] iArr2) {
        super(enumC6654j, i, 0, null, 0, 0L);
        if (iArr.length == iArr2.length) {
            this.f35309g = iArr;
            this.f35310h = iArr2;
            return;
        }
        throw new IllegalArgumentException("keys/targets length mismatch");
    }

    @Override // p183t1.AbstractC6650f
    /* renamed from: C */
    public AbstractC6650f mo3615C(int i) {
        throw new UnsupportedOperationException("no index in instruction");
    }

    /* renamed from: E */
    public int[] m3620E() {
        return this.f35309g;
    }

    /* renamed from: F */
    public int[] m3619F() {
        return this.f35310h;
    }

    @Override // p183t1.AbstractC6650f
    /* renamed from: x */
    public int mo3614x() {
        return 0;
    }
}
