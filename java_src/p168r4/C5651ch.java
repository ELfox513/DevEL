package p168r4;

import java.util.ArrayList;
import java.util.Stack;
/* renamed from: r4.ch */
/* loaded from: classes2.dex */
public final class C5651ch implements InterfaceC6131pf, InterfaceC6390wf {

    /* renamed from: p */
    public static final InterfaceC6205rf f21519p = new C5578ah();

    /* renamed from: q */
    public static final int f21520q = C5988ll.m9642l("qt  ");

    /* renamed from: e */
    public int f21525e;

    /* renamed from: f */
    public int f21526f;

    /* renamed from: g */
    public long f21527g;

    /* renamed from: h */
    public int f21528h;

    /* renamed from: i */
    public C5692dl f21529i;

    /* renamed from: j */
    public int f21530j;

    /* renamed from: k */
    public int f21531k;

    /* renamed from: l */
    public InterfaceC6168qf f21532l;

    /* renamed from: m */
    public C5615bh[] f21533m;

    /* renamed from: n */
    public long f21534n;

    /* renamed from: o */
    public boolean f21535o;

    /* renamed from: c */
    public final C5692dl f21523c = new C5692dl(16);

    /* renamed from: d */
    public final Stack<C5946kg> f21524d = new Stack<>();

    /* renamed from: a */
    public final C5692dl f21521a = new C5692dl(C5619bl.f21092a);

    /* renamed from: b */
    public final C5692dl f21522b = new C5692dl(4);

    @Override // p168r4.InterfaceC6390wf
    /* renamed from: a */
    public final long mo5740a() {
        return this.f21534n;
    }

    /* renamed from: c */
    public final void m12469c() {
        this.f21525e = 0;
        this.f21528h = 0;
    }

    @Override // p168r4.InterfaceC6131pf
    /* renamed from: n */
    public final boolean mo4726n(C6094of c6094of) {
        return C5688dh.m12136b(c6094of);
    }

    @Override // p168r4.InterfaceC6131pf
    /* renamed from: o */
    public final void mo4725o(InterfaceC6168qf interfaceC6168qf) {
        this.f21532l = interfaceC6168qf;
    }

    @Override // p168r4.InterfaceC6390wf
    public final boolean zza() {
        return true;
    }

    @Override // p168r4.InterfaceC6390wf
    /* renamed from: b */
    public final long mo5739b(long j) {
        long j2 = Long.MAX_VALUE;
        for (C5615bh c5615bh : this.f21533m) {
            C5837hh c5837hh = c5615bh.f21057b;
            int m10915a = c5837hh.m10915a(j);
            if (m10915a == -1) {
                m10915a = c5837hh.m10914b(j);
            }
            long j3 = c5837hh.f24629b[m10915a];
            if (j3 < j2) {
                j2 = j3;
            }
        }
        return j2;
    }

    /* renamed from: d */
    public final void m12468d(long j) {
        C6466yh c6466yh;
        C6279tf c6279tf;
        C6466yh c6466yh2;
        C5726eh m6825a;
        while (!this.f21524d.isEmpty() && this.f21524d.peek().f26391P0 == j) {
            C5946kg pop = this.f21524d.pop();
            if (pop.f27683a == C6020mg.f27595C) {
                ArrayList arrayList = new ArrayList();
                C6279tf c6279tf2 = new C6279tf();
                C5983lg m10043f = pop.m10043f(C6020mg.f27592A0);
                if (m10043f != null) {
                    c6466yh = C6280tg.m6823c(m10043f, this.f21535o);
                    if (c6466yh != null) {
                        c6279tf2.m6831a(c6466yh);
                    }
                } else {
                    c6466yh = null;
                }
                long j2 = -9223372036854775807L;
                long j3 = Long.MAX_VALUE;
                int i = 0;
                while (i < pop.f26393R0.size()) {
                    C5946kg c5946kg = pop.f26393R0.get(i);
                    if (c5946kg.f27683a == C6020mg.f27599E && (m6825a = C6280tg.m6825a(c5946kg, pop.m10043f(C6020mg.f27597D), -9223372036854775807L, null, this.f21535o)) != null) {
                        C5837hh m6824b = C6280tg.m6824b(m6825a, c5946kg.m10042g(C6020mg.f27601F).m10042g(C6020mg.f27603G).m10042g(C6020mg.f27605H), c6279tf2);
                        if (m6824b.f24628a != 0) {
                            C5615bh c5615bh = new C5615bh(m6825a, m6824b, this.f21532l.mo7829n(i, m6825a.f22974b));
                            C5870id m10679u = m6825a.f22978f.m10679u(m6824b.f24631d + 30);
                            if (m6825a.f22974b == 1) {
                                if (c6279tf2.m6830b()) {
                                    m10679u = m10679u.m10678v(c6279tf2.f31824a, c6279tf2.f31825b);
                                }
                                if (c6466yh != null) {
                                    m10679u = m10679u.m10676z(c6466yh);
                                }
                            }
                            c5615bh.f21058c.mo4739d(m10679u);
                            c6279tf = c6279tf2;
                            c6466yh2 = c6466yh;
                            long max = Math.max(j2, m6825a.f22977e);
                            arrayList.add(c5615bh);
                            long j4 = m6824b.f24629b[0];
                            if (j4 < j3) {
                                j2 = max;
                                j3 = j4;
                            } else {
                                j2 = max;
                            }
                            i++;
                            c6279tf2 = c6279tf;
                            c6466yh = c6466yh2;
                        }
                    }
                    c6279tf = c6279tf2;
                    c6466yh2 = c6466yh;
                    i++;
                    c6279tf2 = c6279tf;
                    c6466yh = c6466yh2;
                }
                this.f21534n = j2;
                this.f21533m = (C5615bh[]) arrayList.toArray(new C5615bh[arrayList.size()]);
                this.f21532l.mo7830j();
                this.f21532l.mo7834b(this);
                this.f21524d.clear();
                this.f21525e = 2;
            } else if (!this.f21524d.isEmpty()) {
                this.f21524d.peek().m10044e(pop);
            }
        }
        if (this.f21525e != 2) {
            m12469c();
        }
    }

