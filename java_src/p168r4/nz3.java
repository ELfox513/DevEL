package p168r4;
/* renamed from: r4.nz3 */
/* loaded from: classes2.dex */
public final class nz3 {

    /* renamed from: a */
    public final long f28747a;

    /* renamed from: b */
    public final long f28748b;

    /* renamed from: c */
    public final long f28749c;

    /* renamed from: d */
    public long f28750d = 0;

    /* renamed from: e */
    public long f28751e;

    /* renamed from: f */
    public long f28752f;

    /* renamed from: g */
    public long f28753g;

    /* renamed from: h */
    public long f28754h;

    public nz3(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        this.f28747a = j;
        this.f28748b = j2;
        this.f28751e = j4;
        this.f28752f = j5;
        this.f28753g = j6;
        this.f28749c = j7;
        this.f28754h = m8954a(j2, 0L, j4, j5, j6, j7);
    }

    /* renamed from: a */
    public static long m8954a(long j, long j2, long j3, long j4, long j5, long j6) {
        if (j4 + 1 >= j5 || 1 + j2 >= j3) {
            return j4;
        }
        long j7 = ((float) (j - j2)) * (((float) (j5 - j4)) / ((float) (j3 - j2)));
        return C5979lc.m9703d0(((j4 + j7) - j6) - (j7 / 20), j4, (-1) + j5);
    }

    /* renamed from: f */
    public static /* synthetic */ void m8949f(nz3 nz3Var, long j, long j2) {
        nz3Var.f28750d = j;
        nz3Var.f28752f = j2;
        nz3Var.m8946i();
    }

    /* renamed from: g */
    public static /* synthetic */ void m8948g(nz3 nz3Var, long j, long j2) {
        nz3Var.f28751e = j;
        nz3Var.f28753g = j2;
        nz3Var.m8946i();
    }

    /* renamed from: i */
    public final void m8946i() {
        this.f28754h = m8954a(this.f28748b, this.f28750d, this.f28751e, this.f28752f, this.f28753g, this.f28749c);
    }
}
