package p168r4;
/* renamed from: r4.l93 */
/* loaded from: classes2.dex */
public final class l93 {

    /* renamed from: a */
    public final zg3 f27144a;

    public l93(zg3 zg3Var) {
        this.f27144a = zg3Var;
    }

    /* renamed from: a */
    public final String m9764a() {
        return this.f27144a.m4256C();
    }

    /* renamed from: b */
    public final byte[] m9763b() {
        return this.f27144a.m4255D().m9626R();
    }

    /* renamed from: c */
    public static l93 m9762c(String str, byte[] bArr, int i) {
        int i2;
        yg3 m4254E = zg3.m4254E();
        m4254E.m4721v(str);
        m4254E.m4720x(ll3.m9632I(bArr));
        int i3 = i - 1;
        if (i3 != 0) {
            if (i3 != 1) {
                i2 = 5;
            } else {
                i2 = 4;
            }
        } else {
            i2 = 3;
        }
        m4254E.m4719z(i2);
        return new l93(m4254E.m9614o());
    }

    /* renamed from: d */
    public final int m9761d() {
        int m4249M = this.f27144a.m4249M() - 2;
        int i = 1;
        if (m4249M != 1) {
            i = 2;
            if (m4249M != 2) {
                i = 3;
                if (m4249M != 3) {
                    if (m4249M == 4) {
                        return 4;
                    }
                    throw new IllegalArgumentException("Unknown output prefix type");
                }
            }
        }
        return i;
    }
}
