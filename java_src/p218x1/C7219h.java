package p218x1;

import p129n1.C4694c;
import p218x1.C7210d;
import p226y1.C7400a;
/* renamed from: x1.h */
/* loaded from: classes.dex */
public final class C7219h extends C7210d {
    public C7219h(C7210d.C7211a c7211a) {
        super(c7211a);
    }

    @Override // p218x1.C7210d, p218x1.AbstractC7204a
    /* renamed from: d */
    public int mo2048d(AbstractC7204a abstractC7204a) {
        return m2121n().compareTo(((C7219h) abstractC7204a).m2121n());
    }

    @Override // p218x1.C7210d, p218x1.AbstractC7204a
    /* renamed from: h */
    public boolean mo2047h() {
        return false;
    }

    @Override // p218x1.C7210d
    public int hashCode() {
        return m2121n().hashCode();
    }

    @Override // p218x1.C7210d, p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "call site";
    }

    @Override // p218x1.C7210d, p015b2.InterfaceC0450r
    public String toHuman() {
        return m2121n().toHuman("{", ", ", "}");
    }

    @Override // p218x1.C7210d
    public String toString() {
        return m2121n().toString("call site{", ", ", "}");
    }

    /* renamed from: u */
    public static C7219h m2087u(C7237y c7237y, C7205a0 c7205a0, C4694c c4694c) {
        if (c7237y != null) {
            if (c7205a0 != null) {
                C7210d.C7211a c7211a = new C7210d.C7211a(c4694c.size() + 3);
                c7211a.m2119z(0, c7237y);
                c7211a.m2119z(1, c7205a0.m2128x());
                c7211a.m2119z(2, new C7207b0(C7400a.m1568f(c7205a0.m2130n().m2112u())));
                for (int i = 0; i < c4694c.size(); i++) {
                    c7211a.m2119z(i + 3, c4694c.get(i));
                }
                c7211a.setImmutable();
                return new C7219h(c7211a);
            }
            throw new NullPointerException("nat == null");
        }
        throw new NullPointerException("bootstrapMethodHandle == null");
    }

    @Override // p218x1.C7210d
    public boolean equals(Object obj) {
        if (obj instanceof C7219h) {
            return m2121n().equals(((C7219h) obj).m2121n());
        }
        return false;
    }
}
