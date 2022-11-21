package p234z1;

import java.util.ArrayList;
import java.util.BitSet;
import p015b2.C0441j;
import p210w1.C7157q;
import p210w1.C7163s;
/* renamed from: z1.i */
/* loaded from: classes.dex */
public class C7553i {

    /* renamed from: a */
    public final C7574v f37447a;

    /* renamed from: b */
    public final ArrayList<C7568s> f37448b;

    /* renamed from: c */
    public final C7554j f37449c;

    /* renamed from: d */
    public final BitSet f37450d;

    /* renamed from: b */
    public static C7554j m1229b(C7574v c7574v) {
        return new C7553i(c7574v).m1230a();
    }

    /* renamed from: a */
    public final C7554j m1230a() {
        if (this.f37447a.m1070u() > 0) {
            int m1075p = this.f37447a.m1075p();
            while (m1075p >= 0) {
                this.f37450d.clear(m1075p);
                m1228c(m1075p);
                m1075p = this.f37450d.nextSetBit(0);
            }
        }
        this.f37449c.setImmutable();
        return this.f37449c;
    }

    /* renamed from: c */
    public final void m1228c(int i) {
        boolean z;
        C7163s c7163s;
        C7163s m1225C = this.f37449c.m1225C(i);
        C7568s c7568s = this.f37448b.get(i);
        ArrayList<AbstractC7572u> m1145q = c7568s.m1145q();
        int size = m1145q.size();
        if (i == this.f37447a.m1073r()) {
            return;
        }
        int i2 = size - 1;
        AbstractC7572u abstractC7572u = m1145q.get(i2);
        boolean z2 = true;
        if (abstractC7572u.mo1109o().mo2249e().size() != 0) {
            z = true;
        } else {
            z = false;
        }
        z2 = (!z || abstractC7572u.m1108t() == null) ? false : false;
        C7163s c7163s2 = m1225C;
        for (int i3 = 0; i3 < size; i3++) {
            if (z2 && i3 == i2) {
                c7163s2.setImmutable();
                c7163s2 = c7163s2.m2324E();
            }
            AbstractC7572u abstractC7572u2 = m1145q.get(i3);
            C7157q mo1111j = abstractC7572u2.mo1111j();
            if (mo1111j == null) {
                C7157q m1108t = abstractC7572u2.m1108t();
                if (m1108t != null && c7163s2.m2318z(m1108t.m2380B()) != null) {
                    c7163s2.m2321I(c7163s2.m2318z(m1108t.m2380B()));
                }
            } else {
                C7157q m2363T = mo1111j.m2363T();
                if (!m2363T.equals(c7163s2.m2328A(m2363T))) {
                    C7157q m2325D = c7163s2.m2325D(m2363T.m2354z());
                    if (m2325D != null && m2325D.m2380B() != m2363T.m2380B()) {
                        c7163s2.m2321I(m2325D);
                    }
                    this.f37449c.m1223x(abstractC7572u2, m2363T);
                    c7163s2.m2323F(m2363T);
                }
            }
        }
        c7163s2.setImmutable();
        C0441j m1174B = c7568s.m1174B();
        int size2 = m1174B.size();
        int m1139w = c7568s.m1139w();
        for (int i4 = 0; i4 < size2; i4++) {
            int m26470B = m1174B.m26470B(i4);
            if (m26470B == m1139w) {
                c7163s = c7163s2;
            } else {
                c7163s = m1225C;
            }
            if (this.f37449c.m1226B(m26470B, c7163s)) {
                this.f37450d.set(m26470B);
            }
        }
    }

    public C7553i(C7574v c7574v) {
        if (c7574v != null) {
            ArrayList<C7568s> m1078m = c7574v.m1078m();
            this.f37447a = c7574v;
            this.f37448b = m1078m;
            this.f37449c = new C7554j(c7574v);
            this.f37450d = new BitSet(m1078m.size());
            return;
        }
        throw new NullPointerException("method == null");
    }
}
