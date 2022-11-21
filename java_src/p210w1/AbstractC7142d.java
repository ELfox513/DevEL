package p210w1;

import p218x1.AbstractC7204a;
/* renamed from: w1.d */
/* loaded from: classes.dex */
public abstract class AbstractC7142d extends AbstractC7146h {

    /* renamed from: p */
    public final AbstractC7204a f36161p;

    @Override // p210w1.AbstractC7146h
    /* renamed from: g */
    public String mo2248g() {
        return this.f36161p.toHuman();
    }

    /* renamed from: t */
    public AbstractC7204a m2427t() {
        return this.f36161p;
    }

    public AbstractC7142d(C7164t c7164t, C7167w c7167w, C7157q c7157q, C7160r c7160r, AbstractC7204a abstractC7204a) {
        super(c7164t, c7167w, c7157q, c7160r);
        if (abstractC7204a != null) {
            this.f36161p = abstractC7204a;
            return;
        }
        throw new NullPointerException("cst == null");
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: c */
    public boolean mo2252c(AbstractC7146h abstractC7146h) {
        if (super.mo2252c(abstractC7146h) && this.f36161p.equals(((AbstractC7142d) abstractC7146h).m2427t())) {
            return true;
        }
        return false;
    }
}
