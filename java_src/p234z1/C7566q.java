package p234z1;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import p210w1.AbstractC7142d;
import p210w1.AbstractC7146h;
import p210w1.C7155o;
import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7166v;
import p218x1.AbstractC7204a;
import p218x1.AbstractC7218g0;
import p218x1.C7228p;
/* renamed from: z1.q */
/* loaded from: classes.dex */
public class C7566q {

    /* renamed from: a */
    public final C7574v f37479a;

    /* renamed from: b */
    public final int f37480b;

    /* renamed from: c */
    public final int[] f37481c;

    /* renamed from: d */
    public final AbstractC7204a[] f37482d;

    /* renamed from: e */
    public final ArrayList<C7568s> f37483e;

    /* renamed from: f */
    public final ArrayList<C7568s> f37484f;

    /* renamed from: g */
    public final BitSet f37485g;

    /* renamed from: h */
    public final ArrayList<AbstractC7572u> f37486h;

    /* renamed from: i */
    public final ArrayList<AbstractC7572u> f37487i;

    /* renamed from: j */
    public final ArrayList<AbstractC7572u> f37488j;

    /* renamed from: c */
    public static void m1189c(C7574v c7574v) {
        new C7566q(c7574v).m1186f();
    }

    /* renamed from: b */
    public final void m1190b(int i, int i2) {
        if (i2 == 2) {
            for (AbstractC7572u abstractC7572u : this.f37479a.m1068w(i)) {
                this.f37487i.add(abstractC7572u);
            }
            return;
        }
        for (AbstractC7572u abstractC7572u2 : this.f37479a.m1068w(i)) {
            this.f37486h.add(abstractC7572u2);
        }
    }

    /* renamed from: e */
    public final void m1187e() {
        for (int i = 0; i < this.f37480b; i++) {
            if (this.f37481c[i] == 1 && (this.f37482d[i] instanceof AbstractC7218g0)) {
                AbstractC7572u m1077n = this.f37479a.m1077n(i);
                if (!m1077n.m1108t().m2379C().mo1522l()) {
                    m1077n.m1119G(m1077n.m1108t().m2362U((AbstractC7218g0) this.f37482d[i]));
                    for (AbstractC7572u abstractC7572u : this.f37479a.m1068w(i)) {
                        if (!abstractC7572u.mo1124B()) {
                            C7558l c7558l = (C7558l) abstractC7572u;
                            C7160r mo1107u = abstractC7572u.mo1107u();
                            int m2345C = mo1107u.m2345C(i);
                            c7558l.m1216K(m2345C, mo1107u.m2347A(m2345C).m2362U((AbstractC7218g0) this.f37482d[i]));
                        }
                    }
                }
            }
        }
    }

    /* renamed from: g */
    public final boolean m1185g(int i, int i2, AbstractC7204a abstractC7204a) {
        if (i2 != 1) {
            int[] iArr = this.f37481c;
            if (iArr[i] != i2) {
                iArr[i] = i2;
                return true;
            }
            return false;
        } else if (this.f37481c[i] == i2 && this.f37482d[i].equals(abstractC7204a)) {
            return false;
        } else {
            this.f37481c[i] = i2;
            this.f37482d[i] = abstractC7204a;
            return true;
        }
    }

    /* renamed from: a */
    public final void m1191a(C7568s c7568s) {
        if (!this.f37485g.get(c7568s.m1146p())) {
            this.f37483e.add(c7568s);
            this.f37485g.set(c7568s.m1146p());
            return;
        }
        this.f37484f.add(c7568s);
    }

    /* renamed from: d */
    public final void m1188d() {
        Iterator<AbstractC7572u> it = this.f37488j.iterator();
        while (it.hasNext()) {
            AbstractC7572u next = it.next();
            C7568s m1112i = next.m1112i();
            int size = m1112i.m1174B().size();
            int i = -1;
            for (int i2 = 0; i2 < size; i2++) {
                int m26470B = m1112i.m1174B().m26470B(i2);
                if (!this.f37485g.get(m26470B)) {
                    i = m26470B;
                }
            }
            if (size == 2 && i != -1) {
                m1112i.m1166J(new C7155o(C7166v.f36407s, next.mo1109o().m2416j(), (C7157q) null, C7160r.f36212a));
                m1112i.m1167I(i);
            }
        }
    }

