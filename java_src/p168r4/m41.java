package p168r4;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import p235z2.C7601t;
/* renamed from: r4.m41 */
/* loaded from: classes2.dex */
public final class m41<T> {

    /* renamed from: a */
    public final cx1 f27473a;

    /* renamed from: b */
    public final hp2 f27474b;

    /* renamed from: c */
    public final mt2 f27475c;

    /* renamed from: d */
    public final wx0 f27476d;

    /* renamed from: e */
    public final l52<T> f27477e;

    /* renamed from: f */
    public final tc1 f27478f;

    /* renamed from: g */
    public bp2 f27479g;

    /* renamed from: h */
    public final iy1 f27480h;

    /* renamed from: i */
    public final o61 f27481i;

    /* renamed from: j */
    public final Executor f27482j;

    /* renamed from: k */
    public final vx1 f27483k;

    /* renamed from: l */
    public final v12 f27484l;

    public m41(cx1 cx1Var, hp2 hp2Var, mt2 mt2Var, wx0 wx0Var, l52<T> l52Var, tc1 tc1Var, bp2 bp2Var, iy1 iy1Var, o61 o61Var, Executor executor, vx1 vx1Var, v12 v12Var) {
        this.f27473a = cx1Var;
        this.f27474b = hp2Var;
        this.f27475c = mt2Var;
        this.f27476d = wx0Var;
        this.f27477e = l52Var;
        this.f27478f = tc1Var;
        this.f27479g = bp2Var;
        this.f27480h = iy1Var;
        this.f27481i = o61Var;
        this.f27482j = executor;
        this.f27483k = vx1Var;
        this.f27484l = v12Var;
    }

    /* renamed from: e */
    public final tc1 m9500e() {
        return this.f27478f;
    }

    /* renamed from: h */
    public final C5996lt m9497h(Throwable th) {
        return dq2.m11991b(th, this.f27484l);
    }

    /* renamed from: i */
    public final void m9496i(bp2 bp2Var) {
        this.f27479g = bp2Var;
    }

    /* renamed from: k */
    public final /* synthetic */ bp2 m9494k(bp2 bp2Var) {
        this.f27476d.m5554a(bp2Var);
        return bp2Var;
    }

    /* renamed from: b */
    public final h83<bp2> m9503b(h83<og0> h83Var) {
        bp2 bp2Var = this.f27479g;
        if (bp2Var != null) {
            mt2 mt2Var = this.f27475c;
            return xs2.m5028a(y73.m4814a(bp2Var), gt2.SERVER_TRANSACTION, mt2Var).m11948i();
        }
        C7601t.m933j().m8241e();
        return this.f27475c.m11682e(gt2.SERVER_TRANSACTION, h83Var).m11954c(h41.m10985c(this.f27483k)).m11948i();
    }

    /* renamed from: c */
    public final h83<bp2> m9502c() {
        C6293tt c6293tt = this.f27474b.f24779d;
        if (c6293tt.f31993I == null && c6293tt.f31988D == null) {
            return m9503b(this.f27481i.m8877b());
        }
        mt2 mt2Var = this.f27475c;
        return xs2.m5028a(this.f27473a.m12284c(), gt2.SERVER_TRANSACTION, mt2Var).m11948i();
    }

    /* renamed from: d */
    public final h83<T> m9501d(h83<bp2> h83Var) {
        dt2 m11954c = this.f27475c.m11682e(gt2.RENDERER, h83Var).m11955b(new ps2(this) { // from class: r4.i41

            /* renamed from: a */
            public final m41 f24963a;

            {
                this.f24963a = this;
            }

            @Override // p168r4.ps2
            /* renamed from: a */
            public final Object mo4065a(Object obj) {
                bp2 bp2Var = (bp2) obj;
                this.f24963a.m9494k(bp2Var);
                return bp2Var;
            }
        }).m11954c(this.f27477e);
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30874O3)).booleanValue()) {
            m11954c = m11954c.m11949h(((Integer) C5592av.m12935c().m8098c(C6225rz.f30882P3)).intValue(), TimeUnit.SECONDS);
        }
        return m11954c.m11948i();
    }

    /* renamed from: f */
    public final h83<og0> m9499f(final br2 br2Var) {
        rs2 m11948i = this.f27475c.m11682e(gt2.GET_CACHE_KEY, this.f27481i.m8877b()).m11954c(new e73(this, br2Var) { // from class: r4.j41

            /* renamed from: a */
            public final m41 f25886a;

            /* renamed from: b */
            public final br2 f25887b;

            {
                this.f25886a = this;
                this.f25887b = br2Var;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f25886a.m9495j(this.f25887b, (og0) obj);
            }
        }).m11948i();
        y73.m4799p(m11948i, new k41(this), this.f27482j);
        return m11948i;
    }

    /* renamed from: g */
    public final h83<Void> m9498g(og0 og0Var) {
        rs2 m11948i = this.f27475c.m11682e(gt2.NOTIFY_CACHE_HIT, this.f27480h.m10463b(og0Var)).m11948i();
        y73.m4799p(m11948i, new l41(this), this.f27482j);
        return m11948i;
    }

    /* renamed from: j */
    public final /* synthetic */ h83 m9495j(br2 br2Var, og0 og0Var) {
        og0Var.f28986t = br2Var;
        return this.f27480h.m10464a(og0Var);
    }
}
