package p234z1;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import p210w1.C7151k;
import p210w1.C7155o;
import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7166v;
import p210w1.C7167w;
import p226y1.C7402c;
import p234z1.AbstractC7572u;
import p234z1.C7561n;
import p234z1.C7568s;
/* renamed from: z1.w */
/* loaded from: classes.dex */
public class RunnableC7577w implements Runnable {

    /* renamed from: a */
    public final C7574v f37520a;

    /* renamed from: b */
    public int f37521b;

    /* renamed from: d */
    public final int f37522d;

    /* renamed from: k */
    public int f37523k;

    /* renamed from: p */
    public final C7157q[][] f37524p;

    /* renamed from: q */
    public final ArrayList<C7151k> f37525q;

    /* renamed from: z1.w$a */
    /* loaded from: classes.dex */
    public class C7578a implements C7568s.InterfaceC7570b {
        public C7578a() {
        }

        @Override // p234z1.C7568s.InterfaceC7570b
        /* renamed from: a */
        public void mo1046a(C7568s c7568s, C7568s c7568s2) {
            new C7579b(c7568s).m1039g();
        }
    }

    /* renamed from: z1.w$b */
    /* loaded from: classes.dex */
    public class C7579b implements AbstractC7572u.InterfaceC7573a {

        /* renamed from: a */
        public final C7568s f37527a;

        /* renamed from: b */
        public final C7157q[] f37528b;

        /* renamed from: c */
        public final HashSet<AbstractC7572u> f37529c = new HashSet<>();

        /* renamed from: d */
        public final HashMap<AbstractC7572u, AbstractC7572u> f37530d = new HashMap<>();

        /* renamed from: e */
        public final C7581b f37531e = new C7581b();

        /* renamed from: z1.w$b$b */
        /* loaded from: classes.dex */
        public class C7581b extends AbstractC7565p {
            public C7581b() {
            }

            @Override // p234z1.AbstractC7565p
            /* renamed from: a */
            public int mo1035a() {
                return RunnableC7577w.this.f37521b;
            }

            @Override // p234z1.AbstractC7565p
            /* renamed from: b */
            public C7157q mo1034b(C7157q c7157q) {
                if (c7157q == null) {
                    return null;
                }
                return c7157q.m2364S(C7579b.this.f37528b[c7157q.m2380B()].m2380B());
            }
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: a */
        public void mo1045a(C7561n c7561n) {
            m1038h(c7561n);
        }

        /* renamed from: z1.w$b$a */
        /* loaded from: classes.dex */
        public class C7580a implements C7561n.InterfaceC7563b {
            public C7580a() {
            }

            @Override // p234z1.C7561n.InterfaceC7563b
            /* renamed from: a */
            public void mo1036a(C7561n c7561n) {
                int m1203Q = c7561n.m1203Q();
                if (RunnableC7577w.this.m1049o(m1203Q)) {
                    return;
                }
                C7157q c7157q = C7579b.this.f37528b[m1203Q];
                if (!RunnableC7577w.this.m1048p(c7157q.m2380B())) {
                    c7561n.m1206K(c7157q, C7579b.this.f37527a);
                }
            }
        }

