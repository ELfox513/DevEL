package p168r4;
/* renamed from: r4.do2 */
/* loaded from: classes2.dex */
public final class do2 implements s92<uo1> {

    /* renamed from: a */
    public final /* synthetic */ eo2 f22373a;

    public do2(eo2 eo2Var) {
        this.f22373a = eo2Var;
    }

    @Override // p168r4.s92
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo7189b(uo1 uo1Var) {
        uo1 uo1Var2;
        uo1 uo1Var3 = uo1Var;
        synchronized (this.f22373a) {
            this.f22373a.f23103q = uo1Var3;
            uo1Var2 = this.f22373a.f23103q;
            uo1Var2.mo4221a();
        }
    }

    @Override // p168r4.s92
    public final void zza() {
        synchronized (this.f22373a) {
            this.f22373a.f23103q = null;
        }
    }
}
