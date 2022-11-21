package p003a2;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import p015b2.InterfaceC0440i;
import p015b2.InterfaceC0442k;
import p210w1.AbstractC7142d;
import p210w1.C7151k;
import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7164t;
import p218x1.C7228p;
import p234z1.AbstractC7565p;
import p234z1.AbstractC7572u;
import p234z1.C7550g;
import p234z1.C7558l;
import p234z1.C7559m;
import p234z1.C7561n;
import p234z1.C7574v;
/* renamed from: a2.a */
/* loaded from: classes.dex */
public class C0042a extends AbstractC0054e {

    /* renamed from: c */
    public final Map<C7151k, ArrayList<C7157q>> f56c;

    /* renamed from: d */
    public final ArrayList<C7558l> f57d;

    /* renamed from: e */
    public final ArrayList<C7558l> f58e;

    /* renamed from: f */
    public final ArrayList<C7561n> f59f;

    /* renamed from: g */
    public final BitSet f60g;

    /* renamed from: h */
    public final C7550g f61h;

    /* renamed from: i */
    public final int f62i;

    /* renamed from: j */
    public final BitSet f63j;

    /* renamed from: k */
    public final BitSet f64k;

    /* renamed from: l */
    public final boolean f65l;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: a2.a$b */
    /* loaded from: classes.dex */
    public static abstract class EnumC0044b {

        /* renamed from: a */
        public static final EnumC0044b f67a;

        /* renamed from: b */
        public static final EnumC0044b f68b;

        /* renamed from: d */
        public static final EnumC0044b f69d;

        /* renamed from: k */
        public static final /* synthetic */ EnumC0044b[] f70k;

        /* renamed from: a2.a$b$c */
        /* loaded from: classes.dex */
        public enum C0047c extends EnumC0044b {
            public C0047c(String str, int i) {
                super(str, i, null);
            }

            @Override // p003a2.C0042a.EnumC0044b
            /* renamed from: c */
            public int mo27741c(BitSet bitSet, int i) {
                return bitSet.nextClearBit(i);
            }
        }

        public EnumC0044b(String str, int i) {
        }

        public static EnumC0044b valueOf(String str) {
            return (EnumC0044b) Enum.valueOf(EnumC0044b.class, str);
        }

        public static EnumC0044b[] values() {
            return (EnumC0044b[]) f70k.clone();
        }

        /* renamed from: c */
        public abstract int mo27741c(BitSet bitSet, int i);

        /* renamed from: a2.a$b$a */
        /* loaded from: classes.dex */
        public enum C0045a extends EnumC0044b {
            public C0045a(String str, int i) {
                super(str, i, null);
            }

            @Override // p003a2.C0042a.EnumC0044b
            /* renamed from: c */
            public int mo27741c(BitSet bitSet, int i) {
                int nextClearBit = bitSet.nextClearBit(i);
                while (!C0042a.m27772E(nextClearBit)) {
                    nextClearBit = bitSet.nextClearBit(nextClearBit + 1);
                }
                return nextClearBit;
            }
        }

        /* renamed from: a2.a$b$b */
        /* loaded from: classes.dex */
        public enum C0046b extends EnumC0044b {
            public C0046b(String str, int i) {
                super(str, i, null);
            }

            @Override // p003a2.C0042a.EnumC0044b
            /* renamed from: c */
            public int mo27741c(BitSet bitSet, int i) {
                int nextClearBit = bitSet.nextClearBit(i);
                while (C0042a.m27772E(nextClearBit)) {
                    nextClearBit = bitSet.nextClearBit(nextClearBit + 1);
                }
                return nextClearBit;
            }
        }

        static {
            C0045a c0045a = new C0045a("EVEN", 0);
            f67a = c0045a;
            C0046b c0046b = new C0046b("ODD", 1);
            f68b = c0046b;
            C0047c c0047c = new C0047c("UNSPECIFIED", 2);
            f69d = c0047c;
            f70k = new EnumC0044b[]{c0045a, c0046b, c0047c};
        }

        public /* synthetic */ EnumC0044b(String str, int i, C0043a c0043a) {
            this(str, i);
        }
    }

