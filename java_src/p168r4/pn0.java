package p168r4;
/* renamed from: r4.pn0 */
/* loaded from: classes2.dex */
public final class pn0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ tn0 f29532a;

    public pn0(tn0 tn0Var) {
        this.f29532a = tn0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        un0 un0Var;
        boolean z;
        un0 un0Var2;
        un0 un0Var3;
        un0Var = this.f29532a.f31905C;
        if (un0Var != null) {
            z = this.f29532a.f31906D;
            if (!z) {
                un0Var3 = this.f29532a.f31905C;
                un0Var3.mo6474i();
                this.f29532a.f31906D = true;
            }
            un0Var2 = this.f29532a.f31905C;
            un0Var2.mo6481b();
        }
    }
}
