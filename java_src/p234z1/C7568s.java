package p234z1;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import p015b2.C0438g;
import p015b2.C0441j;
import p015b2.InterfaceC0442k;
import p210w1.AbstractC7146h;
import p210w1.C7138b;
import p210w1.C7140c;
import p210w1.C7149i;
import p210w1.C7155o;
import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7164t;
import p210w1.C7165u;
import p210w1.C7166v;
import p210w1.C7167w;
import p234z1.AbstractC7572u;
import p234z1.C7561n;
/* renamed from: z1.s */
/* loaded from: classes.dex */
public final class C7568s {

    /* renamed from: n */
    public static final Comparator<C7568s> f37489n = new C7569a();

    /* renamed from: b */
    public BitSet f37491b;

    /* renamed from: c */
    public BitSet f37492c;

    /* renamed from: f */
    public final int f37495f;

    /* renamed from: g */
    public final C7574v f37496g;

    /* renamed from: h */
    public final int f37497h;

    /* renamed from: l */
    public InterfaceC0442k f37501l;

    /* renamed from: m */
    public InterfaceC0442k f37502m;

    /* renamed from: e */
    public int f37494e = -1;

    /* renamed from: j */
    public int f37499j = 0;

    /* renamed from: k */
    public int f37500k = 0;

    /* renamed from: a */
    public final ArrayList<AbstractC7572u> f37490a = new ArrayList<>();

    /* renamed from: d */
    public C0441j f37493d = new C0441j();

    /* renamed from: i */
    public final ArrayList<C7568s> f37498i = new ArrayList<>();

    /* renamed from: z1.s$b */
    /* loaded from: classes.dex */
    public interface InterfaceC7570b {
        /* renamed from: a */
        void mo1046a(C7568s c7568s, C7568s c7568s2);
    }

    /* renamed from: B */
    public C0441j m1174B() {
        return this.f37493d;
    }

    /* renamed from: C */
    public BitSet m1173C() {
        return this.f37492c;
    }

    /* renamed from: F */
    public boolean m1170F() {
        return this.f37497h == this.f37496g.m1073r();
    }

    /* renamed from: H */
    public void m1168H() {
        this.f37490a.subList(0, m1148n()).clear();
    }

    /* renamed from: b */
    public void m1160b(C7568s c7568s) {
        this.f37498i.add(c7568s);
    }

    /* renamed from: h */
    public void m1154h(int i) {
        this.f37490a.add(0, new C7561n(i, this));
    }

    /* renamed from: i */
    public void m1153i(C7157q c7157q) {
        this.f37490a.add(0, new C7561n(c7157q, this));
    }

    /* renamed from: o */
    public ArrayList<C7568s> m1147o() {
        return this.f37498i;
    }

    /* renamed from: p */
    public int m1146p() {
        return this.f37497h;
    }

    /* renamed from: q */
    public ArrayList<AbstractC7572u> m1145q() {
        return this.f37490a;
    }

    /* renamed from: s */
    public C7574v m1143s() {
        return this.f37496g;
    }

    /* renamed from: t */
    public List<AbstractC7572u> m1142t() {
        return this.f37490a.subList(0, m1148n());
    }

    public String toString() {
        return "{" + this.f37497h + ":" + C0438g.m26478g(this.f37495f) + '}';
    }

    /* renamed from: u */
    public BitSet m1141u() {
        return this.f37491b;
    }

    /* renamed from: w */
    public int m1139w() {
        return this.f37494e;
    }

    /* renamed from: x */
    public int m1138x() {
        return this.f37496g.m1087d(this.f37494e);
    }

    /* renamed from: y */
    public int m1137y() {
        return this.f37495f;
    }

    /* renamed from: z */
    public String m1136z() {
        return C0438g.m26478g(this.f37495f);
    }

    /* renamed from: z1.s$a */
    /* loaded from: classes.dex */
    public static final class C7569a implements Comparator<C7568s> {
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(C7568s c7568s, C7568s c7568s2) {
            int i = c7568s.f37495f;
            int i2 = c7568s2.f37495f;
            if (i < i2) {
                return -1;
            }
            if (i > i2) {
                return 1;
            }
            return 0;
        }
    }

    /* renamed from: A */
    public C0441j m1175A() {
        C0441j c0441j = new C0441j(this.f37493d.size());
        int size = this.f37493d.size();
        for (int i = 0; i < size; i++) {
            c0441j.m26457x(this.f37496g.m1087d(this.f37493d.m26470B(i)));
        }
        return c0441j;
    }