    /* renamed from: E */
    public static boolean m27772E(int i) {
        return (i & 1) == 0;
    }

    /* renamed from: F */
    public final void m27771F(int i, int i2) {
        this.f63j.set(i, i2 + i, true);
    }

    /* renamed from: H */
    public final boolean m27769H(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            if (this.f63j.get(i3)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: I */
    public final boolean m27768I(int i, int i2) {
        int i3 = this.f62i;
        return i < i3 && i + i2 > i3;
    }

    @Override // p003a2.AbstractC0054e
    /* renamed from: d */
    public boolean mo27719d() {
        return true;
    }

    /* renamed from: l */
    public final void m27757l() {
        this.f92a.m1079l(new C0043a());
    }

    /* renamed from: p */
    public final int m27753p(int i, int i2) {
        return m27752q(i, i2, m27748u(i2));
    }

    /* renamed from: a2.a$a */
    /* loaded from: classes.dex */
    public class C0043a implements AbstractC7572u.InterfaceC7573a {
        public C0043a() {
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: a */
        public void mo1045a(C7561n c7561n) {
            m27742d(c7561n);
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: b */
        public void mo1044b(C7558l c7558l) {
            m27742d(c7558l);
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: c */
        public void mo1043c(C7558l c7558l) {
            m27742d(c7558l);
        }

        /* renamed from: d */
        public final void m27742d(AbstractC7572u abstractC7572u) {
            C7157q mo1111j = abstractC7572u.mo1111j();
            if (mo1111j != null) {
                C7151k m2354z = mo1111j.m2354z();
                ArrayList arrayList = (ArrayList) C0042a.this.f56c.get(m2354z);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    C0042a.this.f56c.put(m2354z, arrayList);
                }
                arrayList.add(mo1111j);
            }
            if (abstractC7572u instanceof C7558l) {
                if (abstractC7572u.mo1110n().m2314d() == 56) {
                    C0042a.this.f57d.add((C7558l) abstractC7572u);
                } else if (C7559m.m1212a().mo2426a(abstractC7572u.mo1109o().m2417i(), abstractC7572u.mo1107u())) {
                    C0042a.this.f58e.add((C7558l) abstractC7572u);
                }
            } else if (abstractC7572u instanceof C7561n) {
                C0042a.this.f59f.add((C7561n) abstractC7572u);
            }
        }
    }

    /* renamed from: a2.a$c */
    /* loaded from: classes.dex */
    public static class C0048c {

        /* renamed from: a */
        public final int[] f71a;

        /* renamed from: b */
        public final int[] f72b;

        /* renamed from: c */
        public int f73c = 0;

        /* renamed from: a */
        public void m27740a(int i) {
            int i2 = 0;
            while (true) {
                int i3 = this.f73c;
                if (i2 < i3) {
                    if (this.f71a[i2] == i) {
                        int[] iArr = this.f72b;
                        iArr[i2] = iArr[i2] + 1;
                        return;
                    }
                    i2++;
                } else {
                    this.f71a[i3] = i;
                    this.f72b[i3] = 1;
                    this.f73c = i3 + 1;
                    return;
                }
            }
        }

        /* renamed from: b */
        public int m27739b() {
            int i = -1;
            int i2 = -1;
            int i3 = 0;
            for (int i4 = 0; i4 < this.f73c; i4++) {
                int i5 = this.f72b[i4];
                if (i3 < i5) {
                    i2 = this.f71a[i4];
                    i = i4;
                    i3 = i5;
                }
            }
            this.f72b[i] = 0;
            return i2;
        }

        /* renamed from: c */
        public int m27738c() {
            return this.f73c;
        }

        public C0048c(int i) {
            this.f71a = new int[i];
            this.f72b = new int[i];
        }
    }

    /* renamed from: A */
    public final void m27776A() {
        for (ArrayList<C7157q> arrayList : this.f56c.values()) {
            int size = arrayList.size();
            int i = -1;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    break;
                }
                C7157q c7157q = arrayList.get(i3);
                int m27746w = m27746w(c7157q.m2380B());
                if (m27746w >= 0) {
                    i2 = c7157q.m2355x();
                    m27759j(c7157q, m27746w);
                    i = m27746w;
                    break;
                }
                i3++;
                i = m27746w;
            }
            if (i >= 0) {
                m27765L(arrayList, i, i2, true);
            }
        }
    }

    /* renamed from: B */
    public final void m27775B() {
        C7157q m27721b;
        int m1070u = this.f92a.m1070u();
        for (int i = 0; i < m1070u; i++) {
            if (!this.f60g.get(i) && (m27721b = m27721b(i)) != null) {
                int m2355x = m27721b.m2355x();
                int m27753p = m27753p(this.f62i, m2355x);
                while (!m27756m(m27721b, m27753p)) {
                    m27753p = m27753p(m27753p + 1, m2355x);
                }
                m27759j(m27721b, m27753p);
            }
        }
    }

    /* renamed from: C */
    public final void m27774C() {
        Iterator<C7561n> it = this.f59f.iterator();
        while (it.hasNext()) {
            m27770G(it.next());
        }
    }

    /* renamed from: D */
    public final void m27773D() {
        int m1070u = this.f92a.m1070u();
        for (int i = 0; i < m1070u; i++) {
            if (!this.f60g.get(i)) {
                int m27746w = m27746w(i);
                C7157q m27721b = m27721b(i);
                if (m27746w >= 0) {
                    m27759j(m27721b, m27746w);
                }
            }
        }
    }

    /* renamed from: J */
    public C7160r m27767J(InterfaceC0442k interfaceC0442k) {
        C7160r c7160r = new C7160r(interfaceC0442k.mo26449a());
        InterfaceC0440i it = interfaceC0442k.iterator();
        int i = 0;
        while (it.hasNext()) {
            c7160r.m2342F(i, m27721b(it.next()));
            i++;
        }
        return c7160r;
    }

    /* renamed from: o */
    public final int m27754o(C7558l c7558l, int i, int[] iArr, BitSet bitSet) {
        EnumC0044b enumC0044b = EnumC0044b.f69d;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (int i5 : iArr) {
            if (i5 == 2) {
                if (m27772E(i4)) {
                    i3++;
                } else {
                    i2++;
                }
                i4 += 2;
            } else {
                i4++;
            }
        }
        if (i2 > i3) {
            if (m27772E(this.f62i)) {
                enumC0044b = EnumC0044b.f68b;
            } else {
                enumC0044b = EnumC0044b.f67a;
            }
        } else if (i3 > 0) {
            if (m27772E(this.f62i)) {
                enumC0044b = EnumC0044b.f67a;
            } else {
                enumC0044b = EnumC0044b.f68b;
            }
        }
        int i6 = this.f62i;
        while (true) {
            int m27752q = m27752q(i6, i, enumC0044b);
            if (m27749t(m27752q, c7558l, iArr, bitSet) >= 0) {
                return m27752q;
            }
            i6 = m27752q + 1;
            bitSet.clear();
        }
    }

    /* renamed from: q */
    public final int m27752q(int i, int i2, EnumC0044b enumC0044b) {
        int mo27741c = enumC0044b.mo27741c(this.f63j, i);
        while (true) {
            int i3 = 1;
            while (i3 < i2 && !this.f63j.get(mo27741c + i3)) {
                i3++;
            }
            if (i3 == i2) {
                return mo27741c;
            }
            mo27741c = enumC0044b.mo27741c(this.f63j, mo27741c + i3);
        }
    }

    /* renamed from: r */
    public final int m27751r(C7558l c7558l) {
        int m1287f;
        BitSet bitSet;
        int m27749t;
        C7160r mo1107u = c7558l.mo1107u();
        int size = mo1107u.size();
        int[] iArr = new int[size];
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            int m2355x = mo1107u.m2347A(i2).m2355x();
            iArr[i2] = m2355x;
            i += m2355x;
        }
        int i3 = Integer.MIN_VALUE;
        BitSet bitSet2 = null;
        int i4 = 0;
        int i5 = -1;
        for (int i6 = 0; i6 < size; i6++) {
            int m2380B = mo1107u.m2347A(i6).m2380B();
            if (i6 != 0) {
                i4 -= iArr[i6 - 1];
            }
            if (this.f60g.get(m2380B) && (m1287f = this.f61h.m1287f(m2380B) + i4) >= 0 && !m27768I(m1287f, i) && (m27749t = m27749t(m1287f, c7558l, iArr, (bitSet = new BitSet(size)))) >= 0) {
                int cardinality = m27749t - bitSet.cardinality();
                if (cardinality > i3) {
                    i3 = cardinality;
                    i5 = m1287f;
                    bitSet2 = bitSet;
                }
                if (m27749t == i) {
                    break;
                }
            }
        }
        if (i5 == -1) {
            bitSet2 = new BitSet(size);
            i5 = m27754o(c7558l, i, iArr, bitSet2);
        }
        for (int nextSetBit = bitSet2.nextSetBit(0); nextSetBit >= 0; nextSetBit = bitSet2.nextSetBit(nextSetBit + 1)) {
            c7558l.m1216K(nextSetBit, m27720c(c7558l, mo1107u.m2347A(nextSetBit)));
        }
        return i5;
    }

    /* renamed from: u */
    public final EnumC0044b m27748u(int i) {
        EnumC0044b enumC0044b = EnumC0044b.f69d;
        if (i == 2) {
            if (m27772E(this.f62i)) {
                return EnumC0044b.f67a;
            }
            return EnumC0044b.f68b;
        }
        return enumC0044b;
    }

    /* renamed from: v */
    public final C7151k m27747v(int i) {
        for (Map.Entry<C7151k, ArrayList<C7157q>> entry : this.f56c.entrySet()) {
            Iterator<C7157q> it = entry.getValue().iterator();
            while (it.hasNext()) {
                if (it.next().m2380B() == i) {
                    return entry.getKey();
                }
            }
        }
        return null;
    }

    /* renamed from: w */
    public final int m27746w(int i) {
        C7164t mo1110n;
        AbstractC7572u m1077n = this.f92a.m1077n(i);
        if (m1077n == null || (mo1110n = m1077n.mo1110n()) == null || mo1110n.m2314d() != 3) {
            return -1;
        }
        return ((C7228p) ((AbstractC7142d) m1077n.mo1109o()).m2427t()).m2075B();
    }

    /* renamed from: x */
    public final void m27745x() {
        Iterator<C7558l> it = this.f57d.iterator();
        while (it.hasNext()) {
            C7558l next = it.next();
            C7157q m1108t = next.m1108t();
            int m2380B = m1108t.m2380B();
            BitSet m1141u = next.m1112i().m1141u();
            boolean z = true;
            if (m1141u.cardinality() == 1) {
                ArrayList<AbstractC7572u> m1145q = this.f92a.m1078m().get(m1141u.nextSetBit(0)).m1145q();
                AbstractC7572u abstractC7572u = m1145q.get(m1145q.size() - 1);
                if (abstractC7572u.mo1110n().m2314d() == 43) {
                    C7157q m2347A = abstractC7572u.mo1107u().m2347A(0);
                    int m2380B2 = m2347A.m2380B();
                    int m2355x = m2347A.m2355x();
                    boolean z2 = this.f60g.get(m2380B);
                    boolean z3 = this.f60g.get(m2380B2);
                    if ((!z3) & z2) {
                        z3 = m27766K(m2347A, this.f61h.m1287f(m2380B), m2355x);
                    }
                    if ((!z2) & z3) {
                        z2 = m27766K(m1108t, this.f61h.m1287f(m2380B2), m2355x);
                    }
                    if (!z2 || !z3) {
                        int m27753p = m27753p(this.f62i, m2355x);
                        ArrayList<C7157q> arrayList = new ArrayList<>(2);
                        arrayList.add(m1108t);
                        arrayList.add(m2347A);
                        while (!m27765L(arrayList, m27753p, m2355x, false)) {
                            m27753p = m27753p(m27753p + 1, m2355x);
                        }
                    }
                    if (abstractC7572u.mo1109o().mo2249e().size() == 0) {
                        z = false;
                    }
                    int m1287f = this.f61h.m1287f(m2380B);
                    if (m1287f != this.f61h.m1287f(m2380B2) && !z) {
                        ((C7558l) abstractC7572u).m1216K(0, m27720c(abstractC7572u, m2347A));
                        m27759j(abstractC7572u.mo1107u().m2347A(0), m1287f);
                    }
                }
            }
        }
    }

    /* renamed from: y */
    public final void m27744y() {
        Iterator<C7558l> it = this.f58e.iterator();
        while (it.hasNext()) {
            m27758k(it.next());
        }
    }

    /* renamed from: z */
    public final void m27743z() {
        for (ArrayList<C7157q> arrayList : this.f56c.values()) {
            int i = this.f62i;
            boolean z = false;
            do {
                int size = arrayList.size();
                int i2 = 1;
                for (int i3 = 0; i3 < size; i3++) {
                    C7157q c7157q = arrayList.get(i3);
                    int m2355x = c7157q.m2355x();
                    if (!this.f60g.get(c7157q.m2380B()) && m2355x > i2) {
                        i2 = m2355x;
                    }
                }
                int m27750s = m27750s(i, i2);
                if (m27755n(arrayList, m27750s)) {
                    z = m27765L(arrayList, m27750s, i2, true);
                }
                i = m27750s + 1;
            } while (!z);
        }
    }

    public C0042a(C7574v c7574v, C0050c c0050c, boolean z) {
        super(c7574v, c0050c);
        this.f60g = new BitSet(c7574v.m1070u());
        this.f61h = new C7550g(c0050c, c7574v.m1070u());
        this.f65l = z;
        int m1071t = c7574v.m1071t();
        this.f62i = m1071t;
        BitSet bitSet = new BitSet(m1071t * 2);
        this.f63j = bitSet;
        bitSet.set(0, m1071t);
        this.f64k = new BitSet(m1071t * 2);
        this.f56c = new TreeMap();
        this.f57d = new ArrayList<>();
        this.f58e = new ArrayList<>();
        this.f59f = new ArrayList<>();
    }

    /* renamed from: G */
    public final void m27770G(C7561n c7561n) {
        C7157q m1108t = c7561n.m1108t();
        int m2380B = m1108t.m2380B();
        int m2355x = m1108t.m2355x();
        C7160r mo1107u = c7561n.mo1107u();
        int size = mo1107u.size();
        ArrayList<C7157q> arrayList = new ArrayList<>();
        C0048c c0048c = new C0048c(size + 1);
        if (this.f60g.get(m2380B)) {
            c0048c.m27740a(this.f61h.m1287f(m2380B));
        } else {
            arrayList.add(m1108t);
        }
        for (int i = 0; i < size; i++) {
            C7157q m1108t2 = this.f92a.m1077n(mo1107u.m2347A(i).m2380B()).m1108t();
            int m2380B2 = m1108t2.m2380B();
            if (this.f60g.get(m2380B2)) {
                c0048c.m27740a(this.f61h.m1287f(m2380B2));
            } else {
                arrayList.add(m1108t2);
            }
        }
        for (int i2 = 0; i2 < c0048c.m27738c(); i2++) {
            m27765L(arrayList, c0048c.m27739b(), m2355x, false);
        }
        int m27753p = m27753p(this.f62i, m2355x);
        while (!m27765L(arrayList, m27753p, m2355x, false)) {
            m27753p = m27753p(m27753p + 1, m2355x);
        }
    }

    /* renamed from: K */
    public final boolean m27766K(C7157q c7157q, int i, int i2) {
        if (c7157q.m2355x() <= i2 && !this.f60g.get(c7157q.m2380B()) && m27756m(c7157q, i)) {
            m27759j(c7157q, i);
            return true;
        }
        return false;
    }

    /* renamed from: L */
    public final boolean m27765L(ArrayList<C7157q> arrayList, int i, int i2, boolean z) {
        Iterator<C7157q> it = arrayList.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            C7157q next = it.next();
            if (!this.f60g.get(next.m2380B())) {
                boolean m27766K = m27766K(next, i, i2);
                if (m27766K && !z2) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (m27766K && z) {
                    m27771F(i, next.m2355x());
                }
            }
        }
        return !z2;
    }

