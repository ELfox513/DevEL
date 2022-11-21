package p168r4;
/* renamed from: r4.v31 */
/* loaded from: classes2.dex */
public final class v31 implements t73<i31> {

    /* renamed from: a */
    public final /* synthetic */ t73 f32562a;

    /* renamed from: b */
    public final /* synthetic */ w31 f32563b;

    public v31(w31 w31Var, t73 t73Var) {
        this.f32563b = w31Var;
        this.f32562a = t73Var;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        qm0.f30194e.execute(new Runnable(this.f32563b) { // from class: r4.t31

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
        this.f32562a.mo4627a(th);
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo4626b(i31 i31Var) {
        qm0.f30194e.execute(new Runnable(this.f32563b) { // from class: r4.t31

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
        this.f32562a.mo4626b(i31Var);
    }
}
