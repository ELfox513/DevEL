package p085i2;

import p103k2.InterfaceC4438b;
import p130n2.InterfaceC4738e;
import p139o2.C5085p;
import p139o2.C5089t;
import p166r2.InterfaceC5525a;
import p171r7.InterfaceC6549a;
/* renamed from: i2.t */
/* loaded from: classes.dex */
public final class C4122t implements InterfaceC4438b<C4119r> {

    /* renamed from: a */
    public final InterfaceC6549a<InterfaceC5525a> f17730a;

    /* renamed from: b */
    public final InterfaceC6549a<InterfaceC5525a> f17731b;

    /* renamed from: c */
    public final InterfaceC6549a<InterfaceC4738e> f17732c;

    /* renamed from: d */
    public final InterfaceC6549a<C5085p> f17733d;

    /* renamed from: e */
    public final InterfaceC6549a<C5089t> f17734e;

    /* renamed from: a */
    public static C4122t m17332a(InterfaceC6549a<InterfaceC5525a> interfaceC6549a, InterfaceC6549a<InterfaceC5525a> interfaceC6549a2, InterfaceC6549a<InterfaceC4738e> interfaceC6549a3, InterfaceC6549a<C5085p> interfaceC6549a4, InterfaceC6549a<C5089t> interfaceC6549a5) {
        return new C4122t(interfaceC6549a, interfaceC6549a2, interfaceC6549a3, interfaceC6549a4, interfaceC6549a5);
    }

    /* renamed from: c */
    public static C4119r m17330c(InterfaceC5525a interfaceC5525a, InterfaceC5525a interfaceC5525a2, InterfaceC4738e interfaceC4738e, C5085p c5085p, C5089t c5089t) {
        return new C4119r(interfaceC5525a, interfaceC5525a2, interfaceC4738e, c5085p, c5089t);
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: b */
    public C4119r get() {
        return m17330c(this.f17730a.get(), this.f17731b.get(), this.f17732c.get(), this.f17733d.get(), this.f17734e.get());
    }

    public C4122t(InterfaceC6549a<InterfaceC5525a> interfaceC6549a, InterfaceC6549a<InterfaceC5525a> interfaceC6549a2, InterfaceC6549a<InterfaceC4738e> interfaceC6549a3, InterfaceC6549a<C5085p> interfaceC6549a4, InterfaceC6549a<C5089t> interfaceC6549a5) {
        this.f17730a = interfaceC6549a;
        this.f17731b = interfaceC6549a2;
        this.f17732c = interfaceC6549a3;
        this.f17733d = interfaceC6549a4;
        this.f17734e = interfaceC6549a5;
    }
}
