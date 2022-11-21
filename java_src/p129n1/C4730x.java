package p129n1;

import com.android.p030dx.dex.DexOptions;
import com.badlogic.gdx.net.HttpStatus;
import java.util.ArrayList;
import p015b2.C0438g;
import p129n1.C4702i;
import p129n1.C4711n;
import p210w1.C7151k;
import p218x1.AbstractC7204a;
import p218x1.C7207b0;
import p218x1.C7214e0;
import p218x1.C7222j;
import p218x1.C7226n;
import p218x1.C7228p;
import p218x1.C7229q;
import p218x1.C7230r;
import p218x1.C7237y;
import p218x1.C7238z;
import p226y1.C7400a;
import p226y1.C7402c;
/* renamed from: n1.x */
/* loaded from: classes.dex */
public class C4730x {

    /* renamed from: a */
    public final InterfaceC4715q f18949a;

    /* renamed from: b */
    public final C4702i f18950b;

    /* renamed from: c */
    public C4706j f18951c;

    /* renamed from: d */
    public final C4711n f18952d;

    /* renamed from: e */
    public final C4731a f18953e;

    /* renamed from: f */
    public final DexOptions f18954f;

    /* renamed from: n1.x$a */
    /* loaded from: classes.dex */
    public class C4731a implements C4702i.InterfaceC4705c {

        /* renamed from: a */
        public final InterfaceC4715q f18955a;

        /* renamed from: b */
        public C4708l f18956b = null;

        /* renamed from: c */
        public int f18957c;

        @Override // p129n1.C4702i.InterfaceC4705c
        /* renamed from: d */
        public int mo13594d() {
            return this.f18957c;
        }

        @Override // p129n1.C4702i.InterfaceC4705c
        /* renamed from: f */
        public void mo13592f(int i) {
            this.f18957c = i;
        }

        @Override // p129n1.C4702i.InterfaceC4705c
        /* renamed from: h */
        public void mo13590h(int i, int i2, int i3) {
            throw new C4729w("invalid opcode " + C0438g.m26479f(i));
        }

        public C4731a() {
            this.f18955a = C4730x.this.f18949a;
        }

