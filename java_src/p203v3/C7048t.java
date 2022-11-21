package p203v3;

import android.app.Activity;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import p145p.C5272b;
import p185t3.C6734b;
import p185t3.C6744g;
import p220x3.C7297q;
/* renamed from: v3.t */
/* loaded from: classes.dex */
public final class C7048t extends AbstractDialogInterface$OnCancelListenerC7016h1 {

    /* renamed from: q */
    public final C5272b<C6995b<?>> f36036q;

    /* renamed from: r */
    public final C7008f f36037r;

    @Override // p203v3.AbstractDialogInterface$OnCancelListenerC7016h1
    /* renamed from: o */
    public final void mo2603o(C6734b c6734b, int i) {
        this.f36037r.m2683y(c6734b, i);
    }

    @Override // p203v3.AbstractDialogInterface$OnCancelListenerC7016h1
    /* renamed from: p */
    public final void mo2602p() {
        this.f36037r.m2688t();
    }

    /* renamed from: u */
    public final C5272b<C6995b<?>> m2600u() {
        return this.f36036q;
    }

    /* renamed from: v */
    public final void m2599v() {
        if (!this.f36036q.isEmpty()) {
            this.f36037r.m2691q(this);
        }
    }

    public C7048t(InterfaceC7014h interfaceC7014h, C7008f c7008f, C6744g c6744g) {
        super(interfaceC7014h, c6744g);
        this.f36036q = new C5272b<>();
        this.f36037r = c7008f;
        this.f7736a.mo2633a("ConnectionlessLifecycleHelper", this);
    }

    /* renamed from: t */
    public static void m2601t(Activity activity, C7008f c7008f, C6995b<?> c6995b) {
        InterfaceC7014h m23020c = LifecycleCallback.m23020c(activity);
        C7048t c7048t = (C7048t) m23020c.mo2631c("ConnectionlessLifecycleHelper", C7048t.class);
        if (c7048t == null) {
            c7048t = new C7048t(m23020c, c7008f, C6744g.m3508m());
        }
        C7297q.m1882k(c6995b, "ApiKey cannot be null");
        c7048t.f36036q.add(c6995b);
        c7008f.m2691q(c7048t);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: h */
    public final void mo2606h() {
        super.mo2606h();
        m2599v();
    }

    @Override // p203v3.AbstractDialogInterface$OnCancelListenerC7016h1, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: j */
    public final void mo2605j() {
        super.mo2605j();
        m2599v();
    }

    @Override // p203v3.AbstractDialogInterface$OnCancelListenerC7016h1, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: k */
    public final void mo2604k() {
        super.mo2604k();
        this.f36037r.m2690r(this);
    }
}
