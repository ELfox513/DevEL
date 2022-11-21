package p003a2;

import java.util.BitSet;
import p015b2.C0441j;
import p210w1.C7138b;
import p210w1.C7140c;
import p210w1.C7165u;
/* renamed from: a2.b */
/* loaded from: classes.dex */
public class C0049b {

    /* renamed from: a */
    public final C7165u f74a;

    /* renamed from: b */
    public final C7140c f75b;

    /* renamed from: c */
    public final C7140c f76c;

    /* renamed from: b */
    public static boolean m27736b(C7138b c7138b, C7138b c7138b2) {
        return c7138b.m2446d().m2408x(c7138b2.m2446d());
    }

    /* renamed from: c */
    public C7165u m27735c() {
        int size = this.f75b.size();
        BitSet bitSet = new BitSet(this.f75b.m26450z());
        for (int i = 0; i < size; i++) {
            C7138b m2438F = this.f75b.m2438F(i);
            if (!bitSet.get(m2438F.mo2449a())) {
                C0441j m2306d = this.f74a.m2306d(m2438F.mo2449a());
                int size2 = m2306d.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    int m26470B = m2306d.m26470B(i2);
                    C7138b m2433L = this.f75b.m2433L(m26470B);
                    if (!bitSet.get(m26470B) && m2433L.m2442h().size() <= 1 && m2433L.m2447c().m2417i().m2314d() != 55) {
                        C0441j c0441j = new C0441j();
                        for (int i3 = i2 + 1; i3 < size2; i3++) {
                            int m26470B2 = m2306d.m26470B(i3);
                            C7138b m2433L2 = this.f75b.m2433L(m26470B2);
                            if (m2433L2.m2442h().size() == 1 && m27736b(m2433L, m2433L2)) {
                                c0441j.m26457x(m26470B2);
                                bitSet.set(m26470B2);
                            }
                        }
                        m27737a(m26470B, c0441j);
                    }
                }
            }
        }
        for (int i4 = size - 1; i4 >= 0; i4--) {
            if (bitSet.get(this.f76c.m2438F(i4).mo2449a())) {
                this.f76c.m2431N(i4, null);
            }
        }
        this.f76c.shrinkToFit();
        this.f76c.setImmutable();
        return new C7165u(this.f76c, this.f74a.m2307c());
    }

    public C0049b(C7165u c7165u) {
        this.f74a = c7165u;
        C7140c m2308b = c7165u.m2308b();
        this.f75b = m2308b;
        this.f76c = m2308b.m2435J();
    }

    /* renamed from: a */
    public final void m27737a(int i, C0441j c0441j) {
        int size = c0441j.size();
        for (int i2 = 0; i2 < size; i2++) {
            int m26470B = c0441j.m26470B(i2);
            C0441j m2306d = this.f74a.m2306d(this.f75b.m2433L(m26470B).mo2449a());
            int size2 = m2306d.size();
            for (int i3 = 0; i3 < size2; i3++) {
                m27734d(this.f76c.m2433L(m2306d.m26470B(i3)), m26470B, i);
            }
        }
    }

    /* renamed from: d */
    public final void m27734d(C7138b c7138b, int i, int i2) {
        C0441j m26464I = c7138b.m2442h().m26464I();
        m26464I.m26461L(m26464I.m26468D(i), i2);
        int m2444f = c7138b.m2444f();
        if (m2444f != i) {
            i2 = m2444f;
        }
        m26464I.setImmutable();
        C7138b c7138b2 = new C7138b(c7138b.mo2449a(), c7138b.m2446d(), m26464I, i2);
        C7140c c7140c = this.f76c;
        c7140c.m2431N(c7140c.m26455A(c7138b.mo2449a()), c7138b2);
    }
}
