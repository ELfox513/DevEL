package p234z1;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import p015b2.InterfaceC0440i;
import p210w1.C7157q;
import p210w1.C7165u;
import p234z1.C7538d;
/* renamed from: z1.t */
/* loaded from: classes.dex */
public class C7571t {
    /* renamed from: a */
    public static C7574v m1134a(C7165u c7165u, int i, boolean z) {
        C7574v m1101D = C7574v.m1101D(c7165u, i, z);
        m1133b(m1101D);
        m1127h(m1101D, C7553i.m1229b(m1101D), 0);
        new RunnableC7577w(m1101D).run();
        m1101D.m1065z();
        return m1101D;
    }

    /* renamed from: b */
    public static void m1133b(C7574v c7574v) {
        m1131d(c7574v);
        m1132c(c7574v);
        m1130e(c7574v);
    }

    /* renamed from: c */
    public static void m1132c(C7574v c7574v) {
        ArrayList<C7568s> m1078m = c7574v.m1078m();
        for (int size = m1078m.size() - 1; size >= 0; size--) {
            C7568s c7568s = m1078m.get(size);
            if (!c7568s.m1170F() && c7568s.m1141u().cardinality() > 1 && c7568s.m1145q().get(0).mo1105z()) {
                BitSet bitSet = (BitSet) c7568s.m1141u().clone();
                for (int nextSetBit = bitSet.nextSetBit(0); nextSetBit >= 0; nextSetBit = bitSet.nextSetBit(nextSetBit + 1)) {
                    m1078m.get(nextSetBit).m1171E(c7568s).m1145q().add(0, c7568s.m1145q().get(0).clone());
                }
                c7568s.m1145q().remove(0);
            }
        }
    }

    /* renamed from: d */
    public static void m1131d(C7574v c7574v) {
        ArrayList<C7568s> m1078m = c7574v.m1078m();
        for (int size = m1078m.size() - 1; size >= 0; size--) {
            C7568s c7568s = m1078m.get(size);
            if (m1128g(c7568s)) {
                c7568s.m1172D();
            }
        }
    }

    /* renamed from: e */
    public static void m1130e(C7574v c7574v) {
        ArrayList<C7568s> m1078m = c7574v.m1078m();
        for (int size = m1078m.size() - 1; size >= 0; size--) {
            C7568s c7568s = m1078m.get(size);
            BitSet bitSet = (BitSet) c7568s.m1173C().clone();
            for (int nextSetBit = bitSet.nextSetBit(0); nextSetBit >= 0; nextSetBit = bitSet.nextSetBit(nextSetBit + 1)) {
                C7568s c7568s2 = m1078m.get(nextSetBit);
                if (m1129f(c7568s, c7568s2)) {
                    c7568s.m1171E(c7568s2);
                }
            }
        }
    }

    /* renamed from: f */
    public static boolean m1129f(C7568s c7568s, C7568s c7568s2) {
        ArrayList<AbstractC7572u> m1145q = c7568s.m1145q();
        AbstractC7572u abstractC7572u = m1145q.get(m1145q.size() - 1);
        if (c7568s.m1173C().cardinality() > 1 && c7568s2.m1141u().cardinality() > 1) {
            return true;
        }
        if ((abstractC7572u.m1108t() != null || abstractC7572u.mo1107u().size() > 0) && c7568s2.m1141u().cardinality() > 1) {
            return true;
        }
        return false;
    }

    /* renamed from: g */
    public static boolean m1128g(C7568s c7568s) {
        int cardinality = c7568s.m1141u().cardinality();
        int cardinality2 = c7568s.m1173C().cardinality();
        if (cardinality > 1 && cardinality2 > 1) {
            return true;
        }
        return false;
    }

    /* renamed from: h */
    public static void m1127h(C7574v c7574v, C7554j c7554j, int i) {
        ArrayList<C7568s> m1078m = c7574v.m1078m();
        int size = m1078m.size();
        int m1070u = c7574v.m1070u() - i;
        C7538d.C7539a[] m1272c = new C7538d(c7574v).m1272c();
        BitSet[] bitSetArr = new BitSet[m1070u];
        BitSet[] bitSetArr2 = new BitSet[m1070u];
        for (int i2 = 0; i2 < m1070u; i2++) {
            bitSetArr[i2] = new BitSet(size);
            bitSetArr2[i2] = new BitSet(size);
        }
        int size2 = m1078m.size();
        for (int i3 = 0; i3 < size2; i3++) {
            Iterator<AbstractC7572u> it = m1078m.get(i3).m1145q().iterator();
            while (it.hasNext()) {
                C7157q m1108t = it.next().m1108t();
                if (m1108t != null && m1108t.m2380B() - i >= 0) {
                    bitSetArr[m1108t.m2380B() - i].set(i3);
                }
            }
        }
        for (int i4 = 0; i4 < m1070u; i4++) {
            BitSet bitSet = (BitSet) bitSetArr[i4].clone();
            while (true) {
                int nextSetBit = bitSet.nextSetBit(0);
                if (nextSetBit >= 0) {
                    bitSet.clear(nextSetBit);
                    InterfaceC0440i it2 = m1272c[nextSetBit].f37408a.iterator();
                    while (it2.hasNext()) {
                        int next = it2.next();
                        if (!bitSetArr2[i4].get(next)) {
                            bitSetArr2[i4].set(next);
                            int i5 = i4 + i;
                            C7157q m2318z = c7554j.m1222z(next).m2318z(i5);
                            if (m2318z == null) {
                                m1078m.get(next).m1154h(i5);
                            } else {
                                m1078m.get(next).m1153i(m2318z);
                            }
                            if (!bitSetArr[i4].get(next)) {
                                bitSet.set(next);
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: i */
    public static void m1126i(C7574v c7574v, int i) {
        m1127h(c7574v, C7553i.m1229b(c7574v), i);
        new RunnableC7577w(c7574v, i).run();
    }
}