    /* renamed from: D */
    public C7568s m1172D() {
        C7568s m1104A = this.f37496g.m1104A();
        m1104A.f37491b = this.f37491b;
        m1104A.f37492c.set(this.f37497h);
        m1104A.f37493d.m26457x(this.f37497h);
        m1104A.f37494e = this.f37497h;
        BitSet bitSet = new BitSet(this.f37496g.m1078m().size());
        this.f37491b = bitSet;
        bitSet.set(m1104A.f37497h);
        for (int nextSetBit = m1104A.f37491b.nextSetBit(0); nextSetBit >= 0; nextSetBit = m1104A.f37491b.nextSetBit(nextSetBit + 1)) {
            this.f37496g.m1078m().get(nextSetBit).m1165K(this.f37497h, m1104A.f37497h);
        }
        return m1104A;
    }

    /* renamed from: E */
    public C7568s m1171E(C7568s c7568s) {
        C7568s m1104A = this.f37496g.m1104A();
        if (this.f37492c.get(c7568s.f37497h)) {
            m1104A.f37491b.set(this.f37497h);
            m1104A.f37492c.set(c7568s.f37497h);
            m1104A.f37493d.m26457x(c7568s.f37497h);
            m1104A.f37494e = c7568s.f37497h;
            for (int size = this.f37493d.size() - 1; size >= 0; size--) {
                if (this.f37493d.m26470B(size) == c7568s.f37497h) {
                    this.f37493d.m26461L(size, m1104A.f37497h);
                }
            }
            int i = this.f37494e;
            int i2 = c7568s.f37497h;
            if (i == i2) {
                this.f37494e = m1104A.f37497h;
            }
            this.f37492c.clear(i2);
            this.f37492c.set(m1104A.f37497h);
            c7568s.f37491b.set(m1104A.f37497h);
            c7568s.f37491b.set(this.f37497h, this.f37492c.get(c7568s.f37497h));
            return m1104A;
        }
        throw new RuntimeException("Block " + c7568s.m1136z() + " not successor of " + m1136z());
    }

    /* renamed from: I */
    public void m1167I(int i) {
        int i2 = 0;
        for (int size = this.f37493d.size() - 1; size >= 0; size--) {
            if (this.f37493d.m26470B(size) == i) {
                i2 = size;
            } else {
                this.f37494e = this.f37493d.m26470B(size);
            }
        }
        this.f37493d.m26462K(i2);
        this.f37492c.clear(i);
        this.f37496g.m1078m().get(i).f37491b.clear(this.f37497h);
    }

    /* renamed from: K */
    public void m1165K(int i, int i2) {
        if (i == i2) {
            return;
        }
        this.f37492c.set(i2);
        if (this.f37494e == i) {
            this.f37494e = i2;
        }
        for (int size = this.f37493d.size() - 1; size >= 0; size--) {
            if (this.f37493d.m26470B(size) == i) {
                this.f37493d.m26461L(size, i2);
            }
        }
        this.f37492c.clear(i);
        this.f37496g.m1078m().get(i2).f37491b.set(this.f37497h);
        this.f37496g.m1078m().get(i).f37491b.clear(this.f37497h);
    }

    /* renamed from: L */
    public void m1164L() {
        int i = this.f37500k;
        if (i > 1) {
            m1163M(this.f37490a.subList(0, i));
            if (this.f37490a.get(this.f37500k).mo1105z()) {
                throw new RuntimeException("Unexpected: moves from phis before move-exception");
            }
        }
        if (this.f37499j > 1) {
            ArrayList<AbstractC7572u> arrayList = this.f37490a;
            m1163M(arrayList.subList((arrayList.size() - this.f37499j) - 1, this.f37490a.size() - 1));
        }
        this.f37496g.m1094K();
    }

