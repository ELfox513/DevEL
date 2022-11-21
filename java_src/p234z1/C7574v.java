package p234z1;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Stack;
import p015b2.C0441j;
import p210w1.AbstractC7146h;
import p210w1.C7140c;
import p210w1.C7155o;
import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7165u;
import p210w1.C7166v;
import p210w1.C7167w;
import p234z1.AbstractC7572u;
import p234z1.C7568s;
/* renamed from: z1.v */
/* loaded from: classes.dex */
public final class C7574v {

    /* renamed from: a */
    public ArrayList<C7568s> f37505a;

    /* renamed from: b */
    public int f37506b;

    /* renamed from: c */
    public int f37507c;

    /* renamed from: d */
    public int f37508d;

    /* renamed from: e */
    public int f37509e;

    /* renamed from: f */
    public int f37510f;

    /* renamed from: g */
    public int f37511g;

    /* renamed from: h */
    public final int f37512h;

    /* renamed from: i */
    public final boolean f37513i;

    /* renamed from: j */
    public AbstractC7572u[] f37514j;

    /* renamed from: k */
    public ArrayList<AbstractC7572u>[] f37515k;

    /* renamed from: l */
    public List<AbstractC7572u>[] f37516l;

    /* renamed from: m */
    public boolean f37517m = false;

    /* renamed from: s */
    public static AbstractC7572u m1072s(C7568s c7568s) {
        return new C7558l(new C7155o(C7166v.f36407s, C7167w.f36439d, (C7157q) null, C7160r.f36212a), c7568s);
    }

    /* renamed from: E */
    public void m1100E(AbstractC7572u abstractC7572u) {
        m1096I(abstractC7572u, null);
        m1091N(abstractC7572u, null);
    }

    /* renamed from: G */
    public void m1098G() {
        this.f37514j = null;
        this.f37515k = null;
        this.f37516l = null;
    }

    /* renamed from: K */
    public void m1094K() {
        this.f37510f = 0;
    }

    /* renamed from: L */
    public void m1093L() {
        this.f37517m = true;
        this.f37515k = null;
        this.f37514j = null;
    }

    /* renamed from: d */
    public int m1087d(int i) {
        if (i < 0) {
            return -1;
        }
        return this.f37505a.get(i).m1137y();
    }

    /* renamed from: m */
    public ArrayList<C7568s> m1078m() {
        return this.f37505a;
    }

    /* renamed from: o */
    public C7568s m1076o() {
        return this.f37505a.get(this.f37506b);
    }

    /* renamed from: p */
    public int m1075p() {
        return this.f37506b;
    }

    /* renamed from: q */
    public C7568s m1074q() {
        int i = this.f37507c;
        if (i < 0) {
            return null;
        }
        return this.f37505a.get(i);
    }

    /* renamed from: r */
    public int m1073r() {
        return this.f37507c;
    }

    /* renamed from: t */
    public int m1071t() {
        return this.f37512h;
    }

    /* renamed from: u */
    public int m1070u() {
        return this.f37508d;
    }

