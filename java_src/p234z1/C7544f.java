package p234z1;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashSet;
import java.util.Iterator;
import net.bytebuddy.description.method.MethodDescription;
import p210w1.AbstractC7146h;
import p210w1.C7144f;
import p210w1.C7145g;
import p210w1.C7154n;
import p210w1.C7155o;
import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7164t;
import p210w1.C7166v;
import p210w1.C7169y;
import p210w1.C7170z;
import p218x1.AbstractC7204a;
import p218x1.AbstractC7218g0;
import p218x1.AbstractC7234v;
import p218x1.C7205a0;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p218x1.C7220h0;
import p218x1.C7238z;
import p226y1.C7401b;
import p226y1.C7402c;
import p226y1.InterfaceC7403d;
import p234z1.AbstractC7572u;
import p234z1.C7568s;
/* renamed from: z1.f */
/* loaded from: classes.dex */
public class C7544f {

    /* renamed from: a */
    public final C7574v f37423a;

    /* renamed from: b */
    public final int f37424b;

    /* renamed from: c */
    public final ArrayList<C7548c> f37425c = new ArrayList<>();

    /* renamed from: z1.f$b */
    /* loaded from: classes.dex */
    public class C7546b implements C7568s.InterfaceC7570b {

        /* renamed from: z1.f$b$a */
        /* loaded from: classes.dex */
        public class C7547a implements AbstractC7572u.InterfaceC7573a {
            public C7547a() {
            }

            @Override // p234z1.AbstractC7572u.InterfaceC7573a
            /* renamed from: a */
            public void mo1045a(C7561n c7561n) {
            }

            @Override // p234z1.AbstractC7572u.InterfaceC7573a
            /* renamed from: b */
            public void mo1044b(C7558l c7558l) {
                C7544f.this.m1253l(c7558l);
            }

            @Override // p234z1.AbstractC7572u.InterfaceC7573a
            /* renamed from: c */
            public void mo1043c(C7558l c7558l) {
            }
        }

        public C7546b() {
        }

        @Override // p234z1.C7568s.InterfaceC7570b
        /* renamed from: a */
        public void mo1046a(C7568s c7568s, C7568s c7568s2) {
            c7568s.m1150l(new C7547a());
        }
    }

    /* renamed from: z1.f$d */
    /* loaded from: classes.dex */
    public enum EnumC7549d {
        TOP,
        NONE,
        METHOD,
        INTER,
        GLOBAL
    }

    /* renamed from: k */
    public static void m1254k(C7574v c7574v) {
        new C7544f(c7574v).m1245t();
    }

    /* renamed from: d */
    public final int m1261d(C7157q c7157q) {
        int i = 0;
        while (i < this.f37425c.size()) {
            if (this.f37425c.get(i).f37431a.get(c7157q.m2380B())) {
                return i;
            }
            i++;
        }
        return i;
    }

    /* renamed from: g */
    public final void m1258g(AbstractC7572u abstractC7572u, C7157q c7157q, HashSet<AbstractC7572u> hashSet) {
        C7214e0 c7214e0 = new C7214e0(C7144f.f36166b);
        C7160r c7160r = C7160r.f36212a;
        m1256i(abstractC7572u, c7160r, null, 40, c7214e0);
        C7568s m1112i = abstractC7572u.m1112i();
        C7568s m1171E = m1112i.m1171E(m1112i.m1140v());
        AbstractC7572u abstractC7572u2 = m1171E.m1145q().get(0);
        C7157q m2373J = C7157q.m2373J(this.f37423a.m1103B(), c7214e0);
        m1257h(abstractC7572u2, c7160r, m2373J, 56, null);
        C7568s m1171E2 = m1171E.m1171E(m1171E.m1140v());
        AbstractC7572u abstractC7572u3 = m1171E2.m1145q().get(0);
        m1256i(abstractC7572u3, C7160r.m2343E(m2373J, c7157q), null, 52, new C7238z(c7214e0, new C7205a0(new C7212d0(MethodDescription.CONSTRUCTOR_INTERNAL_NAME), new C7212d0("(I)V"))));
        hashSet.add(abstractC7572u3);
        C7568s m1171E3 = m1171E2.m1171E(m1171E2.m1140v());
        AbstractC7572u abstractC7572u4 = m1171E3.m1145q().get(0);
        m1256i(abstractC7572u4, C7160r.m2344D(m2373J), null, 35, null);
        m1171E3.m1165K(m1171E3.m1139w(), this.f37423a.m1074q().m1146p());
        hashSet.add(abstractC7572u4);
    }

