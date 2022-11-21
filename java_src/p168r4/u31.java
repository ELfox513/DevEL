package p168r4;
/* renamed from: r4.u31 */
/* loaded from: classes2.dex */
public final class u31 implements t73<p31> {

    /* renamed from: a */
    public final /* synthetic */ t73 f32152a;

    /* renamed from: b */
    public final /* synthetic */ w31 f32153b;

    public u31(w31 w31Var, t73 t73Var) {
        this.f32153b = w31Var;
        this.f32152a = t73Var;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        this.f32152a.mo4627a(th);
        qm0.f30194e.execute(new Runnable(this.f32153b) { // from class: r4.t31

            /* renamed from: a */
            public final w31 f31635a;

            {
                this.f31635a = r1;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f31635a.m5897e();
            }
        });
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo4626b(p31 p31Var) {
        w31.m5900b(this.f32153b, p31Var.f29324a, this.f32152a);
    }
}
