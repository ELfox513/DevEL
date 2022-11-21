package p168r4;

import java.util.concurrent.Executor;
import p168r4.i31;
import p168r4.r61;
/* renamed from: r4.fl2 */
/* loaded from: classes2.dex */
public final class fl2<R extends r61<AdT>, AdT extends i31> implements am2<R, AdT> {

    /* renamed from: a */
    public final am2<R, AdT> f23549a;

    /* renamed from: b */
    public final am2<R, kl2<R, AdT>> f23550b;

    /* renamed from: c */
    public final qr2<R, AdT> f23551c;

    /* renamed from: d */
    public final String f23552d;

    /* renamed from: e */
    public R f23553e;

    /* renamed from: f */
    public final Executor f23554f;

    public fl2(am2<R, AdT> am2Var, am2<R, kl2<R, AdT>> am2Var2, qr2<R, AdT> qr2Var, String str, Executor executor) {
        this.f23549a = am2Var;
        this.f23550b = am2Var2;
        this.f23551c = qr2Var;
        this.f23552d = str;
        this.f23554f = executor;
    }

    @Override // p168r4.am2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ h83 mo7802a(bm2 bm2Var, zl2 zl2Var, Object obj) {
        return m11482c(bm2Var, zl2Var, null);
    }

    @Override // p168r4.am2
    /* renamed from: b */
    public final synchronized R mo7799e() {
        return this.f23553e;
    }

    /* renamed from: c */
    public final synchronized h83<AdT> m11482c(final bm2 bm2Var, final zl2<R> zl2Var, R r) {
        q61<R> mo4187a = zl2Var.mo4187a(bm2Var.f21116b);
        mo4187a.mo8017p(new gl2(this.f23552d));
        final R mo8018d = mo4187a.mo8018d();
        mo8018d.mo7605Z();
        mo8018d.mo7605Z();
        C6293tt c6293tt = mo8018d.mo7605Z().f24779d;
        if (c6293tt.f31988D == null && c6293tt.f31993I == null) {
            hp2 mo7605Z = mo8018d.mo7605Z();
            final el2 el2Var = new el2(zl2Var, bm2Var, mo7605Z.f24779d, mo7605Z.f24781f, this.f23554f, mo7605Z.f24785j, null);
            return y73.m4806i(o73.m8869E(((ml2) this.f23550b).m9345b(bm2Var, zl2Var, mo8018d)), new e73(this, bm2Var, el2Var, zl2Var, mo8018d) { // from class: r4.bl2

                /* renamed from: a */
                public final fl2 f21097a;

                /* renamed from: b */
                public final bm2 f21098b;

                /* renamed from: c */
                public final el2 f21099c;

                /* renamed from: d */
                public final zl2 f21100d;

                /* renamed from: e */
                public final r61 f21101e;

                {
                    this.f21097a = this;
                    this.f21098b = bm2Var;
                    this.f21099c = el2Var;
                    this.f21100d = zl2Var;
                    this.f21101e = mo8018d;
                }

                @Override // p168r4.e73
                /* renamed from: a */
                public final h83 mo1029a(Object obj) {
                    return this.f21097a.m11480f(this.f21098b, this.f21099c, this.f21100d, this.f21101e, (kl2) obj);
                }
            }, this.f23554f);
        }
        this.f23553e = mo8018d;
        return ((ql2) this.f23549a).m7800c(bm2Var, zl2Var, mo8018d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public final /* synthetic */ h83 m11481d(nr2 nr2Var) {
        Object obj;
        if (nr2Var != null && nr2Var.f28455a != null && (obj = nr2Var.f28456b) != null) {
            C6363vp m12730C = C5624bq.m12730C();
            C6289tp m6405C = C6326up.m6405C();
            m6405C.m6766A(2);
            m6405C.m6765v(C6474yp.m4620D());
            m12730C.m6042v(m6405C);
            nr2Var.f28455a.f22410a.mo7604r().m9500e().mo5883m0(m12730C.m9614o());
            return m11479g(nr2Var.f28455a, ((el2) obj).f23073b);
        }
        throw new sv1(1, "Empty prefetch");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public final /* synthetic */ h83 m11480f(bm2 bm2Var, el2 el2Var, zl2 zl2Var, r61 r61Var, kl2 kl2Var) {
        if (kl2Var != null) {
            el2 el2Var2 = new el2(el2Var.f23072a, el2Var.f23073b, el2Var.f23074c, el2Var.f23075d, el2Var.f23076e, el2Var.f23077f, kl2Var.f26477a);
            if (kl2Var.f26479c != null) {
                this.f23553e = null;
                this.f23551c.m7690c(el2Var2);
                return m11479g(kl2Var.f26479c, bm2Var);
            }
            h83<nr2<R, AdT>> m7689d = this.f23551c.m7689d(el2Var2);
            if (m7689d != null) {
                this.f23553e = null;
                return y73.m4806i(m7689d, new e73(this) { // from class: r4.cl2

                    /* renamed from: a */
                    public final fl2 f21578a;

                    {
                        this.f21578a = this;
                    }

                    @Override // p168r4.e73
                    /* renamed from: a */
                    public final h83 mo1029a(Object obj) {
                        return this.f21578a.m11481d((nr2) obj);
                    }
                }, this.f23554f);
            }
            this.f23551c.m7690c(el2Var2);
            bm2Var = new bm2(bm2Var.f21116b, kl2Var.f26478b);
        }
        h83 m7800c = ((ql2) this.f23549a).m7800c(bm2Var, zl2Var, r61Var);
        this.f23553e = r61Var;
        return m7800c;
    }

    /* renamed from: g */
    public final h83<AdT> m11479g(dr2<R, AdT> dr2Var, bm2 bm2Var) {
        R r = dr2Var.f22410a;
        this.f23553e = r;
        if (dr2Var.f22412c != null) {
            if (r.mo7606P() != null) {
                dr2Var.f22412c.m10731e().mo5284s(dr2Var.f22410a.mo7606P());
            }
            return y73.m4814a(dr2Var.f22412c);
        }
        r.mo7604r().m9496i(dr2Var.f22411b);
        return ((ql2) this.f23549a).m7800c(bm2Var, null, dr2Var.f22410a);
    }
}