    /* renamed from: j */
    public final void m1255j() {
        for (int i = 0; i < this.f37423a.m1070u(); i++) {
            AbstractC7572u m1077n = this.f37423a.m1077n(i);
            if (m1077n != null && m1077n.mo1110n() != null && m1077n.mo1110n().m2314d() == 2) {
                ArrayList<AbstractC7572u>[] m1069v = this.f37423a.m1069v();
                C7157q m2347A = m1077n.mo1107u().m2347A(0);
                C7157q m1108t = m1077n.m1108t();
                if (m2347A.m2380B() >= this.f37424b || m1108t.m2380B() >= this.f37424b) {
                    C7545a c7545a = new C7545a(m1108t, m2347A);
                    Iterator<AbstractC7572u> it = m1069v[m1108t.m2380B()].iterator();
                    while (it.hasNext()) {
                        it.next().mo1120F(c7545a);
                    }
                }
            }
        }
    }

    /* renamed from: z1.f$a */
    /* loaded from: classes.dex */
    public class C7545a extends AbstractC7565p {

        /* renamed from: a */
        public final /* synthetic */ C7157q f37426a;

        /* renamed from: b */
        public final /* synthetic */ C7157q f37427b;

        public C7545a(C7157q c7157q, C7157q c7157q2) {
            this.f37426a = c7157q;
            this.f37427b = c7157q2;
        }

        @Override // p234z1.AbstractC7565p
        /* renamed from: a */
        public int mo1035a() {
            return C7544f.this.f37423a.m1070u();
        }

        @Override // p234z1.AbstractC7565p
        /* renamed from: b */
        public C7157q mo1034b(C7157q c7157q) {
            if (c7157q.m2380B() == this.f37426a.m2380B()) {
                return this.f37427b;
            }
            return c7157q;
        }
    }

    /* renamed from: z1.f$c */
    /* loaded from: classes.dex */
    public static class C7548c {

        /* renamed from: a */
        public BitSet f37431a;

        /* renamed from: b */
        public EnumC7549d f37432b;

        /* renamed from: c */
        public ArrayList<C7548c> f37433c;

        /* renamed from: d */
        public ArrayList<C7548c> f37434d;

        /* renamed from: e */
        public boolean f37435e;

        public C7548c(int i, int i2, EnumC7549d enumC7549d) {
            BitSet bitSet = new BitSet(i2);
            this.f37431a = bitSet;
            bitSet.set(i);
            this.f37432b = enumC7549d;
            this.f37433c = new ArrayList<>();
            this.f37434d = new ArrayList<>();
            this.f37435e = false;
        }
    }

    /* renamed from: c */
    public final void m1262c(C7548c c7548c, C7548c c7548c2) {
        if (!c7548c2.f37434d.contains(c7548c)) {
            c7548c2.f37434d.add(c7548c);
        }
        if (!c7548c.f37433c.contains(c7548c2)) {
            c7548c.f37433c.add(c7548c2);
        }
    }

    /* renamed from: o */
    public final void m1250o(C7157q c7157q, C7548c c7548c) {
        ArrayList<C7157q> arrayList = new ArrayList<>();
        arrayList.add(c7157q);
        while (!arrayList.isEmpty()) {
            C7157q remove = arrayList.remove(arrayList.size() - 1);
            for (AbstractC7572u abstractC7572u : this.f37423a.m1068w(remove.m2380B())) {
                if (abstractC7572u.mo1110n() == null) {
                    m1251n(abstractC7572u, c7548c, arrayList);
                } else {
                    m1249p(remove, abstractC7572u, c7548c, arrayList);
                }
            }
        }
    }

