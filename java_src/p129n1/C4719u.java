package p129n1;

import com.android.p030dx.dex.DexOptions;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import p015b2.C0431c;
import p015b2.C0438g;
import p015b2.C0441j;
import p129n1.C4699g;
import p129n1.C4711n;
import p156q1.InterfaceC5398h;
import p210w1.AbstractC7146h;
import p210w1.C7138b;
import p210w1.C7140c;
import p210w1.C7149i;
import p210w1.C7154n;
import p210w1.C7155o;
import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7164t;
import p210w1.C7165u;
import p210w1.C7166v;
import p210w1.C7167w;
import p210w1.C7169y;
import p210w1.C7170z;
import p210w1.InterfaceC7137a0;
import p218x1.C7214e0;
import p218x1.C7228p;
import p226y1.C7401b;
import p226y1.C7402c;
import p226y1.InterfaceC7404e;
/* renamed from: n1.u */
/* loaded from: classes.dex */
public final class C4719u {

    /* renamed from: a */
    public final C4706j f18895a;

    /* renamed from: b */
    public final C4698f f18896b;

    /* renamed from: c */
    public final int f18897c;

    /* renamed from: d */
    public final int f18898d;

    /* renamed from: e */
    public final C4728v f18899e;

    /* renamed from: f */
    public final C4730x f18900f;

    /* renamed from: g */
    public final C4708l[] f18901g;

    /* renamed from: h */
    public final ArrayList<C7138b> f18902h;

    /* renamed from: i */
    public final ArrayList<C0441j> f18903i;

    /* renamed from: j */
    public final C4722c[] f18904j;

    /* renamed from: k */
    public boolean f18905k;

    /* renamed from: l */
    public final C4726g[] f18906l;

    /* renamed from: m */
    public boolean f18907m;

    /* renamed from: n */
    public final C4724e f18908n;

    /* renamed from: n1.u$a */
    /* loaded from: classes.dex */
    public class C4720a implements C7138b.InterfaceC7139a {

        /* renamed from: a */
        public final /* synthetic */ C0441j f18909a;

        public C4720a(C0441j c0441j) {
            this.f18909a = c0441j;
        }

        @Override // p210w1.C7138b.InterfaceC7139a
        /* renamed from: a */
        public void mo2440a(C7138b c7138b) {
            if (C4719u.this.m15598H(c7138b)) {
                this.f18909a.m26457x(c7138b.mo2449a());
            }
        }
    }

    /* renamed from: n1.u$b */
    /* loaded from: classes.dex */
    public class C4721b implements C7138b.InterfaceC7139a {

        /* renamed from: a */
        public final /* synthetic */ C0441j f18911a;

        public C4721b(C0441j c0441j) {
            this.f18911a = c0441j;
        }

        @Override // p210w1.C7138b.InterfaceC7139a
        /* renamed from: a */
        public void mo2440a(C7138b c7138b) {
            this.f18911a.m26457x(c7138b.mo2449a());
        }
    }

    /* renamed from: n1.u$c */
    /* loaded from: classes.dex */
    public class C4722c {

        /* renamed from: a */
        public final Map<C7402c, C4723d> f18913a;

        public C4722c() {
            this.f18913a = new HashMap();
        }

        /* renamed from: b */
        public Collection<C4723d> m15562b() {
            return this.f18913a.values();
        }

        /* renamed from: a */
        public C4723d m15563a(C7402c c7402c) {
            C4723d c4723d = this.f18913a.get(c7402c);
            if (c4723d == null) {
                C4723d c4723d2 = new C4723d(c7402c, C4719u.this.f18908n.mo15559a());
                this.f18913a.put(c7402c, c4723d2);
                return c4723d2;
            }
            return c4723d;
        }

        public /* synthetic */ C4722c(C4719u c4719u, C4720a c4720a) {
            this();
        }
    }

    /* renamed from: n1.u$e */
    /* loaded from: classes.dex */
    public class C4724e extends C4725f {

        /* renamed from: b */
        public int f18917b;

        public C4724e() {
            super(C4719u.this.f18898d);
            this.f18917b = C4719u.this.f18898d + C4719u.this.f18895a.m15706f().size();
        }

        @Override // p129n1.C4719u.C4725f
        /* renamed from: a */
        public int mo15559a() {
            int i = this.f18919a;
            if (i < this.f18917b) {
                this.f18919a = i + 1;
                return i;
            }
            throw new IndexOutOfBoundsException();
        }
    }

    /* renamed from: n1.u$g */
    /* loaded from: classes.dex */
    public class C4726g {

        /* renamed from: a */
        public BitSet f18920a;

        /* renamed from: b */
        public BitSet f18921b;

        /* renamed from: c */
        public int f18922c;

