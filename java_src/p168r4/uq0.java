package p168r4;
/* renamed from: r4.uq0 */
/* loaded from: classes2.dex */
public final class uq0 extends qq0 {
    public uq0(po0 po0Var) {
        super(po0Var);
    }

    @Override // p168r4.qq0
    /* renamed from: m */
    public final void mo4105m() {
    }

    @Override // p168r4.qq0
    /* renamed from: e */
    public final boolean mo4112e(String str) {
        String m6124d = vl0.m6124d(str);
        po0 po0Var = this.f30288d.get();
        if (po0Var != null && m6124d != null) {
            po0Var.mo5132D(m6124d, this);
        }
        cm0.m12437f("VideoStreamNoopCache is doing nothing.");
        m7700r(str, m6124d, "noop", "Noop cache is a noop.");
        return false;
    }
}
