package p234z1;

import java.util.BitSet;
import java.util.List;
import p129n1.C4716r;
import p210w1.C7151k;
import p210w1.C7157q;
import p210w1.C7160r;
import p226y1.InterfaceC7403d;
/* renamed from: z1.o */
/* loaded from: classes.dex */
public class C7564o {

    /* renamed from: a */
    public C7574v f37477a;

    /* renamed from: b */
    public final BitSet f37478b;

    /* renamed from: a */
    public static boolean m1197a(C7151k c7151k, C7151k c7151k2) {
        return c7151k == c7151k2 || (c7151k != null && c7151k.equals(c7151k2));
    }

    /* renamed from: b */
    public static void m1196b(C7574v c7574v) {
        new C7564o(c7574v).m1194d();
    }

    /* renamed from: c */
    public boolean m1195c(C7561n c7561n) {
        c7561n.m1198W(this.f37477a);
        C7160r mo1107u = c7561n.mo1107u();
        int size = mo1107u.size();
        C7151k c7151k = null;
        int i = -1;
        C7157q c7157q = null;
        for (int i2 = 0; i2 < size; i2++) {
            C7157q m2347A = mo1107u.m2347A(i2);
            if (m2347A.mo1523f() != 0) {
                i = i2;
                c7157q = m2347A;
            }
        }
        if (c7157q == null) {
            return false;
        }
        C7151k m2354z = c7157q.m2354z();
        InterfaceC7403d type = c7157q.getType();
        boolean z = true;
        for (int i3 = 0; i3 < size; i3++) {
            if (i3 != i) {
                C7157q m2347A2 = mo1107u.m2347A(i3);
                if (m2347A2.mo1523f() != 0) {
                    if (z && m1197a(m2354z, m2347A2.m2354z())) {
                        z = true;
                    } else {
                        z = false;
                    }
                    type = C4716r.m15622d(type, m2347A2.getType());
                }
            }
        }
        if (type != null) {
            if (z) {
                c7151k = m2354z;
            }
            C7157q m1108t = c7561n.m1108t();
            if (m1108t.m2379C() == type && m1197a(c7151k, m1108t.m2354z())) {
                return false;
            }
            c7561n.m1205L(type, c7151k);
            return true;
        }
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < size; i4++) {
            sb.append(mo1107u.m2347A(i4).toString());
            sb.append(' ');
        }
        throw new RuntimeException("Couldn't map types in phi insn:" + ((Object) sb));
    }

    /* renamed from: d */
    public final void m1194d() {
        int m1070u = this.f37477a.m1070u();
        for (int i = 0; i < m1070u; i++) {
            AbstractC7572u m1077n = this.f37477a.m1077n(i);
            if (m1077n != null && m1077n.m1108t().mo1523f() == 0) {
                this.f37478b.set(i);
            }
        }
        while (true) {
            int nextSetBit = this.f37478b.nextSetBit(0);
            if (nextSetBit >= 0) {
                this.f37478b.clear(nextSetBit);
                if (m1195c((C7561n) this.f37477a.m1077n(nextSetBit))) {
                    List<AbstractC7572u> m1068w = this.f37477a.m1068w(nextSetBit);
                    int size = m1068w.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        AbstractC7572u abstractC7572u = m1068w.get(i2);
                        C7157q m1108t = abstractC7572u.m1108t();
                        if (m1108t != null && (abstractC7572u instanceof C7561n)) {
                            this.f37478b.set(m1108t.m2380B());
                        }
                    }
                }
            } else {
                return;
            }
        }
    }

    public C7564o(C7574v c7574v) {
        this.f37477a = c7574v;
        this.f37478b = new BitSet(c7574v.m1070u());
    }
}
