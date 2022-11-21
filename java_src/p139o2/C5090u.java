package p139o2;

import java.util.concurrent.Executor;
import p103k2.InterfaceC4438b;
import p148p2.InterfaceC5321c;
import p157q2.InterfaceC5408b;
import p171r7.InterfaceC6549a;
/* renamed from: o2.u */
/* loaded from: classes.dex */
public final class C5090u implements InterfaceC4438b<C5089t> {

    /* renamed from: a */
    public final InterfaceC6549a<Executor> f19354a;

    /* renamed from: b */
    public final InterfaceC6549a<InterfaceC5321c> f19355b;

    /* renamed from: c */
    public final InterfaceC6549a<InterfaceC5091v> f19356c;

    /* renamed from: d */
    public final InterfaceC6549a<InterfaceC5408b> f19357d;

    /* renamed from: a */
    public static C5090u m14677a(InterfaceC6549a<Executor> interfaceC6549a, InterfaceC6549a<InterfaceC5321c> interfaceC6549a2, InterfaceC6549a<InterfaceC5091v> interfaceC6549a3, InterfaceC6549a<InterfaceC5408b> interfaceC6549a4) {
        return new C5090u(interfaceC6549a, interfaceC6549a2, interfaceC6549a3, interfaceC6549a4);
    }

    /* renamed from: c */
    public static C5089t m14675c(Executor executor, InterfaceC5321c interfaceC5321c, InterfaceC5091v interfaceC5091v, InterfaceC5408b interfaceC5408b) {
        return new C5089t(executor, interfaceC5321c, interfaceC5091v, interfaceC5408b);
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: b */
    public C5089t get() {
        return m14675c(this.f19354a.get(), this.f19355b.get(), this.f19356c.get(), this.f19357d.get());
    }

    public C5090u(InterfaceC6549a<Executor> interfaceC6549a, InterfaceC6549a<InterfaceC5321c> interfaceC6549a2, InterfaceC6549a<InterfaceC5091v> interfaceC6549a3, InterfaceC6549a<InterfaceC5408b> interfaceC6549a4) {
        this.f19354a = interfaceC6549a;
        this.f19355b = interfaceC6549a2;
        this.f19356c = interfaceC6549a3;
        this.f19357d = interfaceC6549a4;
    }
}
