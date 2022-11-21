package p148p2;

import p103k2.InterfaceC4438b;
import p166r2.InterfaceC5525a;
import p171r7.InterfaceC6549a;
/* renamed from: p2.c0 */
/* loaded from: classes.dex */
public final class C5322c0 implements InterfaceC4438b<C5316b0> {

    /* renamed from: a */
    public final InterfaceC6549a<InterfaceC5525a> f19926a;

    /* renamed from: b */
    public final InterfaceC6549a<InterfaceC5525a> f19927b;

    /* renamed from: c */
    public final InterfaceC6549a<AbstractC5323d> f19928c;

    /* renamed from: d */
    public final InterfaceC6549a<C5336h0> f19929d;

    /* renamed from: a */
    public static C5322c0 m13465a(InterfaceC6549a<InterfaceC5525a> interfaceC6549a, InterfaceC6549a<InterfaceC5525a> interfaceC6549a2, InterfaceC6549a<AbstractC5323d> interfaceC6549a3, InterfaceC6549a<C5336h0> interfaceC6549a4) {
        return new C5322c0(interfaceC6549a, interfaceC6549a2, interfaceC6549a3, interfaceC6549a4);
    }

    /* renamed from: c */
    public static C5316b0 m13463c(InterfaceC5525a interfaceC5525a, InterfaceC5525a interfaceC5525a2, Object obj, Object obj2) {
        return new C5316b0(interfaceC5525a, interfaceC5525a2, (AbstractC5323d) obj, (C5336h0) obj2);
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: b */
    public C5316b0 get() {
        return m13463c(this.f19926a.get(), this.f19927b.get(), this.f19928c.get(), this.f19929d.get());
    }

    public C5322c0(InterfaceC6549a<InterfaceC5525a> interfaceC6549a, InterfaceC6549a<InterfaceC5525a> interfaceC6549a2, InterfaceC6549a<AbstractC5323d> interfaceC6549a3, InterfaceC6549a<C5336h0> interfaceC6549a4) {
        this.f19926a = interfaceC6549a;
        this.f19927b = interfaceC6549a2;
        this.f19928c = interfaceC6549a3;
        this.f19929d = interfaceC6549a4;
    }
}
