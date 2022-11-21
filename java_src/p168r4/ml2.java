package p168r4;

import java.util.concurrent.Executor;
import p168r4.i31;
import p168r4.r61;
/* renamed from: r4.ml2 */
/* loaded from: classes2.dex */
public final class ml2<R extends r61<AdT>, AdT extends i31> implements am2<R, kl2<R, AdT>> {

    /* renamed from: a */
    public final uq2 f27763a;

    /* renamed from: b */
    public final Executor f27764b;

    /* renamed from: c */
    public final t73<Void> f27765c = new jl2(this);

    public ml2(uq2 uq2Var, Executor executor) {
        this.f27763a = uq2Var;
        this.f27764b = executor;
    }

    @Override // p168r4.am2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ h83 mo7802a(bm2 bm2Var, zl2 zl2Var, Object obj) {
        return m9345b(bm2Var, zl2Var, null);
    }

    @Override // p168r4.am2
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ Object mo7799e() {
        return null;
    }

    /* renamed from: b */
    public final h83<kl2<R, AdT>> m9345b(bm2 bm2Var, zl2<R> zl2Var, final R r) {
        return y73.m4809f(y73.m4806i(o73.m8869E(new wl2(this.f27763a, r, this.f27764b).m5680c()), new e73(this, r) { // from class: r4.hl2

            /* renamed from: a */
            public final ml2 f24675a;

            /* renamed from: b */
            public final r61 f24676b;

            {
                this.f24675a = this;
                this.f24676b = r;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f24675a.m9344c(this.f24676b, (vl2) obj);
            }
        }, this.f27764b), Exception.class, new il2(this), this.f27764b);
    }

    /* renamed from: c */
    public final /* synthetic */ h83 m9344c(r61 r61Var, vl2 vl2Var) {
        dr2<?, ?> dr2Var;
        er2 er2Var = vl2Var.f32759b;
        og0 og0Var = vl2Var.f32758a;
        if (er2Var != null) {
            dr2Var = this.f27763a.mo6033e(er2Var);
        } else {
            dr2Var = null;
        }
        if (er2Var == null) {
            return y73.m4814a(null);
        }
        if (dr2Var != null && og0Var != null) {
            y73.m4799p(r61Var.mo7604r().m9498g(og0Var), this.f27765c, this.f27764b);
        }
        return y73.m4814a(new kl2(er2Var, og0Var, dr2Var));
    }
}
