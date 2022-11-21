package p234z1;

import java.util.ArrayList;
import p210w1.AbstractC7146h;
import p210w1.C7154n;
import p210w1.C7155o;
import p210w1.C7156p;
import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7164t;
import p210w1.C7166v;
import p210w1.InterfaceC7137a0;
import p218x1.AbstractC7204a;
import p218x1.AbstractC7234v;
import p226y1.InterfaceC7403d;
import p234z1.AbstractC7572u;
/* renamed from: z1.h */
/* loaded from: classes.dex */
public class C7551h {

    /* renamed from: a */
    public final C7574v f37444a;

    /* renamed from: z1.h$a */
    /* loaded from: classes.dex */
    public class C7552a implements AbstractC7572u.InterfaceC7573a {

        /* renamed from: a */
        public final /* synthetic */ InterfaceC7137a0 f37445a;

        public C7552a(InterfaceC7137a0 interfaceC7137a0) {
            this.f37445a = interfaceC7137a0;
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: a */
        public void mo1045a(C7561n c7561n) {
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: c */
        public void mo1043c(C7558l c7558l) {
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: b */
        public void mo1044b(C7558l c7558l) {
            C7164t m2417i = c7558l.mo1109o().m2417i();
            C7160r mo1107u = c7558l.mo1107u();
            if (C7551h.this.m1231h(c7558l) || mo1107u.size() != 2) {
                return;
            }
            if (m2417i.m2316b() == 4) {
                if (C7551h.m1235d(mo1107u.m2347A(0))) {
                    C7551h.this.m1233f(c7558l, mo1107u.m2337L(), C7156p.m2383a(m2417i.m2314d()), null);
                } else if (C7551h.m1235d(mo1107u.m2347A(1))) {
                    C7551h.this.m1233f(c7558l, mo1107u.m2336M(), m2417i.m2314d(), null);
                }
            } else if (this.f37445a.mo2424c(m2417i, mo1107u.m2347A(0), mo1107u.m2347A(1))) {
                c7558l.m1213Q();
            } else if (m2417i.m2310h() && this.f37445a.mo2424c(m2417i, mo1107u.m2347A(1), mo1107u.m2347A(0))) {
                c7558l.m1214P(C7160r.m2343E(mo1107u.m2347A(1), mo1107u.m2347A(0)));
                c7558l.m1213Q();
            }
        }
    }

    /* renamed from: e */
    public static void m1234e(C7574v c7574v) {
        new C7551h(c7574v).m1232g();
    }

    public C7551h(C7574v c7574v) {
        this.f37444a = c7574v;
    }

    /* renamed from: d */
    public static boolean m1235d(C7157q c7157q) {
        InterfaceC7403d m2379C = c7157q.m2379C();
        if (!(m2379C instanceof AbstractC7234v) || ((AbstractC7234v) m2379C).mo2061A() != 0) {
            return false;
        }
        return true;
    }

    /* renamed from: f */
    public final void m1233f(C7558l c7558l, C7160r c7160r, int i, AbstractC7204a abstractC7204a) {
        AbstractC7146h c7154n;
        AbstractC7146h mo1109o = c7558l.mo1109o();
        C7164t m2284V = C7166v.m2284V(i, c7558l.m1108t(), c7160r, abstractC7204a);
        if (abstractC7204a == null) {
            c7154n = new C7155o(m2284V, mo1109o.m2416j(), c7558l.m1108t(), c7160r);
        } else {
            c7154n = new C7154n(m2284V, mo1109o.m2416j(), c7558l.m1108t(), c7160r, abstractC7204a);
        }
        C7558l c7558l2 = new C7558l(c7154n, c7558l.m1112i());
        ArrayList<AbstractC7572u> m1145q = c7558l.m1112i().m1145q();
        this.f37444a.m1099F(c7558l);
        m1145q.set(m1145q.lastIndexOf(c7558l), c7558l2);
        this.f37444a.m1100E(c7558l2);
    }

    /* renamed from: g */
    public final void m1232g() {
        this.f37444a.m1079l(new C7552a(C7559m.m1212a()));
    }

    /* renamed from: h */
    public final boolean m1231h(C7558l c7558l) {
        C7164t m2417i = c7558l.mo1109o().m2417i();
        C7157q m1108t = c7558l.m1108t();
        if (m1108t != null && !this.f37444a.m1066y(m1108t) && m2417i.m2314d() != 5) {
            InterfaceC7403d m2379C = c7558l.m1108t().m2379C();
            if (m2379C.mo1522l() && m2379C.mo1523f() == 6) {
                C7160r c7160r = C7160r.f36212a;
                m1233f(c7558l, c7160r, 5, (AbstractC7204a) m2379C);
                if (m2417i.m2314d() == 56) {
                    ArrayList<AbstractC7572u> m1145q = this.f37444a.m1078m().get(c7558l.m1112i().m1141u().nextSetBit(0)).m1145q();
                    m1233f((C7558l) m1145q.get(m1145q.size() - 1), c7160r, 6, null);
                }
                return true;
            }
        }
        return false;
    }
}
