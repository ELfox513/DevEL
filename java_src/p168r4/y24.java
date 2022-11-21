package p168r4;

import java.io.EOFException;
/* renamed from: r4.y24 */
/* loaded from: classes2.dex */
public final class y24 implements a04 {

    /* renamed from: q */
    public static final g04 f33853q = w24.f33039a;

    /* renamed from: r */
    public static final InterfaceC5902j9 f33854r = x24.f33424a;

    /* renamed from: a */
    public final C6423xb f33855a;

    /* renamed from: b */
    public final t04 f33856b;

    /* renamed from: c */
    public final p04 f33857c;

    /* renamed from: d */
    public final r04 f33858d;

    /* renamed from: e */
    public final d14 f33859e;

    /* renamed from: f */
    public d04 f33860f;

    /* renamed from: g */
    public d14 f33861g;

    /* renamed from: h */
    public d14 f33862h;

    /* renamed from: i */
    public int f33863i;

    /* renamed from: j */
    public C5901j8 f33864j;

    /* renamed from: k */
    public long f33865k;

    /* renamed from: l */
    public long f33866l;

    /* renamed from: m */
    public long f33867m;

    /* renamed from: n */
    public int f33868n;

    /* renamed from: o */
    public a34 f33869o;

    /* renamed from: p */
    public boolean f33870p;

    public y24() {
        this(0);
    }

    /* renamed from: k */
    public static boolean m4923k(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    /* renamed from: a */
    public final void m4929a() {
        this.f33870p = true;
    }

    /* renamed from: c */
    public final long m4927c(long j) {
        return this.f33865k + ((j * 1000000) / this.f33856b.f31609d);
    }

    /* renamed from: d */
    public final boolean m4926d(b04 b04Var, boolean z) {
        int i;
        int i2;
        int i3;
        int m6660h;
        if (true != z) {
            i = 131072;
        } else {
            i = 32768;
        }
        b04Var.mo5959k();
        if (b04Var.mo5954p() == 0) {
            C5901j8 m7628a = this.f33858d.m7628a(b04Var, null);
            this.f33864j = m7628a;
            if (m7628a != null) {
                this.f33857c.m8522a(m7628a);
            }
            i3 = (int) b04Var.mo5958l();
            if (!z) {
                ((vz3) b04Var).m5956n(i3, false);
            }
            i2 = 0;
        } else {
            i2 = 0;
            i3 = 0;
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (m4925g(b04Var)) {
                if (i4 <= 0) {
                    throw new EOFException();
                }
            } else {
                this.f33855a.m5403p(0);
                int m5423D = this.f33855a.m5423D();
                if ((i2 != 0 && !m4923k(m5423D, i2)) || (m6660h = u04.m6660h(m5423D)) == -1) {
                    int i6 = i5 + 1;
                    if (i5 == i) {
                        if (z) {
                            return false;
                        }
                        throw C5973l6.m9787b("Searched too many bytes.", null);
                    }
                    if (z) {
                        b04Var.mo5959k();
                        ((vz3) b04Var).m5955o(i3 + i6, false);
                    } else {
                        ((vz3) b04Var).m5956n(1, false);
                    }
                    i5 = i6;
                    i2 = 0;
                    i4 = 0;
                } else {
                    i4++;
                    if (i4 == 1) {
                        this.f33856b.m6936a(m5423D);
                        i2 = m5423D;
                    } else if (i4 == 4) {
                        break;
                    }
                    ((vz3) b04Var).m5955o(m6660h - 4, false);
                }
            }
        }
        if (z) {
            ((vz3) b04Var).m5956n(i3 + i5, false);
        } else {
            b04Var.mo5959k();
        }
        this.f33863i = i2;
        return true;
    }

    @Override // p168r4.a04
    /* renamed from: e */
    public final boolean mo4475e(b04 b04Var) {
        return m4926d(b04Var, true);
    }

    /* renamed from: g */
    public final boolean m4925g(b04 b04Var) {
        a34 a34Var = this.f33869o;
        if (a34Var != null) {
            long mo4464b = a34Var.mo4464b();
            if (mo4464b != -1 && b04Var.mo5958l() > mo4464b - 4) {
                return true;
            }
        }
        try {
            return !b04Var.mo5960i(this.f33855a.m5402q(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    @Override // p168r4.a04
    /* renamed from: i */
    public final void mo4472i(long j, long j2) {
        this.f33863i = 0;
        this.f33865k = -9223372036854775807L;
        this.f33866l = 0L;
        this.f33868n = 0;
        a34 a34Var = this.f33869o;
        if (!(a34Var instanceof u24)) {
            return;
        }
        u24 u24Var = (u24) a34Var;
        throw null;
    }

    public y24(int i) {
        this.f33855a = new C6423xb(10);
        this.f33856b = new t04();
        this.f33857c = new p04();
        this.f33865k = -9223372036854775807L;
        this.f33858d = new r04();
        zz3 zz3Var = new zz3();
        this.f33859e = zz3Var;
        this.f33862h = zz3Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0087 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0163  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m4928b(p168r4.b04 r17) {
        /*
            Method dump skipped, instructions count: 621
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.y24.m4928b(r4.b04):int");
    }

    @Override // p168r4.a04
    /* renamed from: f */
    public final int mo4474f(b04 b04Var, w04 w04Var) {
        C5903ja.m10370e(this.f33861g);
        int i = C5979lc.f27164a;
        int m4928b = m4928b(b04Var);
        if (m4928b == -1 && (this.f33869o instanceof u24)) {
            if (this.f33869o.mo4486g() != m4927c(this.f33866l)) {
                u24 u24Var = (u24) this.f33869o;
                throw null;
            }
        }
        return m4928b;
    }

    @Override // p168r4.a04
    /* renamed from: h */
    public final void mo4473h(d04 d04Var) {
        this.f33860f = d04Var;
        d14 mo10795r = d04Var.mo10795r(0, 1);
        this.f33861g = mo10795r;
        this.f33862h = mo10795r;
        this.f33860f.mo10788y();
    }

    /* renamed from: j */
    public final a34 m4924j(b04 b04Var, boolean z) {
        ((vz3) b04Var).mo5960i(this.f33855a.m5402q(), 0, 4, false);
        this.f33855a.m5403p(0);
        this.f33856b.m6936a(this.f33855a.m5423D());
        return new t24(b04Var.mo5953q(), b04Var.mo5954p(), this.f33856b, false);
    }
}