    /* renamed from: r */
    public final void m1247r(C7548c c7548c, C7548c c7548c2) {
        Iterator<C7548c> it = c7548c2.f37434d.iterator();
        while (it.hasNext()) {
            C7548c next = it.next();
            next.f37433c.remove(c7548c2);
            next.f37433c.add(c7548c);
            c7548c.f37434d.add(next);
        }
        Iterator<C7548c> it2 = c7548c2.f37433c.iterator();
        while (it2.hasNext()) {
            C7548c next2 = it2.next();
            next2.f37434d.remove(c7548c2);
            next2.f37434d.add(c7548c);
            c7548c.f37433c.add(next2);
        }
    }

    /* renamed from: t */
    public final void m1245t() {
        this.f37423a.m1080k(new C7546b());
        Iterator<C7548c> it = this.f37425c.iterator();
        while (it.hasNext()) {
            C7548c next = it.next();
            if (next.f37432b != EnumC7549d.NONE) {
                Iterator<C7548c> it2 = next.f37433c.iterator();
                while (it2.hasNext()) {
                    C7548c next2 = it2.next();
                    if (next.f37432b.compareTo(next2.f37432b) > 0) {
                        next2.f37432b = next.f37432b;
                    }
                }
            }
        }
        m1244u();
    }

    /* renamed from: u */
    public final void m1244u() {
        Iterator<C7548c> it = this.f37425c.iterator();
        while (it.hasNext()) {
            C7548c next = it.next();
            if (next.f37435e && next.f37432b == EnumC7549d.NONE) {
                int nextSetBit = next.f37431a.nextSetBit(0);
                AbstractC7572u m1077n = this.f37423a.m1077n(nextSetBit);
                AbstractC7572u m1260e = m1260e(m1077n);
                int mo2057z = ((AbstractC7234v) m1260e.mo1107u().m2347A(0).m2379C()).mo2057z();
                ArrayList<C7157q> arrayList = new ArrayList<>(mo2057z);
                HashSet<AbstractC7572u> hashSet = new HashSet<>();
                m1248q(m1077n, m1260e, mo2057z, arrayList);
                hashSet.add(m1260e);
                hashSet.add(m1077n);
                for (AbstractC7572u abstractC7572u : this.f37423a.m1068w(nextSetBit)) {
                    m1246s(abstractC7572u, m1260e, arrayList, hashSet);
                    hashSet.add(abstractC7572u);
                }
                this.f37423a.m1082i(hashSet);
                this.f37423a.m1098G();
                C7571t.m1126i(this.f37423a, this.f37424b);
                m1255j();
            }
        }
    }

    public C7544f(C7574v c7574v) {
        this.f37423a = c7574v;
        this.f37424b = c7574v.m1070u();
    }

    /* renamed from: e */
    public final AbstractC7572u m1260e(AbstractC7572u abstractC7572u) {
        ArrayList<AbstractC7572u> m1145q = this.f37423a.m1078m().get(abstractC7572u.m1112i().m1141u().nextSetBit(0)).m1145q();
        return m1145q.get(m1145q.size() - 1);
    }

    /* renamed from: f */
    public final AbstractC7572u m1259f(AbstractC7572u abstractC7572u) {
        return this.f37423a.m1078m().get(abstractC7572u.m1112i().m1173C().nextSetBit(0)).m1145q().get(0);
    }

