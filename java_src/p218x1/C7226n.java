package p218x1;

import p226y1.C7402c;
/* renamed from: x1.n */
/* loaded from: classes.dex */
public final class C7226n extends AbstractC7236x {
    public C7226n(C7214e0 c7214e0, C7205a0 c7205a0) {
        super(c7214e0, c7205a0);
    }

    /* renamed from: x */
    public static C7226n m2077x(C7402c c7402c) {
        return new C7226n(C7214e0.m2098u(c7402c), C7205a0.f36550d);
    }

    @Override // p226y1.InterfaceC7403d
    public C7402c getType() {
        return m2053u().m2129u();
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "field";
    }

    @Override // p218x1.AbstractC7236x, p218x1.AbstractC7204a
    /* renamed from: d */
    public int mo2048d(AbstractC7204a abstractC7204a) {
        int mo2048d = super.mo2048d(abstractC7204a);
        if (mo2048d != 0) {
            return mo2048d;
        }
        return m2053u().m2130n().compareTo(((C7226n) abstractC7204a).m2053u().m2130n());
    }
}