    /* renamed from: z1.v$a */
    /* loaded from: classes.dex */
    public class C7575a implements AbstractC7572u.InterfaceC7573a {
        public C7575a() {
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: a */
        public void mo1045a(C7561n c7561n) {
            C7574v.this.f37514j[c7561n.m1108t().m2380B()] = c7561n;
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: c */
        public void mo1043c(C7558l c7558l) {
            C7574v.this.f37514j[c7558l.m1108t().m2380B()] = c7558l;
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: b */
        public void mo1044b(C7558l c7558l) {
            if (c7558l.m1108t() != null) {
                C7574v.this.f37514j[c7558l.m1108t().m2380B()] = c7558l;
            }
        }
    }

    /* renamed from: z1.v$b */
    /* loaded from: classes.dex */
    public class C7576b implements AbstractC7572u.InterfaceC7573a {
        public C7576b() {
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: a */
        public void mo1045a(C7561n c7561n) {
            m1064d(c7561n);
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: b */
        public void mo1044b(C7558l c7558l) {
            m1064d(c7558l);
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: c */
        public void mo1043c(C7558l c7558l) {
            m1064d(c7558l);
        }

        /* renamed from: d */
        public final void m1064d(AbstractC7572u abstractC7572u) {
            C7160r mo1107u = abstractC7572u.mo1107u();
            int size = mo1107u.size();
            for (int i = 0; i < size; i++) {
                C7574v.this.f37515k[mo1107u.m2347A(i).m2380B()].add(abstractC7572u);
            }
        }
    }

    /* renamed from: D */
    public static C7574v m1101D(C7165u c7165u, int i, boolean z) {
        C7574v c7574v = new C7574v(c7165u, i, z);
        c7574v.m1083h(c7165u);
        return c7574v;
    }

    /* renamed from: c */
    public static BitSet m1088c(C7140c c7140c, C0441j c0441j) {
        BitSet bitSet = new BitSet(c7140c.size());
        int size = c0441j.size();
        for (int i = 0; i < size; i++) {
            bitSet.set(c7140c.m26455A(c0441j.m26470B(i)));
        }
        return bitSet;
    }

    /* renamed from: x */
    public static C0441j m1067x(C7140c c7140c, C0441j c0441j) {
        C0441j c0441j2 = new C0441j(c0441j.size());
        int size = c0441j.size();
        for (int i = 0; i < size; i++) {
            c0441j2.m26457x(c7140c.m26455A(c0441j.m26470B(i)));
        }
        return c0441j2;
    }

    /* renamed from: A */
    public C7568s m1104A() {
        int size = this.f37505a.size();
        int i = this.f37511g;
        this.f37511g = i + 1;
        C7568s c7568s = new C7568s(size, i, this);
        c7568s.m1145q().add(m1072s(c7568s));
        this.f37505a.add(c7568s);
        return c7568s;
    }

    /* renamed from: B */
    public int m1103B() {
        int i = this.f37508d;
        int i2 = i + 1;
        this.f37508d = i2;
        this.f37509e = i2;
        m1098G();
        return i;
    }

    /* renamed from: F */
    public void m1099F(AbstractC7572u abstractC7572u) {
        if (this.f37515k != null) {
            m1095J(abstractC7572u, abstractC7572u.mo1107u());
        }
        C7157q m1108t = abstractC7572u.m1108t();
        AbstractC7572u[] abstractC7572uArr = this.f37514j;
        if (abstractC7572uArr != null && m1108t != null) {
            abstractC7572uArr[m1108t.m2380B()] = null;
        }
    }

    /* renamed from: H */
    public void m1097H(AbstractC7572u abstractC7572u, C7157q c7157q, C7157q c7157q2) {
        if (this.f37515k == null) {
            return;
        }
        if (c7157q != null) {
            this.f37515k[c7157q.m2380B()].remove(abstractC7572u);
        }
        int m2380B = c7157q2.m2380B();
        ArrayList<AbstractC7572u>[] arrayListArr = this.f37515k;
        if (arrayListArr.length <= m2380B) {
            this.f37515k = null;
        } else {
            arrayListArr[m2380B].add(abstractC7572u);
        }
    }

    /* renamed from: I */
    public void m1096I(AbstractC7572u abstractC7572u, C7160r c7160r) {
        if (this.f37515k == null) {
            return;
        }
        if (c7160r != null) {
            m1095J(abstractC7572u, c7160r);
        }
        C7160r mo1107u = abstractC7572u.mo1107u();
        int size = mo1107u.size();
        for (int i = 0; i < size; i++) {
            this.f37515k[mo1107u.m2347A(i).m2380B()].add(abstractC7572u);
        }
    }

    /* renamed from: J */
    public final void m1095J(AbstractC7572u abstractC7572u, C7160r c7160r) {
        if (c7160r == null) {
            return;
        }
        int size = c7160r.size();
        for (int i = 0; i < size; i++) {
            if (!this.f37515k[c7160r.m2347A(i).m2380B()].remove(abstractC7572u)) {
                throw new RuntimeException("use not found");
            }
        }
    }

    /* renamed from: M */
    public void m1092M(int i) {
        this.f37508d = i;
        this.f37509e = i;
        m1098G();
    }

    /* renamed from: N */
    public void m1091N(AbstractC7572u abstractC7572u, C7157q c7157q) {
        if (this.f37514j == null) {
            return;
        }
        if (c7157q != null) {
            this.f37514j[c7157q.m2380B()] = null;
        }
        C7157q m1108t = abstractC7572u.m1108t();
        if (m1108t != null) {
            int m2380B = m1108t.m2380B();
            AbstractC7572u[] abstractC7572uArr = this.f37514j;
            if (abstractC7572uArr[m2380B] == null) {
                abstractC7572uArr[m1108t.m2380B()] = abstractC7572u;
                return;
            }
            throw new RuntimeException("Duplicate add of insn");
        }
    }

    /* renamed from: e */
    public int m1086e(int i) {
        int i2 = this.f37509e;
        int i3 = this.f37510f;
        int i4 = i2 + i3;
        this.f37510f = i3 + i;
        this.f37508d = Math.max(this.f37508d, i + i4);
        return i4;
    }

    /* renamed from: f */
    public final void m1085f() {
        if (!this.f37517m) {
            this.f37515k = new ArrayList[this.f37508d];
            for (int i = 0; i < this.f37508d; i++) {
                this.f37515k[i] = new ArrayList<>();
            }
            m1079l(new C7576b());
            this.f37516l = new List[this.f37508d];
            for (int i2 = 0; i2 < this.f37508d; i2++) {
                this.f37516l[i2] = Collections.unmodifiableList(this.f37515k[i2]);
            }
            return;
        }
        throw new RuntimeException("No use list in back mode");
    }

    /* renamed from: g */
    public BitSet m1084g() {
        int size = this.f37505a.size();
        BitSet bitSet = new BitSet(size);
        BitSet bitSet2 = new BitSet(size);
        bitSet.set(m1076o().m1146p());
        while (true) {
            int nextSetBit = bitSet.nextSetBit(0);
            if (nextSetBit != -1) {
                bitSet2.set(nextSetBit);
                bitSet.or(this.f37505a.get(nextSetBit).m1173C());
                bitSet.andNot(bitSet2);
            } else {
                return bitSet2;
            }
        }
    }

    /* renamed from: j */
    public void m1081j(boolean z, C7568s.InterfaceC7570b interfaceC7570b) {
        C7568s m1076o;
        BitSet m1173C;
        BitSet bitSet = new BitSet(this.f37505a.size());
        Stack stack = new Stack();
        if (z) {
            m1076o = m1074q();
        } else {
            m1076o = m1076o();
        }
        if (m1076o == null) {
            return;
        }
        stack.add(null);
        stack.add(m1076o);
        while (stack.size() > 0) {
            C7568s c7568s = (C7568s) stack.pop();
            C7568s c7568s2 = (C7568s) stack.pop();
            if (!bitSet.get(c7568s.m1146p())) {
                if (z) {
                    m1173C = c7568s.m1141u();
                } else {
                    m1173C = c7568s.m1173C();
                }
                for (int nextSetBit = m1173C.nextSetBit(0); nextSetBit >= 0; nextSetBit = m1173C.nextSetBit(nextSetBit + 1)) {
                    stack.add(c7568s);
                    stack.add(this.f37505a.get(nextSetBit));
                }
                bitSet.set(c7568s.m1146p());
                interfaceC7570b.mo1046a(c7568s, c7568s2);
            }
        }
    }

    /* renamed from: k */
    public void m1080k(C7568s.InterfaceC7570b interfaceC7570b) {
        BitSet bitSet = new BitSet(m1078m().size());
        Stack stack = new Stack();
        stack.add(m1076o());
        while (stack.size() > 0) {
            C7568s c7568s = (C7568s) stack.pop();
            ArrayList<C7568s> m1147o = c7568s.m1147o();
            if (!bitSet.get(c7568s.m1146p())) {
                for (int size = m1147o.size() - 1; size >= 0; size--) {
                    stack.add(m1147o.get(size));
                }
                bitSet.set(c7568s.m1146p());
                interfaceC7570b.mo1046a(c7568s, null);
            }
        }
    }

    /* renamed from: l */
    public void m1079l(AbstractC7572u.InterfaceC7573a interfaceC7573a) {
        Iterator<C7568s> it = this.f37505a.iterator();
        while (it.hasNext()) {
            it.next().m1150l(interfaceC7573a);
        }
    }

    /* renamed from: n */
    public AbstractC7572u m1077n(int i) {
        if (!this.f37517m) {
            AbstractC7572u[] abstractC7572uArr = this.f37514j;
            if (abstractC7572uArr != null) {
                return abstractC7572uArr[i];
            }
            this.f37514j = new AbstractC7572u[m1070u()];
            m1079l(new C7575a());
            return this.f37514j[i];
        }
        throw new RuntimeException("No def list in back mode");
    }

    /* renamed from: v */
    public ArrayList<AbstractC7572u>[] m1069v() {
        if (this.f37515k == null) {
            m1085f();
        }
        ArrayList<AbstractC7572u>[] arrayListArr = new ArrayList[this.f37508d];
        for (int i = 0; i < this.f37508d; i++) {
            arrayListArr[i] = new ArrayList<>(this.f37515k[i]);
        }
        return arrayListArr;
    }

    /* renamed from: w */
    public List<AbstractC7572u> m1068w(int i) {
        if (this.f37516l == null) {
            m1085f();
        }
        return this.f37516l[i];
    }

    /* renamed from: z */
    public void m1065z() {
        if (this.f37507c < 0) {
            this.f37507c = this.f37505a.size();
            int i = this.f37507c;
            int i2 = this.f37511g;
            this.f37511g = i2 + 1;
            C7568s c7568s = new C7568s(i, i2, this);
            this.f37505a.add(c7568s);
            Iterator<C7568s> it = this.f37505a.iterator();
            while (it.hasNext()) {
                it.next().m1151k(c7568s);
            }
            if (c7568s.m1141u().cardinality() == 0) {
                this.f37505a.remove(this.f37507c);
                this.f37507c = -1;
                this.f37511g--;
                return;
            }
            return;
        }
        throw new RuntimeException("must be called at most once");
    }

    public C7574v(C7165u c7165u, int i, boolean z) {
        this.f37512h = i;
        this.f37513i = z;
        this.f37511g = c7165u.m2308b().m26450z();
        int m2434K = c7165u.m2308b().m2434K();
        this.f37508d = m2434K;
        this.f37509e = m2434K;
    }

    /* renamed from: C */
    public void m1102C(AbstractC7565p abstractC7565p) {
        Iterator<C7568s> it = m1078m().iterator();
        while (it.hasNext()) {
            Iterator<AbstractC7572u> it2 = it.next().m1145q().iterator();
            while (it2.hasNext()) {
                it2.next().m1121E(abstractC7565p);
            }
        }
        int mo1035a = abstractC7565p.mo1035a();
        this.f37508d = mo1035a;
        this.f37509e = mo1035a;
    }

    /* renamed from: h */
    public final void m1083h(C7165u c7165u) {
        int size = c7165u.m2308b().size();
        this.f37505a = new ArrayList<>(size + 2);
        for (int i = 0; i < size; i++) {
            this.f37505a.add(C7568s.m1169G(c7165u, i, this));
        }
        this.f37506b = this.f37505a.get(c7165u.m2308b().m26455A(c7165u.m2307c())).m1172D().m1146p();
        this.f37507c = -1;
    }

    /* renamed from: i */
    public void m1082i(Set<AbstractC7572u> set) {
        AbstractC7572u abstractC7572u;
        for (AbstractC7572u abstractC7572u2 : set) {
            C7568s m1112i = abstractC7572u2.m1112i();
            ArrayList<AbstractC7572u> m1145q = m1112i.m1145q();
            int size = m1145q.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                AbstractC7572u abstractC7572u3 = m1145q.get(size);
                if (abstractC7572u2 == abstractC7572u3) {
                    m1099F(abstractC7572u3);
                    m1145q.remove(size);
                    break;
                }
                size--;
            }
            int size2 = m1145q.size();
            if (size2 == 0) {
                abstractC7572u = null;
            } else {
                abstractC7572u = m1145q.get(size2 - 1);
            }
            if (m1112i != m1074q() && (size2 == 0 || abstractC7572u.mo1109o() == null || abstractC7572u.mo1109o().m2417i().m2316b() == 1)) {
                m1145q.add(AbstractC7572u.m1122D(new C7155o(C7166v.f36407s, C7167w.f36439d, (C7157q) null, C7160r.f36212a), m1112i));
                BitSet m1173C = m1112i.m1173C();
                for (int nextSetBit = m1173C.nextSetBit(0); nextSetBit >= 0; nextSetBit = m1173C.nextSetBit(nextSetBit + 1)) {
                    if (nextSetBit != m1112i.m1139w()) {
                        m1112i.m1167I(nextSetBit);
                    }
                }
            }
        }
    }

    /* renamed from: y */
    public boolean m1066y(C7157q c7157q) {
        AbstractC7572u m1077n = m1077n(c7157q.m2380B());
        if (m1077n == null) {
            return false;
        }
        if (m1077n.mo1111j() != null) {
            return true;
        }
        for (AbstractC7572u abstractC7572u : m1068w(c7157q.m2380B())) {
            AbstractC7146h mo1109o = abstractC7572u.mo1109o();
            if (mo1109o != null && mo1109o.m2417i().m2314d() == 54) {
                return true;
            }
        }
        return false;
    }
}
