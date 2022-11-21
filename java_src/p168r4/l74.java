package p168r4;
/* renamed from: r4.l74 */
/* loaded from: classes2.dex */
public final class l74 implements z04 {

    /* renamed from: a */
    public final i74 f27118a;

    /* renamed from: b */
    public final int f27119b;

    /* renamed from: c */
    public final long f27120c;

    /* renamed from: d */
    public final long f27121d;

    /* renamed from: e */
    public final long f27122e;

    @Override // p168r4.z04
    /* renamed from: c */
    public final boolean mo4487c() {
        return true;
    }

    /* renamed from: e */
    public final long m9780e(long j) {
        return C5979lc.m9698h(j * this.f27119b, 1000000L, this.f27118a.f25001c);
    }

    @Override // p168r4.z04
    /* renamed from: g */
    public final long mo4486g() {
        return this.f27122e;
    }

    @Override // p168r4.z04
    /* renamed from: a */
    public final x04 mo4488a(long j) {
        long m9703d0 = C5979lc.m9703d0((this.f27118a.f25001c * j) / (this.f27119b * 1000000), 0L, this.f27121d - 1);
        long j2 = this.f27120c;
        int i = this.f27118a.f25002d;
        long m9780e = m9780e(m9703d0);
        a14 a14Var = new a14(m9780e, j2 + (i * m9703d0));
        if (m9780e < j && m9703d0 != this.f27121d - 1) {
            long j3 = m9703d0 + 1;
            return new x04(a14Var, new a14(m9780e(j3), this.f27120c + (j3 * this.f27118a.f25002d)));
        }
        return new x04(a14Var, a14Var);
    }

    public l74(i74 i74Var, int i, long j, long j2) {
        this.f27118a = i74Var;
        this.f27119b = i;
        this.f27120c = j;
        long j3 = (j2 - j) / i74Var.f25002d;
        this.f27121d = j3;
        this.f27122e = m9780e(j3);
    }
}
