package p192u1;

import java.util.HashMap;
import p015b2.C0435e;
import p102k1.C4400a;
import p102k1.C4401b;
import p102k1.C4405d;
import p102k1.C4409f;
import p102k1.C4420g;
import p102k1.C4423j;
import p102k1.C4424k;
import p102k1.C4425l;
import p102k1.C4426m;
import p102k1.C4427n;
import p102k1.C4428o;
import p102k1.C4431p;
import p102k1.C4433r;
import p102k1.C4434s;
import p102k1.C4436t;
import p111l1.InterfaceC4556c;
/* renamed from: u1.c */
/* loaded from: classes.dex */
public final class C6867c {

    /* renamed from: a */
    public final C4409f f35715a;

    /* renamed from: b */
    public final int[] f35716b;

    /* renamed from: c */
    public final short[] f35717c;

    /* renamed from: d */
    public final short[] f35718d;

    /* renamed from: e */
    public final short[] f35719e;

    /* renamed from: f */
    public final short[] f35720f;

    /* renamed from: g */
    public final int[] f35721g;

    /* renamed from: h */
    public final HashMap<Integer, Integer> f35722h = new HashMap<>();

    /* renamed from: i */
    public final HashMap<Integer, Integer> f35723i;

    /* renamed from: j */
    public final HashMap<Integer, Integer> f35724j;

    /* renamed from: k */
    public final HashMap<Integer, Integer> f35725k;

    /* renamed from: l */
    public final HashMap<Integer, Integer> f35726l;

    /* renamed from: m */
    public final HashMap<Integer, Integer> f35727m;

    /* renamed from: n */
    public final HashMap<Integer, Integer> f35728n;

    /* renamed from: u1.c$a */
    /* loaded from: classes.dex */
    public final class C6868a {

        /* renamed from: a */
        public final InterfaceC4556c f35729a;

        /* renamed from: f */
        public final void m3087f(int i, int i2) {
            this.f35729a.writeByte(i | (i2 << 5));
        }

        public C6868a(InterfaceC4556c interfaceC4556c) {
            this.f35729a = interfaceC4556c;
        }

        /* renamed from: c */
        public void m3090c(C4425l c4425l) {
            int m16550c = c4425l.m16550c();
            if (m16550c != 0) {
                if (m16550c != 6) {
                    if (m16550c != 2) {
                        if (m16550c != 3) {
                            if (m16550c != 4) {
                                if (m16550c != 16) {
                                    if (m16550c != 17) {
                                        switch (m16550c) {
                                            case 21:
                                                C4424k.m16553g(this.f35729a, 21, C6867c.this.m3100s(c4425l.m16535r()));
                                                return;
                                            case 22:
                                                C4424k.m16553g(this.f35729a, 22, C6867c.this.m3101r(c4425l.m16536q()));
                                                return;
                                            case 23:
                                                C4424k.m16553g(this.f35729a, 23, C6867c.this.m3099t(c4425l.m16532u()));
                                                return;
                                            case 24:
                                                C4424k.m16553g(this.f35729a, 24, C6867c.this.m3098u(c4425l.m16531v()));
                                                return;
                                            case 25:
                                                C4424k.m16553g(this.f35729a, 25, C6867c.this.m3103p(c4425l.m16541l()));
                                                return;
                                            case 26:
                                                C4424k.m16553g(this.f35729a, 26, C6867c.this.m3102q(c4425l.m16537p()));
                                                return;
                                            case 27:
                                                C4424k.m16553g(this.f35729a, 27, C6867c.this.m3103p(c4425l.m16542k()));
                                                return;
                                            case 28:
                                                m3087f(28, 0);
                                                m3088e(c4425l);
                                                return;
                                            case 29:
                                                m3087f(29, 0);
                                                m3089d(c4425l);
                                                return;
                                            case 30:
                                                c4425l.m16534s();
                                                m3087f(30, 0);
                                                return;
                                            case 31:
                                                m3087f(31, c4425l.m16546g() ? 1 : 0);
                                                return;
                                            default:
                                                throw new C4420g("Unexpected type: " + Integer.toHexString(c4425l.m16550c()));
                                        }
                                    }
                                    C4424k.m16555e(this.f35729a, 17, Double.doubleToLongBits(c4425l.m16543j()));
                                    return;
                                }
                                C4424k.m16555e(this.f35729a, 16, Float.floatToIntBits(c4425l.m16540m()) << 32);
                                return;
                            }
                            C4424k.m16554f(this.f35729a, 4, c4425l.m16539n());
                            return;
                        }
                        C4424k.m16553g(this.f35729a, 3, c4425l.m16544i());
                        return;
                    }
                    C4424k.m16554f(this.f35729a, 2, c4425l.m16533t());
                    return;
                }
                C4424k.m16554f(this.f35729a, 6, c4425l.m16538o());
                return;
            }
            C4424k.m16554f(this.f35729a, 0, c4425l.m16545h());
        }

