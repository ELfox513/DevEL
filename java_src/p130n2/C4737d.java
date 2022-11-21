package p130n2;

import java.util.concurrent.Executor;
import p094j2.InterfaceC4314e;
import p103k2.InterfaceC4438b;
import p139o2.InterfaceC5091v;
import p148p2.InterfaceC5321c;
import p157q2.InterfaceC5408b;
import p171r7.InterfaceC6549a;
/* renamed from: n2.d */
/* loaded from: classes.dex */
public final class C4737d implements InterfaceC4438b<C4736c> {

    /* renamed from: a */
    public final InterfaceC6549a<Executor> f18975a;

    /* renamed from: b */
    public final InterfaceC6549a<InterfaceC4314e> f18976b;

    /* renamed from: c */
    public final InterfaceC6549a<InterfaceC5091v> f18977c;

    /* renamed from: d */
    public final InterfaceC6549a<InterfaceC5321c> f18978d;

    /* renamed from: e */
    public final InterfaceC6549a<InterfaceC5408b> f18979e;

    /* renamed from: a */
    public static C4737d m15497a(InterfaceC6549a<Executor> interfaceC6549a, InterfaceC6549a<InterfaceC4314e> interfaceC6549a2, InterfaceC6549a<InterfaceC5091v> interfaceC6549a3, InterfaceC6549a<InterfaceC5321c> interfaceC6549a4, InterfaceC6549a<InterfaceC5408b> interfaceC6549a5) {
        return new C4737d(interfaceC6549a, interfaceC6549a2, interfaceC6549a3, interfaceC6549a4, interfaceC6549a5);
    }

    /* renamed from: c */
    public static C4736c m15495c(Executor executor, InterfaceC4314e interfaceC4314e, InterfaceC5091v interfaceC5091v, InterfaceC5321c interfaceC5321c, InterfaceC5408b interfaceC5408b) {
        return new C4736c(executor, interfaceC4314e, interfaceC5091v, interfaceC5321c, interfaceC5408b);
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: b */
    public C4736c get() {
        return m15495c(this.f18975a.get(), this.f18976b.get(), this.f18977c.get(), this.f18978d.get(), this.f18979e.get());
    }

    public C4737d(InterfaceC6549a<Executor> interfaceC6549a, InterfaceC6549a<InterfaceC4314e> interfaceC6549a2, InterfaceC6549a<InterfaceC5091v> interfaceC6549a3, InterfaceC6549a<InterfaceC5321c> interfaceC6549a4, InterfaceC6549a<InterfaceC5408b> interfaceC6549a5) {
        this.f18975a = interfaceC6549a;
        this.f18976b = interfaceC6549a2;
        this.f18977c = interfaceC6549a3;
        this.f18978d = interfaceC6549a4;
        this.f18979e = interfaceC6549a5;
    }
}
