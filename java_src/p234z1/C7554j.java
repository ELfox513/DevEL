package p234z1;

import java.util.ArrayList;
import java.util.HashMap;
import p015b2.C0447o;
import p210w1.C7157q;
import p210w1.C7163s;
/* renamed from: z1.j */
/* loaded from: classes.dex */
public class C7554j extends C0447o {

    /* renamed from: a */
    public final int f37451a;

    /* renamed from: b */
    public final C7163s f37452b;

    /* renamed from: d */
    public final C7163s[] f37453d;

    /* renamed from: k */
    public final HashMap<AbstractC7572u, C7157q> f37454k;

    /* renamed from: A */
    public final C7163s m1227A(int i) {
        try {
            return this.f37453d[i];
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("bogus index");
        }
    }

    public C7554j(C7574v c7574v) {
        if (c7574v != null) {
            ArrayList<C7568s> m1078m = c7574v.m1078m();
            int m1070u = c7574v.m1070u();
            this.f37451a = m1070u;
            C7163s c7163s = new C7163s(m1070u);
            this.f37452b = c7163s;
            this.f37453d = new C7163s[m1078m.size()];
            this.f37454k = new HashMap<>();
            c7163s.setImmutable();
            return;
        }
        throw new NullPointerException("method == null");
    }

    /* renamed from: B */
    public boolean m1226B(int i, C7163s c7163s) {
        C7163s m1227A = m1227A(i);
        if (m1227A == null) {
            m1224D(i, c7163s);
            return true;
        }
        C7163s m2324E = m1227A.m2324E();
        m2324E.m2326C(c7163s, true);
        if (m1227A.equals(m2324E)) {
            return false;
        }
        m2324E.setImmutable();
        m1224D(i, m2324E);
        return true;
    }

    /* renamed from: C */
    public C7163s m1225C(int i) {
        C7163s m1227A = m1227A(i);
        if (m1227A != null) {
            return m1227A.m2324E();
        }
        return new C7163s(this.f37451a);
    }

    /* renamed from: D */
    public void m1224D(int i, C7163s c7163s) {
        throwIfImmutable();
        if (c7163s != null) {
            try {
                this.f37453d[i] = c7163s;
                return;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new IllegalArgumentException("bogus index");
            }
        }
        throw new NullPointerException("specs == null");
    }

    /* renamed from: x */
    public void m1223x(AbstractC7572u abstractC7572u, C7157q c7157q) {
        throwIfImmutable();
        if (abstractC7572u != null) {
            if (c7157q != null) {
                this.f37454k.put(abstractC7572u, c7157q);
                return;
            }
            throw new NullPointerException("spec == null");
        }
        throw new NullPointerException("insn == null");
    }

    /* renamed from: z */
    public C7163s m1222z(int i) {
        C7163s m1227A = m1227A(i);
        if (m1227A == null) {
            return this.f37452b;
        }
        return m1227A;
    }
}
