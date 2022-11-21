package p210w1;

import p210w1.AbstractC7146h;
import p218x1.AbstractC7204a;
import p218x1.C7212d0;
import p226y1.C7402c;
import p226y1.InterfaceC7404e;
/* renamed from: w1.y */
/* loaded from: classes.dex */
public final class C7169y extends AbstractC7142d {

    /* renamed from: q */
    public final InterfaceC7404e f36444q;

    public C7169y(C7164t c7164t, C7167w c7167w, C7160r c7160r, InterfaceC7404e interfaceC7404e, AbstractC7204a abstractC7204a) {
        super(c7164t, c7167w, null, c7160r, abstractC7204a);
        if (c7164t.m2316b() == 6) {
            if (interfaceC7404e != null) {
                this.f36444q = interfaceC7404e;
                return;
            }
            throw new NullPointerException("catches == null");
        }
        throw new IllegalArgumentException("opcode with invalid branchingness: " + c7164t.m2316b());
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: a */
    public void mo2250a(AbstractC7146h.InterfaceC7148b interfaceC7148b) {
        interfaceC7148b.visitThrowingCstInsn(this);
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: e */
    public InterfaceC7404e mo2249e() {
        return this.f36444q;
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: q */
    public AbstractC7146h mo2247q(C7402c c7402c) {
        return new C7169y(m2417i(), m2416j(), m2414m(), this.f36444q.mo1519d(c7402c), m2427t());
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: r */
    public AbstractC7146h mo2246r(C7157q c7157q, C7160r c7160r) {
        return new C7169y(m2417i(), m2416j(), c7160r, this.f36444q, m2427t());
    }

    @Override // p210w1.AbstractC7142d, p210w1.AbstractC7146h
    /* renamed from: g */
    public String mo2248g() {
        AbstractC7204a m2427t = m2427t();
        String human = m2427t.toHuman();
        if (m2427t instanceof C7212d0) {
            human = ((C7212d0) m2427t).m2116C();
        }
        return human + " " + C7170z.m2245t(this.f36444q);
    }
}
