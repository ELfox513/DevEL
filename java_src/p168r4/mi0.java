package p168r4;

import p095j3.AbstractC4327b;
import p095j3.AbstractC4328c;
/* renamed from: r4.mi0 */
/* loaded from: classes2.dex */
public final class mi0 extends ei0 {

    /* renamed from: a */
    public final AbstractC4328c f27737a;

    /* renamed from: b */
    public final AbstractC4327b f27738b;

    public mi0(AbstractC4328c abstractC4328c, AbstractC4327b abstractC4327b) {
        this.f27737a = abstractC4328c;
        this.f27738b = abstractC4327b;
    }

    @Override // p168r4.fi0
    /* renamed from: C */
    public final void mo4084C(int i) {
    }

    @Override // p168r4.fi0
    /* renamed from: c */
    public final void mo4082c() {
        AbstractC4328c abstractC4328c = this.f27737a;
        if (abstractC4328c != null) {
            abstractC4328c.onAdLoaded(this.f27738b);
        }
    }

    @Override // p168r4.fi0
    /* renamed from: F */
    public final void mo4083F(C5996lt c5996lt) {
        if (this.f27737a != null) {
            this.f27737a.onAdFailedToLoad(c5996lt.m9567Y0());
        }
    }
}
