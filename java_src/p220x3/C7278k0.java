package p220x3;

import com.google.android.gms.common.api.Status;
import java.util.concurrent.TimeUnit;
import p097j5.C4348j;
import p194u3.AbstractC6904h;
import p220x3.C7293p;
/* renamed from: x3.k0 */
/* loaded from: classes.dex */
public final class C7278k0 implements AbstractC6904h.InterfaceC6905a {

    /* renamed from: a */
    public final /* synthetic */ AbstractC6904h f36739a;

    /* renamed from: b */
    public final /* synthetic */ C4348j f36740b;

    /* renamed from: c */
    public final /* synthetic */ C7293p.InterfaceC7294a f36741c;

    /* renamed from: d */
    public final /* synthetic */ InterfaceC7284m0 f36742d;

    public C7278k0(AbstractC6904h abstractC6904h, C4348j c4348j, C7293p.InterfaceC7294a interfaceC7294a, InterfaceC7284m0 interfaceC7284m0) {
        this.f36739a = abstractC6904h;
        this.f36740b = c4348j;
        this.f36741c = interfaceC7294a;
        this.f36742d = interfaceC7284m0;
    }

    @Override // p194u3.AbstractC6904h.InterfaceC6905a
    /* renamed from: a */
    public final void mo1927a(Status status) {
        if (status.m23033c1()) {
            this.f36740b.m16773c(this.f36741c.mo1902a(this.f36739a.mo2640d(0L, TimeUnit.MILLISECONDS)));
            return;
        }
        this.f36740b.m16774b(C7243b.m2038a(status));
    }
}
