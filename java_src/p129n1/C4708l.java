package p129n1;

import p015b2.C0441j;
import p111l1.C4557d;
import p218x1.C7214e0;
import p226y1.C7401b;
import p226y1.C7402c;
/* renamed from: n1.l */
/* loaded from: classes.dex */
public final class C4708l {

    /* renamed from: a */
    public final AbstractC4713o f18878a;

    /* renamed from: b */
    public final C4707k f18879b;

    /* renamed from: c */
    public final C0441j f18880c;

    public C4708l(AbstractC4713o abstractC4713o, C4707k c4707k) {
        this(abstractC4713o, c4707k, C0441j.f1530k);
    }

    /* renamed from: c */
    public C4708l m15681c() {
        return new C4708l(this.f18878a.mo15607z(), this.f18879b.m15696B(), this.f18880c);
    }

    /* renamed from: d */
    public AbstractC4713o m15680d() {
        return this.f18878a;
    }

    /* renamed from: e */
    public C4707k m15679e() {
        return this.f18879b;
    }

    /* renamed from: f */
    public C0441j m15678f() {
        return this.f18880c;
    }

    public C4708l(AbstractC4713o abstractC4713o, C4707k c4707k, C0441j c0441j) {
        if (abstractC4713o == null) {
            throw new NullPointerException("locals == null");
        }
        if (c4707k != null) {
            c0441j.throwIfMutable();
            this.f18878a = abstractC4713o;
            this.f18879b = c4707k;
            this.f18880c = c0441j;
            return;
        }
        throw new NullPointerException("stack == null");
    }

    /* renamed from: a */
    public static AbstractC4713o m15683a(AbstractC4713o abstractC4713o, C0441j c0441j) {
        if (!(abstractC4713o instanceof C4714p)) {
            return abstractC4713o;
        }
        C4714p c4714p = (C4714p) abstractC4713o;
        if (c0441j.size() == 0) {
            return c4714p.mo15620B();
        }
        return c4714p;
    }

    /* renamed from: b */
    public void m15682b(C4557d c4557d) {
        this.f18878a.mo15608x(c4557d);
        this.f18879b.m15685x(c4557d);
    }

    /* renamed from: i */
    public void m15675i(C7402c c7402c) {
        this.f18878a.mo15619C(c7402c);
        this.f18879b.m15695C(c7402c);
    }

    /* renamed from: j */
    public C4708l m15674j(int i, int i2) {
        this.f18880c.m26464I().m26457x(i);
        return new C4708l(this.f18878a.mo15620B(), this.f18879b, C0441j.m26466F(i)).m15671m(this, i, i2);
    }

    /* renamed from: k */
    public final C0441j m15673k(C0441j c0441j) {
        if (this.f18880c.equals(c0441j)) {
            return this.f18880c;
        }
        C0441j c0441j2 = new C0441j();
        int size = this.f18880c.size();
        int size2 = c0441j.size();
        for (int i = 0; i < size && i < size2 && this.f18880c.m26470B(i) == c0441j.m26470B(i); i++) {
            c0441j2.m26457x(i);
        }
        c0441j2.setImmutable();
        return c0441j2;
    }

    /* renamed from: n */
    public void m15670n() {
        this.f18878a.setImmutable();
        this.f18879b.setImmutable();
    }

    /* renamed from: o */
    public C4708l m15669o(int i, int i2) {
        AbstractC4713o abstractC4713o;
        AbstractC4713o abstractC4713o2 = this.f18878a;
        if (abstractC4713o2 instanceof C4714p) {
            abstractC4713o = ((C4714p) abstractC4713o2).m15642N(i2);
        } else {
            abstractC4713o = null;
        }
        try {
            C0441j m26464I = this.f18880c.m26464I();
            if (m26464I.m26463J() == i) {
                m26464I.setImmutable();
                if (abstractC4713o == null) {
                    return null;
                }
                return new C4708l(abstractC4713o, this.f18879b, m26464I);
            }
            throw new RuntimeException("returning from invalid subroutine");
        } catch (IndexOutOfBoundsException unused) {
            throw new RuntimeException("returning from invalid subroutine");
        } catch (NullPointerException unused2) {
            throw new NullPointerException("can't return from non-subroutine");
        }
    }

    /* renamed from: g */
    public void m15677g(C7401b c7401b) {
        int size = c7401b.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            C7402c m1558A = c7401b.m1558A(i2);
            this.f18878a.mo15616F(i, m1558A);
            i += m1558A.m1527n();
        }
    }

    /* renamed from: h */
    public C4708l m15676h(C7214e0 c7214e0) {
        C4707k m15696B = m15679e().m15696B();
        m15696B.m15697A();
        m15696B.m15689J(c7214e0);
        return new C4708l(m15680d(), m15696B, this.f18880c);
    }

    /* renamed from: l */
    public C4708l m15672l(C4708l c4708l) {
        AbstractC4713o mo15618D = m15680d().mo15618D(c4708l.m15680d());
        C4707k m15694D = m15679e().m15694D(c4708l.m15679e());
        C0441j m15673k = m15673k(c4708l.f18880c);
        AbstractC4713o m15683a = m15683a(mo15618D, m15673k);
        if (m15683a == m15680d() && m15694D == m15679e() && this.f18880c == m15673k) {
            return this;
        }
        return new C4708l(m15683a, m15694D, m15673k);
    }

    /* renamed from: m */
    public C4708l m15671m(C4708l c4708l, int i, int i2) {
        C0441j c0441j;
        C4714p mo15617E = m15680d().mo15617E(c4708l.m15680d(), i2);
        C4707k m15694D = m15679e().m15694D(c4708l.m15679e());
        C0441j m26464I = c4708l.f18880c.m26464I();
        m26464I.m26457x(i);
        m26464I.setImmutable();
        if (mo15617E == m15680d() && m15694D == m15679e() && this.f18880c.equals(m26464I)) {
            return this;
        }
        if (this.f18880c.equals(m26464I)) {
            m26464I = this.f18880c;
        } else {
            if (this.f18880c.size() > m26464I.size()) {
                c0441j = m26464I;
                m26464I = this.f18880c;
            } else {
                c0441j = this.f18880c;
            }
            int size = m26464I.size();
            int size2 = c0441j.size();
            for (int i3 = size2 - 1; i3 >= 0; i3--) {
                if (c0441j.m26470B(i3) != m26464I.m26470B((size - size2) + i3)) {
                    throw new RuntimeException("Incompatible merged subroutines");
                }
            }
        }
        return new C4708l(mo15617E, m15694D, m26464I);
    }

    public C4708l(int i, int i2) {
        this(new C4717s(i), new C4707k(i2));
    }
}
