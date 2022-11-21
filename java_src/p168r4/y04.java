package p168r4;
/* renamed from: r4.y04 */
/* loaded from: classes2.dex */
public class y04 implements z04 {

    /* renamed from: a */
    public final long f33832a;

    /* renamed from: b */
    public final x04 f33833b;

    @Override // p168r4.z04
    /* renamed from: a */
    public final x04 mo4488a(long j) {
        return this.f33833b;
    }

    @Override // p168r4.z04
    /* renamed from: c */
    public final boolean mo4487c() {
        return false;
    }

    @Override // p168r4.z04
    /* renamed from: g */
    public final long mo4486g() {
        return this.f33832a;
    }

    public y04(long j, long j2) {
        a14 a14Var;
        this.f33832a = j;
        if (j2 == 0) {
            a14Var = a14.f20341c;
        } else {
            a14Var = new a14(0L, j2);
        }
        this.f33833b = new x04(a14Var, a14Var);
    }
}
