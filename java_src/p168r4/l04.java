package p168r4;
/* renamed from: r4.l04 */
/* loaded from: classes2.dex */
public final class l04 implements z04 {

    /* renamed from: a */
    public final n04 f27011a;

    /* renamed from: b */
    public final long f27012b;

    public l04(n04 n04Var, long j) {
        this.f27011a = n04Var;
        this.f27012b = j;
    }

    @Override // p168r4.z04
    /* renamed from: c */
    public final boolean mo4487c() {
        return true;
    }

    @Override // p168r4.z04
    /* renamed from: g */
    public final long mo4486g() {
        return this.f27011a.m9222a();
    }

    @Override // p168r4.z04
    /* renamed from: a */
    public final x04 mo4488a(long j) {
        long j2;
        C5903ja.m10370e(this.f27011a.f28070k);
        n04 n04Var = this.f27011a;
        m04 m04Var = n04Var.f28070k;
        long[] jArr = m04Var.f27439a;
        long[] jArr2 = m04Var.f27440b;
        int m9704d = C5979lc.m9704d(jArr, n04Var.m9221b(j), true, false);
        long j3 = 0;
        if (m9704d == -1) {
            j2 = 0;
        } else {
            j2 = jArr[m9704d];
        }
        if (m9704d != -1) {
            j3 = jArr2[m9704d];
        }
        a14 m9816e = m9816e(j2, j3);
        if (m9816e.f20342a != j && m9704d != jArr.length - 1) {
            int i = m9704d + 1;
            return new x04(m9816e, m9816e(jArr[i], jArr2[i]));
        }
        return new x04(m9816e, m9816e);
    }

    /* renamed from: e */
    public final a14 m9816e(long j, long j2) {
        return new a14((j * 1000000) / this.f27011a.f28064e, this.f27012b + j2);
    }
}
