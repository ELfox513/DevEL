package p168r4;

import p184t2.AbstractC6715l;
import p184t2.InterfaceC6721r;
/* renamed from: r4.qi0 */
/* loaded from: classes2.dex */
public final class qi0 extends ai0 {

    /* renamed from: a */
    public AbstractC6715l f30151a;

    /* renamed from: b */
    public InterfaceC6721r f30152b;

    @Override // p168r4.bi0
    /* renamed from: G2 */
    public final void mo4247G2(vh0 vh0Var) {
        InterfaceC6721r interfaceC6721r = this.f30152b;
        if (interfaceC6721r != null) {
            interfaceC6721r.mo3558a(new ji0(vh0Var));
        }
    }

    @Override // p168r4.bi0
    /* renamed from: J3 */
    public final void mo4246J3(C5996lt c5996lt) {
        AbstractC6715l abstractC6715l = this.f30151a;
        if (abstractC6715l != null) {
            abstractC6715l.onAdFailedToShowFullScreenContent(c5996lt.m9568X0());
        }
    }

    @Override // p168r4.bi0
    /* renamed from: Y */
    public final void mo4245Y(int i) {
    }

    @Override // p168r4.bi0
    /* renamed from: c */
    public final void mo4244c() {
        AbstractC6715l abstractC6715l = this.f30151a;
        if (abstractC6715l != null) {
            abstractC6715l.onAdShowedFullScreenContent();
        }
    }

    @Override // p168r4.bi0
    /* renamed from: d */
    public final void mo4243d() {
        AbstractC6715l abstractC6715l = this.f30151a;
        if (abstractC6715l != null) {
            abstractC6715l.onAdDismissedFullScreenContent();
        }
    }

    /* renamed from: f7 */
    public final void m7818f7(AbstractC6715l abstractC6715l) {
        this.f30151a = abstractC6715l;
    }

    /* renamed from: g7 */
    public final void m7817g7(InterfaceC6721r interfaceC6721r) {
        this.f30152b = interfaceC6721r;
    }

    @Override // p168r4.bi0
    /* renamed from: h */
    public final void mo4242h() {
        AbstractC6715l abstractC6715l = this.f30151a;
        if (abstractC6715l != null) {
            abstractC6715l.onAdImpression();
        }
    }

    @Override // p168r4.bi0
    /* renamed from: i */
    public final void mo4241i() {
        AbstractC6715l abstractC6715l = this.f30151a;
        if (abstractC6715l != null) {
            abstractC6715l.onAdClicked();
        }
    }
}
