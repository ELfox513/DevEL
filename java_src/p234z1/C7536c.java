package p234z1;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashSet;
import java.util.Iterator;
import p210w1.C7157q;
import p210w1.C7160r;
import p234z1.AbstractC7572u;
/* renamed from: z1.c */
/* loaded from: classes.dex */
public class C7536c {

    /* renamed from: a */
    public final C7574v f37400a;

    /* renamed from: b */
    public final int f37401b;

    /* renamed from: c */
    public final BitSet f37402c;

    /* renamed from: d */
    public final ArrayList<AbstractC7572u>[] f37403d;

    /* renamed from: b */
    public static boolean m1279b(AbstractC7572u abstractC7572u) {
        if (abstractC7572u == null) {
            return true;
        }
        return abstractC7572u.mo1106x();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m1278c(int r5, java.util.BitSet r6) {
        /*
            r4 = this;
            r0 = 1
            if (r6 == 0) goto La
            boolean r1 = r6.get(r5)
            if (r1 == 0) goto La
            return r0
        La:
            java.util.ArrayList<z1.u>[] r1 = r4.f37403d
            r1 = r1[r5]
            java.util.Iterator r1 = r1.iterator()
        L12:
            boolean r2 = r1.hasNext()
            r3 = 0
            if (r2 == 0) goto L26
            java.lang.Object r2 = r1.next()
            z1.u r2 = (p234z1.AbstractC7572u) r2
            boolean r2 = m1279b(r2)
            if (r2 == 0) goto L12
            return r3
        L26:
            if (r6 != 0) goto L2f
            java.util.BitSet r6 = new java.util.BitSet
            int r1 = r4.f37401b
            r6.<init>(r1)
        L2f:
            r6.set(r5)
            java.util.ArrayList<z1.u>[] r1 = r4.f37403d
            r5 = r1[r5]
            java.util.Iterator r5 = r5.iterator()
        L3a:
            boolean r1 = r5.hasNext()
            if (r1 == 0) goto L57
            java.lang.Object r1 = r5.next()
            z1.u r1 = (p234z1.AbstractC7572u) r1
            w1.q r1 = r1.m1108t()
            if (r1 == 0) goto L56
            int r1 = r1.m2380B()
            boolean r1 = r4.m1278c(r1, r6)
            if (r1 != 0) goto L3a
        L56:
            return r3
        L57:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p234z1.C7536c.m1278c(int, java.util.BitSet):boolean");
    }

    /* renamed from: z1.c$a */
    /* loaded from: classes.dex */
    public static class C7537a implements AbstractC7572u.InterfaceC7573a {

        /* renamed from: a */
        public BitSet f37404a;

        public C7537a(BitSet bitSet) {
            this.f37404a = bitSet;
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: a */
        public void mo1045a(C7561n c7561n) {
            if (!C7536c.m1279b(c7561n)) {
                this.f37404a.set(c7561n.m1108t().m2380B());
            }
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: b */
        public void mo1044b(C7558l c7558l) {
            C7157q m1108t = c7558l.m1108t();
            if (!C7536c.m1279b(c7558l) && m1108t != null) {
                this.f37404a.set(m1108t.m2380B());
            }
        }

        @Override // p234z1.AbstractC7572u.InterfaceC7573a
        /* renamed from: c */
        public void mo1043c(C7558l c7558l) {
            if (!C7536c.m1279b(c7558l)) {
                this.f37404a.set(c7558l.m1108t().m2380B());
            }
        }
    }

    /* renamed from: d */
    public static void m1277d(C7574v c7574v) {
        new C7536c(c7574v).m1275f();
    }

    /* renamed from: e */
    public final void m1276e() {
        HashSet hashSet = new HashSet();
        BitSet m1084g = this.f37400a.m1084g();
        ArrayList<C7568s> m1078m = this.f37400a.m1078m();
        int i = 0;
        while (true) {
            int nextClearBit = m1084g.nextClearBit(i);
            if (nextClearBit < m1078m.size()) {
                C7568s c7568s = m1078m.get(nextClearBit);
                i = nextClearBit + 1;
                for (int i2 = 0; i2 < c7568s.m1145q().size(); i2++) {
                    AbstractC7572u abstractC7572u = c7568s.m1145q().get(i2);
                    C7160r mo1107u = abstractC7572u.mo1107u();
                    int size = mo1107u.size();
                    if (size != 0) {
                        hashSet.add(abstractC7572u);
                    }
                    for (int i3 = 0; i3 < size; i3++) {
                        this.f37403d[mo1107u.m2347A(i3).m2380B()].remove(abstractC7572u);
                    }
                    C7157q m1108t = abstractC7572u.m1108t();
                    if (m1108t != null) {
                        Iterator<AbstractC7572u> it = this.f37403d[m1108t.m2380B()].iterator();
                        while (it.hasNext()) {
                            AbstractC7572u next = it.next();
                            if (next instanceof C7561n) {
                                ((C7561n) next).m1200U(m1108t);
                            }
                        }
                    }
                }
            } else {
                this.f37400a.m1082i(hashSet);
                return;
            }
        }
    }

    public C7536c(C7574v c7574v) {
        this.f37400a = c7574v;
        int m1070u = c7574v.m1070u();
        this.f37401b = m1070u;
        this.f37402c = new BitSet(m1070u);
        this.f37403d = c7574v.m1069v();
    }

    /* renamed from: f */
    public final void m1275f() {
        m1276e();
        HashSet hashSet = new HashSet();
        this.f37400a.m1079l(new C7537a(this.f37402c));
        while (true) {
            int nextSetBit = this.f37402c.nextSetBit(0);
            if (nextSetBit >= 0) {
                this.f37402c.clear(nextSetBit);
                if (this.f37403d[nextSetBit].size() == 0 || m1278c(nextSetBit, null)) {
                    AbstractC7572u m1077n = this.f37400a.m1077n(nextSetBit);
                    if (!hashSet.contains(m1077n)) {
                        C7160r mo1107u = m1077n.mo1107u();
                        int size = mo1107u.size();
                        for (int i = 0; i < size; i++) {
                            C7157q m2347A = mo1107u.m2347A(i);
                            this.f37403d[m2347A.m2380B()].remove(m1077n);
                            if (!m1279b(this.f37400a.m1077n(m2347A.m2380B()))) {
                                this.f37402c.set(m2347A.m2380B());
                            }
                        }
                        hashSet.add(m1077n);
                    }
                }
            } else {
                this.f37400a.m1082i(hashSet);
                return;
            }
        }
    }
}