    /* renamed from: f */
    public final void m1186f() {
        m1191a(this.f37479a.m1076o());
        while (true) {
            if (this.f37483e.isEmpty() && this.f37484f.isEmpty() && this.f37486h.isEmpty() && this.f37487i.isEmpty()) {
                m1187e();
                m1188d();
                return;
            }
            while (!this.f37483e.isEmpty()) {
                m1184h(this.f37483e.remove(this.f37483e.size() - 1));
            }
            while (!this.f37484f.isEmpty()) {
                m1180l(this.f37484f.remove(this.f37484f.size() - 1));
            }
            while (!this.f37487i.isEmpty()) {
                AbstractC7572u remove = this.f37487i.remove(this.f37487i.size() - 1);
                if (this.f37485g.get(remove.m1112i().m1146p())) {
                    if (remove instanceof C7561n) {
                        m1181k((C7561n) remove);
                    } else {
                        m1179m(remove);
                    }
                }
            }
            while (!this.f37486h.isEmpty()) {
                AbstractC7572u remove2 = this.f37486h.remove(this.f37486h.size() - 1);
                if (this.f37485g.get(remove2.m1112i().m1146p())) {
                    if (remove2 instanceof C7561n) {
                        m1181k((C7561n) remove2);
                    } else {
                        m1179m(remove2);
                    }
                }
            }
        }
    }

    public C7566q(C7574v c7574v) {
        this.f37479a = c7574v;
        int m1070u = c7574v.m1070u();
        this.f37480b = m1070u;
        this.f37481c = new int[m1070u];
        this.f37482d = new AbstractC7204a[m1070u];
        this.f37483e = new ArrayList<>();
        this.f37484f = new ArrayList<>();
        this.f37485g = new BitSet(c7574v.m1078m().size());
        this.f37486h = new ArrayList<>();
        this.f37487i = new ArrayList<>();
        this.f37488j = new ArrayList<>();
        for (int i = 0; i < this.f37480b; i++) {
            this.f37481c[i] = 0;
            this.f37482d[i] = null;
        }
    }

