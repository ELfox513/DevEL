package p168r4;
/* renamed from: r4.n92 */
/* loaded from: classes2.dex */
public final class n92 implements s92<i31> {

    /* renamed from: a */
    public final /* synthetic */ o92 f28230a;

    public n92(o92 o92Var) {
        this.f28230a = o92Var;
    }

    @Override // p168r4.s92
    public final void zza() {
        synchronized (this.f28230a) {
        }
    }

    @Override // p168r4.s92
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo7189b(i31 i31Var) {
        synchronized (this.f28230a) {
            this.f28230a.f28936c = i31Var.m10732d();
            i31Var.mo4221a();
        }
    }
}