    /* renamed from: h */
    public final void m1257h(AbstractC7572u abstractC7572u, C7160r c7160r, C7157q c7157q, int i, AbstractC7204a abstractC7204a) {
        C7164t m2284V;
        AbstractC7146h c7154n;
        AbstractC7146h mo1109o = abstractC7572u.mo1109o();
        if (i == 56) {
            m2284V = C7166v.m2301E(c7157q.getType());
        } else {
            m2284V = C7166v.m2284V(i, c7157q, c7160r, abstractC7204a);
        }
        C7164t c7164t = m2284V;
        if (abstractC7204a == null) {
            c7154n = new C7155o(c7164t, mo1109o.m2416j(), c7157q, c7160r);
        } else {
            c7154n = new C7154n(c7164t, mo1109o.m2416j(), c7157q, c7160r, abstractC7204a);
        }
        C7558l c7558l = new C7558l(c7154n, abstractC7572u.m1112i());
        ArrayList<AbstractC7572u> m1145q = abstractC7572u.m1112i().m1145q();
        m1145q.add(m1145q.lastIndexOf(abstractC7572u), c7558l);
        this.f37423a.m1100E(c7558l);
    }

    /* renamed from: i */
    public final void m1256i(AbstractC7572u abstractC7572u, C7160r c7160r, C7157q c7157q, int i, AbstractC7204a abstractC7204a) {
        AbstractC7146h c7169y;
        AbstractC7146h mo1109o = abstractC7572u.mo1109o();
        C7164t m2284V = C7166v.m2284V(i, c7157q, c7160r, abstractC7204a);
        if (abstractC7204a == null) {
            c7169y = new C7170z(m2284V, mo1109o.m2416j(), c7160r, C7401b.f37044a);
        } else {
            c7169y = new C7169y(m2284V, mo1109o.m2416j(), c7160r, C7401b.f37044a, abstractC7204a);
        }
        C7558l c7558l = new C7558l(c7169y, abstractC7572u.m1112i());
        ArrayList<AbstractC7572u> m1145q = abstractC7572u.m1112i().m1145q();
        m1145q.add(m1145q.lastIndexOf(abstractC7572u), c7558l);
        this.f37423a.m1100E(c7558l);
    }

    /* renamed from: l */
    public final void m1253l(AbstractC7572u abstractC7572u) {
        int m2314d = abstractC7572u.mo1110n().m2314d();
        C7157q m1108t = abstractC7572u.m1108t();
        if (m2314d == 56 && m1108t.m2379C().mo1523f() == 9) {
            m1250o(m1108t, m1252m(abstractC7572u));
        } else if (m2314d == 3 && m1108t.m2379C().mo1523f() == 9) {
            C7548c c7548c = new C7548c(m1108t.m2380B(), this.f37424b, EnumC7549d.NONE);
            this.f37425c.add(c7548c);
            m1250o(m1108t, c7548c);
        } else if (m2314d == 55 && m1108t.m2379C().mo1523f() == 9) {
            C7548c c7548c2 = new C7548c(m1108t.m2380B(), this.f37424b, EnumC7549d.NONE);
            this.f37425c.add(c7548c2);
            m1250o(m1108t, c7548c2);
        }
    }

    /* renamed from: m */
    public final C7548c m1252m(AbstractC7572u abstractC7572u) {
        C7548c c7548c;
        C7157q m1108t = abstractC7572u.m1108t();
        AbstractC7572u m1260e = m1260e(abstractC7572u);
        int m2314d = m1260e.mo1110n().m2314d();
        if (m2314d != 5) {
            if (m2314d != 38 && m2314d != 45) {
                if (m2314d != 46) {
                    switch (m2314d) {
                        case 40:
                            break;
                        case 41:
                        case 42:
                            if (m1260e.mo1107u().m2347A(0).m2379C().mo1522l()) {
                                c7548c = new C7548c(m1108t.m2380B(), this.f37424b, EnumC7549d.NONE);
                                c7548c.f37435e = true;
                                break;
                            } else {
                                c7548c = new C7548c(m1108t.m2380B(), this.f37424b, EnumC7549d.GLOBAL);
                                break;
                            }
                        case 43:
                            break;
                        default:
                            return null;
                    }
                } else {
                    c7548c = new C7548c(m1108t.m2380B(), this.f37424b, EnumC7549d.GLOBAL);
                }
                this.f37425c.add(c7548c);
                return c7548c;
            }
            C7157q m2347A = m1260e.mo1107u().m2347A(0);
            int m1261d = m1261d(m2347A);
            if (m1261d != this.f37425c.size()) {
                C7548c c7548c2 = this.f37425c.get(m1261d);
                c7548c2.f37431a.set(m1108t.m2380B());
                return c7548c2;
            }
            if (m2347A.getType() == C7402c.f37061C) {
                c7548c = new C7548c(m1108t.m2380B(), this.f37424b, EnumC7549d.NONE);
            } else {
                c7548c = new C7548c(m1108t.m2380B(), this.f37424b, EnumC7549d.GLOBAL);
            }
            this.f37425c.add(c7548c);
            return c7548c;
        }
        c7548c = new C7548c(m1108t.m2380B(), this.f37424b, EnumC7549d.NONE);
        this.f37425c.add(c7548c);
        return c7548c;
    }

