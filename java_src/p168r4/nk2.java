package p168r4;
/* renamed from: r4.nk2 */
/* loaded from: classes2.dex */
public final class nk2 implements s92<a11> {

    /* renamed from: a */
    public final /* synthetic */ ok2 f28314a;

    public nk2(ok2 ok2Var) {
        this.f28314a = ok2Var;
    }

    @Override // p168r4.s92
    public final void zza() {
        synchronized (this.f28314a) {
            this.f28314a.f29035t = null;
        }
    }

    @Override // p168r4.s92
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo7189b(a11 a11Var) {
        fk2 fk2Var;
        fk2 fk2Var2;
        a11 a11Var2 = a11Var;
        synchronized (this.f28314a) {
            a11 a11Var3 = this.f28314a.f29035t;
            if (a11Var3 != null) {
                a11Var3.mo4220b();
            }
            ok2 ok2Var = this.f28314a;
            ok2Var.f29035t = a11Var2;
            a11Var2.m13062g(ok2Var);
            fk2Var = this.f28314a.f29032q;
            ok2 ok2Var2 = this.f28314a;
            fk2Var2 = ok2Var2.f29032q;
            fk2Var.m11491z(new b11(a11Var2, ok2Var2, fk2Var2));
            a11Var2.mo4221a();
        }
    }
}
