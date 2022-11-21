package p168r4;
/* renamed from: r4.z5 */
/* loaded from: classes2.dex */
public final class C6491z5 {

    /* renamed from: a */
    public final et3 f34335a;

    /* renamed from: b */
    public final Object f34336b;

    /* renamed from: c */
    public final vu3[] f34337c;

    /* renamed from: d */
    public boolean f34338d;

    /* renamed from: e */
    public boolean f34339e;

    /* renamed from: f */
    public C5567a6 f34340f;

    /* renamed from: g */
    public boolean f34341g;

    /* renamed from: h */
    public final boolean[] f34342h;

    /* renamed from: i */
    public final InterfaceC5827h7[] f34343i;

    /* renamed from: j */
    public final aw3 f34344j;

    /* renamed from: k */
    public final C5899j6 f34345k;

    /* renamed from: l */
    public C6491z5 f34346l;

    /* renamed from: m */
    public j44 f34347m;

    /* renamed from: n */
    public cw3 f34348n;

    /* renamed from: o */
    public long f34349o;

    public C6491z5(InterfaceC5827h7[] interfaceC5827h7Arr, long j, aw3 aw3Var, qw3 qw3Var, C5899j6 c5899j6, C5567a6 c5567a6, cw3 cw3Var, byte[] bArr) {
        this.f34343i = interfaceC5827h7Arr;
        this.f34349o = j;
        this.f34344j = aw3Var;
        this.f34345k = c5899j6;
        ft3 ft3Var = c5567a6.f20386a;
        this.f34336b = ft3Var.f23237a;
        this.f34340f = c5567a6;
        this.f34347m = j44.f25890d;
        this.f34348n = cw3Var;
        this.f34337c = new vu3[2];
        this.f34342h = new boolean[2];
        long j2 = c5567a6.f20387b;
        long j3 = c5567a6.f20389d;
        et3 m10404o = c5899j6.m10404o(ft3Var, qw3Var, j2);
        this.f34335a = j3 != -9223372036854775807L ? new ls3(m10404o, true, 0L, j3) : m10404o;
    }

    /* renamed from: a */
    public final long m4450a() {
        return this.f34349o;
    }

    /* renamed from: b */
    public final void m4449b(long j) {
        this.f34349o = 0L;
    }

    /* renamed from: c */
    public final long m4448c() {
        return this.f34340f.f20387b + this.f34349o;
    }

    /* renamed from: d */
    public final boolean m4447d() {
        return this.f34338d && (!this.f34339e || this.f34335a.mo4967f() == Long.MIN_VALUE);
    }

    /* renamed from: f */
    public final long m4445f() {
        if (this.f34338d) {
            return this.f34335a.mo4966i();
        }
        return 0L;
    }

