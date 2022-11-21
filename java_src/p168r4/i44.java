package p168r4;
/* renamed from: r4.i44 */
/* loaded from: classes2.dex */
public final class i44 implements z04 {

    /* renamed from: a */
    public final /* synthetic */ k44 f24967a;

    public /* synthetic */ i44(k44 k44Var, h44 h44Var) {
        this.f24967a = k44Var;
    }

    @Override // p168r4.z04
    /* renamed from: c */
    public final boolean mo4487c() {
        return true;
    }

    @Override // p168r4.z04
    /* renamed from: g */
    public final long mo4486g() {
        w44 w44Var;
        long j;
        w44Var = this.f24967a.f26293d;
        j = this.f24967a.f26295f;
        return w44Var.m5874g(j);
    }

    @Override // p168r4.z04
    /* renamed from: a */
    public final x04 mo4488a(long j) {
        w44 w44Var;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        w44Var = this.f24967a.f26293d;
        long m5873h = w44Var.m5873h(j);
        j2 = this.f24967a.f26291b;
        j3 = this.f24967a.f26292c;
        j4 = this.f24967a.f26291b;
        j5 = this.f24967a.f26295f;
        j6 = this.f24967a.f26291b;
        j7 = this.f24967a.f26292c;
        a14 a14Var = new a14(j, C5979lc.m9703d0((-30000) + j2 + ((m5873h * (j3 - j4)) / j5), j6, j7 - 1));
        return new x04(a14Var, a14Var);
    }
}