        public C7579b(C7568s c7568s) {
            this.f37527a = c7568s;
            this.f37528b = RunnableC7577w.this.f37524p[c7568s.m1146p()];
            RunnableC7577w.this.f37524p[c7568s.m1146p()] = null;
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: b */
        public void mo1044b(C7558l c7558l) {
            c7558l.mo1120F(this.f37531e);
            m1038h(c7558l);
        }

        /* renamed from: g */
        public void m1039g() {
            C7157q[] m1052l;
            this.f37527a.m1150l(this);
            m1037i();
            ArrayList<AbstractC7572u> m1145q = this.f37527a.m1145q();
            boolean z = true;
            for (int size = m1145q.size() - 1; size >= 0; size--) {
                AbstractC7572u abstractC7572u = m1145q.get(size);
                AbstractC7572u abstractC7572u2 = this.f37530d.get(abstractC7572u);
                if (abstractC7572u2 != null) {
                    m1145q.set(size, abstractC7572u2);
                } else if (abstractC7572u.mo1125A() && !this.f37529c.contains(abstractC7572u)) {
                    m1145q.remove(size);
                }
            }
            Iterator<C7568s> it = this.f37527a.m1147o().iterator();
            while (it.hasNext()) {
                C7568s next = it.next();
                if (next != this.f37527a) {
                    if (z) {
                        m1052l = this.f37528b;
                    } else {
                        m1052l = RunnableC7577w.m1052l(this.f37528b);
                    }
                    RunnableC7577w.this.f37524p[next.m1146p()] = m1052l;
                    z = false;
                }
            }
        }

        /* renamed from: i */
        public final void m1037i() {
            C7580a c7580a = new C7580a();
            BitSet m1173C = this.f37527a.m1173C();
            for (int nextSetBit = m1173C.nextSetBit(0); nextSetBit >= 0; nextSetBit = m1173C.nextSetBit(nextSetBit + 1)) {
                RunnableC7577w.this.f37520a.m1078m().get(nextSetBit).m1149m(c7580a);
            }
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: c */
        public void mo1043c(C7558l c7558l) {
            C7157q m1108t = c7558l.m1108t();
            int m2380B = m1108t.m2380B();
            boolean z = false;
            int m2380B2 = c7558l.mo1107u().m2347A(0).m2380B();
            c7558l.mo1120F(this.f37531e);
            int m2380B3 = c7558l.mo1107u().m2347A(0).m2380B();
            C7151k m2354z = this.f37528b[m2380B2].m2354z();
            C7151k m2354z2 = m1108t.m2354z();
            if (m2354z2 == null) {
                m2354z2 = m2354z;
            }
            C7151k m1050n = RunnableC7577w.this.m1050n(m2380B3);
            z = (m1050n == null || m2354z2 == null || m2354z2.equals(m1050n)) ? true : true;
            C7157q m2371L = C7157q.m2371L(m2380B3, m1108t.getType(), m2354z2);
            if (C7559m.m1211b() && (!z || !RunnableC7577w.m1051m(m2354z2, m2354z) || RunnableC7577w.this.f37523k != 0)) {
                if (z && m2354z == null && RunnableC7577w.this.f37523k == 0) {
                    this.f37530d.put(c7558l, AbstractC7572u.m1122D(new C7155o(C7166v.m2256z(m2371L), C7167w.f36439d, (C7157q) null, C7160r.m2344D(C7157q.m2372K(m2371L.m2380B(), m2371L.getType(), m2354z2))), this.f37527a));
                    m1040f(m2380B, m2371L);
                    return;
                }
                m1038h(c7558l);
                this.f37529c.add(c7558l);
                return;
            }
            m1040f(m2380B, m2371L);
        }

        /* renamed from: f */
        public final void m1040f(int i, C7157q c7157q) {
            int m2380B = c7157q.m2380B();
            C7151k m2354z = c7157q.m2354z();
            C7157q[] c7157qArr = this.f37528b;
            c7157qArr[i] = c7157q;
            for (int length = c7157qArr.length - 1; length >= 0; length--) {
                if (m2380B == this.f37528b[length].m2380B()) {
                    this.f37528b[length] = c7157q;
                }
            }
            if (m2354z == null) {
                return;
            }
            RunnableC7577w.this.m1047q(c7157q);
            for (int length2 = this.f37528b.length - 1; length2 >= 0; length2--) {
                C7157q c7157q2 = this.f37528b[length2];
                if (m2380B != c7157q2.m2380B() && m2354z.equals(c7157q2.m2354z())) {
                    this.f37528b[length2] = c7157q2.m2366Q(null);
                }
            }
        }

        /* renamed from: h */
        public void m1038h(AbstractC7572u abstractC7572u) {
            C7157q m1108t = abstractC7572u.m1108t();
            if (m1108t == null) {
                return;
            }
            int m2380B = m1108t.m2380B();
            if (RunnableC7577w.this.m1049o(m2380B)) {
                return;
            }
            abstractC7572u.m1114c(RunnableC7577w.this.f37521b);
            m1040f(m2380B, abstractC7572u.m1108t());
            RunnableC7577w.m1061c(RunnableC7577w.this);
        }
    }

    public RunnableC7577w(C7574v c7574v) {
        int m1070u = c7574v.m1070u();
        this.f37522d = m1070u;
        this.f37520a = c7574v;
        this.f37521b = m1070u;
        this.f37523k = 0;
        this.f37524p = new C7157q[c7574v.m1078m().size()];
        this.f37525q = new ArrayList<>();
        C7157q[] c7157qArr = new C7157q[m1070u];
        for (int i = 0; i < this.f37522d; i++) {
            c7157qArr[i] = C7157q.m2373J(i, C7402c.f37060B);
        }
        this.f37524p[c7574v.m1075p()] = c7157qArr;
    }

    /* renamed from: c */
    public static /* synthetic */ int m1061c(RunnableC7577w runnableC7577w) {
        int i = runnableC7577w.f37521b;
        runnableC7577w.f37521b = i + 1;
        return i;
    }

    /* renamed from: l */
    public static C7157q[] m1052l(C7157q[] c7157qArr) {
        C7157q[] c7157qArr2 = new C7157q[c7157qArr.length];
        System.arraycopy(c7157qArr, 0, c7157qArr2, 0, c7157qArr.length);
        return c7157qArr2;
    }

    /* renamed from: m */
    public static boolean m1051m(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: o */
    public final boolean m1049o(int i) {
        return i < this.f37523k;
    }

    /* renamed from: p */
    public final boolean m1048p(int i) {
        return i < this.f37522d;
    }

    /* renamed from: n */
    public final C7151k m1050n(int i) {
        if (i < this.f37525q.size()) {
            return this.f37525q.get(i);
        }
        return null;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f37520a.m1080k(new C7578a());
        this.f37520a.m1092M(this.f37521b);
        this.f37520a.m1098G();
    }

    /* renamed from: q */
    public final void m1047q(C7157q c7157q) {
        int m2380B = c7157q.m2380B();
        C7151k m2354z = c7157q.m2354z();
        this.f37525q.ensureCapacity(m2380B + 1);
        while (this.f37525q.size() <= m2380B) {
            this.f37525q.add(null);
        }
        this.f37525q.set(m2380B, m2354z);
    }

    public RunnableC7577w(C7574v c7574v, int i) {
        this(c7574v);
        this.f37523k = i;
    }
}
