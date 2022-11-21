package p168r4;
/* renamed from: r4.d24 */
/* loaded from: classes2.dex */
public final class d24 implements z04 {

    /* renamed from: a */
    public final /* synthetic */ z04 f22061a;

    /* renamed from: b */
    public final /* synthetic */ e24 f22062b;

    public d24(e24 e24Var, z04 z04Var) {
        this.f22062b = e24Var;
        this.f22061a = z04Var;
    }

    @Override // p168r4.z04
    /* renamed from: c */
    public final boolean mo4487c() {
        return this.f22061a.mo4487c();
    }

    @Override // p168r4.z04
    /* renamed from: g */
    public final long mo4486g() {
        return this.f22061a.mo4486g();
    }

    @Override // p168r4.z04
    /* renamed from: a */
    public final x04 mo4488a(long j) {
        long j2;
        long j3;
        x04 mo4488a = this.f22061a.mo4488a(j);
        a14 a14Var = mo4488a.f33405a;
        long j4 = a14Var.f20342a;
        long j5 = a14Var.f20343b;
        j2 = this.f22062b.f22763a;
        a14 a14Var2 = new a14(j4, j5 + j2);
        a14 a14Var3 = mo4488a.f33406b;
        long j6 = a14Var3.f20342a;
        long j7 = a14Var3.f20343b;
        j3 = this.f22062b.f22763a;
        return new x04(a14Var2, new a14(j6, j7 + j3));
    }
}
