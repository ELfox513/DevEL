package p168r4;
/* renamed from: r4.io2 */
/* loaded from: classes2.dex */
public final class io2 implements s92<uo1> {

    /* renamed from: a */
    public final /* synthetic */ ko2 f25213a;

    public io2(ko2 ko2Var) {
        this.f25213a = ko2Var;
    }

    @Override // p168r4.s92
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo7189b(uo1 uo1Var) {
        uo1 uo1Var2;
        uo1 uo1Var3 = uo1Var;
        synchronized (this.f25213a) {
            this.f25213a.f26502k = uo1Var3;
            uo1Var2 = this.f25213a.f26502k;
            uo1Var2.mo4221a();
        }
    }

    @Override // p168r4.s92
    public final void zza() {
        synchronized (this.f25213a) {
            this.f25213a.f26502k = null;
        }
    }
}
