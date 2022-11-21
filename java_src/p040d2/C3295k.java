package p040d2;

import com.google.ads.mediation.AbstractAdViewAdapter;
import p041d3.InterfaceC3311p;
import p184t2.AbstractC6704c;
import p184t2.C6716m;
import p202v2.AbstractC6984h;
import p202v2.InterfaceC6980f;
/* renamed from: d2.k */
/* loaded from: classes.dex */
public final class C3295k extends AbstractC6704c implements AbstractC6984h.InterfaceC6985a, InterfaceC6980f.InterfaceC6982b, InterfaceC6980f.InterfaceC6981a {

    /* renamed from: a */
    public final AbstractAdViewAdapter f15610a;

    /* renamed from: b */
    public final InterfaceC3311p f15611b;

    public C3295k(AbstractAdViewAdapter abstractAdViewAdapter, InterfaceC3311p interfaceC3311p) {
        this.f15610a = abstractAdViewAdapter;
        this.f15611b = interfaceC3311p;
    }

    @Override // p184t2.AbstractC6704c, p168r4.InterfaceC5812gt
    /* renamed from: F0 */
    public final void mo3609F0() {
        this.f15611b.mo11235j(this.f15610a);
    }

    @Override // p202v2.AbstractC6984h.InterfaceC6985a
    /* renamed from: a */
    public final void mo2772a(AbstractC6984h abstractC6984h) {
        this.f15611b.mo11239f(this.f15610a, new C3291g(abstractC6984h));
    }

    @Override // p202v2.InterfaceC6980f.InterfaceC6981a
    /* renamed from: c */
    public final void mo2787c(InterfaceC6980f interfaceC6980f, String str) {
        this.f15611b.mo11228q(this.f15610a, interfaceC6980f, str);
    }

    @Override // p202v2.InterfaceC6980f.InterfaceC6982b
    /* renamed from: g */
    public final void mo2786g(InterfaceC6980f interfaceC6980f) {
        this.f15611b.mo11241d(this.f15610a, interfaceC6980f);
    }

    @Override // p184t2.AbstractC6704c
    /* renamed from: j */
    public final void mo3608j() {
        this.f15611b.mo11238g(this.f15610a);
    }

    @Override // p184t2.AbstractC6704c
    /* renamed from: o */
    public final void mo3607o(C6716m c6716m) {
        this.f15611b.mo11232m(this.f15610a, c6716m);
    }

    @Override // p184t2.AbstractC6704c
    /* renamed from: p */
    public final void mo3606p() {
        this.f15611b.mo11227r(this.f15610a);
    }

    @Override // p184t2.AbstractC6704c
    /* renamed from: q */
    public final void mo3605q() {
    }

    @Override // p184t2.AbstractC6704c
    /* renamed from: s */
    public final void mo3604s() {
        this.f15611b.mo11243b(this.f15610a);
    }
}
