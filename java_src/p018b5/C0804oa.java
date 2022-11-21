package p018b5;
/* renamed from: b5.oa */
/* loaded from: classes2.dex */
public final class C0804oa implements InterfaceC0583ba {

    /* renamed from: a */
    public final InterfaceC0634ea f2089a;

    /* renamed from: b */
    public final String f2090b;

    /* renamed from: c */
    public final Object[] f2091c;

    /* renamed from: d */
    public final int f2092d;

    @Override // p018b5.InterfaceC0583ba
    /* renamed from: a */
    public final boolean mo25551a() {
        return (this.f2092d & 2) == 2;
    }

    @Override // p018b5.InterfaceC0583ba
    /* renamed from: b */
    public final int mo25550b() {
        return (this.f2092d & 1) == 1 ? 1 : 2;
    }

    /* renamed from: c */
    public final String m25549c() {
        return this.f2090b;
    }

    /* renamed from: d */
    public final Object[] m25548d() {
        return this.f2091c;
    }

    @Override // p018b5.InterfaceC0583ba
    public final InterfaceC0634ea zza() {
        return this.f2089a;
    }

    public C0804oa(InterfaceC0634ea interfaceC0634ea, String str, Object[] objArr) {
        this.f2089a = interfaceC0634ea;
        this.f2090b = str;
        this.f2091c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f2092d = charAt;
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
                this.f2092d = i | (charAt2 << i2);
                return;
            }
        }
    }
}
