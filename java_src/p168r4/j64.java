package p168r4;
/* renamed from: r4.j64 */
/* loaded from: classes2.dex */
public final class j64 {

    /* renamed from: a */
    public final m54 f25940a;

    /* renamed from: b */
    public final C5758fc f25941b;

    /* renamed from: c */
    public final C6386wb f25942c = new C6386wb(new byte[64], 64);

    /* renamed from: d */
    public boolean f25943d;

    /* renamed from: e */
    public boolean f25944e;

    /* renamed from: f */
    public boolean f25945f;

    public j64(m54 m54Var, C5758fc c5758fc) {
        this.f25940a = m54Var;
        this.f25941b = c5758fc;
    }

    /* renamed from: a */
    public final void m10395a() {
        this.f25945f = false;
        this.f25940a.zza();
    }

    /* renamed from: b */
    public final void m10394b(C6423xb c6423xb) {
        long j;
        c6423xb.m5398u(this.f25942c.f33149a, 0, 3);
        this.f25942c.m5789d(0);
        this.f25942c.m5787f(8);
        this.f25943d = this.f25942c.m5786g();
        this.f25944e = this.f25942c.m5786g();
        this.f25942c.m5787f(6);
        c6423xb.m5398u(this.f25942c.f33149a, 0, this.f25942c.m5785h(8));
        this.f25942c.m5789d(0);
        if (this.f25943d) {
            this.f25942c.m5787f(4);
            int m5785h = this.f25942c.m5785h(3);
            this.f25942c.m5787f(1);
            int m5785h2 = this.f25942c.m5785h(15);
            this.f25942c.m5787f(1);
            long m5785h3 = (m5785h << 30) | (m5785h2 << 15) | this.f25942c.m5785h(15);
            this.f25942c.m5787f(1);
            if (!this.f25945f && this.f25944e) {
                this.f25942c.m5787f(4);
                int m5785h4 = this.f25942c.m5785h(3);
                this.f25942c.m5787f(1);
                int m5785h5 = this.f25942c.m5785h(15);
                this.f25942c.m5787f(1);
                int m5785h6 = this.f25942c.m5785h(15);
                this.f25942c.m5787f(1);
                this.f25941b.m11580e((m5785h5 << 15) | (m5785h4 << 30) | m5785h6);
                this.f25945f = true;
            }
            j = this.f25941b.m11580e(m5785h3);
        } else {
            j = 0;
        }
        this.f25940a.mo4422d(j, 4);
        this.f25940a.mo4424b(c6423xb);
        this.f25940a.mo4423c();
    }
}
