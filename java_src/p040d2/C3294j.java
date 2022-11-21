package p040d2;

import com.google.ads.mediation.AbstractAdViewAdapter;
import p041d3.InterfaceC3309n;
import p184t2.AbstractC6715l;
/* renamed from: d2.j */
/* loaded from: classes.dex */
public final class C3294j extends AbstractC6715l {

    /* renamed from: a */
    public final AbstractAdViewAdapter f15608a;

    /* renamed from: b */
    public final InterfaceC3309n f15609b;

    public C3294j(AbstractAdViewAdapter abstractAdViewAdapter, InterfaceC3309n interfaceC3309n) {
        this.f15608a = abstractAdViewAdapter;
        this.f15609b = interfaceC3309n;
    }

    @Override // p184t2.AbstractC6715l
    public final void onAdDismissedFullScreenContent() {
        this.f15609b.mo11229p(this.f15608a);
    }

    @Override // p184t2.AbstractC6715l
    public final void onAdShowedFullScreenContent() {
        this.f15609b.mo11226s(this.f15608a);
    }
}