    /* renamed from: M */
    public final void m1163M(List<AbstractC7572u> list) {
        BitSet bitSet = new BitSet(this.f37496g.m1070u());
        BitSet bitSet2 = new BitSet(this.f37496g.m1070u());
        int size = list.size();
        int i = 0;
        while (i < size) {
            for (int i2 = i; i2 < size; i2++) {
                m1162N(bitSet, list.get(i2).mo1107u().m2347A(0));
                m1162N(bitSet2, list.get(i2).m1108t());
            }
            int i3 = i;
            int i4 = i3;
            while (i3 < size) {
                if (!m1152j(bitSet, list.get(i3).m1108t())) {
                    Collections.swap(list, i3, i4);
                    i4++;
                }
                i3++;
            }
            if (i == i4) {
                AbstractC7572u abstractC7572u = null;
                int i5 = i4;
                while (true) {
                    if (i5 >= size) {
                        break;
                    }
                    AbstractC7572u abstractC7572u2 = list.get(i5);
                    if (m1152j(bitSet, abstractC7572u2.m1108t()) && m1152j(bitSet2, abstractC7572u2.mo1107u().m2347A(0))) {
                        Collections.swap(list, i4, i5);
                        abstractC7572u = abstractC7572u2;
                        break;
                    }
                    i5++;
                }
                C7157q m1108t = abstractC7572u.m1108t();
                C7157q m2364S = m1108t.m2364S(this.f37496g.m1086e(m1108t.m2355x()));
                C7164t m2305A = C7166v.m2305A(m1108t.getType());
                C7167w c7167w = C7167w.f36439d;
                i = i4 + 1;
                list.add(i4, new C7558l(new C7155o(m2305A, c7167w, m2364S, abstractC7572u.mo1107u()), this));
                list.set(i, new C7558l(new C7155o(C7166v.m2305A(m1108t.getType()), c7167w, m1108t, C7160r.m2344D(m2364S)), this));
                size = list.size();
            } else {
                i = i4;
            }
            bitSet.clear();
            bitSet2.clear();
        }
    }

    /* renamed from: d */
    public void m1158d(int i) {
        if (this.f37501l == null) {
            this.f37501l = C7567r.m1176c(this.f37496g.m1070u());
        }
        this.f37501l.add(i);
    }

    /* renamed from: e */
    public void m1157e(int i) {
        if (this.f37502m == null) {
            this.f37502m = C7567r.m1176c(this.f37496g.m1070u());
        }
        this.f37502m.add(i);
    }

    /* renamed from: g */
    public void m1155g(C7157q c7157q, C7157q c7157q2) {
        if (this.f37492c.cardinality() <= 1) {
            if (c7157q.m2380B() == c7157q2.m2380B()) {
                return;
            }
            ArrayList<AbstractC7572u> arrayList = this.f37490a;
            C7558l c7558l = (C7558l) arrayList.get(arrayList.size() - 1);
            if (c7558l.m1108t() == null && c7558l.mo1107u().size() <= 0) {
                C7558l c7558l2 = new C7558l(new C7155o(C7166v.m2305A(c7157q.getType()), C7167w.f36439d, c7157q, C7160r.m2344D(c7157q2)), this);
                ArrayList<AbstractC7572u> arrayList2 = this.f37490a;
                arrayList2.add(arrayList2.size() - 1, c7558l2);
                this.f37499j++;
                return;
            }
            int nextSetBit = this.f37492c.nextSetBit(0);
            while (nextSetBit >= 0) {
                this.f37496g.m1078m().get(nextSetBit).m1156f(c7157q, c7157q2);
                nextSetBit = this.f37492c.nextSetBit(nextSetBit + 1);
            }
            return;
        }
        throw new IllegalStateException("Inserting a move to a block with multiple successors");
    }

    /* renamed from: k */
    public void m1151k(C7568s c7568s) {
        if (this != c7568s && this.f37493d.size() == 0) {
            this.f37492c.set(c7568s.f37497h);
            this.f37493d.m26457x(c7568s.f37497h);
            this.f37494e = c7568s.f37497h;
            c7568s.f37491b.set(this.f37497h);
        }
    }

    /* renamed from: l */
    public void m1150l(AbstractC7572u.InterfaceC7573a interfaceC7573a) {
        int size = this.f37490a.size();
        for (int i = 0; i < size; i++) {
            this.f37490a.get(i).mo1116a(interfaceC7573a);
        }
    }

    /* renamed from: m */
    public void m1149m(C7561n.InterfaceC7563b interfaceC7563b) {
        int size = this.f37490a.size();
        for (int i = 0; i < size; i++) {
            AbstractC7572u abstractC7572u = this.f37490a.get(i);
            if (abstractC7572u instanceof C7561n) {
                interfaceC7563b.mo1036a((C7561n) abstractC7572u);
            } else {
                return;
            }
        }
    }