        @Override // p129n1.C4702i.InterfaceC4705c
        /* renamed from: a */
        public void mo13597a(int i, int i2, int i3, int i4, C7402c c7402c, int i5) {
            int i6;
            C7402c c7402c2;
            boolean z;
            if (i == 54) {
                i6 = i2 + i3;
            } else {
                i6 = i2;
            }
            C4711n.C4712a m15659C = C4730x.this.f18952d.m15659C(i6, i4);
            C7151k c7151k = null;
            if (m15659C != null) {
                c7402c2 = m15659C.m15651d();
                if (c7402c2.mo1521p() != c7402c.mo1521p()) {
                    c7402c2 = c7402c;
                    m15659C = null;
                }
            } else {
                c7402c2 = c7402c;
            }
            if (i != 21) {
                if (i != 54) {
                    if (i != 132) {
                        if (i != 169) {
                            mo13590h(i, i2, i3);
                            return;
                        }
                    } else {
                        if (m15659C != null) {
                            c7151k = m15659C.m15653b();
                        }
                        this.f18955a.mo15637e(this.f18956b, i4);
                        this.f18955a.mo15629n(i4, c7402c2, c7151k);
                        this.f18955a.mo15636f(c7402c);
                        this.f18955a.mo15628o(i5);
                        this.f18955a.mo15635g(C7228p.m2074C(i5));
                    }
                } else {
                    if (m15659C != null) {
                        c7151k = m15659C.m15653b();
                    }
                    this.f18955a.mo15627p(this.f18956b, c7402c);
                    this.f18955a.mo15636f(c7402c);
                    this.f18955a.mo15629n(i4, c7402c2, c7151k);
                }
                this.f18955a.mo15502j(this.f18956b, i2, i);
            }
            this.f18955a.mo15637e(this.f18956b, i4);
            InterfaceC4715q interfaceC4715q = this.f18955a;
            if (m15659C != null) {
                z = true;
            } else {
                z = false;
            }
            interfaceC4715q.mo15630m(z);
            this.f18955a.mo15636f(c7402c);
            this.f18955a.mo15502j(this.f18956b, i2, i);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:116:0x02b8  */
        @Override // p129n1.C4702i.InterfaceC4705c
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo13596b(int r9, int r10, int r11, p226y1.C7402c r12) {
            /*
                Method dump skipped, instructions count: 1000
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p129n1.C4730x.C4731a.mo13596b(int, int, int, y1.c):void");
        }

        @Override // p129n1.C4702i.InterfaceC4705c
        /* renamed from: c */
        public void mo13595c(int i, int i2, C7214e0 c7214e0, ArrayList<AbstractC7204a> arrayList) {
            this.f18955a.mo15627p(this.f18956b, C7402c.f37097y);
            this.f18955a.mo15631l(arrayList);
            this.f18955a.mo15635g(c7214e0);
            this.f18955a.mo15502j(this.f18956b, i, 188);
        }

        @Override // p129n1.C4702i.InterfaceC4705c
        /* renamed from: g */
        public void mo13591g(int i, int i2, int i3, C4732y c4732y, int i4) {
            this.f18955a.mo15627p(this.f18956b, C7402c.f37097y);
            this.f18955a.mo15628o(i4);
            this.f18955a.mo15632k(c4732y);
            this.f18955a.mo15502j(this.f18956b, i2, i);
        }

        @Override // p129n1.C4702i.InterfaceC4705c
        /* renamed from: i */
        public void mo13589i(int i, int i2, int i3, AbstractC7204a abstractC7204a, int i4) {
            C7222j c7222j;
            boolean z;
            if (i != 18 && i != 19) {
                if (i != 189) {
                    if (i != 197) {
                        if (i != 192 && i != 193) {
                            switch (i) {
                                case 179:
                                    this.f18955a.mo15627p(this.f18956b, ((C7226n) abstractC7204a).getType());
                                    c7222j = abstractC7204a;
                                    break;
                                case 180:
                                    break;
                                case 181:
                                    this.f18955a.mo15626q(this.f18956b, C7402c.f37069K, ((C7226n) abstractC7204a).getType());
                                    c7222j = abstractC7204a;
                                    break;
                                case 182:
                                case 183:
                                case 184:
                                case 185:
                                    boolean z2 = abstractC7204a instanceof C7229q;
                                    C7238z c7238z = abstractC7204a;
                                    if (z2) {
                                        C7238z m2073E = ((C7229q) abstractC7204a).m2073E();
                                        C4730x.this.m15519m(i, m2073E);
                                        c7238z = m2073E;
                                    }
                                    if ((c7238z instanceof C7238z) && ((C7238z) c7238z).m2106D()) {
                                        C4730x.this.m15518n(i);
                                    }
                                    if (i == 184) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    this.f18955a.mo15641a(this.f18956b, ((C7238z) c7238z).m2109A(z));
                                    c7222j = c7238z;
                                    break;
                                case 186:
                                    C4730x.this.m15520l(i);
                                    C7230r c7230r = (C7230r) abstractC7204a;
                                    this.f18955a.mo15641a(this.f18956b, c7230r.m2071B());
                                    c7222j = c7230r.m2065n();
                                    break;
                                default:
                                    this.f18955a.mo15640b();
                                    c7222j = abstractC7204a;
                                    break;
                            }
                        }
                        this.f18955a.mo15627p(this.f18956b, C7402c.f37069K);
                        c7222j = abstractC7204a;
                    } else {
                        this.f18955a.mo15641a(this.f18956b, C7400a.m1561v(C7402c.f37060B, i4));
                        c7222j = abstractC7204a;
                    }
                } else {
                    this.f18955a.mo15627p(this.f18956b, C7402c.f37097y);
                    c7222j = abstractC7204a;
                }
            } else {
                if ((abstractC7204a instanceof C7237y) || (abstractC7204a instanceof C7207b0)) {
                    C4730x.this.m15522j(abstractC7204a);
                }
                this.f18955a.mo15640b();
                c7222j = abstractC7204a;
            }
            this.f18955a.mo15628o(i4);
            this.f18955a.mo15635g(c7222j);
            this.f18955a.mo15502j(this.f18956b, i2, i);
        }

        /* renamed from: j */
        public final void m15512j(C7402c c7402c) {
            C7402c m1564n = this.f18955a.mo15639c().m1564n();
            if (!C4716r.m15625a(m1564n, c7402c)) {
                C4730x c4730x = C4730x.this;
                c4730x.m15517o("return type mismatch: prototype indicates " + m1564n.toHuman() + ", but encountered type " + c7402c.toHuman());
            }
        }

        /* renamed from: k */
        public void m15511k(C4708l c4708l) {
            if (c4708l != null) {
                this.f18956b = c4708l;
                return;
            }
            throw new NullPointerException("frame == null");
        }

        @Override // p129n1.C4702i.InterfaceC4705c
        /* renamed from: e */
        public void mo13593e(int i, int i2, int i3, int i4) {
            switch (i) {
                case 153:
                case 154:
                case 155:
                case 156:
                case 157:
                case 158:
                    this.f18955a.mo15627p(this.f18956b, C7402c.f37097y);
                    break;
                case 159:
                case 160:
                case 161:
                case 162:
                case 163:
                case 164:
                    InterfaceC4715q interfaceC4715q = this.f18955a;
                    C4708l c4708l = this.f18956b;
                    C7402c c7402c = C7402c.f37097y;
                    interfaceC4715q.mo15626q(c4708l, c7402c, c7402c);
                    break;
                case 165:
                case 166:
                    InterfaceC4715q interfaceC4715q2 = this.f18955a;
                    C4708l c4708l2 = this.f18956b;
                    C7402c c7402c2 = C7402c.f37069K;
                    interfaceC4715q2.mo15626q(c4708l2, c7402c2, c7402c2);
                    break;
                default:
                    switch (i) {
                        case 198:
                        case 199:
                            this.f18955a.mo15627p(this.f18956b, C7402c.f37069K);
                            break;
                        case HttpStatus.SC_OK /* 200 */:
                        case HttpStatus.SC_CREATED /* 201 */:
                            break;
                        default:
                            mo13590h(i, i2, i3);
                            return;
                    }
                case 167:
                case 168:
                    this.f18955a.mo15640b();
                    break;
            }
            this.f18955a.mo15638d(i4);
            this.f18955a.mo15502j(this.f18956b, i2, i);
        }
    }

    /* renamed from: p */
    public static C4729w m15516p() {
        return new C4729w("stack mismatch: illegal top-of-stack for opcode");
    }

    /* renamed from: o */
    public final void m15517o(String str) {
        throw new C4729w(String.format("ERROR in %s.%s: %s", this.f18951c.mo13333c().toHuman(), this.f18951c.mo13332d().toHuman(), str));
    }

    /* renamed from: s */
    public final void m15513s(String str) {
        this.f18954f.err.println(String.format("WARNING in %s.%s: %s", this.f18951c.mo13333c().toHuman(), this.f18951c.mo13332d().toHuman(), str));
    }

    /* renamed from: q */
    public static C7402c m15515q(C7402c c7402c, C7402c c7402c2) {
        C7402c c7402c3;
        C7402c c7402c4 = C7402c.f37061C;
        if (c7402c2 == c7402c4) {
            if (!c7402c.m1534N()) {
                return c7402c.m1528j();
            }
            return c7402c4;
        } else if (c7402c == C7402c.f37069K && c7402c2.m1540H() && c7402c2.m1525x().m1534N()) {
            return c7402c2;
        } else {
            if (c7402c == C7402c.f37093u && c7402c2 == (c7402c3 = C7402c.f37082X)) {
                return c7402c3;
            }
            return c7402c.m1528j();
        }
    }

    /* renamed from: j */
    public final void m15522j(AbstractC7204a abstractC7204a) {
        if (!this.f18954f.apiIsSupported(28)) {
            m15517o(String.format("invalid constant type %s requires --min-sdk-version >= %d (currently %d)", abstractC7204a.mo2042j(), 28, Integer.valueOf(this.f18954f.minSdkVersion)));
        }
    }

    /* renamed from: k */
    public final void m15521k(C4706j c4706j) {
        String str;
        if (!this.f18954f.apiIsSupported(24)) {
            Object[] objArr = new Object[5];
            if (c4706j.m15699m()) {
                str = "static";
            } else {
                str = "default";
            }
            objArr[0] = str;
            objArr[1] = 24;
            objArr[2] = Integer.valueOf(this.f18954f.minSdkVersion);
            objArr[3] = c4706j.mo13333c().toHuman();
            objArr[4] = c4706j.mo13332d().toHuman();
            m15513s(String.format("defining a %s interface method requires --min-sdk-version >= %d (currently %d) for interface methods: %s.%s", objArr));
        }
    }

    /* renamed from: l */
    public final void m15520l(int i) {
        if (!this.f18954f.apiIsSupported(26)) {
            m15517o(String.format("invalid opcode %02x - invokedynamic requires --min-sdk-version >= %d (currently %d)", Integer.valueOf(i), 26, Integer.valueOf(this.f18954f.minSdkVersion)));
        }
    }

    /* renamed from: m */
    public final void m15519m(int i, C7238z c7238z) {
        String str;
        if (i == 185 || this.f18954f.apiIsSupported(24)) {
            return;
        }
        DexOptions dexOptions = this.f18954f;
        boolean z = dexOptions.allowAllInterfaceMethodInvokes;
        if (i == 184) {
            z &= dexOptions.apiIsSupported(21);
        }
        if (i == 184) {
            str = "static";
        } else {
            str = "default";
        }
        if (z) {
            m15513s(String.format("invoking a %s interface method %s.%s strictly requires --min-sdk-version >= %d (experimental at current API level %d)", str, c7238z.m2054n().toHuman(), c7238z.m2053u().toHuman(), 24, Integer.valueOf(this.f18954f.minSdkVersion)));
        } else {
            m15517o(String.format("invoking a %s interface method %s.%s strictly requires --min-sdk-version >= %d (blocked at current API level %d)", str, c7238z.m2054n().toHuman(), c7238z.m2053u().toHuman(), 24, Integer.valueOf(this.f18954f.minSdkVersion)));
        }
    }

    /* renamed from: n */
    public final void m15518n(int i) {
        if (!this.f18954f.apiIsSupported(26)) {
            m15517o(String.format("invoking a signature-polymorphic requires --min-sdk-version >= %d (currently %d)", 26, Integer.valueOf(this.f18954f.minSdkVersion)));
        } else if (i != 182) {
            m15517o("Unsupported signature polymorphic invocation (" + C4701h.m15718b(i) + ")");
        }
    }

    public C4730x(InterfaceC4715q interfaceC4715q, C4706j c4706j, DexOptions dexOptions) {
        if (interfaceC4715q != null) {
            if (c4706j != null) {
                if (dexOptions != null) {
                    this.f18949a = interfaceC4715q;
                    this.f18950b = c4706j.m15705g();
                    this.f18951c = c4706j;
                    this.f18952d = c4706j.m15704h();
                    this.f18953e = new C4731a();
                    this.f18954f = dexOptions;
                    if (c4706j.m15700l()) {
                        m15521k(c4706j);
                        return;
                    }
                    return;
                }
                throw new NullPointerException("dexOptions == null");
            }
            throw new NullPointerException("method == null");
        }
        throw new NullPointerException("machine == null");
    }

    /* renamed from: r */
    public void m15514r(C4697e c4697e, C4708l c4708l) {
        int m15738c = c4697e.m15738c();
        this.f18953e.m15511k(c4708l);
        try {
            int m15737d = c4697e.m15737d();
            while (m15737d < m15738c) {
                int m15714d = this.f18950b.m15714d(m15737d, this.f18953e);
                this.f18953e.mo13592f(m15737d);
                m15737d += m15714d;
            }
        } catch (C4729w e) {
            c4708l.m15682b(e);
            throw e;
        }
    }
}
