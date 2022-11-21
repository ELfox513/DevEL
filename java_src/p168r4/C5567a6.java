package p168r4;
/* renamed from: r4.a6 */
/* loaded from: classes2.dex */
public final class C5567a6 {

    /* renamed from: a */
    public final ft3 f20386a;

    /* renamed from: b */
    public final long f20387b;

    /* renamed from: c */
    public final long f20388c;

    /* renamed from: d */
    public final long f20389d;

    /* renamed from: e */
    public final long f20390e;

    /* renamed from: f */
    public final boolean f20391f;

    /* renamed from: g */
    public final boolean f20392g;

    /* renamed from: h */
    public final boolean f20393h;

    /* renamed from: i */
    public final boolean f20394i;

    /* renamed from: a */
    public final C5567a6 m13044a(long j) {
        return j == this.f20387b ? this : new C5567a6(this.f20386a, j, this.f20388c, this.f20389d, this.f20390e, false, this.f20392g, this.f20393h, this.f20394i);
    }

    /* renamed from: b */
    public final C5567a6 m13043b(long j) {
        return j == this.f20388c ? this : new C5567a6(this.f20386a, this.f20387b, j, this.f20389d, this.f20390e, false, this.f20392g, this.f20393h, this.f20394i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5567a6.class == obj.getClass()) {
            C5567a6 c5567a6 = (C5567a6) obj;
            if (this.f20387b == c5567a6.f20387b && this.f20388c == c5567a6.f20388c && this.f20389d == c5567a6.f20389d && this.f20390e == c5567a6.f20390e && this.f20392g == c5567a6.f20392g && this.f20393h == c5567a6.f20393h && this.f20394i == c5567a6.f20394i && C5979lc.m9729H(this.f20386a, c5567a6.f20386a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((((this.f20386a.hashCode() + 527) * 31) + ((int) this.f20387b)) * 31) + ((int) this.f20388c)) * 31) + ((int) this.f20389d)) * 31) + ((int) this.f20390e)) * 961) + (this.f20392g ? 1 : 0)) * 31) + (this.f20393h ? 1 : 0)) * 31) + (this.f20394i ? 1 : 0);
    }

    public C5567a6(ft3 ft3Var, long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        boolean z6 = true;
        if (z4 && !z2) {
            z5 = false;
        } else {
            z5 = true;
        }
        C5903ja.m10374a(z5);
        if (z3 && !z2) {
            z6 = false;
        }
        C5903ja.m10374a(z6);
        this.f20386a = ft3Var;
        this.f20387b = j;
        this.f20388c = j2;
        this.f20389d = j3;
        this.f20390e = j4;
        this.f20391f = false;
        this.f20392g = z2;
        this.f20393h = z3;
        this.f20394i = z4;
    }
}
