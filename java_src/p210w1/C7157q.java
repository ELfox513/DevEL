package p210w1;

import java.util.concurrent.ConcurrentHashMap;
import p015b2.InterfaceC0450r;
import p218x1.AbstractC7204a;
import p218x1.C7212d0;
import p226y1.C7402c;
import p226y1.InterfaceC7403d;
/* renamed from: w1.q */
/* loaded from: classes.dex */
public final class C7157q implements InterfaceC7403d, InterfaceC0450r, Comparable<C7157q> {

    /* renamed from: k */
    public static final ConcurrentHashMap<Object, C7157q> f36204k = new ConcurrentHashMap<>(10000, 0.75f);

    /* renamed from: p */
    public static final ThreadLocal<C7159b> f36205p = new C7158a();

    /* renamed from: a */
    public final int f36206a;

    /* renamed from: b */
    public final InterfaceC7403d f36207b;

    /* renamed from: d */
    public final C7151k f36208d;

    /* renamed from: w1.q$a */
    /* loaded from: classes.dex */
    public static class C7158a extends ThreadLocal<C7159b> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public C7159b initialValue() {
            return new C7159b(null);
        }
    }

    /* renamed from: w1.q$b */
    /* loaded from: classes.dex */
    public static class C7159b {

        /* renamed from: a */
        public int f36209a;

        /* renamed from: b */
        public InterfaceC7403d f36210b;

        /* renamed from: c */
        public C7151k f36211c;

        public C7159b() {
        }

        public /* synthetic */ C7159b(C7158a c7158a) {
            this();
        }

        /* renamed from: e */
        public C7157q m2348e() {
            return new C7157q(this.f36209a, this.f36210b, this.f36211c, null);
        }

        public int hashCode() {
            return C7157q.m2378D(this.f36209a, this.f36210b, this.f36211c);
        }

        /* renamed from: d */
        public void m2349d(int i, InterfaceC7403d interfaceC7403d, C7151k c7151k) {
            this.f36209a = i;
            this.f36210b = interfaceC7403d;
            this.f36211c = c7151k;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C7157q)) {
                return false;
            }
            return ((C7157q) obj).m2357n(this.f36209a, this.f36210b, this.f36211c);
        }
    }

    public /* synthetic */ C7157q(int i, InterfaceC7403d interfaceC7403d, C7151k c7151k, C7158a c7158a) {
        this(i, interfaceC7403d, c7151k);
    }

    /* renamed from: J */
    public static C7157q m2373J(int i, InterfaceC7403d interfaceC7403d) {
        return m2377E(i, interfaceC7403d, null);
    }

    /* renamed from: L */
    public static C7157q m2371L(int i, InterfaceC7403d interfaceC7403d, C7151k c7151k) {
        return m2377E(i, interfaceC7403d, c7151k);
    }

    /* renamed from: O */
    public static String m2368O(int i) {
        return "v" + i;
    }

    /* renamed from: h */
    public static void m2359h() {
        f36204k.clear();
    }

    /* renamed from: A */
    public int m2381A() {
        return this.f36206a + m2355x();
    }

    /* renamed from: B */
    public int m2380B() {
        return this.f36206a;
    }

    /* renamed from: C */
    public InterfaceC7403d m2379C() {
        return this.f36207b;
    }

    /* renamed from: H */
    public boolean m2375H() {
        return this.f36207b.getType().m1537K();
    }

    /* renamed from: I */
    public boolean m2374I() {
        return (m2380B() & 1) == 0;
    }

    /* renamed from: M */
    public boolean m2370M(C7157q c7157q) {
        if (c7157q != null && this.f36207b.getType().equals(c7157q.f36207b.getType())) {
            C7151k c7151k = this.f36208d;
            C7151k c7151k2 = c7157q.f36208d;
            return c7151k == c7151k2 || (c7151k != null && c7151k.equals(c7151k2));
        }
        return false;
    }

    /* renamed from: N */
    public String m2369N() {
        return m2368O(this.f36206a);
    }

    /* renamed from: R */
    public C7157q m2365R(int i) {
        return i == 0 ? this : m2364S(this.f36206a + i);
    }

    /* renamed from: U */
    public C7157q m2362U(InterfaceC7403d interfaceC7403d) {
        return m2371L(this.f36206a, interfaceC7403d, this.f36208d);
    }

    @Override // p226y1.InterfaceC7403d
    /* renamed from: f */
    public final int mo1523f() {
        return this.f36207b.mo1523f();
    }

    @Override // p226y1.InterfaceC7403d
    public C7402c getType() {
        return this.f36207b.getType();
    }

    public int hashCode() {
        return m2378D(this.f36206a, this.f36207b, this.f36208d);
    }

    @Override // p226y1.InterfaceC7403d
    /* renamed from: l */
    public final boolean mo1522l() {
        return false;
    }

    @Override // p226y1.InterfaceC7403d
    /* renamed from: p */
    public final int mo1521p() {
        return this.f36207b.mo1521p();
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return m2367P(true);
    }

    public String toString() {
        return m2367P(false);
    }

    @Override // p226y1.InterfaceC7403d
    /* renamed from: v */
    public InterfaceC7403d mo1520v() {
        return this.f36207b.mo1520v();
    }

    /* renamed from: x */
    public int m2355x() {
        return this.f36207b.getType().m1527n();
    }

    /* renamed from: z */
    public C7151k m2354z() {
        return this.f36208d;
    }

    public C7157q(int i, InterfaceC7403d interfaceC7403d, C7151k c7151k) {
        if (i < 0) {
            throw new IllegalArgumentException("reg < 0");
        }
        if (interfaceC7403d != null) {
            this.f36206a = i;
            this.f36207b = interfaceC7403d;
            this.f36208d = c7151k;
            return;
        }
        throw new NullPointerException("type == null");
    }

    /* renamed from: D */
    public static int m2378D(int i, InterfaceC7403d interfaceC7403d, C7151k c7151k) {
        int i2;
        if (c7151k != null) {
            i2 = c7151k.hashCode();
        } else {
            i2 = 0;
        }
        return (((i2 * 31) + interfaceC7403d.hashCode()) * 31) + i;
    }

    /* renamed from: E */
    public static C7157q m2377E(int i, InterfaceC7403d interfaceC7403d, C7151k c7151k) {
        C7157q putIfAbsent;
        C7159b c7159b = f36205p.get();
        c7159b.m2349d(i, interfaceC7403d, c7151k);
        ConcurrentHashMap<Object, C7157q> concurrentHashMap = f36204k;
        C7157q c7157q = concurrentHashMap.get(c7159b);
        if (c7157q == null && (putIfAbsent = concurrentHashMap.putIfAbsent((c7157q = c7159b.m2348e()), c7157q)) != null) {
            return putIfAbsent;
        }
        return c7157q;
    }

    /* renamed from: K */
    public static C7157q m2372K(int i, InterfaceC7403d interfaceC7403d, C7151k c7151k) {
        if (c7151k != null) {
            return m2377E(i, interfaceC7403d, c7151k);
        }
        throw new NullPointerException("local  == null");
    }

    /* renamed from: F */
    public C7157q m2376F(C7157q c7157q, boolean z) {
        C7151k c7151k;
        boolean z2;
        InterfaceC7403d type;
        if (this == c7157q) {
            return this;
        }
        if (c7157q == null || this.f36206a != c7157q.m2380B()) {
            return null;
        }
        C7151k c7151k2 = this.f36208d;
        if (c7151k2 != null && c7151k2.equals(c7157q.m2354z())) {
            c7151k = this.f36208d;
        } else {
            c7151k = null;
        }
        if (c7151k == this.f36208d) {
            z2 = true;
        } else {
            z2 = false;
        }
        if ((z && !z2) || (type = getType()) != c7157q.getType()) {
            return null;
        }
        if (this.f36207b.equals(c7157q.m2379C())) {
            type = this.f36207b;
        }
        if (type == this.f36207b && z2) {
            return this;
        }
        int i = this.f36206a;
        if (c7151k == null) {
            return m2373J(i, type);
        }
        return m2372K(i, type, c7151k);
    }

    /* renamed from: P */
    public final String m2367P(boolean z) {
        StringBuilder sb = new StringBuilder(40);
        sb.append(m2369N());
        sb.append(":");
        C7151k c7151k = this.f36208d;
        if (c7151k != null) {
            sb.append(c7151k.toString());
        }
        C7402c type = this.f36207b.getType();
        sb.append(type);
        if (type != this.f36207b) {
            sb.append("=");
            if (z) {
                InterfaceC7403d interfaceC7403d = this.f36207b;
                if (interfaceC7403d instanceof C7212d0) {
                    sb.append(((C7212d0) interfaceC7403d).m2116C());
                }
            }
            if (z) {
                InterfaceC7403d interfaceC7403d2 = this.f36207b;
                if (interfaceC7403d2 instanceof AbstractC7204a) {
                    sb.append(interfaceC7403d2.toHuman());
                }
            }
            sb.append(this.f36207b);
        }
        return sb.toString();
    }

    /* renamed from: Q */
    public C7157q m2366Q(C7151k c7151k) {
        C7151k c7151k2 = this.f36208d;
        if (c7151k2 != c7151k && (c7151k2 == null || !c7151k2.equals(c7151k))) {
            return m2371L(this.f36206a, this.f36207b, c7151k);
        }
        return this;
    }

    /* renamed from: S */
    public C7157q m2364S(int i) {
        if (this.f36206a == i) {
            return this;
        }
        return m2371L(i, this.f36207b, this.f36208d);
    }

    /* renamed from: T */
    public C7157q m2363T() {
        C7402c type;
        InterfaceC7403d interfaceC7403d = this.f36207b;
        if (interfaceC7403d instanceof C7402c) {
            type = (C7402c) interfaceC7403d;
        } else {
            type = interfaceC7403d.getType();
        }
        if (type.m1533O()) {
            type = type.m1545B();
        }
        if (type == interfaceC7403d) {
            return this;
        }
        return m2371L(this.f36206a, type, this.f36208d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7157q)) {
            if (obj instanceof C7159b) {
                C7159b c7159b = (C7159b) obj;
                return m2357n(c7159b.f36209a, c7159b.f36210b, c7159b.f36211c);
            }
            return false;
        }
        C7157q c7157q = (C7157q) obj;
        return m2357n(c7157q.f36206a, c7157q.f36207b, c7157q.f36208d);
    }

    @Override // java.lang.Comparable
    /* renamed from: j */
    public int compareTo(C7157q c7157q) {
        int i = this.f36206a;
        int i2 = c7157q.f36206a;
        if (i < i2) {
            return -1;
        }
        if (i > i2) {
            return 1;
        }
        if (this == c7157q) {
            return 0;
        }
        int compareTo = this.f36207b.getType().compareTo(c7157q.f36207b.getType());
        if (compareTo != 0) {
            return compareTo;
        }
        C7151k c7151k = this.f36208d;
        if (c7151k == null) {
            if (c7157q.f36208d != null) {
                return -1;
            }
            return 0;
        }
        C7151k c7151k2 = c7157q.f36208d;
        if (c7151k2 == null) {
            return 1;
        }
        return c7151k.compareTo(c7151k2);
    }

    /* renamed from: n */
    public final boolean m2357n(int i, InterfaceC7403d interfaceC7403d, C7151k c7151k) {
        C7151k c7151k2;
        if (this.f36206a == i && this.f36207b.equals(interfaceC7403d) && ((c7151k2 = this.f36208d) == c7151k || (c7151k2 != null && c7151k2.equals(c7151k)))) {
            return true;
        }
        return false;
    }

    /* renamed from: u */
    public boolean m2356u(C7157q c7157q) {
        if (!m2370M(c7157q) || this.f36206a != c7157q.f36206a) {
            return false;
        }
        return true;
    }
}