        /* renamed from: d */
        public final void m3089d(C4425l c4425l) {
            int m16549d = c4425l.m16549d();
            C4427n.m16520e(this.f35729a, C6867c.this.m3098u(c4425l.m16551b()));
            C4427n.m16520e(this.f35729a, m16549d);
            for (int i = 0; i < m16549d; i++) {
                C4427n.m16520e(this.f35729a, C6867c.this.m3099t(c4425l.m16548e()));
                m3090c(c4425l);
            }
        }

        /* renamed from: e */
        public final void m3088e(C4425l c4425l) {
            int m16547f = c4425l.m16547f();
            C4427n.m16520e(this.f35729a, m16547f);
            for (int i = 0; i < m16547f; i++) {
                m3090c(c4425l);
            }
        }
    }

    /* renamed from: b */
    public C4401b m3117b(C4401b c4401b) {
        return new C4401b(this.f35715a, m3105n(c4401b.m16675d()));
    }

    /* renamed from: i */
    public int m3110i(int i) {
        return this.f35724j.get(Integer.valueOf(i)).intValue();
    }

    /* renamed from: j */
    public int m3109j(int i) {
        return this.f35727m.get(Integer.valueOf(i)).intValue();
    }

    /* renamed from: k */
    public int m3108k(int i) {
        return this.f35725k.get(Integer.valueOf(i)).intValue();
    }

    /* renamed from: l */
    public int m3107l(int i) {
        return this.f35726l.get(Integer.valueOf(i)).intValue();
    }

    /* renamed from: m */
    public int m3106m(int i) {
        return this.f35721g[i];
    }

    /* renamed from: n */
    public int m3105n(int i) {
        return this.f35728n.get(Integer.valueOf(i)).intValue();
    }

    /* renamed from: p */
    public int m3103p(int i) {
        return this.f35719e[i] & 65535;
    }

    /* renamed from: q */
    public int m3102q(int i) {
        return this.f35720f[i] & 65535;
    }

    /* renamed from: r */
    public int m3101r(int i) {
        return this.f35722h.get(Integer.valueOf(i)).intValue();
    }

    /* renamed from: s */
    public int m3100s(int i) {
        return this.f35718d[i] & 65535;
    }

    /* renamed from: t */
    public int m3099t(int i) {
        if (i == -1) {
            return -1;
        }
        return this.f35716b[i];
    }

    /* renamed from: u */
    public int m3098u(int i) {
        if (i == -1) {
            return -1;
        }
        return 65535 & this.f35717c[i];
    }

    /* renamed from: w */
    public int m3096w(int i) {
        return this.f35723i.get(Integer.valueOf(i)).intValue();
    }

