package p003a2;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import p015b2.C0438g;
import p015b2.C0441j;
import p210w1.C7138b;
import p210w1.C7140c;
import p210w1.C7149i;
import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7164t;
import p210w1.C7165u;
import p210w1.C7166v;
import p234z1.AbstractC7565p;
import p234z1.AbstractC7572u;
import p234z1.C7532a;
import p234z1.C7561n;
import p234z1.C7568s;
import p234z1.C7574v;
/* renamed from: a2.f */
/* loaded from: classes.dex */
public class C0055f {

    /* renamed from: a */
    public final C7574v f94a;

    /* renamed from: b */
    public final boolean f95b;

    /* renamed from: c */
    public final C0050c f96c;

    /* renamed from: e */
    public static C7165u m27714e(C7574v c7574v, boolean z) {
        return new C0055f(c7574v, z).m27718a();
    }

    /* renamed from: a2.f$a */
    /* loaded from: classes.dex */
    public class C0056a implements C7568s.InterfaceC7570b {

        /* renamed from: a */
        public final /* synthetic */ ArrayList f97a;

        public C0056a(ArrayList arrayList) {
            this.f97a = arrayList;
        }

        @Override // p234z1.C7568s.InterfaceC7570b
        /* renamed from: a */
        public void mo1046a(C7568s c7568s, C7568s c7568s2) {
            ArrayList<AbstractC7572u> m1145q = c7568s.m1145q();
            if (m1145q.size() == 1 && m1145q.get(0).mo1110n() == C7166v.f36407s) {
                BitSet bitSet = (BitSet) c7568s.m1141u().clone();
                for (int nextSetBit = bitSet.nextSetBit(0); nextSetBit >= 0; nextSetBit = bitSet.nextSetBit(nextSetBit + 1)) {
                    ((C7568s) this.f97a.get(nextSetBit)).m1165K(c7568s.m1146p(), c7568s.m1139w());
                }
            }
        }
    }

    /* renamed from: a2.f$b */
    /* loaded from: classes.dex */
    public static class C0057b implements C7561n.InterfaceC7563b {

        /* renamed from: a */
        public final ArrayList<C7568s> f99a;

        public C0057b(ArrayList<C7568s> arrayList) {
            this.f99a = arrayList;
        }

        @Override // p234z1.C7561n.InterfaceC7563b
        /* renamed from: a */
        public void mo1036a(C7561n c7561n) {
            C7160r mo1107u = c7561n.mo1107u();
            C7157q m1108t = c7561n.m1108t();
            int size = mo1107u.size();
            for (int i = 0; i < size; i++) {
                this.f99a.get(c7561n.m1202S(i)).m1155g(m1108t, mo1107u.m2347A(i));
            }
        }
    }

    /* renamed from: a */
    public final C7165u m27718a() {
        C0042a c0042a = new C0042a(this.f94a, this.f96c, this.f95b);
        AbstractC7565p mo27722a = c0042a.mo27722a();
        this.f94a.m1093L();
        this.f94a.m1102C(mo27722a);
        m27711h();
        if (c0042a.mo27719d()) {
            m27713f();
        }
        m27712g();
        C7140c m27716c = m27716c();
        C7574v c7574v = this.f94a;
        return new C0049b(new C7165u(m27716c, c7574v.m1087d(c7574v.m1075p()))).m27735c();
    }

    /* renamed from: c */
    public final C7140c m27716c() {
        ArrayList<C7568s> m1078m = this.f94a.m1078m();
        C7568s m1074q = this.f94a.m1074q();
        BitSet m1084g = this.f94a.m1084g();
        int cardinality = m1084g.cardinality();
        if (m1074q != null && m1084g.get(m1074q.m1146p())) {
            cardinality--;
        }
        C7140c c7140c = new C7140c(cardinality);
        int i = 0;
        Iterator<C7568s> it = m1078m.iterator();
        while (it.hasNext()) {
            C7568s next = it.next();
            if (m1084g.get(next.m1146p()) && next != m1074q) {
                c7140c.m2431N(i, m27717b(next));
                i++;
            }
        }
        if (m1074q != null && !m1074q.m1145q().isEmpty()) {
            throw new RuntimeException("Exit block must have no insns when leaving SSA form");
        }
        return c7140c;
    }

    /* renamed from: f */
    public final void m27713f() {
        int m1071t = this.f94a.m1071t();
        C7532a c7532a = new C7532a(this.f94a.m1070u());
        int m1070u = this.f94a.m1070u();
        for (int i = 0; i < m1070u; i++) {
            if (i < m1071t) {
                c7532a.mo1243e(i, (m1070u - m1071t) + i, 1);
            } else {
                c7532a.mo1243e(i, i - m1071t, 1);
            }
        }
        this.f94a.m1102C(c7532a);
    }

    /* renamed from: g */
    public final void m27712g() {
        this.f94a.m1081j(false, new C0056a(this.f94a.m1078m()));
    }

    /* renamed from: h */
    public final void m27711h() {
        ArrayList<C7568s> m1078m = this.f94a.m1078m();
        Iterator<C7568s> it = m1078m.iterator();
        while (it.hasNext()) {
            C7568s next = it.next();
            next.m1149m(new C0057b(m1078m));
            next.m1168H();
        }
        Iterator<C7568s> it2 = m1078m.iterator();
        while (it2.hasNext()) {
            it2.next().m1164L();
        }
    }

    public C0055f(C7574v c7574v, boolean z) {
        this.f95b = z;
        this.f94a = c7574v;
        this.f96c = C0051d.m27728c(c7574v);
    }

    /* renamed from: b */
    public final C7138b m27717b(C7568s c7568s) {
        int m1137y;
        C0441j m1175A = c7568s.m1175A();
        int m1138x = c7568s.m1138x();
        C7568s m1074q = this.f94a.m1074q();
        if (m1074q == null) {
            m1137y = -1;
        } else {
            m1137y = m1074q.m1137y();
        }
        if (m1175A.m26471A(m1137y)) {
            if (m1175A.size() <= 1) {
                m1175A = C0441j.f1530k;
                m27710i(c7568s);
                m1138x = -1;
            } else {
                throw new RuntimeException("Exit predecessor must have no other successors" + C0438g.m26478g(c7568s.m1137y()));
            }
        }
        m1175A.setImmutable();
        return new C7138b(c7568s.m1137y(), m27715d(c7568s.m1145q()), m1175A, m1138x);
    }

    /* renamed from: d */
    public final C7149i m27715d(ArrayList<AbstractC7572u> arrayList) {
        int size = arrayList.size();
        C7149i c7149i = new C7149i(size);
        for (int i = 0; i < size; i++) {
            c7149i.m2409C(i, arrayList.get(i).mo1117J());
        }
        c7149i.setImmutable();
        return c7149i;
    }

    /* renamed from: i */
    public final void m27710i(C7568s c7568s) {
        ArrayList<AbstractC7572u> m1145q = c7568s.m1145q();
        C7164t mo1110n = m1145q.get(m1145q.size() - 1).mo1110n();
        if (mo1110n.m2316b() != 2 && mo1110n != C7166v.f36246D1) {
            throw new RuntimeException("Exit predecessor must end in valid exit statement.");
        }
    }
}
