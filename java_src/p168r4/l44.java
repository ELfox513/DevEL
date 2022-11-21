package p168r4;
/* renamed from: r4.l44 */
/* loaded from: classes2.dex */
public final class l44 implements r44 {

    /* renamed from: a */
    public final n04 f27077a;

    /* renamed from: b */
    public final m04 f27078b;

    /* renamed from: c */
    public long f27079c = -1;

    /* renamed from: d */
    public long f27080d = -1;

    public l44(n04 n04Var, m04 m04Var) {
        this.f27077a = n04Var;
        this.f27078b = m04Var;
    }

    @Override // p168r4.r44
    /* renamed from: b */
    public final long mo6229b(b04 b04Var) {
        long j = this.f27080d;
        if (j >= 0) {
            this.f27080d = -1L;
            return -(j + 2);
        }
        return -1L;
    }

    /* renamed from: c */
    public final void m9794c(long j) {
        this.f27079c = j;
    }

    @Override // p168r4.r44
    /* renamed from: a */
    public final void mo6230a(long j) {
        long[] jArr = this.f27078b.f27439a;
        this.f27080d = jArr[C5979lc.m9704d(jArr, j, true, true)];
    }

    @Override // p168r4.r44
    /* renamed from: g */
    public final z04 mo6228g() {
        boolean z;
        if (this.f27079c != -1) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10371d(z);
        return new l04(this.f27077a, this.f27079c);
    }
}
