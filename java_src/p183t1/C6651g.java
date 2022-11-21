package p183t1;
/* renamed from: t1.g */
/* loaded from: classes.dex */
public final class C6651g extends AbstractC6650f {

    /* renamed from: g */
    public final Object f35248g;

    /* renamed from: h */
    public final int f35249h;

    /* renamed from: i */
    public final int f35250i;

    public C6651g(EnumC6654j enumC6654j, int i, Object obj, int i2, int i3) {
        super(enumC6654j, i, 0, null, 0, 0L);
        this.f35248g = obj;
        this.f35249h = i2;
        this.f35250i = i3;
    }

    @Override // p183t1.AbstractC6650f
    /* renamed from: C */
    public AbstractC6650f mo3615C(int i) {
        throw new UnsupportedOperationException("no index in instruction");
    }

    /* renamed from: E */
    public Object m3684E() {
        return this.f35248g;
    }

    /* renamed from: F */
    public short m3683F() {
        return (short) this.f35250i;
    }

    /* renamed from: G */
    public int m3682G() {
        return this.f35249h;
    }

    @Override // p183t1.AbstractC6650f
    /* renamed from: x */
    public int mo3614x() {
        return 0;
    }

    public C6651g(EnumC6654j enumC6654j, int i, byte[] bArr) {
        this(enumC6654j, i, bArr, bArr.length, 1);
    }

    public C6651g(EnumC6654j enumC6654j, int i, short[] sArr) {
        this(enumC6654j, i, sArr, sArr.length, 2);
    }

    public C6651g(EnumC6654j enumC6654j, int i, int[] iArr) {
        this(enumC6654j, i, iArr, iArr.length, 4);
    }

    public C6651g(EnumC6654j enumC6654j, int i, long[] jArr) {
        this(enumC6654j, i, jArr, jArr.length, 8);
    }
}
