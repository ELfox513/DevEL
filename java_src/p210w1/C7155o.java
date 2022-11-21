package p210w1;

import p210w1.AbstractC7146h;
import p218x1.AbstractC7204a;
import p218x1.C7228p;
import p226y1.C7401b;
import p226y1.C7402c;
import p226y1.InterfaceC7403d;
import p226y1.InterfaceC7404e;
/* renamed from: w1.o */
/* loaded from: classes.dex */
public final class C7155o extends AbstractC7146h {
    public C7155o(C7164t c7164t, C7167w c7167w, C7157q c7157q, C7160r c7160r) {
        super(c7164t, c7167w, c7157q, c7160r);
        int m2316b = c7164t.m2316b();
        if (m2316b != 5 && m2316b != 6) {
            if (c7157q != null && c7164t.m2316b() != 1) {
                throw new IllegalArgumentException("can't mix branchingness with result");
            }
            return;
        }
        throw new IllegalArgumentException("opcode with invalid branchingness: " + c7164t.m2316b());
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: a */
    public void mo2250a(AbstractC7146h.InterfaceC7148b interfaceC7148b) {
        interfaceC7148b.visitPlainInsn(this);
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: e */
    public InterfaceC7404e mo2249e() {
        return C7401b.f37044a;
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: q */
    public AbstractC7146h mo2247q(C7402c c7402c) {
        throw new UnsupportedOperationException("unsupported");
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: r */
    public AbstractC7146h mo2246r(C7157q c7157q, C7160r c7160r) {
        return new C7155o(m2417i(), m2416j(), c7157q, c7160r);
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: s */
    public AbstractC7146h mo2384s() {
        C7160r m2414m = m2414m();
        int size = m2414m.size();
        if (size == 0) {
            return this;
        }
        InterfaceC7403d m2379C = m2414m.m2347A(size - 1).m2379C();
        if (!m2379C.mo1522l()) {
            InterfaceC7403d m2379C2 = m2414m.m2347A(0).m2379C();
            if (size == 2 && m2379C2.mo1522l()) {
                AbstractC7204a abstractC7204a = (AbstractC7204a) m2379C2;
                C7160r m2337L = m2414m.m2337L();
                return new C7154n(C7166v.m2284V(m2417i().m2314d(), m2415k(), m2337L, abstractC7204a), m2416j(), m2415k(), m2337L, abstractC7204a);
            }
            return this;
        }
        AbstractC7204a abstractC7204a2 = (AbstractC7204a) m2379C;
        C7160r m2336M = m2414m.m2336M();
        try {
            int m2314d = m2417i().m2314d();
            if (m2314d == 15 && (abstractC7204a2 instanceof C7228p)) {
                m2314d = 14;
                abstractC7204a2 = C7228p.m2074C(-((C7228p) abstractC7204a2).m2075B());
            }
            AbstractC7204a abstractC7204a3 = abstractC7204a2;
            return new C7154n(C7166v.m2284V(m2314d, m2415k(), m2336M, abstractC7204a3), m2416j(), m2415k(), m2336M, abstractC7204a3);
        } catch (IllegalArgumentException unused) {
            return this;
        }
    }

    public C7155o(C7164t c7164t, C7167w c7167w, C7157q c7157q, C7157q c7157q2) {
        this(c7164t, c7167w, c7157q, C7160r.m2344D(c7157q2));
    }
}
