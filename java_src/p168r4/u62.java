package p168r4;
/* renamed from: r4.u62 */
/* loaded from: classes2.dex */
public final class u62 implements t81 {

    /* renamed from: a */
    public boolean f32205a = false;

    /* renamed from: b */
    public final /* synthetic */ t12 f32206b;

    /* renamed from: c */
    public final /* synthetic */ vm0 f32207c;

    /* renamed from: d */
    public final /* synthetic */ v62 f32208d;

    public u62(v62 v62Var, t12 t12Var, vm0 vm0Var) {
        this.f32208d = v62Var;
        this.f32206b = t12Var;
        this.f32207c = vm0Var;
    }

    @Override // p168r4.t81
    /* renamed from: g0 */
    public final synchronized void mo6608g0(C5996lt c5996lt) {
        this.f32205a = true;
        m6609a(c5996lt);
    }

    @Override // p168r4.t81
    /* renamed from: y0 */
    public final synchronized void mo6606y0(int i, String str) {
        if (this.f32205a) {
            return;
        }
        this.f32205a = true;
        if (str == null) {
            str = v62.m6224e(this.f32206b.f31616a, i);
        }
        m6609a(new C5996lt(i, str, "undefined", null, null));
    }

    @Override // p168r4.t81
    public final synchronized void zza() {
        this.f32207c.m6086e(null);
    }

    /* renamed from: a */
    public final void m6609a(C5996lt c5996lt) {
        int i = 1;
        if (true == ((Boolean) C5592av.m12935c().m8098c(C6225rz.f30858M3)).booleanValue()) {
            i = 3;
        }
        this.f32207c.m6085f(new u12(i, c5996lt));
    }

    @Override // p168r4.t81
    /* renamed from: x */
    public final void mo6607x(int i) {
        if (this.f32205a) {
            return;
        }
        m6609a(new C5996lt(i, v62.m6224e(this.f32206b.f31616a, i), "undefined", null, null));
    }
}