    /* renamed from: A */
    public void m3121A(int i, int i2) {
        if (i > 0 && i2 > 0) {
            this.f35726l.put(Integer.valueOf(i), Integer.valueOf(i2));
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: B */
    public void m3120B(int i, int i2) {
        if (i > 0 && i2 > 0) {
            this.f35728n.put(Integer.valueOf(i), Integer.valueOf(i2));
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: C */
    public void m3119C(int i, int i2) {
        if (i > 0 && i2 > 0) {
            this.f35723i.put(Integer.valueOf(i), Integer.valueOf(i2));
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public C4400a m3118a(C4400a c4400a) {
        C0435e c0435e = new C0435e(32);
        new C6868a(c0435e).m3089d(c4400a.m16680d());
        return new C4400a(this.f35715a, c4400a.m16678h(), new C4423j(c0435e.m26493r()));
    }

    /* renamed from: c */
    public C4405d m3116c(C4405d c4405d) {
        return new C4405d(this.f35715a, c4405d.m16659f(), m3098u(c4405d.m16655j()), c4405d.m16664a(), m3098u(c4405d.m16656i()), m3096w(c4405d.m16660e()), c4405d.m16658g(), c4405d.m16663b(), c4405d.m16662c(), c4405d.m16657h());
    }

    /* renamed from: d */
    public C4426m m3115d(C4426m c4426m) {
        return new C4426m(this.f35715a, m3098u(c4426m.m16528d()), m3098u(c4426m.m16526h()), m3099t(c4426m.m16527f()));
    }

    /* renamed from: e */
    public C4428o m3114e(C4428o c4428o) {
        int m3102q;
        C4409f c4409f = this.f35715a;
        C4428o.EnumC4430b m16517f = c4428o.m16517f();
        int m16516h = c4428o.m16516h();
        if (c4428o.m16517f().m16511f()) {
            m3102q = m3103p(c4428o.m16518d());
        } else {
            m3102q = m3102q(c4428o.m16518d());
        }
        return new C4428o(c4409f, m16517f, m16516h, m3102q, c4428o.m16515j());
    }

    /* renamed from: f */
    public C4431p m3113f(C4431p c4431p) {
        return new C4431p(this.f35715a, m3098u(c4431p.m16509d()), m3100s(c4431p.m16507h()), m3099t(c4431p.m16508f()));
    }

    /* renamed from: g */
    public C4433r m3112g(C4433r c4433r) {
        return new C4433r(this.f35715a, m3099t(c4433r.m16498h()), m3098u(c4433r.m16499f()), m3096w(c4433r.m16500d()));
    }

    /* renamed from: h */
    public C6878e m3111h(C6878e c6878e) {
        return new C6878e(c6878e.m3077c(), c6878e.m3076d(), m3116c(c6878e.m3078b()));
    }

    /* renamed from: o */
    public C4423j m3104o(C4423j c4423j) {
        C0435e c0435e = new C0435e(32);
        new C6868a(c0435e).m3088e(new C4425l(c4423j, 28));
        return new C4423j(c0435e.m26493r());
    }

    /* renamed from: v */
    public C4436t m3097v(C4436t c4436t) {
        if (c4436t == C4436t.f18452d) {
            return c4436t;
        }
        short[] sArr = (short[]) c4436t.m16486d().clone();
        for (int i = 0; i < sArr.length; i++) {
            sArr[i] = (short) m3098u(sArr[i]);
        }
        return new C4436t(this.f35715a, sArr);
    }

    /* renamed from: x */
    public void m3095x(int i, int i2) {
        if (i > 0 && i2 > 0) {
            this.f35727m.put(Integer.valueOf(i), Integer.valueOf(i2));
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: y */
    public void m3094y(int i, int i2) {
        if (i > 0 && i2 > 0) {
            this.f35724j.put(Integer.valueOf(i), Integer.valueOf(i2));
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: z */
    public void m3093z(int i, int i2) {
        if (i > 0 && i2 > 0) {
            this.f35725k.put(Integer.valueOf(i), Integer.valueOf(i2));
            return;
        }
        throw new IllegalArgumentException();
    }

    public C6867c(C4409f c4409f, C4434s c4434s) {
        this.f35715a = c4409f;
        this.f35716b = new int[c4434s.f18423b.f18449b];
        this.f35717c = new short[c4434s.f18424c.f18449b];
        this.f35718d = new short[c4434s.f18425d.f18449b];
        this.f35719e = new short[c4434s.f18426e.f18449b];
        this.f35720f = new short[c4434s.f18427f.f18449b];
        this.f35721g = new int[c4434s.f18429h.f18449b];
        HashMap<Integer, Integer> hashMap = new HashMap<>();
        this.f35723i = hashMap;
        this.f35724j = new HashMap<>();
        HashMap<Integer, Integer> hashMap2 = new HashMap<>();
        this.f35725k = hashMap2;
        this.f35726l = new HashMap<>();
        HashMap<Integer, Integer> hashMap3 = new HashMap<>();
        this.f35727m = hashMap3;
        HashMap<Integer, Integer> hashMap4 = new HashMap<>();
        this.f35728n = hashMap4;
        hashMap.put(0, 0);
        hashMap2.put(0, 0);
        hashMap3.put(0, 0);
        hashMap4.put(0, 0);
    }
}
