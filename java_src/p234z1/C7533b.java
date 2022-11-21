package p234z1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import p210w1.C7154n;
import p210w1.C7155o;
import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7164t;
import p210w1.C7166v;
import p210w1.C7167w;
import p210w1.C7169y;
import p218x1.AbstractC7204a;
import p218x1.AbstractC7218g0;
import p218x1.C7212d0;
import p226y1.C7401b;
import p226y1.InterfaceC7403d;
/* renamed from: z1.b */
/* loaded from: classes.dex */
public class C7533b {

    /* renamed from: a */
    public final C7574v f37394a;

    /* renamed from: z1.b$a */
    /* loaded from: classes.dex */
    public class C7534a implements Comparator<AbstractC7204a> {

        /* renamed from: a */
        public final /* synthetic */ HashMap f37395a;

        public C7534a(HashMap hashMap) {
            this.f37395a = hashMap;
        }

        @Override // java.util.Comparator
        public boolean equals(Object obj) {
            return obj == this;
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(AbstractC7204a abstractC7204a, AbstractC7204a abstractC7204a2) {
            int intValue = ((Integer) this.f37395a.get(abstractC7204a2)).intValue() - ((Integer) this.f37395a.get(abstractC7204a)).intValue();
            if (intValue == 0) {
                return abstractC7204a.compareTo(abstractC7204a2);
            }
            return intValue;
        }
    }

    /* renamed from: z1.b$b */
    /* loaded from: classes.dex */
    public class C7535b extends AbstractC7565p {

        /* renamed from: a */
        public final /* synthetic */ C7157q f37397a;

        /* renamed from: b */
        public final /* synthetic */ C7157q f37398b;

        public C7535b(C7157q c7157q, C7157q c7157q2) {
            this.f37397a = c7157q;
            this.f37398b = c7157q2;
        }

        @Override // p234z1.AbstractC7565p
        /* renamed from: a */
        public int mo1035a() {
            return C7533b.this.f37394a.m1070u();
        }

        @Override // p234z1.AbstractC7565p
        /* renamed from: b */
        public C7157q mo1034b(C7157q c7157q) {
            if (c7157q.m2380B() == this.f37397a.m2380B()) {
                return this.f37398b.m2366Q(c7157q.m2354z());
            }
            return c7157q;
        }
    }

    /* renamed from: c */
    public static void m1284c(C7574v c7574v) {
        new C7533b(c7574v).m1283d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final ArrayList<AbstractC7218g0> m1285b() {
        int m1070u = this.f37394a.m1070u();
        HashMap hashMap = new HashMap();
        new HashSet();
        for (int i = 0; i < m1070u; i++) {
            AbstractC7572u m1077n = this.f37394a.m1077n(i);
            if (m1077n != null && m1077n.mo1110n() != null) {
                C7157q m1108t = m1077n.m1108t();
                InterfaceC7403d m2379C = m1108t.m2379C();
                if (m2379C.mo1522l()) {
                    AbstractC7218g0 abstractC7218g0 = (AbstractC7218g0) m2379C;
                    if (m1077n.mo1110n().m2314d() == 56) {
                        ArrayList<AbstractC7572u> m1145q = this.f37394a.m1078m().get(m1077n.m1112i().m1141u().nextSetBit(0)).m1145q();
                        m1077n = m1145q.get(m1145q.size() - 1);
                    }
                    if (m1077n.mo1115b()) {
                        boolean z = abstractC7218g0 instanceof C7212d0;
                    } else if (!this.f37394a.m1066y(m1108t)) {
                        Integer num = (Integer) hashMap.get(abstractC7218g0);
                        if (num == null) {
                            hashMap.put(abstractC7218g0, 1);
                        } else {
                            hashMap.put(abstractC7218g0, Integer.valueOf(num.intValue() + 1));
                        }
                    }
                }
            }
        }
        ArrayList<AbstractC7218g0> arrayList = new ArrayList<>();
        for (Map.Entry entry : hashMap.entrySet()) {
            if (((Integer) entry.getValue()).intValue() > 1) {
                arrayList.add(entry.getKey());
            }
        }
        Collections.sort(arrayList, new C7534a(hashMap));
        return arrayList;
    }

    /* renamed from: d */
    public final void m1283d() {
        ArrayList<AbstractC7218g0> arrayList;
        int i;
        C7568s c7568s;
        int m1070u = this.f37394a.m1070u();
        ArrayList<AbstractC7218g0> m1285b = m1285b();
        int min = Math.min(m1285b.size(), 5);
        C7568s m1076o = this.f37394a.m1076o();
        HashMap<AbstractC7218g0, C7157q> hashMap = new HashMap<>(min);
        int i2 = 0;
        while (i2 < min) {
            AbstractC7218g0 abstractC7218g0 = m1285b.get(i2);
            C7157q m2373J = C7157q.m2373J(this.f37394a.m1103B(), abstractC7218g0);
            C7164t m2275g = C7166v.m2275g(abstractC7218g0);
            if (m2275g.m2316b() == 1) {
                m1076o.m1159c(new C7154n(C7166v.m2275g(abstractC7218g0), C7167w.f36439d, m2373J, C7160r.f36212a, abstractC7218g0));
                arrayList = m1285b;
                i = min;
                c7568s = m1076o;
            } else {
                C7568s m1076o2 = this.f37394a.m1076o();
                C7568s m1140v = m1076o2.m1140v();
                C7568s m1171E = m1076o2.m1171E(m1140v);
                C7167w c7167w = C7167w.f36439d;
                C7160r c7160r = C7160r.f36212a;
                arrayList = m1285b;
                i = min;
                c7568s = m1076o;
                m1171E.m1166J(new C7169y(m2275g, c7167w, c7160r, C7401b.f37044a, abstractC7218g0));
                m1171E.m1171E(m1140v).m1159c(new C7155o(C7166v.m2301E(m2373J.m2379C()), c7167w, m2373J, c7160r));
            }
            hashMap.put(abstractC7218g0, m2373J);
            i2++;
            m1076o = c7568s;
            m1285b = arrayList;
            min = i;
        }
        m1282e(hashMap, m1070u);
    }

    /* renamed from: e */
    public final void m1282e(HashMap<AbstractC7218g0, C7157q> hashMap, int i) {
        C7157q c7157q;
        new HashSet();
        ArrayList<AbstractC7572u>[] m1069v = this.f37394a.m1069v();
        for (int i2 = 0; i2 < i; i2++) {
            AbstractC7572u m1077n = this.f37394a.m1077n(i2);
            if (m1077n != null) {
                C7157q m1108t = m1077n.m1108t();
                InterfaceC7403d m2379C = m1077n.m1108t().m2379C();
                if (m2379C.mo1522l() && (c7157q = hashMap.get((AbstractC7218g0) m2379C)) != null && !this.f37394a.m1066y(m1108t)) {
                    C7535b c7535b = new C7535b(m1108t, c7157q);
                    Iterator<AbstractC7572u> it = m1069v[m1108t.m2380B()].iterator();
                    while (it.hasNext()) {
                        AbstractC7572u next = it.next();
                        if (!next.mo1115b() || next.m1112i().m1173C().cardinality() <= 1) {
                            next.mo1120F(c7535b);
                        }
                    }
                }
            }
        }
    }

    public C7533b(C7574v c7574v) {
        this.f37394a = c7574v;
    }
}
