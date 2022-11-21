package p218x1;

import p226y1.C7402c;
/* renamed from: x1.m */
/* loaded from: classes.dex */
public final class C7225m extends AbstractC7236x {

    /* renamed from: d */
    public C7226n f36594d;

    @Override // p226y1.InterfaceC7403d
    public C7402c getType() {
        return m2054n().m2097x();
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "enum";
    }

    public C7225m(C7205a0 c7205a0) {
        super(new C7214e0(c7205a0.m2129u()), c7205a0);
        this.f36594d = null;
    }

    /* renamed from: x */
    public C7226n m2078x() {
        if (this.f36594d == null) {
            this.f36594d = new C7226n(m2054n(), m2053u());
        }
        return this.f36594d;
    }
}
