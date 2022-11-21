package p147p1;

import p015b2.C0432d;
import p015b2.C0438g;
import p120m1.C4599b;
import p120m1.C4615r;
import p129n1.C4695d;
import p138o1.C5063a;
import p156q1.C5399i;
import p156q1.C5401k;
import p156q1.InterfaceC5391a;
import p156q1.InterfaceC5392b;
import p156q1.InterfaceC5393c;
import p156q1.InterfaceC5395e;
import p156q1.InterfaceC5398h;
import p156q1.InterfaceC5400j;
import p210w1.C7136a;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p218x1.C7216f0;
import p218x1.InterfaceC7206b;
import p226y1.C7401b;
import p226y1.C7402c;
import p226y1.InterfaceC7404e;
/* renamed from: p1.f */
/* loaded from: classes.dex */
public class C5305f implements InterfaceC5393c {

    /* renamed from: a */
    public final String f19879a;

    /* renamed from: b */
    public final C0432d f19880b;

    /* renamed from: c */
    public final boolean f19881c;

    /* renamed from: d */
    public C7216f0 f19882d;

    /* renamed from: e */
    public int f19883e;

    /* renamed from: f */
    public C7214e0 f19884f;

    /* renamed from: g */
    public C7214e0 f19885g;

    /* renamed from: h */
    public InterfaceC7404e f19886h;

    /* renamed from: i */
    public InterfaceC5395e f19887i;

    /* renamed from: j */
    public InterfaceC5398h f19888j;

    /* renamed from: k */
    public C5401k f19889k;

    /* renamed from: l */
    public C5296b f19890l;

    /* renamed from: m */
    public InterfaceC5400j f19891m;

    /* renamed from: p1.f$a */
    /* loaded from: classes.dex */
    public static class C5306a implements InterfaceC7404e {

        /* renamed from: a */
        public final C0432d f19892a;

        /* renamed from: b */
        public final int f19893b;

        /* renamed from: d */
        public final C7216f0 f19894d;

        @Override // p226y1.InterfaceC7404e
        /* renamed from: d */
        public InterfaceC7404e mo1519d(C7402c c7402c) {
            throw new UnsupportedOperationException("unsupported");
        }

        @Override // p226y1.InterfaceC7404e
        public boolean isMutable() {
            return false;
        }

        @Override // p226y1.InterfaceC7404e
        public int size() {
            return this.f19893b;
        }

        @Override // p226y1.InterfaceC7404e
        public C7402c getType(int i) {
            return ((C7214e0) this.f19894d.get(this.f19892a.m26509n(i * 2))).m2097x();
        }

        public C5306a(C0432d c0432d, int i, int i2, C7216f0 c7216f0, InterfaceC5400j interfaceC5400j) {
            if (i2 >= 0) {
                C0432d m26505r = c0432d.m26505r(i, (i2 * 2) + i);
                this.f19892a = m26505r;
                this.f19893b = i2;
                this.f19894d = c7216f0;
                for (int i3 = 0; i3 < i2; i3++) {
                    int i4 = i3 * 2;
                    try {
                        C7214e0 c7214e0 = (C7214e0) c7216f0.get(m26505r.m26509n(i4));
                        if (interfaceC5400j != null) {
                            interfaceC5400j.m13345a(m26505r, i4, 2, "  " + c7214e0);
                        }
                    } catch (ClassCastException e) {
                        throw new RuntimeException("bogus class cpi", e);
                    }
                }
                return;
            }
            throw new IllegalArgumentException("size < 0");
        }
    }

    public C5305f(C0432d c0432d, String str, boolean z) {
        if (c0432d == null) {
            throw new NullPointerException("bytes == null");
        }
        if (str != null) {
            this.f19879a = str;
            this.f19880b = c0432d;
            this.f19881c = z;
            this.f19883e = -1;
            return;
        }
        throw new NullPointerException("filePath == null");
    }

    /* renamed from: y */
    public static String m13561y(Object obj) {
        return obj == null ? "(none)" : obj.toString();
    }

    /* renamed from: e */
    public C0432d m13581e() {
        return this.f19880b;
    }

    /* renamed from: h */
    public String m13578h() {
        return this.f19879a;
    }

    /* renamed from: k */
    public int m13575k() {
        return this.f19880b.m26514i(0);
    }

