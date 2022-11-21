package p168r4;

import p184t2.AbstractC6715l;
/* renamed from: r4.bv */
/* loaded from: classes2.dex */
public final class BinderC5629bv extends AbstractBinderC5925jw {

    /* renamed from: a */
    public final AbstractC6715l f21228a;

    public BinderC5629bv(AbstractC6715l abstractC6715l) {
        this.f21228a = abstractC6715l;
    }

    @Override // p168r4.InterfaceC5962kw
    /* renamed from: I4 */
    public final void mo9905I4(C5996lt c5996lt) {
        AbstractC6715l abstractC6715l = this.f21228a;
        if (abstractC6715l != null) {
            abstractC6715l.onAdFailedToShowFullScreenContent(c5996lt.m9568X0());
        }
    }

    @Override // p168r4.InterfaceC5962kw
    /* renamed from: b */
    public final void mo9904b() {
        AbstractC6715l abstractC6715l = this.f21228a;
        if (abstractC6715l != null) {
            abstractC6715l.onAdShowedFullScreenContent();
        }
    }

    @Override // p168r4.InterfaceC5962kw
    /* renamed from: c */
    public final void mo9903c() {
        AbstractC6715l abstractC6715l = this.f21228a;
        if (abstractC6715l != null) {
            abstractC6715l.onAdImpression();
        }
    }

    @Override // p168r4.InterfaceC5962kw
    /* renamed from: d */
    public final void mo9902d() {
        AbstractC6715l abstractC6715l = this.f21228a;
        if (abstractC6715l != null) {
            abstractC6715l.onAdClicked();
        }
    }

    @Override // p168r4.InterfaceC5962kw
    /* renamed from: e */
    public final void mo9901e() {
        AbstractC6715l abstractC6715l = this.f21228a;
        if (abstractC6715l != null) {
            abstractC6715l.onAdDismissedFullScreenContent();
        }
    }
}
