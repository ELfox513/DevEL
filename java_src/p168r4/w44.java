package p168r4;
/* renamed from: r4.w44 */
/* loaded from: classes2.dex */
public abstract class w44 {

    /* renamed from: b */
    public d14 f33062b;

    /* renamed from: c */
    public d04 f33063c;

    /* renamed from: d */
    public r44 f33064d;

    /* renamed from: e */
    public long f33065e;

    /* renamed from: f */
    public long f33066f;

    /* renamed from: g */
    public long f33067g;

    /* renamed from: h */
    public int f33068h;

    /* renamed from: i */
    public int f33069i;

    /* renamed from: k */
    public long f33071k;

    /* renamed from: l */
    public boolean f33072l;

    /* renamed from: m */
    public boolean f33073m;

    /* renamed from: a */
    public final p44 f33061a = new p44();

    /* renamed from: j */
    public u44 f33070j = new u44();

    /* renamed from: a */
    public void mo4838a(boolean z) {
        int i;
        if (z) {
            this.f33070j = new u44();
            this.f33066f = 0L;
            i = 0;
        } else {
            i = 1;
        }
        this.f33068h = i;
        this.f33065e = -1L;
        this.f33067g = 0L;
    }

    /* renamed from: b */
    public abstract long mo4837b(C6423xb c6423xb);

    /* renamed from: c */
    public abstract boolean mo4836c(C6423xb c6423xb, long j, u44 u44Var);

    /* renamed from: d */
    public final void m5877d(d04 d04Var, d14 d14Var) {
        this.f33063c = d04Var;
        this.f33062b = d14Var;
        mo4838a(true);
    }

    /* renamed from: g */
    public final long m5874g(long j) {
        return (j * 1000000) / this.f33069i;
    }

    /* renamed from: h */
    public final long m5873h(long j) {
        return (this.f33069i * j) / 1000000;
    }

    /* renamed from: i */
    public void mo4835i(long j) {
        this.f33067g = j;
    }

    /* renamed from: e */
    public final void m5876e(long j, long j2) {
        this.f33061a.m8489a();
        if (j == 0) {
            mo4838a(!this.f33072l);
        } else if (this.f33068h != 0) {
            long m5873h = m5873h(j2);
            this.f33065e = m5873h;
            r44 r44Var = this.f33064d;
            int i = C5979lc.f27164a;
            r44Var.mo6230a(m5873h);
            this.f33068h = 2;
        }
    }

    /* renamed from: f */
    public final int m5875f(b04 b04Var, w04 w04Var) {
        boolean z;
        C5903ja.m10370e(this.f33062b);
        int i = C5979lc.f27164a;
        int i2 = this.f33068h;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    return -1;
                }
                long mo6229b = this.f33064d.mo6229b(b04Var);
                if (mo6229b >= 0) {
                    w04Var.f33004a = mo6229b;
                    return 1;
                }
                if (mo6229b < -1) {
                    mo4835i(-(mo6229b + 2));
                }
                if (!this.f33072l) {
                    z04 mo6228g = this.f33064d.mo6228g();
                    C5903ja.m10370e(mo6228g);
                    this.f33063c.mo10798j(mo6228g);
                    this.f33072l = true;
                }
                if (this.f33071k <= 0 && !this.f33061a.m8488b(b04Var)) {
                    this.f33068h = 3;
                    return -1;
                }
                this.f33071k = 0L;
                C6423xb m8486d = this.f33061a.m8486d();
                long mo4837b = mo4837b(m8486d);
                if (mo4837b >= 0) {
                    long j = this.f33067g;
                    if (j + mo4837b >= this.f33065e) {
                        long m5874g = m5874g(j);
                        b14.m12888b(this.f33062b, m8486d, m8486d.m5406m());
                        this.f33062b.mo4005e(m5874g, 1, m8486d.m5406m(), 0, null);
                        this.f33065e = -1L;
                    }
                }
                this.f33067g += mo4837b;
                return 0;
            }
            ((vz3) b04Var).m5956n((int) this.f33066f, false);
            this.f33068h = 2;
            return 0;
        }
        while (this.f33061a.m8488b(b04Var)) {
            this.f33071k = b04Var.mo5954p() - this.f33066f;
            if (mo4836c(this.f33061a.m8486d(), this.f33066f, this.f33070j)) {
                this.f33066f = b04Var.mo5954p();
            } else {
                C5713e5 c5713e5 = this.f33070j.f32171a;
                this.f33069i = c5713e5.f22828z;
                if (!this.f33073m) {
                    this.f33062b.mo4004f(c5713e5);
                    this.f33073m = true;
                }
                r44 r44Var = this.f33070j.f32172b;
                if (r44Var != null) {
                    this.f33064d = r44Var;
                } else if (b04Var.mo5953q() == -1) {
                    this.f33064d = new v44(null);
                } else {
                    q44 m8487c = this.f33061a.m8487c();
                    if ((m8487c.f29971a & 4) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    this.f33064d = new k44(this, this.f33066f, b04Var.mo5953q(), m8487c.f29974d + m8487c.f29975e, m8487c.f29972b, z);
                }
                this.f33068h = 2;
                this.f33061a.m8485e();
                return 0;
            }
        }
        this.f33068h = 3;
        return -1;
    }
}