    @Override // p003a2.AbstractC0054e
    /* renamed from: a */
    public AbstractC7565p mo27722a() {
        m27757l();
        m27776A();
        m27773D();
        m27744y();
        m27743z();
        m27745x();
        m27774C();
        m27775B();
        return this.f61h;
    }

    /* renamed from: j */
    public final void m27759j(C7157q c7157q, int i) {
        int m2380B = c7157q.m2380B();
        if (!this.f60g.get(m2380B) && m27756m(c7157q, i)) {
            int m2355x = c7157q.m2355x();
            this.f61h.mo1243e(c7157q.m2380B(), i, m2355x);
            this.f60g.set(m2380B);
            this.f64k.set(i, m2355x + i);
            return;
        }
        throw new RuntimeException("attempt to add invalid register mapping");
    }

    /* renamed from: k */
    public final void m27758k(C7558l c7558l) {
        int m27751r = m27751r(c7558l);
        C7160r mo1107u = c7558l.mo1107u();
        int size = mo1107u.size();
        int i = 0;
        while (i < size) {
            C7157q m2347A = mo1107u.m2347A(i);
            int m2380B = m2347A.m2380B();
            int m2355x = m2347A.m2355x();
            int i2 = m27751r + m2355x;
            if (!this.f60g.get(m2380B)) {
                C7151k m27747v = m27747v(m2380B);
                m27759j(m2347A, m27751r);
                if (m27747v != null) {
                    m27771F(m27751r, m2355x);
                    ArrayList<C7157q> arrayList = this.f56c.get(m27747v);
                    int size2 = arrayList.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        C7157q c7157q = arrayList.get(i3);
                        if (-1 == mo1107u.m2345C(c7157q.m2380B())) {
                            m27766K(c7157q, m27751r, m2355x);
                        }
                    }
                }
            }
            i++;
            m27751r = i2;
        }
    }

    /* renamed from: m */
    public final boolean m27756m(C7157q c7157q, int i) {
        if (!m27768I(i, c7157q.m2355x()) && !this.f61h.m1239j(c7157q, i)) {
            return true;
        }
        return false;
    }

    /* renamed from: n */
    public final boolean m27755n(ArrayList<C7157q> arrayList, int i) {
        Iterator<C7157q> it = arrayList.iterator();
        while (it.hasNext()) {
            C7157q next = it.next();
            if (!this.f60g.get(next.m2380B()) && !m27756m(next, i)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: s */
    public final int m27750s(int i, int i2) {
        EnumC0044b m27748u = m27748u(i2);
        int mo27741c = m27748u.mo27741c(this.f64k, i);
        while (true) {
            int i3 = 1;
            while (i3 < i2 && !this.f64k.get(mo27741c + i3)) {
                i3++;
            }
            if (i3 == i2) {
                return mo27741c;
            }
            mo27741c = m27748u.mo27741c(this.f64k, mo27741c + i3);
        }
    }

    /* renamed from: t */
    public final int m27749t(int i, C7558l c7558l, int[] iArr, BitSet bitSet) {
        C7160r mo1107u = c7558l.mo1107u();
        int size = mo1107u.size();
        C7160r m27767J = m27767J(c7558l.m1112i().m1144r());
        BitSet bitSet2 = new BitSet(this.f92a.m1070u());
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            C7157q m2347A = mo1107u.m2347A(i3);
            int m2380B = m2347A.m2380B();
            int i4 = iArr[i3];
            if (i3 != 0) {
                i += iArr[i3 - 1];
            }
            if (!this.f60g.get(m2380B) || this.f61h.m1287f(m2380B) != i) {
                if (!m27769H(i, i4)) {
                    if (this.f60g.get(m2380B) || !m27756m(m2347A, i) || bitSet2.get(m2380B)) {
                        if (!this.f61h.m1241h(m27767J, i, i4) && !this.f61h.m1241h(mo1107u, i, i4)) {
                            bitSet.set(i3);
                            bitSet2.set(m2380B);
                        }
                    }
                }
                return -1;
            }
            i2 += i4;
            bitSet2.set(m2380B);
        }
        return i2;
    }
}
