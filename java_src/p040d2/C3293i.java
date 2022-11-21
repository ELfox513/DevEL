package p040d2;

import com.google.ads.mediation.AbstractAdViewAdapter;
import p025c3.AbstractC1038a;
import p025c3.AbstractC1039b;
import p041d3.InterfaceC3309n;
import p184t2.C6716m;
/* renamed from: d2.i */
/* loaded from: classes.dex */
public final class C3293i extends AbstractC1039b {

    /* renamed from: a */
    public final AbstractAdViewAdapter f15606a;

    /* renamed from: b */
    public final InterfaceC3309n f15607b;

    public C3293i(AbstractAdViewAdapter abstractAdViewAdapter, InterfaceC3309n interfaceC3309n) {
        this.f15606a = abstractAdViewAdapter;
        this.f15607b = interfaceC3309n;
    }

    @Override // p184t2.AbstractC6705d
    public final void onAdFailedToLoad(C6716m c6716m) {
        this.f15607b.mo11233l(this.f15606a, c6716m);
    }

    @Override // p184t2.AbstractC6705d
    public final /* bridge */ /* synthetic */ void onAdLoaded(AbstractC1038a abstractC1038a) {
        AbstractC1038a abstractC1038a2 = abstractC1038a;
        AbstractAdViewAdapter abstractAdViewAdapter = this.f15606a;
        abstractAdViewAdapter.mInterstitialAd = abstractC1038a2;
        abstractC1038a2.mo12206b(new C3294j(abstractAdViewAdapter, this.f15607b));
        this.f15607b.mo11231n(this.f15606a);
    }
}