    /* renamed from: h */
    public final void m1184h(C7568s c7568s) {
        Iterator<AbstractC7572u> it = c7568s.m1145q().iterator();
        while (it.hasNext()) {
            AbstractC7572u next = it.next();
            if (next instanceof C7561n) {
                m1181k((C7561n) next);
            } else {
                m1179m(next);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0078, code lost:
        if (r1 > 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007b, code lost:
        if (r1 <= 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007e, code lost:
        if (r1 >= 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0081, code lost:
        if (r1 < 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0084, code lost:
        if (r1 != 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0087, code lost:
        if (r1 == 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0089, code lost:
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008b, code lost:
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008c, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b5, code lost:
        if (r1 > r2) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b8, code lost:
        if (r1 <= r2) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00bb, code lost:
        if (r1 >= r2) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00be, code lost:
        if (r1 < r2) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00c1, code lost:
        if (r1 != r2) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00c4, code lost:
        if (r1 == r2) goto L41;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v11, types: [x1.a[]] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r5v8, types: [x1.a[]] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1183i(p234z1.AbstractC7572u r10) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p234z1.C7566q.m1183i(z1.u):void");
    }

    /* renamed from: j */
    public final AbstractC7204a m1182j(AbstractC7572u abstractC7572u, int i) {
        AbstractC7204a abstractC7204a;
        AbstractC7204a abstractC7204a2;
        int i2;
        int i3;
        AbstractC7146h mo1109o = abstractC7572u.mo1109o();
        int m2314d = abstractC7572u.mo1110n().m2314d();
        C7160r mo1107u = abstractC7572u.mo1107u();
        boolean z = false;
        int m2380B = mo1107u.m2347A(0).m2380B();
        if (this.f37481c[m2380B] != 1) {
            abstractC7204a = null;
        } else {
            abstractC7204a = this.f37482d[m2380B];
        }
        if (mo1107u.size() == 1) {
            abstractC7204a2 = ((AbstractC7142d) mo1109o).m2427t();
        } else {
            int m2380B2 = mo1107u.m2347A(1).m2380B();
            if (this.f37481c[m2380B2] != 1) {
                abstractC7204a2 = null;
            } else {
                abstractC7204a2 = this.f37482d[m2380B2];
            }
        }
        if (abstractC7204a == null || abstractC7204a2 == null || i != 6) {
            return null;
        }
        int m2075B = ((C7228p) abstractC7204a).m2075B();
        int m2075B2 = ((C7228p) abstractC7204a2).m2075B();
        switch (m2314d) {
            case 14:
                i2 = m2075B + m2075B2;
                i3 = i2;
                break;
            case 15:
                if (mo1107u.size() == 1) {
                    i3 = m2075B2 - m2075B;
                    break;
                } else {
                    i2 = m2075B - m2075B2;
                    i3 = i2;
                    break;
                }
            case 16:
                i2 = m2075B * m2075B2;
                i3 = i2;
                break;
            case 17:
                if (m2075B2 != 0) {
                    i2 = m2075B / m2075B2;
                    i3 = i2;
                    break;
                }
                i3 = 0;
                z = true;
                break;
            case 18:
                if (m2075B2 != 0) {
                    i2 = m2075B % m2075B2;
                    i3 = i2;
                    break;
                }
                i3 = 0;
                z = true;
                break;
            case 19:
            default:
                throw new RuntimeException("Unexpected op");
            case 20:
                i3 = m2075B & m2075B2;
                break;
            case 21:
                i3 = m2075B | m2075B2;
                break;
            case 22:
                i3 = m2075B ^ m2075B2;
                break;
            case 23:
                i3 = m2075B << m2075B2;
                break;
            case 24:
                i3 = m2075B >> m2075B2;
                break;
            case 25:
                i3 = m2075B >>> m2075B2;
                break;
        }
        if (z) {
            return null;
        }
        return C7228p.m2074C(i3);
    }

    /* renamed from: k */
    public final void m1181k(C7561n c7561n) {
        int m2380B = c7561n.m1108t().m2380B();
        int i = 2;
        if (this.f37481c[m2380B] == 2) {
            return;
        }
        C7160r mo1107u = c7561n.mo1107u();
        AbstractC7204a abstractC7204a = null;
        int size = mo1107u.size();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 < size) {
                int m1202S = c7561n.m1202S(i2);
                int m2380B2 = mo1107u.m2347A(i2).m2380B();
                int i4 = this.f37481c[m2380B2];
                if (this.f37485g.get(m1202S)) {
                    if (i4 == 1) {
                        if (abstractC7204a == null) {
                            abstractC7204a = this.f37482d[m2380B2];
                            i3 = 1;
                        } else if (!this.f37482d[m2380B2].equals(abstractC7204a)) {
                            break;
                        }
                    } else {
                        i = i4;
                        break;
                    }
                }
                i2++;
            } else {
                i = i3;
                break;
            }
        }
        if (m1185g(m2380B, i, abstractC7204a)) {
            m1190b(m2380B, i);
        }
    }

    /* renamed from: l */
    public final void m1180l(C7568s c7568s) {
        Iterator<AbstractC7572u> it = c7568s.m1145q().iterator();
        while (it.hasNext()) {
            AbstractC7572u next = it.next();
            if (next instanceof C7561n) {
                m1181k((C7561n) next);
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0069, code lost:
        if (r6 != null) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1179m(p234z1.AbstractC7572u r9) {
        /*
            r8 = this;
            w1.h r0 = r9.mo1109o()
            w1.t r1 = r0.m2417i()
            int r1 = r1.m2316b()
            r2 = 1
            if (r1 != r2) goto L19
            w1.t r1 = r0.m2417i()
            boolean r1 = r1.m2311g()
            if (r1 == 0) goto L1c
        L19:
            r8.m1183i(r9)
        L1c:
            w1.t r1 = r9.mo1110n()
            int r1 = r1.m2314d()
            w1.q r3 = r9.m1108t()
            r4 = 0
            if (r3 != 0) goto L4b
            r3 = 17
            if (r1 == r3) goto L35
            r3 = 18
            if (r1 != r3) goto L34
            goto L35
        L34:
            return
        L35:
            z1.s r3 = r9.m1112i()
            z1.s r3 = r3.m1140v()
            java.util.ArrayList r3 = r3.m1145q()
            java.lang.Object r3 = r3.get(r4)
            z1.u r3 = (p234z1.AbstractC7572u) r3
            w1.q r3 = r3.m1108t()
        L4b:
            int r5 = r3.m2380B()
            r6 = 0
            r7 = 2
            if (r1 == r7) goto L7f
            r4 = 5
            if (r1 == r4) goto L78
            r0 = 56
            if (r1 == r0) goto L6c
            switch(r1) {
                case 14: goto L61;
                case 15: goto L61;
                case 16: goto L61;
                case 17: goto L61;
                case 18: goto L61;
                default: goto L5d;
            }
        L5d:
            switch(r1) {
                case 20: goto L61;
                case 21: goto L61;
                case 22: goto L61;
                case 23: goto L61;
                case 24: goto L61;
                case 25: goto L61;
                default: goto L60;
            }
        L60:
            goto L9e
        L61:
            int r0 = r3.mo1523f()
            x1.a r6 = r8.m1182j(r9, r0)
            if (r6 == 0) goto L9e
            goto L9f
        L6c:
            int[] r9 = r8.f37481c
            r9 = r9[r5]
            if (r9 != r2) goto L9e
            x1.a[] r0 = r8.f37482d
            r6 = r0[r5]
            r2 = r9
            goto L9f
        L78:
            w1.d r0 = (p210w1.AbstractC7142d) r0
            x1.a r6 = r0.m2427t()
            goto L9f
        L7f:
            w1.r r0 = r9.mo1107u()
            int r0 = r0.size()
            if (r0 != r2) goto L9e
            w1.r r9 = r9.mo1107u()
            w1.q r9 = r9.m2347A(r4)
            int r9 = r9.m2380B()
            int[] r0 = r8.f37481c
            r2 = r0[r9]
            x1.a[] r0 = r8.f37482d
            r6 = r0[r9]
            goto L9f
        L9e:
            r2 = 2
        L9f:
            boolean r9 = r8.m1185g(r5, r2, r6)
            if (r9 == 0) goto La8
            r8.m1190b(r5, r2)
        La8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p234z1.C7566q.m1179m(z1.u):void");
    }
}
