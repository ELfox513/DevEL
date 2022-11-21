package p168r4;
/* renamed from: r4.b54 */
/* loaded from: classes2.dex */
public final class b54 implements m54 {

    /* renamed from: a */
    public final C6386wb f20847a;

    /* renamed from: b */
    public final C6423xb f20848b;

    /* renamed from: c */
    public final String f20849c;

    /* renamed from: d */
    public String f20850d;

    /* renamed from: e */
    public d14 f20851e;

    /* renamed from: f */
    public int f20852f;

    /* renamed from: g */
    public int f20853g;

    /* renamed from: h */
    public boolean f20854h;

    /* renamed from: i */
    public long f20855i;

    /* renamed from: j */
    public C5713e5 f20856j;

    /* renamed from: k */
    public int f20857k;

    /* renamed from: l */
    public long f20858l;

    @Override // p168r4.m54
    /* renamed from: c */
    public final void mo4423c() {
    }

    @Override // p168r4.m54
    /* renamed from: d */
    public final void mo4422d(long j, int i) {
        if (j != -9223372036854775807L) {
            this.f20858l = j;
        }
    }

    @Override // p168r4.m54
    public final void zza() {
        this.f20852f = 0;
        this.f20853g = 0;
        this.f20854h = false;
        this.f20858l = -9223372036854775807L;
    }

    @Override // p168r4.m54
    /* renamed from: b */
    public final void mo4424b(C6423xb c6423xb) {
        boolean z;
        boolean z2;
        C5903ja.m10370e(this.f20851e);
        while (c6423xb.m5407l() > 0) {
            int i = this.f20852f;
            if (i == 0) {
                while (true) {
                    if (c6423xb.m5407l() <= 0) {
                        break;
                    } else if (!this.f20854h) {
                        if (c6423xb.m5397v() == 11) {
                            z = true;
                        } else {
                            z = false;
                        }
                        this.f20854h = z;
                    } else {
                        int m5397v = c6423xb.m5397v();
                        if (m5397v == 119) {
                            this.f20854h = false;
                            this.f20852f = 1;
                            this.f20848b.m5402q()[0] = 11;
                            this.f20848b.m5402q()[1] = 119;
                            this.f20853g = 2;
                            break;
                        }
                        if (m5397v == 11) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        this.f20854h = z2;
                    }
                }
            } else if (i != 1) {
                int min = Math.min(c6423xb.m5407l(), this.f20857k - this.f20853g);
                b14.m12888b(this.f20851e, c6423xb, min);
                int i2 = this.f20853g + min;
                this.f20853g = i2;
                int i3 = this.f20857k;
                if (i2 == i3) {
                    long j = this.f20858l;
                    if (j != -9223372036854775807L) {
                        this.f20851e.mo4005e(j, 1, i3, 0, null);
                        this.f20858l += this.f20855i;
                    }
                    this.f20852f = 0;
                }
            } else {
                byte[] m5402q = this.f20848b.m5402q();
                int min2 = Math.min(c6423xb.m5407l(), 128 - this.f20853g);
                c6423xb.m5398u(m5402q, this.f20853g, min2);
                int i4 = this.f20853g + min2;
                this.f20853g = i4;
                if (i4 == 128) {
                    this.f20847a.m5789d(0);
                    ez3 m11030c = gz3.m11030c(this.f20847a);
                    C5713e5 c5713e5 = this.f20856j;
                    if (c5713e5 == null || m11030c.f23218c != c5713e5.f22827y || m11030c.f23217b != c5713e5.f22828z || !C5979lc.m9729H(m11030c.f23216a, c5713e5.f22814l)) {
                        C5639c5 c5639c5 = new C5639c5();
                        c5639c5.m12579d(this.f20850d);
                        c5639c5.m12564n(m11030c.f23216a);
                        c5639c5.m12610B(m11030c.f23218c);
                        c5639c5.m12609C(m11030c.f23217b);
                        c5639c5.m12573g(this.f20849c);
                        C5713e5 m12603I = c5639c5.m12603I();
                        this.f20856j = m12603I;
                        this.f20851e.mo4004f(m12603I);
                    }
                    this.f20857k = m11030c.f23219d;
                    this.f20855i = (m11030c.f23220e * 1000000) / this.f20856j.f22828z;
                    this.f20848b.m5403p(0);
                    b14.m12888b(this.f20851e, this.f20848b, 128);
                    this.f20852f = 2;
                }
            }
        }
    }

    public b54(String str) {
        C6386wb c6386wb = new C6386wb(new byte[128], 128);
        this.f20847a = c6386wb;
        this.f20848b = new C6423xb(c6386wb.f33149a);
        this.f20852f = 0;
        this.f20858l = -9223372036854775807L;
        this.f20849c = str;
    }

    @Override // p168r4.m54
    /* renamed from: a */
    public final void mo4425a(d04 d04Var, z64 z64Var) {
        z64Var.m4416a();
        this.f20850d = z64Var.m4414c();
        this.f20851e = d04Var.mo10795r(z64Var.m4415b(), 1);
    }
}