        public C4726g(int i) {
            this.f18922c = i;
            this.f18921b = new BitSet(C4719u.this.f18898d);
            this.f18920a = new BitSet(C4719u.this.f18898d);
            C4719u.this.f18907m = true;
        }

        /* renamed from: c */
        public void m15556c(int i) {
            this.f18920a.set(i);
        }

        /* renamed from: d */
        public void m15555d(int i) {
            this.f18921b.set(i);
        }

        /* renamed from: e */
        public int m15554e() {
            return this.f18922c;
        }

        /* renamed from: f */
        public C0441j m15553f() {
            C0441j c0441j = new C0441j(this.f18920a.size());
            int nextSetBit = this.f18920a.nextSetBit(0);
            while (nextSetBit >= 0) {
                c0441j.m26457x(C4719u.this.m15596J(nextSetBit).m2442h().m26470B(0));
                nextSetBit = this.f18920a.nextSetBit(nextSetBit + 1);
            }
            c0441j.setImmutable();
            return c0441j;
        }

        /* renamed from: g */
        public void m15552g(C4708l c4708l, int[] iArr) {
            int nextSetBit = this.f18920a.nextSetBit(0);
            while (nextSetBit >= 0) {
                int m26470B = C4719u.this.m15596J(nextSetBit).m2442h().m26470B(0);
                C4708l m15669o = c4708l.m15669o(this.f18922c, nextSetBit);
                if (m15669o != null) {
                    C4719u.this.m15594L(m26470B, -1, null, m15669o, iArr);
                } else {
                    C0431c.m26524k(iArr, nextSetBit);
                }
                nextSetBit = this.f18920a.nextSetBit(nextSetBit + 1);
            }
        }

        public C4726g(C4719u c4719u, int i, int i2) {
            this(i);
            m15555d(i2);
        }
    }

    /* renamed from: n1.u$h */
    /* loaded from: classes.dex */
    public class C4727h {

        /* renamed from: a */
        public final HashMap<Integer, Integer> f18924a = new HashMap<>();

        /* renamed from: b */
        public final BitSet f18925b;

        /* renamed from: c */
        public int f18926c;

        /* renamed from: d */
        public int f18927d;

        /* renamed from: e */
        public final C4725f f18928e;

        /* renamed from: f */
        public final ArrayList<C0441j> f18929f;

        public C4727h(C4725f c4725f, ArrayList<C0441j> arrayList) {
            this.f18925b = new BitSet(C4719u.this.f18898d);
            this.f18928e = c4725f;
            this.f18929f = arrayList;
        }

        /* renamed from: a */
        public final void m15551a(int i, int i2) {
            C0441j c0441j;
            C7138b m15596J = C4719u.this.m15596J(i);
            C0441j m2442h = m15596J.m2442h();
            int i3 = -1;
            if (C4719u.this.m15598H(m15596J)) {
                c0441j = C0441j.m26465H(m15548d(m2442h.m26470B(0)), m2442h.m26470B(1));
            } else {
                C4726g m15590P = C4719u.this.m15590P(i);
                if (m15590P != null) {
                    if (m15590P.f18922c == this.f18926c) {
                        c0441j = C0441j.m26466F(this.f18927d);
                        i3 = this.f18927d;
                    } else {
                        throw new RuntimeException("ret instruction returns to label " + C0438g.m26478g(m15590P.f18922c) + " expected: " + C0438g.m26478g(this.f18926c));
                    }
                } else {
                    int m2444f = m15596J.m2444f();
                    int size = m2442h.size();
                    C0441j c0441j2 = new C0441j(size);
                    for (int i4 = 0; i4 < size; i4++) {
                        int m26470B = m2442h.m26470B(i4);
                        int m15548d = m15548d(m26470B);
                        c0441j2.m26457x(m15548d);
                        if (m2444f == m26470B) {
                            i3 = m15548d;
                        }
                    }
                    c0441j2.setImmutable();
                    c0441j = c0441j2;
                }
            }
            C4719u c4719u = C4719u.this;
            c4719u.m15578l(new C7138b(i2, c4719u.m15568v(m15596J.m2446d()), c0441j, i3), this.f18929f.get(i2));
        }

        /* renamed from: c */
        public final boolean m15549c(int i, int i2) {
            C0441j c0441j = this.f18929f.get(i);
            if (c0441j != null && c0441j.size() > 0 && c0441j.m26458O() == i2) {
                return true;
            }
            return false;
        }

        /* renamed from: d */
        public final int m15548d(int i) {
            Integer num = this.f18924a.get(Integer.valueOf(i));
            if (num != null) {
                return num.intValue();
            }
            if (m15549c(i, this.f18926c)) {
                int mo15559a = this.f18928e.mo15559a();
                this.f18925b.set(i);
                this.f18924a.put(Integer.valueOf(i), Integer.valueOf(mo15559a));
                while (this.f18929f.size() <= mo15559a) {
                    this.f18929f.add(null);
                }
                ArrayList<C0441j> arrayList = this.f18929f;
                arrayList.set(mo15559a, arrayList.get(i));
                return mo15559a;
            }
            return i;
        }