    /* renamed from: n */
    public final int m1148n() {
        int size = this.f37490a.size();
        int i = 0;
        while (i < size && (this.f37490a.get(i) instanceof C7561n)) {
            i++;
        }
        return i;
    }

    /* renamed from: r */
    public InterfaceC0442k m1144r() {
        if (this.f37502m == null) {
            this.f37502m = C7567r.m1176c(this.f37496g.m1070u());
        }
        return this.f37502m;
    }

    /* renamed from: v */
    public C7568s m1140v() {
        if (this.f37494e < 0) {
            return null;
        }
        return this.f37496g.m1078m().get(this.f37494e);
    }

    public C7568s(int i, int i2, C7574v c7574v) {
        this.f37496g = c7574v;
        this.f37497h = i;
        this.f37495f = i2;
        this.f37491b = new BitSet(c7574v.m1078m().size());
        this.f37492c = new BitSet(c7574v.m1078m().size());
    }

    /* renamed from: G */
    public static C7568s m1169G(C7165u c7165u, int i, C7574v c7574v) {
        int m26455A;
        C7140c m2308b = c7165u.m2308b();
        C7138b m2438F = m2308b.m2438F(i);
        C7568s c7568s = new C7568s(i, m2438F.mo2449a(), c7574v);
        C7149i m2446d = m2438F.m2446d();
        c7568s.f37490a.ensureCapacity(m2446d.size());
        int size = m2446d.size();
        for (int i2 = 0; i2 < size; i2++) {
            c7568s.f37490a.add(new C7558l(m2446d.m2411A(i2), c7568s));
        }
        c7568s.f37491b = C7574v.m1088c(m2308b, c7165u.m2306d(m2438F.mo2449a()));
        c7568s.f37492c = C7574v.m1088c(m2308b, m2438F.m2442h());
        C0441j m1067x = C7574v.m1067x(m2308b, m2438F.m2442h());
        c7568s.f37493d = m1067x;
        if (m1067x.size() != 0) {
            int m2444f = m2438F.m2444f();
            if (m2444f < 0) {
                m26455A = -1;
            } else {
                m26455A = m2308b.m26455A(m2444f);
            }
            c7568s.f37494e = m26455A;
        }
        return c7568s;
    }

    /* renamed from: N */
    public static void m1162N(BitSet bitSet, C7157q c7157q) {
        bitSet.set(c7157q.m2380B());
        if (c7157q.m2355x() > 1) {
            bitSet.set(c7157q.m2380B() + 1);
        }
    }

    /* renamed from: j */
    public static boolean m1152j(BitSet bitSet, C7157q c7157q) {
        int m2380B = c7157q.m2380B();
        int m2355x = c7157q.m2355x();
        if (bitSet.get(m2380B)) {
            return true;
        }
        if (m2355x == 2 && bitSet.get(m2380B + 1)) {
            return true;
        }
        return false;
    }

    /* renamed from: J */
    public void m1166J(AbstractC7146h abstractC7146h) {
        if (abstractC7146h.m2417i().m2316b() != 1) {
            ArrayList<AbstractC7572u> arrayList = this.f37490a;
            AbstractC7572u m1122D = AbstractC7572u.m1122D(abstractC7146h, this);
            ArrayList<AbstractC7572u> arrayList2 = this.f37490a;
            arrayList2.set(arrayList2.size() - 1, m1122D);
            this.f37496g.m1099F(arrayList.get(arrayList.size() - 1));
            this.f37496g.m1100E(m1122D);
            return;
        }
        throw new IllegalArgumentException("last insn must branch");
    }

    /* renamed from: c */
    public void m1159c(AbstractC7146h abstractC7146h) {
        AbstractC7572u m1122D = AbstractC7572u.m1122D(abstractC7146h, this);
        this.f37490a.add(m1148n(), m1122D);
        this.f37496g.m1100E(m1122D);
    }

    /* renamed from: f */
    public void m1156f(C7157q c7157q, C7157q c7157q2) {
        if (c7157q.m2380B() == c7157q2.m2380B()) {
            return;
        }
        this.f37490a.add(m1148n(), new C7558l(new C7155o(C7166v.m2305A(c7157q.getType()), C7167w.f36439d, c7157q, C7160r.m2344D(c7157q2)), this));
        this.f37500k++;
    }
}
