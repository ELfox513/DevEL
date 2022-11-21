package p168r4;
/* renamed from: r4.lz3 */
/* loaded from: classes2.dex */
public final class lz3 implements z04 {

    /* renamed from: a */
    public final oz3 f27429a;

    /* renamed from: b */
    public final long f27430b;

    /* renamed from: c */
    public final long f27431c;

    /* renamed from: d */
    public final long f27432d;

    /* renamed from: e */
    public final long f27433e;

    /* renamed from: f */
    public final long f27434f;

    public lz3(oz3 oz3Var, long j, long j2, long j3, long j4, long j5, long j6) {
        this.f27429a = oz3Var;
        this.f27430b = j;
        this.f27431c = j3;
        this.f27432d = j4;
        this.f27433e = j5;
        this.f27434f = j6;
    }

    @Override // p168r4.z04
    /* renamed from: c */
    public final boolean mo4487c() {
        return true;
    }

    @Override // p168r4.z04
    /* renamed from: g */
    public final long mo4486g() {
        return this.f27430b;
    }

    /* renamed from: j */
    public final long m9527j(long j) {
        return this.f27429a.mo8549V(j);
    }

    @Override // p168r4.z04
    /* renamed from: a */
    public final x04 mo4488a(long j) {
        a14 a14Var = new a14(j, nz3.m8954a(this.f27429a.mo8549V(j), 0L, this.f27431c, this.f27432d, this.f27433e, this.f27434f));
        return new x04(a14Var, a14Var);
    }
}