        /* renamed from: b */
        public void m15550b(C7138b c7138b) {
            this.f18927d = c7138b.m2442h().m26470B(0);
            int m26470B = c7138b.m2442h().m26470B(1);
            this.f18926c = m26470B;
            int m15548d = m15548d(m26470B);
            int nextSetBit = this.f18925b.nextSetBit(0);
            while (nextSetBit >= 0) {
                this.f18925b.clear(nextSetBit);
                int intValue = this.f18924a.get(Integer.valueOf(nextSetBit)).intValue();
                m15551a(nextSetBit, intValue);
                C4719u c4719u = C4719u.this;
                if (c4719u.m15598H(c4719u.m15596J(nextSetBit))) {
                    new C4727h(this.f18928e, this.f18929f).m15550b(C4719u.this.m15596J(intValue));
                }
                nextSetBit = this.f18925b.nextSetBit(0);
            }
            C4719u.this.m15575o(new C7138b(c7138b.mo2449a(), c7138b.m2446d(), C0441j.m26466F(m15548d), m15548d), this.f18929f.get(c7138b.mo2449a()));
        }
    }

    /* renamed from: A */
    public final int m15605A() {
        return this.f18898d + this.f18895a.m15706f().size() + 7;
    }

    /* renamed from: B */
    public final int m15604B() {
        return this.f18897c + this.f18895a.m15702j();
    }

    /* renamed from: D */
    public final int m15602D(int i) {
        return this.f18898d + this.f18895a.m15706f().size() + (i ^ (-1));
    }

    /* renamed from: G */
    public final boolean m15599G() {
        return (this.f18895a.mo13334a() & 8) != 0;
    }

    /* renamed from: I */
    public final boolean m15597I() {
        return (this.f18895a.mo13334a() & 32) != 0;
    }

    /* renamed from: w */
    public final void m15567w(int i, C7138b.InterfaceC7139a interfaceC7139a) {
        m15566x(m15596J(i), interfaceC7139a, new BitSet(this.f18898d));
    }

    /* renamed from: n1.u$d */
    /* loaded from: classes.dex */
    public static class C4723d {

        /* renamed from: a */
        public C7402c f18915a;

        /* renamed from: b */
        public int f18916b;

        /* renamed from: a */
        public C7402c m15561a() {
            return this.f18915a;
        }

        /* renamed from: b */
        public int m15560b() {
            return this.f18916b;
        }

        public C4723d(C7402c c7402c, int i) {
            this.f18915a = c7402c;
            this.f18916b = i;
        }
    }

    /* renamed from: n1.u$f */
    /* loaded from: classes.dex */
    public static class C4725f {

        /* renamed from: a */
        public int f18919a;

        /* renamed from: a */
        public int mo15559a() {
            int i = this.f18919a;
            this.f18919a = i + 1;
            return i;
        }

        public C4725f(int i) {
            this.f18919a = i;
        }
    }

    /* renamed from: s */
    public static C7165u m15571s(C4706j c4706j, InterfaceC7137a0 interfaceC7137a0, InterfaceC5398h interfaceC5398h, DexOptions dexOptions) {
        try {
            C4719u c4719u = new C4719u(c4706j, interfaceC7137a0, interfaceC5398h, dexOptions);
            c4719u.m15569u();
            return c4719u.m15603C();
        } catch (C4729w e) {
            e.m16013a("...while working on method " + c4706j.mo13332d().toHuman());
            throw e;
        }
    }

    /* renamed from: C */
    public final C7165u m15603C() {
        int size = this.f18902h.size();
        C7140c c7140c = new C7140c(size);
        for (int i = 0; i < size; i++) {
            c7140c.m2431N(i, this.f18902h.get(i));
        }
        c7140c.setImmutable();
        return new C7165u(c7140c, m15602D(-1));
    }

    /* renamed from: F */
    public final void m15600F() {
        C0441j c0441j = new C0441j(4);
        m15567w(0, new C4720a(c0441j));
        int m15565y = m15565y();
        ArrayList arrayList = new ArrayList(m15565y);
        for (int i = 0; i < m15565y; i++) {
            arrayList.add(null);
        }
        for (int i2 = 0; i2 < this.f18902h.size(); i2++) {
            C7138b c7138b = this.f18902h.get(i2);
            if (c7138b != null) {
                arrayList.set(c7138b.mo2449a(), this.f18903i.get(i2));
            }
        }
        int size = c0441j.size();
        for (int i3 = 0; i3 < size; i3++) {
            new C4727h(new C4725f(m15565y()), arrayList).m15550b(m15596J(c0441j.m26470B(i3)));
        }
        m15570t();
    }

