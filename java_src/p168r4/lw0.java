package p168r4;

import p077h3.AbstractC4013r;
import p077h3.C4006k0;
import p077h3.InterfaceC4012q;
/* renamed from: r4.lw0 */
/* loaded from: classes2.dex */
public final class lw0 implements InterfaceC4012q {

    /* renamed from: a */
    public final ow0 f27395a;

    /* renamed from: b */
    public u61 f27396b;

    /* renamed from: c */
    public C4006k0 f27397c;

    public /* synthetic */ lw0(ow0 ow0Var, fw0 fw0Var) {
        this.f27395a = ow0Var;
    }

    @Override // p077h3.InterfaceC4012q
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ InterfaceC4012q mo9555b(u61 u61Var) {
        this.f27396b = u61Var;
        return this;
    }

    @Override // p077h3.InterfaceC4012q
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ InterfaceC4012q mo9554c(C4006k0 c4006k0) {
        this.f27397c = c4006k0;
        return this;
    }

    @Override // p077h3.InterfaceC4012q
    public final AbstractC4013r zza() {
        ds3.m11979c(this.f27396b, u61.class);
        ds3.m11979c(this.f27397c, C4006k0.class);
        return new mw0(this.f27395a, this.f27397c, new o41(), new ys1(), this.f27396b, new kq2(), null, null, null);
    }
}
