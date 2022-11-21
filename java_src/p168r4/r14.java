package p168r4;

import java.util.Arrays;
import java.util.Collections;
/* renamed from: r4.r14 */
/* loaded from: classes2.dex */
public final class r14 implements a04 {

    /* renamed from: n */
    public static final g04 f30410n = q14.f29883a;

    /* renamed from: d */
    public d04 f30414d;

    /* renamed from: e */
    public d14 f30415e;

    /* renamed from: g */
    public C5901j8 f30417g;

    /* renamed from: h */
    public n04 f30418h;

    /* renamed from: i */
    public int f30419i;

    /* renamed from: j */
    public int f30420j;

    /* renamed from: k */
    public p14 f30421k;

    /* renamed from: l */
    public int f30422l;

    /* renamed from: m */
    public long f30423m;

    /* renamed from: a */
    public final byte[] f30411a = new byte[42];

    /* renamed from: b */
    public final C6423xb f30412b = new C6423xb(new byte[32768], 0);

    /* renamed from: c */
    public final h04 f30413c = new h04();

    /* renamed from: f */
    public int f30416f = 0;

    public r14(int i) {
    }

    @Override // p168r4.a04
    /* renamed from: e */
    public final boolean mo4475e(b04 b04Var) {
        k04.m10119a(b04Var, false);
        C6423xb c6423xb = new C6423xb(4);
        ((vz3) b04Var).mo5960i(c6423xb.m5402q(), 0, 4, false);
        return c6423xb.m5425B() == 1716281667;
    }

    @Override // p168r4.a04
    /* renamed from: i */
    public final void mo4472i(long j, long j2) {
        long j3 = 0;
        if (j == 0) {
            this.f30416f = 0;
        } else {
            p14 p14Var = this.f30421k;
            if (p14Var != null) {
                p14Var.m7270b(j2);
            }
        }
        if (j2 != 0) {
            j3 = -1;
        }
        this.f30423m = j3;
        this.f30422l = 0;
        this.f30412b.m5410i(0);
    }

    /* renamed from: a */
    public final long m7625a(C6423xb c6423xb, boolean z) {
        boolean z2;
        this.f30418h.getClass();
        int m5404o = c6423xb.m5404o();
        while (m5404o <= c6423xb.m5406m() - 16) {
            c6423xb.m5403p(m5404o);
            if (i04.m10750a(c6423xb, this.f30418h, this.f30420j, this.f30413c)) {
                c6423xb.m5403p(m5404o);
                return this.f30413c.f24391a;
            }
            m5404o++;
        }
        if (z) {
            while (m5404o <= c6423xb.m5406m() - this.f30419i) {
                c6423xb.m5403p(m5404o);
                try {
                    z2 = i04.m10750a(c6423xb, this.f30418h, this.f30420j, this.f30413c);
                } catch (IndexOutOfBoundsException unused) {
                    z2 = false;
                }
                if (c6423xb.m5404o() <= c6423xb.m5406m() && z2) {
                    c6423xb.m5403p(m5404o);
                    return this.f30413c.f24391a;
                }
                m5404o++;
            }
            c6423xb.m5403p(c6423xb.m5406m());
            return -1L;
        }
        c6423xb.m5403p(m5404o);
        return -1L;
    }

    /* renamed from: b */
    public final void m7624b() {
        long j = this.f30423m;
        n04 n04Var = this.f30418h;
        int i = C5979lc.f27164a;
        this.f30415e.mo4005e((j * 1000000) / n04Var.f28064e, 1, this.f30422l, 0, null);
    }

