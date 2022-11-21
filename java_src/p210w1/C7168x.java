package p210w1;

import p015b2.C0441j;
import p210w1.AbstractC7146h;
import p226y1.C7401b;
import p226y1.C7402c;
import p226y1.InterfaceC7404e;
/* renamed from: w1.x */
/* loaded from: classes.dex */
public final class C7168x extends AbstractC7146h {

    /* renamed from: p */
    public final C0441j f36443p;

    @Override // p210w1.AbstractC7146h
    /* renamed from: a */
    public void mo2250a(AbstractC7146h.InterfaceC7148b interfaceC7148b) {
        interfaceC7148b.visitSwitchInsn(this);
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: c */
    public boolean mo2252c(AbstractC7146h abstractC7146h) {
        return false;
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: e */
    public InterfaceC7404e mo2249e() {
        return C7401b.f37044a;
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: g */
    public String mo2248g() {
        return this.f36443p.toString();
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: q */
    public AbstractC7146h mo2247q(C7402c c7402c) {
        throw new UnsupportedOperationException("unsupported");
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: r */
    public AbstractC7146h mo2246r(C7157q c7157q, C7160r c7160r) {
        return new C7168x(m2417i(), m2416j(), c7157q, c7160r, this.f36443p);
    }

    /* renamed from: t */
    public C0441j m2251t() {
        return this.f36443p;
    }

    public C7168x(C7164t c7164t, C7167w c7167w, C7157q c7157q, C7160r c7160r, C0441j c0441j) {
        super(c7164t, c7167w, c7157q, c7160r);
        if (c7164t.m2316b() == 5) {
            if (c0441j != null) {
                this.f36443p = c0441j;
                return;
            }
            throw new NullPointerException("cases == null");
        }
        throw new IllegalArgumentException("bogus branchingness");
    }
}