    @Override // p168r4.InterfaceC6131pf
    /* renamed from: l */
    public final void mo4728l(long j, long j2) {
        this.f21524d.clear();
        this.f21528h = 0;
        this.f21530j = 0;
        this.f21531k = 0;
        if (j == 0) {
            m12469c();
            return;
        }
        C5615bh[] c5615bhArr = this.f21533m;
        if (c5615bhArr != null) {
            for (C5615bh c5615bh : c5615bhArr) {
                C5837hh c5837hh = c5615bh.f21057b;
                int m10915a = c5837hh.m10915a(j2);
                if (m10915a == -1) {
                    m10915a = c5837hh.m10914b(j2);
                }
                c5615bh.f21059d = m10915a;
            }
        }
    }

    @Override // p168r4.InterfaceC6131pf
    /* renamed from: m */
    public final int mo4727m(C6094of c6094of, C6316uf c6316uf) {
        C5615bh[] c5615bhArr;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        while (true) {
            int i = this.f21525e;
            if (i != 0) {
                if (i != 1) {
                    long j = Long.MAX_VALUE;
                    int i2 = 0;
                    int i3 = -1;
                    while (true) {
                        c5615bhArr = this.f21533m;
                        if (i2 >= c5615bhArr.length) {
                            break;
                        }
                        C5615bh c5615bh = c5615bhArr[i2];
                        int i4 = c5615bh.f21059d;
                        C5837hh c5837hh = c5615bh.f21057b;
                        if (i4 != c5837hh.f24628a) {
                            long j2 = c5837hh.f24629b[i4];
                            if (j2 < j) {
                                i3 = i2;
                                j = j2;
                            }
                        }
                        i2++;
                    }
                    if (i3 == -1) {
                        return -1;
                    }
                    C5615bh c5615bh2 = c5615bhArr[i3];
                    InterfaceC6464yf interfaceC6464yf = c5615bh2.f21058c;
                    int i5 = c5615bh2.f21059d;
                    C5837hh c5837hh2 = c5615bh2.f21057b;
                    long j3 = c5837hh2.f24629b[i5];
                    int i6 = c5837hh2.f24630c[i5];
                    if (c5615bh2.f21056a.f22979g == 1) {
                        j3 += 8;
                        i6 -= 8;
                    }
                    long m8811h = (j3 - c6094of.m8811h()) + this.f21530j;
                    if (m8811h >= 0 && m8811h < 262144) {
                        int i7 = (int) m8811h;
                        boolean z5 = false;
                        c6094of.m8815d(i7, false);
                        int i8 = c5615bh2.f21056a.f22983k;
                        if (i8 == 0) {
                            while (true) {
                                int i9 = this.f21530j;
                                if (i9 >= i6) {
                                    break;
                                }
                                int mo4741b = interfaceC6464yf.mo4741b(c6094of, i6 - i9, false);
                                this.f21530j += mo4741b;
                                this.f21531k -= mo4741b;
                            }
                        } else {
                            byte[] bArr = this.f21522b.f22312a;
                            bArr[0] = 0;
                            bArr[1] = 0;
                            bArr[2] = 0;
                            int i10 = 4 - i8;
                            while (this.f21530j < i6) {
                                int i11 = this.f21531k;
                                if (i11 == 0) {
                                    c6094of.m8817b(this.f21522b.f22312a, i10, i8, z5);
                                    this.f21522b.m12114i(z5 ? 1 : 0);
                                    this.f21531k = this.f21522b.m12102u();
                                    this.f21521a.m12114i(z5 ? 1 : 0);
                                    interfaceC6464yf.mo4740c(this.f21521a, 4);
                                    this.f21530j += 4;
                                    i6 += i10;
                                } else {
                                    int mo4741b2 = interfaceC6464yf.mo4741b(c6094of, i11, z5);
                                    this.f21530j += mo4741b2;
                                    this.f21531k -= mo4741b2;
                                    z5 = false;
                                }
                            }
                        }
                        int i12 = i6;
                        C5837hh c5837hh3 = c5615bh2.f21057b;
                        interfaceC6464yf.mo4742a(c5837hh3.f24632e[i5], c5837hh3.f24633f[i5], i12, 0, null);
                        c5615bh2.f21059d++;
                        this.f21530j = 0;
                        this.f21531k = 0;
                        return 0;
                    }
                    c6316uf.f32262a = j3;
                    return 1;
                }
                long j4 = this.f21527g - this.f21528h;
                long m8811h2 = c6094of.m8811h() + j4;
                C5692dl c5692dl = this.f21529i;
                if (c5692dl != null) {
                    c6094of.m8817b(c5692dl.f22312a, this.f21528h, (int) j4, false);
                    if (this.f21526f == C6020mg.f27633b) {
                        C5692dl c5692dl2 = this.f21529i;
                        c5692dl2.m12114i(8);
                        if (c5692dl2.m12105r() == f21520q) {
                            z2 = true;
                            break;
                        }
                        c5692dl2.m12113j(4);
                        while (c5692dl2.m12119d() > 0) {
                            if (c5692dl2.m12105r() == f21520q) {
                                z2 = true;
                                break;
                            }
                        }
                        z2 = false;
                        this.f21535o = z2;
                    } else if (!this.f21524d.isEmpty()) {
                        this.f21524d.peek().m10045d(new C5983lg(this.f21526f, this.f21529i));
                    }
                } else if (j4 < 262144) {
                    c6094of.m8815d((int) j4, false);
                } else {
                    c6316uf.f32262a = c6094of.m8811h() + j4;
                    z = true;
                    m12468d(m8811h2);
                    if (z && this.f21525e != 2) {
                        return 1;
                    }
                }
                z = false;
                m12468d(m8811h2);
                if (z) {
                    return 1;
                }
                continue;
            } else {
                if (this.f21528h == 0) {
                    if (!c6094of.m8817b(this.f21523c.f22312a, 0, 8, true)) {
                        return -1;
                    }
                    this.f21528h = 8;
                    this.f21523c.m12114i(0);
                    this.f21527g = this.f21523c.m12107p();
                    this.f21526f = this.f21523c.m12105r();
                }
                if (this.f21527g == 1) {
                    c6094of.m8817b(this.f21523c.f22312a, 8, 8, false);
                    this.f21528h += 8;
                    this.f21527g = this.f21523c.m12101v();
                }
                int i13 = this.f21526f;
                if (i13 != C6020mg.f27595C && i13 != C6020mg.f27599E && i13 != C6020mg.f27601F && i13 != C6020mg.f27603G && i13 != C6020mg.f27605H && i13 != C6020mg.f27622Q) {
                    if (i13 != C6020mg.f27624S && i13 != C6020mg.f27597D && i13 != C6020mg.f27625T && i13 != C6020mg.f27626U && i13 != C6020mg.f27656m0 && i13 != C6020mg.f27658n0 && i13 != C6020mg.f27660o0 && i13 != C6020mg.f27623R && i13 != C6020mg.f27662p0 && i13 != C6020mg.f27664q0 && i13 != C6020mg.f27666r0 && i13 != C6020mg.f27668s0 && i13 != C6020mg.f27670t0 && i13 != C6020mg.f27621P && i13 != C6020mg.f27633b && i13 != C6020mg.f27592A0) {
                        this.f21529i = null;
                    } else {
                        if (this.f21528h == 8) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        C6358vk.m6137d(z3);
                        if (this.f21527g <= 2147483647L) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        C6358vk.m6137d(z4);
                        C5692dl c5692dl3 = new C5692dl((int) this.f21527g);
                        this.f21529i = c5692dl3;
                        System.arraycopy(this.f21523c.f22312a, 0, c5692dl3.f22312a, 0, 8);
                    }
                    this.f21525e = 1;
                } else {
                    long m8811h3 = (c6094of.m8811h() + this.f21527g) - this.f21528h;
                    this.f21524d.add(new C5946kg(this.f21526f, m8811h3));
                    if (this.f21527g == this.f21528h) {
                        m12468d(m8811h3);
                    } else {
                        m12469c();
                    }
                }
            }
        }
    }
}