    /* renamed from: K */
    public final int m15595K(int i) {
        int size = this.f18902h.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f18902h.get(i2).mo2449a() == i) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: L */
    public final void m15594L(int i, int i2, C4726g c4726g, C4708l c4708l, int[] iArr) {
        C4708l m15672l;
        C4708l[] c4708lArr = this.f18901g;
        C4708l c4708l2 = c4708lArr[i];
        if (c4708l2 != null) {
            if (c4726g != null) {
                m15672l = c4708l2.m15671m(c4708l, c4726g.m15554e(), i2);
            } else {
                m15672l = c4708l2.m15672l(c4708l);
            }
            if (m15672l != c4708l2) {
                this.f18901g[i] = m15672l;
                C0431c.m26524k(iArr, i);
                return;
            }
            return;
        }
        if (c4726g != null) {
            c4708lArr[i] = c4708l.m15674j(i, i2);
        } else {
            c4708lArr[i] = c4708l;
        }
        C0431c.m26524k(iArr, i);
    }

    /* renamed from: M */
    public final void m15593M(C4697e c4697e, C4708l c4708l, int[] iArr) {
        C0441j c0441j;
        C4726g c4726g;
        int i;
        C0441j c0441j2;
        int i2;
        int i3;
        boolean z;
        int i4;
        boolean z2;
        AbstractC7146h abstractC7146h;
        C7167w m2416j;
        boolean z3;
        int i5;
        C0441j c0441j3;
        int m26470B;
        C4699g m15739b = c4697e.m15739b();
        this.f18899e.m15534V(m15739b.m15730C());
        C4708l m15681c = c4708l.m15681c();
        this.f18900f.m15514r(c4697e, m15681c);
        m15681c.m15670n();
        int m15546J = this.f18899e.m15546J();
        ArrayList<AbstractC7146h> m15545K = this.f18899e.m15545K();
        int size = m15545K.size();
        int size2 = m15739b.size();
        C0441j m15736e = c4697e.m15736e();
        if (this.f18899e.m15539Q()) {
            int m26470B2 = m15736e.m26470B(1);
            C4726g[] c4726gArr = this.f18906l;
            if (c4726gArr[m26470B2] == null) {
                c4726gArr[m26470B2] = new C4726g(m26470B2);
            }
            this.f18906l[m26470B2].m15556c(c4697e.mo2449a());
            c0441j = m15736e;
            c4726g = this.f18906l[m26470B2];
            i = 1;
        } else {
            if (this.f18899e.m15538R()) {
                int m15606a = this.f18899e.m15543M().m15606a();
                C4726g[] c4726gArr2 = this.f18906l;
                C4726g c4726g2 = c4726gArr2[m15606a];
                if (c4726g2 == null) {
                    c4726gArr2[m15606a] = new C4726g(this, m15606a, c4697e.mo2449a());
                } else {
                    c4726g2.m15555d(c4697e.mo2449a());
                }
                C0441j m15553f = this.f18906l[m15606a].m15553f();
                this.f18906l[m15606a].m15552g(m15681c, iArr);
                i = m15553f.size();
                c0441j = m15553f;
            } else if (this.f18899e.m15532X()) {
                c0441j = m15736e;
                i = size2;
            } else {
                c0441j = m15736e;
                c4726g = null;
                i = 0;
            }
            c4726g = null;
        }
        int size3 = c0441j.size();
        int i6 = i;
        while (i6 < size3) {
            try {
                int i7 = i6;
                int i8 = size3;
                C0441j c0441j4 = c0441j;
                m15594L(c0441j.m26470B(i6), c4697e.mo2449a(), c4726g, m15681c, iArr);
                i6 = i7 + 1;
                c0441j = c0441j4;
                size3 = i8;
            } catch (C4729w e) {
                e.m16013a("...while merging to block " + C0438g.m26478g(m26470B));
                throw e;
            }
        }
        int i9 = size3;
        C0441j c0441j5 = c0441j;
        if (i9 == 0 && this.f18899e.m15535U()) {
            c0441j2 = C0441j.m26466F(m15602D(-2));
            i2 = 1;
        } else {
            c0441j2 = c0441j5;
            i2 = i9;
        }
        if (i2 == 0) {
            i3 = -1;
        } else {
            int m15544L = this.f18899e.m15544L();
            if (m15544L >= 0) {
                m15544L = c0441j2.m26470B(m15544L);
            }
            i3 = m15544L;
        }
        if (m15597I() && this.f18899e.m15547I()) {
            z = true;
        } else {
            z = false;
        }
        if (!z && size2 == 0) {
            i4 = i3;
        } else {
            C0441j c0441j6 = new C0441j(i2);
            boolean z4 = false;
            int i10 = 0;
            while (i10 < size2) {
                C4699g.C4700a m15726x = m15739b.m15726x(i10);
                C7214e0 m15722c = m15726x.m15722c();
                int m15721d = m15726x.m15721d();
                if (m15722c == C7214e0.f36571k) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                boolean z5 = z4 | z2;
                try {
                    C0441j c0441j7 = c0441j6;
                    int i11 = i3;
                    int i12 = i10;
                    m15594L(m15721d, c4697e.mo2449a(), null, m15681c.m15676h(m15722c), iArr);
                    C4722c c4722c = this.f18904j[m15721d];
                    if (c4722c == null) {
                        c4722c = new C4722c(this, null);
                        this.f18904j[m15721d] = c4722c;
                    }
                    c0441j7.m26457x(c4722c.m15563a(m15722c.m2097x()).m15560b());
                    i10 = i12 + 1;
                    c0441j6 = c0441j7;
                    z4 = z5;
                    i3 = i11;
                } catch (C4729w e2) {
                    e2.m16013a("...while merging exception to block " + C0438g.m26478g(m15721d));
                    throw e2;
                }
            }
            C0441j c0441j8 = c0441j6;
            int i13 = i3;
            if (z && !z4) {
                c0441j8.m26457x(m15602D(-6));
                this.f18905k = true;
                for (int i14 = (size - m15546J) - 1; i14 < size; i14++) {
                    AbstractC7146h abstractC7146h2 = m15545K.get(i14);
                    if (abstractC7146h2.m2420b()) {
                        m15545K.set(i14, abstractC7146h2.mo2247q(C7402c.f37069K));
                    }
                }
            }
            i4 = i13;
            if (i4 >= 0) {
                c0441j8.m26457x(i4);
            }
            c0441j8.setImmutable();
            c0441j2 = c0441j8;
        }
        int m26468D = c0441j2.m26468D(i4);
        int i15 = i4;
        while (m15546J > 0) {
            size--;
            AbstractC7146h abstractC7146h3 = m15545K.get(size);
            if (abstractC7146h3.m2417i().m2316b() == 1) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3) {
                i5 = 2;
            } else {
                i5 = 1;
            }
            C7149i c7149i = new C7149i(i5);
            c7149i.m2409C(0, abstractC7146h3);
            if (z3) {
                c7149i.m2409C(1, new C7155o(C7166v.f36407s, abstractC7146h3.m2416j(), (C7157q) null, C7160r.f36212a));
                c0441j3 = C0441j.m26466F(i15);
            } else {
                c0441j3 = c0441j2;
            }
            c7149i.setImmutable();
            int m15565y = m15565y();
            m15578l(new C7138b(m15565y, c7149i, c0441j3, i15), m15681c.m15678f());
            c0441j2 = c0441j2.m26464I();
            c0441j2.m26461L(m26468D, m15565y);
            c0441j2.setImmutable();
            m15546J--;
            i15 = m15565y;
        }
        if (size == 0) {
            abstractC7146h = null;
        } else {
            abstractC7146h = m15545K.get(size - 1);
        }
        if (abstractC7146h == null || abstractC7146h.m2417i().m2316b() == 1) {
            if (abstractC7146h == null) {
                m2416j = C7167w.f36439d;
            } else {
                m2416j = abstractC7146h.m2416j();
            }
            m15545K.add(new C7155o(C7166v.f36407s, m2416j, (C7157q) null, C7160r.f36212a));
            size++;
        }
        C7149i c7149i2 = new C7149i(size);
        for (int i16 = 0; i16 < size; i16++) {
            c7149i2.m2409C(i16, m15545K.get(i16));
        }
        c7149i2.setImmutable();
        m15576n(new C7138b(c4697e.mo2449a(), c7149i2, c0441j2, i15), m15681c.m15678f());
    }

    /* renamed from: O */
    public final void m15591O() {
        this.f18901g[0].m15677g(this.f18895a.mo13331b().m1565l());
        this.f18901g[0].m15670n();
    }

    /* renamed from: P */
    public final C4726g m15590P(int i) {
        for (int length = this.f18906l.length - 1; length >= 0; length--) {
            C4726g c4726g = this.f18906l[length];
            if (c4726g != null && c4726g.f18921b.get(i)) {
                return c4726g;
            }
        }
        return null;
    }

    /* renamed from: l */
    public final void m15578l(C7138b c7138b, C0441j c0441j) {
        if (c7138b != null) {
            this.f18902h.add(c7138b);
            c0441j.throwIfMutable();
            this.f18903i.add(c0441j);
            return;
        }
        throw new NullPointerException("block == null");
    }

    /* renamed from: m */
    public final void m15577m() {
        int length = this.f18904j.length;
        for (int i = 0; i < length; i++) {
            C4722c c4722c = this.f18904j[i];
            if (c4722c != null) {
                for (C4723d c4723d : c4722c.m15562b()) {
                    C7167w m2416j = m15596J(i).m2447c().m2416j();
                    C7149i c7149i = new C7149i(2);
                    C7164t m2304B = C7166v.m2304B(c4723d.m15561a());
                    C7157q m2373J = C7157q.m2373J(this.f18897c, c4723d.m15561a());
                    C7160r c7160r = C7160r.f36212a;
                    c7149i.m2409C(0, new C7155o(m2304B, m2416j, m2373J, c7160r));
                    c7149i.m2409C(1, new C7155o(C7166v.f36407s, m2416j, (C7157q) null, c7160r));
                    c7149i.setImmutable();
                    m15578l(new C7138b(c4723d.m15560b(), c7149i, C0441j.m26466F(i), i), this.f18901g[i].m15678f());
                }
            }
        }
    }

    /* renamed from: n */
    public final boolean m15576n(C7138b c7138b, C0441j c0441j) {
        boolean z;
        if (c7138b != null) {
            int m15595K = m15595K(c7138b.mo2449a());
            if (m15595K < 0) {
                z = false;
            } else {
                m15592N(m15595K);
                z = true;
            }
            this.f18902h.add(c7138b);
            c0441j.throwIfMutable();
            this.f18903i.add(c0441j);
            return z;
        }
        throw new NullPointerException("block == null");
    }

    /* renamed from: o */
    public final boolean m15575o(C7138b c7138b, C0441j c0441j) {
        boolean z;
        if (c7138b != null) {
            int m15595K = m15595K(c7138b.mo2449a());
            if (m15595K < 0) {
                z = false;
            } else {
                this.f18902h.remove(m15595K);
                this.f18903i.remove(m15595K);
                z = true;
            }
            this.f18902h.add(c7138b);
            c0441j.throwIfMutable();
            this.f18903i.add(c0441j);
            return z;
        }
        throw new NullPointerException("block == null");
    }

    /* renamed from: p */
    public final void m15574p() {
        C7160r m2344D;
        C7164t m15542N = this.f18899e.m15542N();
        if (m15542N == null) {
            return;
        }
        C7167w m15541O = this.f18899e.m15541O();
        int m15602D = m15602D(-2);
        if (m15597I()) {
            C7149i c7149i = new C7149i(1);
            c7149i.m2409C(0, new C7170z(C7166v.f36254F1, m15541O, C7160r.m2344D(m15601E()), C7401b.f37044a));
            c7149i.setImmutable();
            int m15602D2 = m15602D(-3);
            m15578l(new C7138b(m15602D, c7149i, C0441j.m26466F(m15602D2), m15602D2), C0441j.f1530k);
            m15602D = m15602D2;
        }
        C7149i c7149i2 = new C7149i(1);
        InterfaceC7404e m2312f = m15542N.m2312f();
        if (m2312f.size() == 0) {
            m2344D = C7160r.f36212a;
        } else {
            m2344D = C7160r.m2344D(C7157q.m2373J(0, m2312f.getType(0)));
        }
        c7149i2.m2409C(0, new C7155o(m15542N, m15541O, (C7157q) null, m2344D));
        c7149i2.setImmutable();
        C0441j c0441j = C0441j.f1530k;
        m15578l(new C7138b(m15602D, c7149i2, c0441j, -1), c0441j);
    }

    /* renamed from: q */
    public final void m15573q() {
        int i;
        C7149i c7149i;
        int i2;
        C7157q m2371L;
        C4711n m15704h = this.f18895a.m15704h();
        int i3 = 0;
        C7167w m15698n = this.f18895a.m15698n(0);
        C7401b m1565l = this.f18895a.mo13331b().m1565l();
        int size = m1565l.size();
        C7149i c7149i2 = new C7149i(size + 1);
        int i4 = 0;
        int i5 = 0;
        while (i4 < size) {
            C7402c m1558A = m1565l.m1558A(i4);
            C4711n.C4712a m15659C = m15704h.m15659C(i3, i5);
            if (m15659C == null) {
                m2371L = C7157q.m2373J(i5, m1558A);
            } else {
                m2371L = C7157q.m2371L(i5, m1558A, m15659C.m15653b());
            }
            c7149i2.m2409C(i4, new C7154n(C7166v.m2303C(m1558A), m15698n, m2371L, C7160r.f36212a, C7228p.m2074C(i5)));
            i5 += m1558A.m1527n();
            i4++;
            i3 = 0;
        }
        C7164t c7164t = C7166v.f36407s;
        C7160r c7160r = C7160r.f36212a;
        c7149i2.m2409C(size, new C7155o(c7164t, m15698n, (C7157q) null, c7160r));
        c7149i2.setImmutable();
        boolean m15597I = m15597I();
        if (m15597I) {
            i = m15602D(-4);
        } else {
            i = 0;
        }
        C7138b c7138b = new C7138b(m15602D(-1), c7149i2, C0441j.m26466F(i), i);
        C0441j c0441j = C0441j.f1530k;
        m15578l(c7138b, c0441j);
        if (m15597I) {
            C7157q m15601E = m15601E();
            if (m15599G()) {
                C7169y c7169y = new C7169y(C7166v.f36399q, m15698n, c7160r, C7401b.f37044a, this.f18895a.mo13333c());
                c7149i = new C7149i(1);
                c7149i.m2409C(0, c7169y);
            } else {
                C7149i c7149i3 = new C7149i(2);
                c7149i3.m2409C(0, new C7154n(C7166v.f36379l, m15698n, m15601E, c7160r, C7228p.f36600k));
                c7149i3.m2409C(1, new C7155o(c7164t, m15698n, (C7157q) null, c7160r));
                c7149i = c7149i3;
            }
            int m15602D = m15602D(-5);
            c7149i.setImmutable();
            m15578l(new C7138b(i, c7149i, C0441j.m26466F(m15602D), m15602D), c0441j);
            if (m15599G()) {
                i2 = 2;
            } else {
                i2 = 1;
            }
            C7149i c7149i4 = new C7149i(i2);
            if (m15599G()) {
                c7149i4.m2409C(0, new C7155o(C7166v.m2301E(m15601E), m15698n, m15601E, c7160r));
            }
            c7149i4.m2409C(m15599G() ? 1 : 0, new C7170z(C7166v.f36250E1, m15698n, C7160r.m2344D(m15601E), C7401b.f37044a));
            c7149i4.setImmutable();
            m15578l(new C7138b(m15602D, c7149i4, C0441j.m26466F(0), 0), c0441j);
        }
    }

    /* renamed from: r */
    public final void m15572r() {
        if (!this.f18905k) {
            return;
        }
        C7167w m15698n = this.f18895a.m15698n(0);
        C7402c c7402c = C7402c.f37072N;
        C7157q m2373J = C7157q.m2373J(0, c7402c);
        C7149i c7149i = new C7149i(2);
        c7149i.m2409C(0, new C7155o(C7166v.m2304B(c7402c), m15698n, m2373J, C7160r.f36212a));
        C7164t c7164t = C7166v.f36254F1;
        C7160r m2344D = C7160r.m2344D(m15601E());
        C7401b c7401b = C7401b.f37044a;
        c7149i.m2409C(1, new C7170z(c7164t, m15698n, m2344D, c7401b));
        c7149i.setImmutable();
        int m15602D = m15602D(-7);
        C7138b c7138b = new C7138b(m15602D(-6), c7149i, C0441j.m26466F(m15602D), m15602D);
        C0441j c0441j = C0441j.f1530k;
        m15578l(c7138b, c0441j);
        C7149i c7149i2 = new C7149i(1);
        c7149i2.m2409C(0, new C7170z(C7166v.f36246D1, m15698n, C7160r.m2344D(m2373J), c7401b));
        c7149i2.setImmutable();
        m15578l(new C7138b(m15602D, c7149i2, c0441j, -1), c0441j);
    }

    /* renamed from: t */
    public final void m15570t() {
        C0441j c0441j = new C0441j(this.f18902h.size());
        this.f18903i.clear();
        m15567w(m15602D(-1), new C4721b(c0441j));
        c0441j.m26459N();
        for (int size = this.f18902h.size() - 1; size >= 0; size--) {
            if (c0441j.m26468D(this.f18902h.get(size).mo2449a()) < 0) {
                this.f18902h.remove(size);
            }
        }
    }

    /* renamed from: u */
    public final void m15569u() {
        int[] m26526i = C0431c.m26526i(this.f18898d);
        C0431c.m26524k(m26526i, 0);
        m15573q();
        m15591O();
        while (true) {
            int m26530e = C0431c.m26530e(m26526i, 0);
            if (m26530e < 0) {
                break;
            }
            C0431c.m26532c(m26526i, m26530e);
            try {
                m15593M(this.f18896b.m15734F(m26530e), this.f18901g[m26530e], m26526i);
            } catch (C4729w e) {
                e.m16013a("...while working on block " + C0438g.m26478g(m26530e));
                throw e;
            }
        }
        m15574p();
        m15572r();
        m15577m();
        if (this.f18907m) {
            m15600F();
        }
    }

    public C4719u(C4706j c4706j, InterfaceC7137a0 interfaceC7137a0, InterfaceC5398h interfaceC5398h, DexOptions dexOptions) {
        if (c4706j != null) {
            if (interfaceC7137a0 != null) {
                this.f18895a = c4706j;
                C4698f m15748m = C4693b.m15748m(c4706j);
                this.f18896b = m15748m;
                int m26450z = m15748m.m26450z();
                this.f18898d = m26450z;
                int m15703i = c4706j.m15703i();
                this.f18897c = m15703i;
                C4728v c4728v = new C4728v(this, c4706j, interfaceC7137a0, interfaceC5398h);
                this.f18899e = c4728v;
                this.f18900f = new C4730x(c4728v, c4706j, dexOptions);
                C4708l[] c4708lArr = new C4708l[m26450z];
                this.f18901g = c4708lArr;
                this.f18906l = new C4726g[m26450z];
                this.f18902h = new ArrayList<>((m15748m.size() * 2) + 10);
                this.f18903i = new ArrayList<>((m15748m.size() * 2) + 10);
                this.f18904j = new C4722c[m26450z];
                this.f18905k = false;
                c4708lArr[0] = new C4708l(m15703i, c4706j.m15702j());
                this.f18908n = new C4724e();
                return;
            }
            throw new NullPointerException("advice == null");
        }
        throw new NullPointerException("method == null");
    }

    /* renamed from: E */
    public final C7157q m15601E() {
        int m15604B = m15604B();
        if (m15604B < 1) {
            m15604B = 1;
        }
        return C7157q.m2373J(m15604B, C7402c.f37069K);
    }

    /* renamed from: H */
    public final boolean m15598H(C7138b c7138b) {
        C0441j m2442h = c7138b.m2442h();
        if (m2442h.size() < 2) {
            return false;
        }
        int m26470B = m2442h.m26470B(1);
        C4726g[] c4726gArr = this.f18906l;
        if (m26470B >= c4726gArr.length || c4726gArr[m26470B] == null) {
            return false;
        }
        return true;
    }

    /* renamed from: J */
    public final C7138b m15596J(int i) {
        int m15595K = m15595K(i);
        if (m15595K >= 0) {
            return this.f18902h.get(m15595K);
        }
        throw new IllegalArgumentException("no such label " + C0438g.m26478g(i));
    }

    /* renamed from: N */
    public final void m15592N(int i) {
        int m15605A = m15605A();
        C0441j m2442h = this.f18902h.get(i).m2442h();
        int size = m2442h.size();
        this.f18902h.remove(i);
        this.f18903i.remove(i);
        for (int i2 = 0; i2 < size; i2++) {
            int m26470B = m2442h.m26470B(i2);
            if (m26470B >= m15605A) {
                int m15595K = m15595K(m26470B);
                if (m15595K >= 0) {
                    m15592N(m15595K);
                } else {
                    throw new RuntimeException("Invalid label " + C0438g.m26478g(m26470B));
                }
            }
        }
    }

    /* renamed from: v */
    public final C7149i m15568v(C7149i c7149i) {
        int size = c7149i.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            if (c7149i.m2411A(i2).m2417i() != C7166v.f36359g) {
                i++;
            }
        }
        if (i == size) {
            return c7149i;
        }
        C7149i c7149i2 = new C7149i(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            AbstractC7146h m2411A = c7149i.m2411A(i4);
            if (m2411A.m2417i() != C7166v.f36359g) {
                c7149i2.m2409C(i3, m2411A);
                i3++;
            }
        }
        c7149i2.setImmutable();
        return c7149i2;
    }

    /* renamed from: x */
    public final void m15566x(C7138b c7138b, C7138b.InterfaceC7139a interfaceC7139a, BitSet bitSet) {
        int m15595K;
        interfaceC7139a.mo2440a(c7138b);
        bitSet.set(c7138b.mo2449a());
        C0441j m2442h = c7138b.m2442h();
        int size = m2442h.size();
        for (int i = 0; i < size; i++) {
            int m26470B = m2442h.m26470B(i);
            if (!bitSet.get(m26470B) && ((!m15598H(c7138b) || i <= 0) && (m15595K = m15595K(m26470B)) >= 0)) {
                m15566x(this.f18902h.get(m15595K), interfaceC7139a, bitSet);
            }
        }
    }

    /* renamed from: y */
    public final int m15565y() {
        int m15605A = m15605A();
        Iterator<C7138b> it = this.f18902h.iterator();
        while (it.hasNext()) {
            int mo2449a = it.next().mo2449a();
            if (mo2449a >= m15605A) {
                m15605A = mo2449a + 1;
            }
        }
        return m15605A;
    }

    /* renamed from: z */
    public int m15564z() {
        int m15604B = m15604B();
        if (m15597I()) {
            return m15604B + 1;
        }
        return m15604B;
    }
}
