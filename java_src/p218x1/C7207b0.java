package p218x1;

import p226y1.C7400a;
import p226y1.C7402c;
/* renamed from: x1.b0 */
/* loaded from: classes.dex */
public final class C7207b0 extends AbstractC7218g0 {

    /* renamed from: a */
    public final C7400a f36553a;

    @Override // p226y1.InterfaceC7403d
    public C7402c getType() {
        return C7402c.f37067I;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: h */
    public boolean mo2047h() {
        return false;
    }

    public int hashCode() {
        return this.f36553a.hashCode();
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "proto";
    }

    /* renamed from: n */
    public C7400a m2126n() {
        return this.f36553a;
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return this.f36553a.m1567h();
    }

    public final String toString() {
        return mo2042j() + "{" + toHuman() + '}';
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: d */
    public int mo2048d(AbstractC7204a abstractC7204a) {
        return this.f36553a.compareTo(((C7207b0) abstractC7204a).m2126n());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C7207b0)) {
            return false;
        }
        return m2126n().equals(((C7207b0) obj).m2126n());
    }

    public C7207b0(C7400a c7400a) {
        this.f36553a = c7400a;
    }

    /* renamed from: u */
    public static C7207b0 m2125u(C7212d0 c7212d0) {
        return new C7207b0(C7400a.m1568f(c7212d0.m2112u()));
    }
}
