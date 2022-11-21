package p168r4;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.concurrent.Executor;
import p168r4.i31;
import p168r4.o01;
import p168r4.q61;
import p220x3.C7297q;
/* renamed from: r4.pj2 */
/* loaded from: classes2.dex */
public abstract class pj2<AppOpenAd extends i31, AppOpenRequestComponent extends o01<AppOpenAd>, AppOpenRequestComponentBuilder extends q61<AppOpenRequestComponent>> implements t92<AppOpenAd> {

    /* renamed from: a */
    public final Context f29485a;

    /* renamed from: b */
    public final Executor f29486b;

    /* renamed from: c */
    public final bu0 f29487c;

    /* renamed from: d */
    public final fk2 f29488d;

    /* renamed from: e */
    public final am2<AppOpenRequestComponent, AppOpenAd> f29489e;

    /* renamed from: f */
    public final ViewGroup f29490f;

    /* renamed from: g */
    public final fp2 f29491g;

    /* renamed from: h */
    public h83<AppOpenAd> f29492h;

    public pj2(Context context, Executor executor, bu0 bu0Var, am2<AppOpenRequestComponent, AppOpenAd> am2Var, fk2 fk2Var, fp2 fp2Var) {
        this.f29485a = context;
        this.f29486b = executor;
        this.f29487c = bu0Var;
        this.f29489e = am2Var;
        this.f29488d = fk2Var;
        this.f29491g = fp2Var;
        this.f29490f = new FrameLayout(context);
    }

    @Override // p168r4.t92
    /* renamed from: a */
    public final boolean mo6510a() {
        h83<AppOpenAd> h83Var = this.f29492h;
        return (h83Var == null || h83Var.isDone()) ? false : true;
    }

    @Override // p168r4.t92
    /* renamed from: b */
    public final synchronized boolean mo6509b(C6293tt c6293tt, String str, r92 r92Var, s92<? super AppOpenAd> s92Var) {
        C7297q.m1888e("loadAd must be called on the main UI thread.");
        if (str == null) {
            cm0.m12440c("Ad unit ID should not be null for app open ad.");
            this.f29486b.execute(new Runnable(this) { // from class: r4.ij2

                /* renamed from: a */
                public final pj2 f25137a;

                {
                    this.f25137a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f25137a.m8294j();
                }
            });
            return false;
        } else if (this.f29492h != null) {
            return false;
        } else {
            yp2.m4610b(this.f29485a, c6293tt.f31999q);
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31096p6)).booleanValue() && c6293tt.f31999q) {
                this.f29487c.mo8647C().m10505c(true);
            }
            fp2 fp2Var = this.f29491g;
            fp2Var.m11428L(str);
            fp2Var.m11431I(C6478yt.m4573a1());
            fp2Var.m11433G(c6293tt);
            hp2 m11413l = fp2Var.m11413l();
            nj2 nj2Var = new nj2(null);
            nj2Var.f28310a = m11413l;
            h83<AppOpenAd> mo7802a = this.f29489e.mo7802a(new bm2(nj2Var, null), new zl2(this) { // from class: r4.kj2

                /* renamed from: a */
                public final pj2 f26439a;

                {
                    this.f26439a = this;
                }

                @Override // p168r4.zl2
                /* renamed from: a */
                public final q61 mo4187a(yl2 yl2Var) {
                    return this.f26439a.m8293k(yl2Var);
                }
            }, null);
            this.f29492h = mo7802a;
            y73.m4799p(mo7802a, new mj2(this, s92Var, nj2Var), this.f29486b);
            return true;
        }
    }

    /* renamed from: c */
    public abstract AppOpenRequestComponentBuilder mo4691c(e11 e11Var, u61 u61Var, bd1 bd1Var);

    /* renamed from: i */
    public final void m8295i(C5739eu c5739eu) {
        this.f29491g.m11419f(c5739eu);
    }

    /* renamed from: l */
    public final synchronized AppOpenRequestComponentBuilder m8293k(yl2 yl2Var) {
        nj2 nj2Var = (nj2) yl2Var;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30884P5)).booleanValue()) {
            e11 e11Var = new e11(this.f29490f);
            s61 s61Var = new s61();
            s61Var.m7197e(this.f29485a);
            s61Var.m7196f(nj2Var.f28310a);
            u61 m7194h = s61Var.m7194h();
            zc1 zc1Var = new zc1();
            zc1Var.m4304v(this.f29488d, this.f29486b);
            zc1Var.m4301y(this.f29488d, this.f29486b);
            return mo4691c(e11Var, m7194h, zc1Var.m4323c());
        }
        fk2 m11497d = fk2.m11497d(this.f29488d);
        zc1 zc1Var2 = new zc1();
        zc1Var2.m4305u(m11497d, this.f29486b);
        zc1Var2.m4328A(m11497d, this.f29486b);
        zc1Var2.m4327B(m11497d, this.f29486b);
        zc1Var2.m4326C(m11497d, this.f29486b);
        zc1Var2.m4304v(m11497d, this.f29486b);
        zc1Var2.m4301y(m11497d, this.f29486b);
        zc1Var2.m4325a(m11497d);
        e11 e11Var2 = new e11(this.f29490f);
        s61 s61Var2 = new s61();
        s61Var2.m7197e(this.f29485a);
        s61Var2.m7196f(nj2Var.f28310a);
        return mo4691c(e11Var2, s61Var2.m7194h(), zc1Var2.m4323c());
    }

    /* renamed from: j */
    public final /* synthetic */ void m8294j() {
        this.f29488d.mo5143B(dq2.m11989d(6, null, null));
    }
}