    /* renamed from: n */
    public final void m1251n(AbstractC7572u abstractC7572u, C7548c c7548c, ArrayList<C7157q> arrayList) {
        int m1261d = m1261d(abstractC7572u.m1108t());
        if (m1261d != this.f37425c.size()) {
            C7548c c7548c2 = this.f37425c.get(m1261d);
            if (c7548c2 != c7548c) {
                c7548c.f37435e = false;
                c7548c.f37431a.or(c7548c2.f37431a);
                if (c7548c.f37432b.compareTo(c7548c2.f37432b) < 0) {
                    c7548c.f37432b = c7548c2.f37432b;
                }
                m1247r(c7548c, c7548c2);
                this.f37425c.remove(m1261d);
                return;
            }
            return;
        }
        c7548c.f37431a.set(abstractC7572u.m1108t().m2380B());
        arrayList.add(abstractC7572u.m1108t());
    }

    /* renamed from: p */
    public final void m1249p(C7157q c7157q, AbstractC7572u abstractC7572u, C7548c c7548c, ArrayList<C7157q> arrayList) {
        int m2314d = abstractC7572u.mo1110n().m2314d();
        if (m2314d != 2) {
            if (m2314d != 33 && m2314d != 35) {
                if (m2314d != 43 && m2314d != 7 && m2314d != 8) {
                    if (m2314d != 38) {
                        if (m2314d != 39) {
                            switch (m2314d) {
                                case 47:
                                    break;
                                case 48:
                                    c7548c.f37432b = EnumC7549d.GLOBAL;
                                    return;
                                case 49:
                                case 50:
                                case 51:
                                case 52:
                                case 53:
                                    break;
                                default:
                                    return;
                            }
                        } else if (!abstractC7572u.mo1107u().m2347A(2).m2379C().mo1522l()) {
                            c7548c.f37435e = false;
                        }
                        if (abstractC7572u.mo1107u().m2347A(0).m2379C().mo1523f() == 9) {
                            c7548c.f37435e = false;
                            C7160r mo1107u = abstractC7572u.mo1107u();
                            if (mo1107u.m2347A(0).m2380B() == c7157q.m2380B()) {
                                int m1261d = m1261d(mo1107u.m2347A(1));
                                if (m1261d != this.f37425c.size()) {
                                    C7548c c7548c2 = this.f37425c.get(m1261d);
                                    m1262c(c7548c2, c7548c);
                                    if (c7548c.f37432b.compareTo(c7548c2.f37432b) < 0) {
                                        c7548c.f37432b = c7548c2.f37432b;
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            int m1261d2 = m1261d(mo1107u.m2347A(0));
                            if (m1261d2 != this.f37425c.size()) {
                                C7548c c7548c3 = this.f37425c.get(m1261d2);
                                m1262c(c7548c, c7548c3);
                                if (c7548c3.f37432b.compareTo(c7548c.f37432b) < 0) {
                                    c7548c3.f37432b = c7548c.f37432b;
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    } else if (!abstractC7572u.mo1107u().m2347A(1).m2379C().mo1522l()) {
                        c7548c.f37435e = false;
                        return;
                    } else {
                        return;
                    }
                }
                EnumC7549d enumC7549d = c7548c.f37432b;
                EnumC7549d enumC7549d2 = EnumC7549d.METHOD;
                if (enumC7549d.compareTo(enumC7549d2) < 0) {
                    c7548c.f37432b = enumC7549d2;
                    return;
                }
                return;
            }
            c7548c.f37432b = EnumC7549d.INTER;
            return;
        }
        c7548c.f37431a.set(abstractC7572u.m1108t().m2380B());
        arrayList.add(abstractC7572u.m1108t());
    }

    /* renamed from: q */
    public final void m1248q(AbstractC7572u abstractC7572u, AbstractC7572u abstractC7572u2, int i, ArrayList<C7157q> arrayList) {
        C7402c type = abstractC7572u.m1108t().getType();
        for (int i2 = 0; i2 < i; i2++) {
            AbstractC7204a m2086a = C7220h0.m2086a(type.m1525x());
            C7157q m2373J = C7157q.m2373J(this.f37423a.m1103B(), (AbstractC7218g0) m2086a);
            arrayList.add(m2373J);
            m1257h(abstractC7572u, C7160r.f36212a, m2373J, 5, m2086a);
        }
    }

    /* renamed from: s */
    public final void m1246s(AbstractC7572u abstractC7572u, AbstractC7572u abstractC7572u2, ArrayList<C7157q> arrayList, HashSet<AbstractC7572u> hashSet) {
        int size = arrayList.size();
        int m2314d = abstractC7572u.mo1110n().m2314d();
        if (m2314d != 34) {
            if (m2314d != 57) {
                if (m2314d != 38) {
                    if (m2314d == 39) {
                        C7160r mo1107u = abstractC7572u.mo1107u();
                        int mo2057z = ((AbstractC7234v) mo1107u.m2347A(2).m2379C()).mo2057z();
                        if (mo2057z < size) {
                            C7157q m2347A = mo1107u.m2347A(0);
                            C7157q m2364S = m2347A.m2364S(arrayList.get(mo2057z).m2380B());
                            m1257h(abstractC7572u, C7160r.m2344D(m2347A), m2364S, 2, null);
                            arrayList.set(mo2057z, m2364S.m2363T());
                            return;
                        }
                        m1258g(abstractC7572u, mo1107u.m2347A(2), hashSet);
                        return;
                    }
                    return;
                }
                AbstractC7572u m1259f = m1259f(abstractC7572u);
                C7160r mo1107u2 = abstractC7572u.mo1107u();
                int mo2057z2 = ((AbstractC7234v) mo1107u2.m2347A(1).m2379C()).mo2057z();
                if (mo2057z2 < size) {
                    C7157q c7157q = arrayList.get(mo2057z2);
                    m1257h(m1259f, C7160r.m2344D(c7157q), c7157q.m2364S(m1259f.m1108t().m2380B()), 2, null);
                } else {
                    m1258g(m1259f, mo1107u2.m2347A(1), hashSet);
                    hashSet.add(m1259f.m1112i().m1145q().get(2));
                }
                hashSet.add(m1259f);
                return;
            }
            ArrayList<AbstractC7204a> m2421u = ((C7145g) abstractC7572u.mo1109o()).m2421u();
            for (int i = 0; i < size; i++) {
                C7157q m2373J = C7157q.m2373J(arrayList.get(i).m2380B(), (InterfaceC7403d) m2421u.get(i));
                m1257h(abstractC7572u, C7160r.f36212a, m2373J, 5, m2421u.get(i));
                arrayList.set(i, m2373J);
            }
            return;
        }
        InterfaceC7403d m2379C = abstractC7572u2.mo1107u().m2347A(0).m2379C();
        AbstractC7572u m1259f2 = m1259f(abstractC7572u);
        m1257h(m1259f2, C7160r.f36212a, m1259f2.m1108t(), 5, (AbstractC7204a) m2379C);
        hashSet.add(m1259f2);
    }
}
