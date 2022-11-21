package p168r4;
/* renamed from: r4.ro1 */
/* loaded from: classes2.dex */
public final class ro1 implements k60 {

    /* renamed from: a */
    public final r81 f30640a;

    /* renamed from: b */
    public final rh0 f30641b;

    /* renamed from: d */
    public final String f30642d;

    /* renamed from: k */
    public final String f30643k;

    public ro1(r81 r81Var, no2 no2Var) {
        this.f30640a = r81Var;
        this.f30641b = no2Var.f28426m;
        this.f30642d = no2Var.f28424k;
        this.f30643k = no2Var.f28425l;
    }

    @Override // p168r4.k60
    /* renamed from: b */
    public final void mo7414b() {
        this.f30640a.m7575d();
    }

    @Override // p168r4.k60
    public final void zza() {
        this.f30640a.m7574e();
    }

    @Override // p168r4.k60
    /* renamed from: L */
    public final void mo7415L(rh0 rh0Var) {
        int i;
        String str;
        rh0 rh0Var2 = this.f30641b;
        if (rh0Var2 != null) {
            rh0Var = rh0Var2;
        }
        if (rh0Var != null) {
            str = rh0Var.f30573a;
            i = rh0Var.f30574b;
        } else {
            i = 1;
            str = "";
        }
        this.f30640a.m7578T0(new bh0(str, i), this.f30642d, this.f30643k);
    }
}
