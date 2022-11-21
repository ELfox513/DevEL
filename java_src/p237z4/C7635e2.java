package p237z4;

import p237z4.AbstractC7673m0;
/* renamed from: z4.e2 */
/* loaded from: classes2.dex */
public final class C7635e2 implements InterfaceC7693p1 {

    /* renamed from: a */
    public final InterfaceC7703r1 f37675a;

    /* renamed from: b */
    public final String f37676b;

    /* renamed from: c */
    public final Object[] f37677c;

    /* renamed from: d */
    public final int f37678d;

    @Override // p237z4.InterfaceC7693p1
    /* renamed from: a */
    public final int mo595a() {
        return (this.f37678d & 1) == 1 ? AbstractC7673m0.C7677d.f37820i : AbstractC7673m0.C7677d.f37821j;
    }

    @Override // p237z4.InterfaceC7693p1
    /* renamed from: b */
    public final boolean mo594b() {
        return (this.f37678d & 2) == 2;
    }

    @Override // p237z4.InterfaceC7693p1
    /* renamed from: c */
    public final InterfaceC7703r1 mo593c() {
        return this.f37675a;
    }

    /* renamed from: d */
    public final String m808d() {
        return this.f37676b;
    }

    /* renamed from: e */
    public final Object[] m807e() {
        return this.f37677c;
    }

    public C7635e2(InterfaceC7703r1 interfaceC7703r1, String str, Object[] objArr) {
        this.f37675a = interfaceC7703r1;
        this.f37676b = str;
        this.f37677c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f37678d = charAt;
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
                this.f37678d = i | (charAt2 << i2);
                return;
            }
        }
    }
}