    /* renamed from: l */
    public int m13574l() {
        return this.f19880b.m26509n(6);
    }

    /* renamed from: n */
    public int m13572n() {
        return this.f19880b.m26509n(4);
    }

    /* renamed from: q */
    public final boolean m13569q(int i) {
        return i == -889275714;
    }

    /* renamed from: r */
    public final boolean m13568r(int i, int i2) {
        if (i >= 0) {
            return i2 == 53 ? i <= 0 : i2 < 53 && i2 >= 45;
        }
        return false;
    }

    /* renamed from: s */
    public InterfaceC7404e m13567s(int i, int i2) {
        if (i2 == 0) {
            return C7401b.f37044a;
        }
        C7216f0 c7216f0 = this.f19882d;
        if (c7216f0 != null) {
            return new C5306a(this.f19880b, i, i2, c7216f0, this.f19891m);
        }
        throw new IllegalStateException("pool not yet initialized");
    }

    /* renamed from: t */
    public final void m13566t() {
        try {
            m13565u();
        } catch (C5399i e) {
            e.m16013a("...while parsing " + this.f19879a);
            throw e;
        } catch (RuntimeException e2) {
            C5399i c5399i = new C5399i(e2);
            c5399i.m16013a("...while parsing " + this.f19879a);
            throw c5399i;
        }
    }

    /* renamed from: u */
    public final void m13565u() {
        if (this.f19880b.m26506q() >= 10) {
            InterfaceC5400j interfaceC5400j = this.f19891m;
            if (interfaceC5400j != null) {
                interfaceC5400j.m13345a(this.f19880b, 0, 0, "begin classfile");
                InterfaceC5400j interfaceC5400j2 = this.f19891m;
                C0432d c0432d = this.f19880b;
                interfaceC5400j2.m13345a(c0432d, 0, 4, "magic: " + C0438g.m26475j(m13575k()));
                InterfaceC5400j interfaceC5400j3 = this.f19891m;
                C0432d c0432d2 = this.f19880b;
                interfaceC5400j3.m13345a(c0432d2, 4, 2, "minor_version: " + C0438g.m26478g(m13572n()));
                InterfaceC5400j interfaceC5400j4 = this.f19891m;
                C0432d c0432d3 = this.f19880b;
                interfaceC5400j4.m13345a(c0432d3, 6, 2, "major_version: " + C0438g.m26478g(m13574l()));
            }
            if (this.f19881c) {
                if (m13569q(m13575k())) {
                    if (!m13568r(m13572n(), m13574l())) {
                        throw new C5399i("unsupported class file version " + m13574l() + "." + m13572n());
                    }
                } else {
                    throw new C5399i("bad class file magic (" + C0438g.m26475j(m13575k()) + ")");
                }
            }
            C5063a c5063a = new C5063a(this.f19880b);
            c5063a.m14727i(this.f19891m);
            C7216f0 m14732d = c5063a.m14732d();
            this.f19882d = m14732d;
            m14732d.setImmutable();
            int m14734b = c5063a.m14734b();
            int m26509n = this.f19880b.m26509n(m14734b);
            int i = m14734b + 2;
            this.f19884f = (C7214e0) this.f19882d.get(this.f19880b.m26509n(i));
            int i2 = m14734b + 4;
            this.f19885g = (C7214e0) this.f19882d.mo2092u(this.f19880b.m26509n(i2));
            int i3 = m14734b + 6;
            int m26509n2 = this.f19880b.m26509n(i3);
            InterfaceC5400j interfaceC5400j5 = this.f19891m;
            if (interfaceC5400j5 != null) {
                C0432d c0432d4 = this.f19880b;
                interfaceC5400j5.m13345a(c0432d4, m14734b, 2, "access_flags: " + C7136a.m2460a(m26509n));
                InterfaceC5400j interfaceC5400j6 = this.f19891m;
                C0432d c0432d5 = this.f19880b;
                interfaceC5400j6.m13345a(c0432d5, i, 2, "this_class: " + this.f19884f);
                InterfaceC5400j interfaceC5400j7 = this.f19891m;
                C0432d c0432d6 = this.f19880b;
                interfaceC5400j7.m13345a(c0432d6, i2, 2, "super_class: " + m13561y(this.f19885g));
                InterfaceC5400j interfaceC5400j8 = this.f19891m;
                C0432d c0432d7 = this.f19880b;
                interfaceC5400j8.m13345a(c0432d7, i3, 2, "interfaces_count: " + C0438g.m26478g(m26509n2));
                if (m26509n2 != 0) {
                    this.f19891m.m13345a(this.f19880b, m14734b + 8, 0, "interfaces:");
                }
            }
            int i4 = m14734b + 8;
            this.f19886h = m13567s(i4, m26509n2);
            int i5 = i4 + (m26509n2 * 2);
            if (this.f19881c) {
                String m1526u = this.f19884f.m2097x().m1526u();
                if (!this.f19879a.endsWith(".class") || !this.f19879a.startsWith(m1526u) || this.f19879a.length() != m1526u.length() + 6) {
                    throw new C5399i("class name (" + m1526u + ") does not match path (" + this.f19879a + ")");
                }
            }
            this.f19883e = m26509n;
            C5307g c5307g = new C5307g(this, this.f19884f, i5, this.f19890l);
            c5307g.m13554j(this.f19891m);
            this.f19887i = c5307g.m13560k();
            C5309i c5309i = new C5309i(this, this.f19884f, c5307g.m13557d(), this.f19890l);
            c5309i.m13554j(this.f19891m);
            this.f19888j = c5309i.m13549k();
            C5297c c5297c = new C5297c(this, 0, c5309i.m13557d(), this.f19890l);
            c5297c.m13606e(this.f19891m);
            C5401k m13609b = c5297c.m13609b();
            this.f19889k = m13609b;
            m13609b.setImmutable();
            int m13610a = c5297c.m13610a();
            if (m13610a == this.f19880b.m26506q()) {
                InterfaceC5400j interfaceC5400j9 = this.f19891m;
                if (interfaceC5400j9 != null) {
                    interfaceC5400j9.m13345a(this.f19880b, m13610a, 0, "end classfile");
                    return;
                }
                return;
            }
            throw new C5399i("extra bytes at end of class file, at offset " + C0438g.m26475j(m13610a));
        }
        throw new C5399i("severely truncated class file");
    }

