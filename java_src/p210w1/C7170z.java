package p210w1;

import p210w1.AbstractC7146h;
import p226y1.C7402c;
import p226y1.InterfaceC7404e;
/* renamed from: w1.z */
/* loaded from: classes.dex */
public final class C7170z extends AbstractC7146h {

    /* renamed from: p */
    public final InterfaceC7404e f36445p;

    public C7170z(C7164t c7164t, C7167w c7167w, C7160r c7160r, InterfaceC7404e interfaceC7404e) {
        super(c7164t, c7167w, null, c7160r);
        if (c7164t.m2316b() == 6) {
            if (interfaceC7404e != null) {
                this.f36445p = interfaceC7404e;
                return;
            }
            throw new NullPointerException("catches == null");
        }
        throw new IllegalArgumentException("opcode with invalid branchingness: " + c7164t.m2316b());
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: a */
    public void mo2250a(AbstractC7146h.InterfaceC7148b interfaceC7148b) {
        interfaceC7148b.visitThrowingInsn(this);
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: e */
    public InterfaceC7404e mo2249e() {
        return this.f36445p;
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: g */
    public String mo2248g() {
        return m2245t(this.f36445p);
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: r */
    public AbstractC7146h mo2246r(C7157q c7157q, C7160r c7160r) {
        return new C7170z(m2417i(), m2416j(), c7160r, this.f36445p);
    }

    /* renamed from: t */
    public static String m2245t(InterfaceC7404e interfaceC7404e) {
        StringBuilder sb = new StringBuilder(100);
        sb.append("catch");
        int size = interfaceC7404e.size();
        for (int i = 0; i < size; i++) {
            sb.append(" ");
            sb.append(interfaceC7404e.getType(i).toHuman());
        }
        return sb.toString();
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: q */
    public AbstractC7146h mo2247q(C7402c c7402c) {
        return new C7170z(m2417i(), m2416j(), m2414m(), this.f36445p.mo1519d(c7402c));
    }
}
