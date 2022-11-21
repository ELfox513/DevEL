package p168r4;

import p104k3.AbstractC4442b;
/* renamed from: r4.ri0 */
/* loaded from: classes2.dex */
public final class ri0 extends ei0 {

    /* renamed from: a */
    public final AbstractC4442b f30576a;

    /* renamed from: b */
    public final si0 f30577b;

    public ri0(AbstractC4442b abstractC4442b, si0 si0Var) {
        this.f30576a = abstractC4442b;
        this.f30577b = si0Var;
    }

    @Override // p168r4.fi0
    /* renamed from: C */
    public final void mo4084C(int i) {
    }

    @Override // p168r4.fi0
    /* renamed from: F */
    public final void mo4083F(C5996lt c5996lt) {
        AbstractC4442b abstractC4442b = this.f30576a;
        if (abstractC4442b != null) {
            abstractC4442b.onAdFailedToLoad(c5996lt.m9567Y0());
        }
    }

    @Override // p168r4.fi0
    /* renamed from: c */
    public final void mo4082c() {
        si0 si0Var;
        AbstractC4442b abstractC4442b = this.f30576a;
        if (abstractC4442b == null || (si0Var = this.f30577b) == null) {
            return;
        }
        abstractC4442b.onAdLoaded(si0Var);
    }
}