    /* renamed from: v */
    public final void m13564v() {
        if (this.f19889k == null) {
            m13566t();
        }
    }

    /* renamed from: w */
    public final void m13563w() {
        if (this.f19883e == -1) {
            m13566t();
        }
    }

    /* renamed from: x */
    public void m13562x(C5296b c5296b) {
        if (c5296b != null) {
            this.f19890l = c5296b;
            return;
        }
        throw new NullPointerException("attributeFactory == null");
    }

    @Override // p156q1.InterfaceC5393c
    /* renamed from: a */
    public int mo13347a() {
        m13563w();
        return this.f19883e;
    }

    @Override // p156q1.InterfaceC5393c
    /* renamed from: b */
    public C7212d0 mo13346b() {
        InterfaceC5391a mo13340j = m13583c().mo13340j("SourceFile");
        if (mo13340j instanceof C4615r) {
            return ((C4615r) mo13340j).m15923a();
        }
        return null;
    }

    /* renamed from: c */
    public InterfaceC5392b m13583c() {
        m13564v();
        return this.f19889k;
    }

    /* renamed from: d */
    public C4695d m13582d() {
        C4599b c4599b = (C4599b) m13583c().mo13340j("BootstrapMethods");
        if (c4599b != null) {
            return c4599b.m15937a();
        }
        return C4695d.f18846a;
    }

    /* renamed from: f */
    public InterfaceC7206b m13580f() {
        m13563w();
        return this.f19882d;
    }

    /* renamed from: g */
    public InterfaceC5395e m13579g() {
        m13564v();
        return this.f19887i;
    }

    /* renamed from: i */
    public InterfaceC7404e m13577i() {
        m13563w();
        return this.f19886h;
    }

    /* renamed from: j */
    public int m13576j() {
        m13563w();
        return m13575k();
    }

    /* renamed from: m */
    public InterfaceC5398h m13573m() {
        m13564v();
        return this.f19888j;
    }

    /* renamed from: o */
    public C7214e0 m13571o() {
        m13563w();
        return this.f19885g;
    }

    /* renamed from: p */
    public C7214e0 m13570p() {
        m13563w();
        return this.f19884f;
    }

    public C5305f(byte[] bArr, String str, boolean z) {
        this(new C0432d(bArr), str, z);
    }
}
