package p210w1;

import p210w1.AbstractC7146h;
import p218x1.AbstractC7204a;
import p226y1.C7401b;
import p226y1.C7402c;
import p226y1.InterfaceC7404e;
/* renamed from: w1.n */
/* loaded from: classes.dex */
public final class C7154n extends AbstractC7142d {
    @Override // p210w1.AbstractC7146h
    /* renamed from: a */
    public void mo2250a(AbstractC7146h.InterfaceC7148b interfaceC7148b) {
        interfaceC7148b.visitPlainCstInsn(this);
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
        return new C7154n(m2417i(), m2416j(), c7157q, c7160r, m2427t());
    }

    public C7154n(C7164t c7164t, C7167w c7167w, C7157q c7157q, C7160r c7160r, AbstractC7204a abstractC7204a) {
        super(c7164t, c7167w, c7157q, c7160r, abstractC7204a);
        if (c7164t.m2316b() == 1) {
            return;
        }
        throw new IllegalArgumentException("opcode with invalid branchingness: " + c7164t.m2316b());
    }
}