    @Override // p168r4.a04
    /* renamed from: f */
    public final int mo4474f(b04 b04Var, w04 w04Var) {
        boolean m5786g;
        n04 n04Var;
        z04 y04Var;
        int i = this.f30416f;
        boolean z = true;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            this.f30415e.getClass();
                            this.f30418h.getClass();
                            p14 p14Var = this.f30421k;
                            if (p14Var != null && p14Var.m7269c()) {
                                return this.f30421k.m7268d(b04Var, w04Var);
                            }
                            if (this.f30423m == -1) {
                                this.f30423m = i04.m10749b(b04Var, this.f30418h);
                                return 0;
                            }
                            int m5406m = this.f30412b.m5406m();
                            if (m5406m < 32768) {
                                int mo4060b = b04Var.mo4060b(this.f30412b.m5402q(), m5406m, 32768 - m5406m);
                                if (mo4060b != -1) {
                                    z = false;
                                }
                                if (!z) {
                                    this.f30412b.m5405n(m5406m + mo4060b);
                                } else if (this.f30412b.m5407l() == 0) {
                                    m7624b();
                                    return -1;
                                }
                            } else {
                                z = false;
                            }
                            int m5404o = this.f30412b.m5404o();
                            int i2 = this.f30422l;
                            int i3 = this.f30419i;
                            if (i2 < i3) {
                                C6423xb c6423xb = this.f30412b;
                                c6423xb.m5400s(Math.min(i3 - i2, c6423xb.m5407l()));
                            }
                            long m7625a = m7625a(this.f30412b, z);
                            int m5404o2 = this.f30412b.m5404o() - m5404o;
                            this.f30412b.m5403p(m5404o);
                            b14.m12888b(this.f30415e, this.f30412b, m5404o2);
                            this.f30422l += m5404o2;
                            if (m7625a != -1) {
                                m7624b();
                                this.f30422l = 0;
                                this.f30423m = m7625a;
                            }
                            if (this.f30412b.m5407l() >= 16) {
                                return 0;
                            }
                            int m5407l = this.f30412b.m5407l();
                            System.arraycopy(this.f30412b.m5402q(), this.f30412b.m5404o(), this.f30412b.m5402q(), 0, m5407l);
                            this.f30412b.m5403p(0);
                            this.f30412b.m5405n(m5407l);
                            return 0;
                        }
                        b04Var.mo5959k();
                        C6423xb c6423xb2 = new C6423xb(2);
                        ((vz3) b04Var).mo5960i(c6423xb2.m5402q(), 0, 2, false);
                        int m5396w = c6423xb2.m5396w();
                        if ((m5396w >> 2) == 16382) {
                            b04Var.mo5959k();
                            this.f30420j = m5396w;
                            d04 d04Var = this.f30414d;
                            int i4 = C5979lc.f27164a;
                            long mo5954p = b04Var.mo5954p();
                            long mo5953q = b04Var.mo5953q();
                            n04 n04Var2 = this.f30418h;
                            n04Var2.getClass();
                            if (n04Var2.f28070k != null) {
                                y04Var = new l04(n04Var2, mo5954p);
                            } else if (mo5953q != -1 && n04Var2.f28069j > 0) {
                                p14 p14Var2 = new p14(n04Var2, this.f30420j, mo5954p, mo5953q);
                                this.f30421k = p14Var2;
                                y04Var = p14Var2.m7271a();
                            } else {
                                y04Var = new y04(n04Var2.m9222a(), 0L);
                            }
                            d04Var.mo10798j(y04Var);
                            this.f30416f = 5;
                            return 0;
                        }
                        b04Var.mo5959k();
                        throw C5973l6.m9787b("First frame does not start with sync code.", null);
                    }
                    j04 j04Var = new j04(this.f30418h);
                    do {
                        b04Var.mo5959k();
                        C6386wb c6386wb = new C6386wb(new byte[4], 4);
                        vz3 vz3Var = (vz3) b04Var;
                        vz3Var.mo5960i(c6386wb.f33149a, 0, 4, false);
                        m5786g = c6386wb.m5786g();
                        int m5785h = c6386wb.m5785h(7);
                        int m5785h2 = c6386wb.m5785h(24) + 4;
                        if (m5785h == 0) {
                            byte[] bArr = new byte[38];
                            vz3Var.mo5961f(bArr, 0, 38, false);
                            j04Var.f25851a = new n04(bArr, 4);
                        } else {
                            n04 n04Var3 = j04Var.f25851a;
                            if (n04Var3 != null) {
                                if (m5785h == 3) {
                                    C6423xb c6423xb3 = new C6423xb(m5785h2);
                                    vz3Var.mo5961f(c6423xb3.m5402q(), 0, m5785h2, false);
                                    j04Var.f25851a = n04Var3.m9218e(k04.m10118b(c6423xb3));
                                } else if (m5785h == 4) {
                                    C6423xb c6423xb4 = new C6423xb(m5785h2);
                                    vz3Var.mo5961f(c6423xb4.m5402q(), 0, m5785h2, false);
                                    c6423xb4.m5400s(4);
                                    j04Var.f25851a = n04Var3.m9217f(Arrays.asList(j14.m10437b(c6423xb4, false, false).f23255b));
                                } else if (m5785h == 6) {
                                    C6423xb c6423xb5 = new C6423xb(m5785h2);
                                    vz3Var.mo5961f(c6423xb5.m5402q(), 0, m5785h2, false);
                                    c6423xb5.m5400s(4);
                                    int m5423D = c6423xb5.m5423D();
                                    String m5414e = c6423xb5.m5414e(c6423xb5.m5423D(), n03.f28054a);
                                    String m5414e2 = c6423xb5.m5414e(c6423xb5.m5423D(), n03.f28056c);
                                    int m5423D2 = c6423xb5.m5423D();
                                    int m5423D3 = c6423xb5.m5423D();
                                    int m5423D4 = c6423xb5.m5423D();
                                    int m5423D5 = c6423xb5.m5423D();
                                    int m5423D6 = c6423xb5.m5423D();
                                    byte[] bArr2 = new byte[m5423D6];
                                    c6423xb5.m5398u(bArr2, 0, m5423D6);
                                    j04Var.f25851a = n04Var3.m9216g(Collections.singletonList(new C6198r8(m5423D, m5414e, m5414e2, m5423D2, m5423D3, m5423D4, m5423D5, bArr2)));
                                } else {
                                    vz3Var.m5956n(m5785h2, false);
                                }
                            } else {
                                throw new IllegalArgumentException();
                            }
                        }
                        n04Var = j04Var.f25851a;
                        int i5 = C5979lc.f27164a;
                        this.f30418h = n04Var;
                    } while (!m5786g);
                    n04Var.getClass();
                    this.f30419i = Math.max(n04Var.f28062c, 6);
                    this.f30415e.mo4004f(this.f30418h.m9220c(this.f30411a, this.f30417g));
                    this.f30416f = 4;
                    return 0;
                }
                C6423xb c6423xb6 = new C6423xb(4);
                ((vz3) b04Var).mo5961f(c6423xb6.m5402q(), 0, 4, false);
                if (c6423xb6.m5425B() == 1716281667) {
                    this.f30416f = 3;
                    return 0;
                }
                throw C5973l6.m9787b("Failed to read FLAC stream marker.", null);
            }
            ((vz3) b04Var).mo5960i(this.f30411a, 0, 42, false);
            b04Var.mo5959k();
            this.f30416f = 2;
            return 0;
        }
        b04Var.mo5959k();
        long mo5958l = b04Var.mo5958l();
        C5901j8 m10119a = k04.m10119a(b04Var, true);
        ((vz3) b04Var).m5956n((int) (b04Var.mo5958l() - mo5958l), false);
        this.f30417g = m10119a;
        this.f30416f = 1;
        return 0;
    }

    @Override // p168r4.a04
    /* renamed from: h */
    public final void mo4473h(d04 d04Var) {
        this.f30414d = d04Var;
        this.f30415e = d04Var.mo10795r(0, 1);
        d04Var.mo10788y();
    }
}
