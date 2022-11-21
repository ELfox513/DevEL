package p168r4;
/* renamed from: r4.na0 */
/* loaded from: classes2.dex */
public final class na0 {

    /* renamed from: a */
    public final p90 f28233a;

    /* renamed from: b */
    public h83<q90> f28234b;

    public na0(p90 p90Var) {
        this.f28233a = p90Var;
    }

    /* renamed from: c */
    public final void m9136c(final String str, final u50<? super q90> u50Var) {
        this.f28234b = y73.m4805j(this.f28234b, new p03(str, u50Var) { // from class: r4.ma0

            /* renamed from: a */
            public final String f27557a;

            /* renamed from: b */
            public final u50 f27558b;

            {
                this.f27557a = str;
                this.f27558b = u50Var;
            }

            @Override // p168r4.p03
            public final Object apply(Object obj) {
                q90 q90Var = (q90) obj;
                q90Var.mo7572U(this.f27557a, this.f27558b);
                return q90Var;
            }
        }, qm0.f30195f);
    }

    /* renamed from: d */
    public final void m9135d() {
        if (this.f28234b == null) {
            final vm0 vm0Var = new vm0();
            this.f28234b = vm0Var;
            this.f28233a.m8440g(null).m12411b(new zm0(vm0Var) { // from class: r4.ja0

                /* renamed from: a */
                public final vm0 f25973a;

                {
                    this.f25973a = vm0Var;
                }

                @Override // p168r4.zm0
                /* renamed from: a */
                public final void mo4185a(Object obj) {
                    this.f25973a.m6086e((q90) obj);
                }
            }, new xm0(vm0Var) { // from class: r4.ka0

                /* renamed from: a */
                public final vm0 f26354a;

                {
                    this.f26354a = vm0Var;
                }

                @Override // p168r4.xm0
                public final void zza() {
                    this.f26354a.m6085f(new s90("Cannot get Javascript Engine"));
                }
            });
        }
    }

    /* renamed from: a */
    public final <I, O> qa0<I, O> m9138a(String str, w90<I> w90Var, v90<O> v90Var) {
        m9135d();
        return new qa0<>(this.f28234b, "google.afma.activeView.handleUpdate", w90Var, v90Var);
    }

    /* renamed from: b */
    public final void m9137b(final String str, final u50<? super q90> u50Var) {
        m9135d();
        this.f28234b = y73.m4806i(this.f28234b, new e73(str, u50Var) { // from class: r4.la0

            /* renamed from: a */
            public final String f27147a;

            /* renamed from: b */
            public final u50 f27148b;

            {
                this.f27147a = str;
                this.f27148b = u50Var;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                q90 q90Var = (q90) obj;
                q90Var.mo7573A0(this.f27147a, this.f27148b);
                return y73.m4814a(q90Var);
            }
        }, qm0.f30195f);
    }
}
