package p168r4;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: r4.g92 */
/* loaded from: classes2.dex */
public final class g92 implements w91 {

    /* renamed from: a */
    public final AtomicReference<InterfaceC5742ex> f23946a = new AtomicReference<>();

    /* renamed from: a */
    public final void m11248a(InterfaceC5742ex interfaceC5742ex) {
        this.f23946a.set(interfaceC5742ex);
    }

    @Override // p168r4.w91
    /* renamed from: u */
    public final void mo5377u(final C5591au c5591au) {
        ol2.m8771a(this.f23946a, new nl2(c5591au) { // from class: r4.f92

            /* renamed from: a */
            public final C5591au f23423a;

            {
                this.f23423a = c5591au;
            }

            @Override // p168r4.nl2
            /* renamed from: a */
            public final void mo4181a(Object obj) {
                ((InterfaceC5742ex) obj).mo7279v5(this.f23423a);
            }
        });
    }
}