    /* renamed from: g */
    public final void m4444g(float f, AbstractC5717e8 abstractC5717e8) {
        this.f34338d = true;
        this.f34347m = this.f34335a.mo5022e();
        cw3 m4441j = m4441j(f, abstractC5717e8);
        C5567a6 c5567a6 = this.f34340f;
        long j = c5567a6.f20387b;
        long j2 = c5567a6.f20390e;
        if (j2 != -9223372036854775807L && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        long m4440k = m4440k(m4441j, j, false);
        long j3 = this.f34349o;
        C5567a6 c5567a62 = this.f34340f;
        this.f34349o = j3 + (c5567a62.f20387b - m4440k);
        this.f34340f = c5567a62.m13044a(m4440k);
    }

    /* renamed from: k */
    public final long m4440k(cw3 cw3Var, long j, boolean z) {
        return m4439l(cw3Var, j, false, new boolean[2]);
    }

    /* renamed from: l */
    public final long m4439l(cw3 cw3Var, long j, boolean z, boolean[] zArr) {
        boolean z2;
        int i = 0;
        while (true) {
            boolean z3 = true;
            if (i >= cw3Var.f21927a) {
                break;
            }
            boolean[] zArr2 = this.f34342h;
            if (z || !cw3Var.m12287b(this.f34348n, i)) {
                z3 = false;
            }
            zArr2[i] = z3;
            i++;
        }
        int i2 = 0;
        while (true) {
            InterfaceC5827h7[] interfaceC5827h7Arr = this.f34343i;
            if (i2 >= 2) {
                break;
            }
            interfaceC5827h7Arr[i2].mo10965G();
            i2++;
        }
        m4431t();
        this.f34348n = cw3Var;
        m4432s();
        long mo5023d = this.f34335a.mo5023d(cw3Var.f21930d, this.f34342h, this.f34337c, zArr, j);
        int i3 = 0;
        while (true) {
            InterfaceC5827h7[] interfaceC5827h7Arr2 = this.f34343i;
            if (i3 >= 2) {
                break;
            }
            interfaceC5827h7Arr2[i3].mo10965G();
            i3++;
        }
        this.f34339e = false;
        int i4 = 0;
        while (true) {
            vu3[] vu3VarArr = this.f34337c;
            if (i4 < 2) {
                if (vu3VarArr[i4] != null) {
                    C5903ja.m10371d(cw3Var.m12288a(i4));
                    this.f34343i[i4].mo10965G();
                    this.f34339e = true;
                } else {
                    if (cw3Var.f21930d[i4] == null) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    C5903ja.m10371d(z2);
                }
                i4++;
            } else {
                return mo5023d;
            }
        }
    }

    /* renamed from: o */
    public final C6491z5 m4436o() {
        return this.f34346l;
    }

    /* renamed from: p */
    public final j44 m4435p() {
        return this.f34347m;
    }

    /* renamed from: q */
    public final cw3 m4434q() {
        return this.f34348n;
    }

    /* renamed from: u */
    public final boolean m4430u() {
        return this.f34346l == null;
    }

    /* renamed from: e */
    public final long m4446e() {
        long j;
        if (!this.f34338d) {
            return this.f34340f.f20387b;
        }
        if (this.f34339e) {
            j = this.f34335a.mo4967f();
        } else {
            j = Long.MIN_VALUE;
        }
        if (j == Long.MIN_VALUE) {
            return this.f34340f.f20390e;
        }
        return j;
    }

    /* renamed from: j */
    public final cw3 m4441j(float f, AbstractC5717e8 abstractC5717e8) {
        hv3[] hv3VarArr;
        cw3 mo4543b = this.f34344j.mo4543b(this.f34343i, this.f34347m, this.f34340f.f20386a, abstractC5717e8);
        for (hv3 hv3Var : mo4543b.f21930d) {
        }
        return mo4543b;
    }

    /* renamed from: n */
    public final void m4437n(C6491z5 c6491z5) {
        if (c6491z5 == this.f34346l) {
            return;
        }
        m4431t();
        this.f34346l = c6491z5;
        m4432s();
    }

    /* renamed from: r */
    public final void m4433r() {
        et3 et3Var = this.f34335a;
        if (et3Var instanceof ls3) {
            long j = this.f34340f.f20389d;
            if (j == -9223372036854775807L) {
                j = Long.MIN_VALUE;
            }
            ((ls3) et3Var).m9570k(0L, j);
        }
    }

    /* renamed from: h */
    public final void m4443h(long j) {
        C5903ja.m10371d(m4430u());
        if (this.f34338d) {
            this.f34335a.mo4969a(j - this.f34349o);
        }
    }

    /* renamed from: i */
    public final void m4442i(long j) {
        C5903ja.m10371d(m4430u());
        this.f34335a.mo4968c(j - this.f34349o);
    }

    /* renamed from: m */
    public final void m4438m() {
        m4431t();
        C5899j6 c5899j6 = this.f34345k;
        et3 et3Var = this.f34335a;
        try {
            if (et3Var instanceof ls3) {
                c5899j6.m10413f(((ls3) et3Var).f27356a);
            } else {
                c5899j6.m10413f(et3Var);
            }
        } catch (RuntimeException e) {
            C5720eb.m11832b("MediaPeriodHolder", "Period release failed.", e);
        }
    }

    /* renamed from: s */
    public final void m4432s() {
        if (m4430u()) {
            int i = 0;
            while (true) {
                cw3 cw3Var = this.f34348n;
                if (i < cw3Var.f21927a) {
                    cw3Var.m12288a(i);
                    hv3 hv3Var = this.f34348n.f21930d[i];
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: t */
    public final void m4431t() {
        if (m4430u()) {
            int i = 0;
            while (true) {
                cw3 cw3Var = this.f34348n;
                if (i < cw3Var.f21927a) {
                    cw3Var.m12288a(i);
                    hv3 hv3Var = this.f34348n.f21930d[i];
                    i++;
                } else {
                    return;
                }
            }
        }
    }
}
