package p168r4;
/* renamed from: r4.h72 */
/* loaded from: classes2.dex */
public final class h72<AdT> implements q12<AdT> {

    /* renamed from: a */
    public final n00 f24495a;

    /* renamed from: b */
    public final i83 f24496b;

    /* renamed from: c */
    public final mt2 f24497c;

    /* renamed from: d */
    public final q72 f24498d;

    /* JADX WARN: Multi-variable type inference failed */
    public h72(mt2 mt2Var, mt2 mt2Var2, i83 i83Var, n00 n00Var, q72 q72Var) {
        this.f24497c = mt2Var;
        this.f24496b = mt2Var2;
        this.f24495a = i83Var;
        this.f24498d = n00Var;
    }

    @Override // p168r4.q12
    /* renamed from: a */
    public final boolean mo4841a(bp2 bp2Var, no2 no2Var) {
        uo2 uo2Var;
        return (this.f24495a == null || (uo2Var = no2Var.f28432s) == null || uo2Var.f32342a == null) ? false : true;
    }

    /* renamed from: c */
    public final /* synthetic */ void m10963c(i00 i00Var) {
        this.f24495a.mo9231S3(i00Var);
    }

    @Override // p168r4.q12
    /* renamed from: b */
    public final h83<AdT> mo4840b(bp2 bp2Var, no2 no2Var) {
        vm0 vm0Var = new vm0();
        m72 m72Var = new m72();
        m72Var.m9469d(new g72(this, vm0Var, bp2Var, no2Var, m72Var));
        uo2 uo2Var = no2Var.f28432s;
        final i00 i00Var = new i00(m72Var, uo2Var.f32343b, uo2Var.f32342a);
        mt2 mt2Var = this.f24497c;
        return xs2.m5025d(new qs2(this, i00Var) { // from class: r4.f72

            /* renamed from: a */
            public final h72 f23405a;

            /* renamed from: b */
            public final i00 f23406b;

            {
                this.f23405a = this;
                this.f23406b = i00Var;
            }

            @Override // p168r4.qs2
            public final void zza() {
                this.f23405a.m10963c(this.f23406b);
            }
        }, this.f24496b, gt2.CUSTOM_RENDER_SYN, mt2Var).m11947j(gt2.CUSTOM_RENDER_ACK).m11952e(vm0Var).m11948i();
    }
}
