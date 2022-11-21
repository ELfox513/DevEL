package p168r4;

import p184t2.AbstractC6705d;
/* renamed from: r4.pt */
/* loaded from: classes2.dex */
public final class BinderC6145pt<AdT> extends AbstractBinderC5961kv {

    /* renamed from: a */
    public final AbstractC6705d<AdT> f29572a;

    /* renamed from: b */
    public final AdT f29573b;

    public BinderC6145pt(AbstractC6705d<AdT> abstractC6705d, AdT adt) {
        this.f29572a = abstractC6705d;
        this.f29573b = adt;
    }

    @Override // p168r4.InterfaceC5998lv
    /* renamed from: a */
    public final void mo8215a() {
        AdT adt;
        AbstractC6705d<AdT> abstractC6705d = this.f29572a;
        if (abstractC6705d == null || (adt = this.f29573b) == null) {
            return;
        }
        abstractC6705d.onAdLoaded(adt);
    }

    @Override // p168r4.InterfaceC5998lv
    /* renamed from: u2 */
    public final void mo8214u2(C5996lt c5996lt) {
        AbstractC6705d<AdT> abstractC6705d = this.f29572a;
        if (abstractC6705d != null) {
            abstractC6705d.onAdFailedToLoad(c5996lt.m9567Y0());
        }
    }
}
