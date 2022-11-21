package p144o7;
/* renamed from: o7.f1 */
/* loaded from: classes2.dex */
public final class C5133f1 implements InterfaceC5201q0 {

    /* renamed from: a */
    public final InterfaceC5210s0 f19415a;

    /* renamed from: b */
    public final String f19416b;

    /* renamed from: c */
    public final Object[] f19417c;

    /* renamed from: d */
    public final int f19418d;

    @Override // p144o7.InterfaceC5201q0
    /* renamed from: a */
    public boolean mo14142a() {
        return (this.f19418d & 2) == 2;
    }

    @Override // p144o7.InterfaceC5201q0
    /* renamed from: b */
    public InterfaceC5210s0 mo14141b() {
        return this.f19415a;
    }

    @Override // p144o7.InterfaceC5201q0
    /* renamed from: c */
    public EnumC5119c1 mo14140c() {
        return (this.f19418d & 1) == 1 ? EnumC5119c1.PROTO2 : EnumC5119c1.PROTO3;
    }

    /* renamed from: d */
    public Object[] m14570d() {
        return this.f19417c;
    }

    /* renamed from: e */
    public String m14569e() {
        return this.f19416b;
    }

    public C5133f1(InterfaceC5210s0 interfaceC5210s0, String str, Object[] objArr) {
        this.f19415a = interfaceC5210s0;
        this.f19416b = str;
        this.f19417c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f19418d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char charAt2 = str.charAt(i3);
            if (charAt2 >= 55296) {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            } else {
                this.f19418d = i | (charAt2 << i2);
                return;
            }
        }
    }
}
