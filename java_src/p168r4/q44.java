package p168r4;
/* renamed from: r4.q44 */
/* loaded from: classes2.dex */
public final class q44 {

    /* renamed from: a */
    public int f29971a;

    /* renamed from: b */
    public long f29972b;

    /* renamed from: c */
    public int f29973c;

    /* renamed from: d */
    public int f29974d;

    /* renamed from: e */
    public int f29975e;

    /* renamed from: f */
    public final int[] f29976f = new int[255];

    /* renamed from: g */
    public final C6423xb f29977g = new C6423xb(255);

    /* renamed from: a */
    public final void m8028a() {
        this.f29971a = 0;
        this.f29972b = 0L;
        this.f29973c = 0;
        this.f29974d = 0;
        this.f29975e = 0;
    }

    /* renamed from: b */
    public final boolean m8027b(b04 b04Var, long j) {
        boolean z;
        if (b04Var.mo5954p() == b04Var.mo5958l()) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10374a(z);
        this.f29977g.m5410i(4);
        while (true) {
            if ((j == -1 || b04Var.mo5954p() + 4 < j) && e04.m11885e(b04Var, this.f29977g.m5402q(), 0, 4, true)) {
                this.f29977g.m5403p(0);
                if (this.f29977g.m5425B() != 1332176723) {
                    ((vz3) b04Var).m5956n(1, false);
                } else {
                    b04Var.mo5959k();
                    return true;
                }
            }
        }
        do {
            if (j != -1 && b04Var.mo5954p() >= j) {
                break;
            }
        } while (b04Var.mo5966D(1) != -1);
        return false;
    }

    /* renamed from: c */
    public final boolean m8026c(b04 b04Var, boolean z) {
        m8028a();
        this.f29977g.m5410i(27);
        if (e04.m11885e(b04Var, this.f29977g.m5402q(), 0, 27, z) && this.f29977g.m5425B() == 1332176723) {
            if (this.f29977g.m5397v() != 0) {
                if (z) {
                    return false;
                }
                throw C5973l6.m9786c("unsupported bit stream revision");
            }
            this.f29971a = this.f29977g.m5397v();
            this.f29972b = this.f29977g.m5420G();
            this.f29977g.m5424C();
            this.f29977g.m5424C();
            this.f29977g.m5424C();
            int m5397v = this.f29977g.m5397v();
            this.f29973c = m5397v;
            this.f29974d = m5397v + 27;
            this.f29977g.m5410i(m5397v);
            if (e04.m11885e(b04Var, this.f29977g.m5402q(), 0, this.f29973c, z)) {
                for (int i = 0; i < this.f29973c; i++) {
                    this.f29976f[i] = this.f29977g.m5397v();
                    this.f29975e += this.f29976f[i];
                }
                return true;
            }
        }
        return false;
    }
}
