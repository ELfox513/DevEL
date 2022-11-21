package p210w1;

import p015b2.C0431c;
import p015b2.C0441j;
/* renamed from: w1.l */
/* loaded from: classes.dex */
public final class C7152l {

    /* renamed from: a */
    public final C7165u f36196a;

    /* renamed from: b */
    public final C7140c f36197b;

    /* renamed from: c */
    public final C7153m f36198c;

    /* renamed from: d */
    public final int[] f36199d;

    /* renamed from: b */
    public static C7153m m2395b(C7165u c7165u) {
        return new C7152l(c7165u).m2396a();
    }

    /* renamed from: a */
    public final C7153m m2396a() {
        int m2307c = this.f36196a.m2307c();
        while (m2307c >= 0) {
            C0431c.m26532c(this.f36199d, m2307c);
            m2394c(m2307c);
            m2307c = C0431c.m26530e(this.f36199d, 0);
        }
        this.f36198c.setImmutable();
        return this.f36198c;
    }

    /* renamed from: c */
    public final void m2394c(int i) {
        boolean z;
        C7163s c7163s;
        C7163s m2388F = this.f36198c.m2388F(i);
        C7138b m2433L = this.f36197b.m2433L(i);
        C7149i m2446d = m2433L.m2446d();
        int size = m2446d.size();
        if (m2433L.m2441i() && m2446d.m2410B().m2415k() != null) {
            z = true;
        } else {
            z = false;
        }
        int i2 = size - 1;
        C7163s c7163s2 = m2388F;
        for (int i3 = 0; i3 < size; i3++) {
            if (z && i3 == i2) {
                c7163s2.setImmutable();
                c7163s2 = c7163s2.m2324E();
            }
            AbstractC7146h m2411A = m2446d.m2411A(i3);
            C7157q m2418h = m2411A.m2418h();
            if (m2418h == null) {
                C7157q m2415k = m2411A.m2415k();
                if (m2415k != null && c7163s2.m2318z(m2415k.m2380B()) != null) {
                    c7163s2.m2321I(c7163s2.m2318z(m2415k.m2380B()));
                }
            } else {
                C7157q m2363T = m2418h.m2363T();
                if (!m2363T.equals(c7163s2.m2328A(m2363T))) {
                    C7157q m2325D = c7163s2.m2325D(m2363T.m2354z());
                    if (m2325D != null && m2325D.m2380B() != m2363T.m2380B()) {
                        c7163s2.m2321I(m2325D);
                    }
                    this.f36198c.m2386x(m2411A, m2363T);
                    c7163s2.m2323F(m2363T);
                }
            }
        }
        c7163s2.setImmutable();
        C0441j m2442h = m2433L.m2442h();
        int size2 = m2442h.size();
        int m2444f = m2433L.m2444f();
        for (int i4 = 0; i4 < size2; i4++) {
            int m26470B = m2442h.m26470B(i4);
            if (m26470B == m2444f) {
                c7163s = c7163s2;
            } else {
                c7163s = m2388F;
            }
            if (this.f36198c.m2389E(m26470B, c7163s)) {
                C0431c.m26524k(this.f36199d, m26470B);
            }
        }
    }

    public C7152l(C7165u c7165u) {
        if (c7165u != null) {
            C7140c m2308b = c7165u.m2308b();
            int m26450z = m2308b.m26450z();
            this.f36196a = c7165u;
            this.f36197b = m2308b;
            this.f36198c = new C7153m(c7165u);
            this.f36199d = C0431c.m26526i(m26450z);
            return;
        }
        throw new NullPointerException("method == null");
    }
}
