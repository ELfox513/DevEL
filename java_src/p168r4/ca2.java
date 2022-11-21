package p168r4;
/* renamed from: r4.ca2 */
/* loaded from: classes2.dex */
public final class ca2 implements t73<i31> {

    /* renamed from: a */
    public final /* synthetic */ s92 f21453a;

    /* renamed from: b */
    public final /* synthetic */ sh1 f21454b;

    /* renamed from: c */
    public final /* synthetic */ da2 f21455c;

    public ca2(da2 da2Var, s92 s92Var, sh1 sh1Var) {
        this.f21455c = da2Var;
        this.f21453a = s92Var;
        this.f21454b = sh1Var;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        bu0 bu0Var;
        final C5996lt m9497h = this.f21454b.mo7161a().m9497h(th);
        this.f21454b.mo7160b().mo5143B(m9497h);
        bu0Var = this.f21455c.f22204b;
        bu0Var.mo8613h().execute(new Runnable(this, m9497h) { // from class: r4.ba2

            /* renamed from: a */
            public final ca2 f20930a;

            /* renamed from: b */
            public final C5996lt f20931b;

            {
                this.f20930a = this;
                this.f20931b = m9497h;
            }

            @Override // java.lang.Runnable
            public final void run() {
                q92 q92Var;
                ca2 ca2Var = this.f20930a;
                C5996lt c5996lt = this.f20931b;
                q92Var = ca2Var.f21455c.f22206d;
                q92Var.m7925e().mo5143B(c5996lt);
            }
        });
        yp2.m4611a(m9497h.f27361a, th, "NativeAdLoader.onFailure");
        this.f21453a.zza();
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo4626b(i31 i31Var) {
        q92 q92Var;
        bu0 bu0Var;
        i31 i31Var2 = i31Var;
        synchronized (this.f21455c) {
            ub1 m10730f = i31Var2.m10730f();
            q92Var = this.f21455c.f22206d;
            m10730f.m6564a(q92Var.m7927c());
            this.f21453a.mo7189b(i31Var2);
            bu0Var = this.f21455c.f22204b;
            bu0Var.mo8613h().execute(new Runnable(this) { // from class: r4.aa2

                /* renamed from: a */
                public final ca2 f20437a;

                {
                    this.f20437a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    q92 q92Var2;
                    q92Var2 = this.f20437a.f21455c.f22206d;
                    q92Var2.m7926d().mo4268d();
                }
            });
        }
    }
}
