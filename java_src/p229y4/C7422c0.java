package p229y4;

import java.util.concurrent.atomic.AtomicReference;
import p106k5.C4472f;
/* renamed from: y4.c0 */
/* loaded from: classes2.dex */
public final class C7422c0 {

    /* renamed from: a */
    public final InterfaceC7465n1<InterfaceC7481t> f37135a;

    /* renamed from: b */
    public final AtomicReference<C7430e0> f37136b = new AtomicReference<>();

    public C7422c0(InterfaceC7465n1<InterfaceC7481t> interfaceC7465n1) {
        this.f37135a = interfaceC7465n1;
    }

    /* renamed from: b */
    public final void m1456b(C7430e0 c7430e0) {
        this.f37136b.set(c7430e0);
    }

    /* renamed from: c */
    public final boolean m1455c() {
        return this.f37136b.get() != null;
    }

    /* renamed from: a */
    public final void m1457a(C4472f.InterfaceC4474b interfaceC4474b, C4472f.InterfaceC4473a interfaceC4473a) {
        C7439g1.m1447a();
        C7430e0 c7430e0 = this.f37136b.get();
        if (c7430e0 == null) {
            interfaceC4473a.mo1389a(new C7486u1(3, "No available form can be built.").m1394a());
            return;
        }
        InterfaceC7481t mo1390a = this.f37135a.mo1390a();
        mo1390a.mo1395b(c7430e0);
        mo1390a.mo1396a().zza().m1380c(interfaceC4474b, interfaceC4473a);
    }
}
