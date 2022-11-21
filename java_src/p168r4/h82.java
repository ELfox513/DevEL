package p168r4;
/* renamed from: r4.h82 */
/* loaded from: classes2.dex */
public final class h82 implements s92<h11> {

    /* renamed from: a */
    public final /* synthetic */ i82 f24511a;

    public h82(i82 i82Var) {
        this.f24511a = i82Var;
    }

    @Override // p168r4.s92
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo7189b(h11 h11Var) {
        h11 h11Var2;
        h11 h11Var3;
        h11 h11Var4;
        h11 h11Var5 = h11Var;
        synchronized (this.f24511a) {
            h11Var2 = this.f24511a.f25012r;
            if (h11Var2 != null) {
                h11Var4 = this.f24511a.f25012r;
                h11Var4.mo4220b();
            }
            this.f24511a.f25012r = h11Var5;
            h11Var3 = this.f24511a.f25012r;
            h11Var3.mo4221a();
        }
    }

    @Override // p168r4.s92
    public final void zza() {
        synchronized (this.f24511a) {
            this.f24511a.f25012r = null;
        }
    }
}
