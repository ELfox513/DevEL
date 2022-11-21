package p210w1;

import java.util.HashMap;
import p015b2.C0447o;
/* renamed from: w1.m */
/* loaded from: classes.dex */
public final class C7153m extends C0447o {

    /* renamed from: a */
    public final int f36200a;

    /* renamed from: b */
    public final C7163s f36201b;

    /* renamed from: d */
    public final C7163s[] f36202d;

    /* renamed from: k */
    public final HashMap<AbstractC7146h, C7157q> f36203k;

    /* renamed from: A */
    public int m2393A() {
        return this.f36203k.size();
    }

    /* renamed from: C */
    public C7163s m2391C(C7138b c7138b) {
        return m2392B(c7138b.mo2449a());
    }

    /* renamed from: z */
    public C7157q m2385z(AbstractC7146h abstractC7146h) {
        return this.f36203k.get(abstractC7146h);
    }

    /* renamed from: D */
    public final C7163s m2390D(int i) {
        try {
            return this.f36202d[i];
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("bogus label");
        }
    }

    public C7153m(C7165u c7165u) {
        if (c7165u != null) {
            C7140c m2308b = c7165u.m2308b();
            int m26450z = m2308b.m26450z();
            int m2434K = m2308b.m2434K();
            this.f36200a = m2434K;
            C7163s c7163s = new C7163s(m2434K);
            this.f36201b = c7163s;
            this.f36202d = new C7163s[m26450z];
            this.f36203k = new HashMap<>(m2308b.m2436I());
            c7163s.setImmutable();
            return;
        }
        throw new NullPointerException("method == null");
    }

    /* renamed from: B */
    public C7163s m2392B(int i) {
        C7163s m2390D = m2390D(i);
        if (m2390D == null) {
            return this.f36201b;
        }
        return m2390D;
    }

    /* renamed from: E */
    public boolean m2389E(int i, C7163s c7163s) {
        C7163s m2390D = m2390D(i);
        if (m2390D == null) {
            m2387H(i, c7163s);
            return true;
        }
        C7163s m2324E = m2390D.m2324E();
        if (m2390D.size() != 0) {
            m2324E.m2326C(c7163s, true);
        } else {
            m2324E = c7163s.m2324E();
        }
        if (m2390D.equals(m2324E)) {
            return false;
        }
        m2324E.setImmutable();
        m2387H(i, m2324E);
        return true;
    }

    /* renamed from: F */
    public C7163s m2388F(int i) {
        C7163s m2390D = m2390D(i);
        if (m2390D != null) {
            return m2390D.m2324E();
        }
        return new C7163s(this.f36200a);
    }

    /* renamed from: H */
    public void m2387H(int i, C7163s c7163s) {
        throwIfImmutable();
        if (c7163s != null) {
            try {
                this.f36202d[i] = c7163s;
                return;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new IllegalArgumentException("bogus label");
            }
        }
        throw new NullPointerException("specs == null");
    }

    /* renamed from: x */
    public void m2386x(AbstractC7146h abstractC7146h, C7157q c7157q) {
        throwIfImmutable();
        if (abstractC7146h != null) {
            if (c7157q != null) {
                this.f36203k.put(abstractC7146h, c7157q);
                return;
            }
            throw new NullPointerException("spec == null");
        }
        throw new NullPointerException("insn == null");
    }
}
