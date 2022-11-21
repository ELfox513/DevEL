package p210w1;

import java.util.ArrayList;
import p210w1.AbstractC7146h;
import p218x1.AbstractC7204a;
import p226y1.C7401b;
import p226y1.C7402c;
import p226y1.InterfaceC7404e;
/* renamed from: w1.g */
/* loaded from: classes.dex */
public final class C7145g extends AbstractC7146h {

    /* renamed from: p */
    public final ArrayList<AbstractC7204a> f36181p;

    /* renamed from: q */
    public final AbstractC7204a f36182q;

    public C7145g(C7164t c7164t, C7167w c7167w, C7160r c7160r, ArrayList<AbstractC7204a> arrayList, AbstractC7204a abstractC7204a) {
        super(c7164t, c7167w, null, c7160r);
        if (c7164t.m2316b() == 1) {
            this.f36181p = arrayList;
            this.f36182q = abstractC7204a;
            return;
        }
        throw new IllegalArgumentException("opcode with invalid branchingness: " + c7164t.m2316b());
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: a */
    public void mo2250a(AbstractC7146h.InterfaceC7148b interfaceC7148b) {
        interfaceC7148b.visitFillArrayDataInsn(this);
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
        return new C7145g(m2417i(), m2416j(), c7160r, this.f36181p, this.f36182q);
    }

    /* renamed from: t */
    public AbstractC7204a m2422t() {
        return this.f36182q;
    }

    /* renamed from: u */
    public ArrayList<AbstractC7204a> m2421u() {
        return this.f36181p;
    }
}
