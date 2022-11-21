package p168r4;
/* renamed from: r4.ko3 */
/* loaded from: classes2.dex */
public final class ko3 implements xn3 {

    /* renamed from: a */
    public final ao3 f26504a;

    /* renamed from: b */
    public final String f26505b;

    /* renamed from: c */
    public final Object[] f26506c;

    /* renamed from: d */
    public final int f26507d;

    @Override // p168r4.xn3
    /* renamed from: a */
    public final ao3 mo5239a() {
        return this.f26504a;
    }

    @Override // p168r4.xn3
    /* renamed from: b */
    public final int mo5238b() {
        return (this.f26507d & 1) == 1 ? 1 : 2;
    }

    /* renamed from: c */
    public final String m9966c() {
        return this.f26505b;
    }

    /* renamed from: d */
    public final Object[] m9965d() {
        return this.f26506c;
    }

    @Override // p168r4.xn3
    public final boolean zza() {
        return (this.f26507d & 2) == 2;
    }

    public ko3(ao3 ao3Var, String str, Object[] objArr) {
        this.f26504a = ao3Var;
        this.f26505b = str;
        this.f26506c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f26507d = charAt;
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
                this.f26507d = i | (charAt2 << i2);
                return;
            }
        }
    }
}
