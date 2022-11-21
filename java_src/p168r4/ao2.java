package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
/* renamed from: r4.ao2 */
/* loaded from: classes2.dex */
public final class ao2 implements t92<uo1> {

    /* renamed from: a */
    public final Context f20563a;

    /* renamed from: b */
    public final Executor f20564b;

    /* renamed from: c */
    public final bu0 f20565c;

    /* renamed from: d */
    public final qn2 f20566d;

    /* renamed from: e */
    public final am2<ap1, uo1> f20567e;

    /* renamed from: f */
    public final cp2 f20568f;

    /* renamed from: g */
    public final fp2 f20569g;

    /* renamed from: h */
    public h83<uo1> f20570h;

    public ao2(Context context, Executor executor, bu0 bu0Var, am2<ap1, uo1> am2Var, qn2 qn2Var, fp2 fp2Var, cp2 cp2Var) {
        this.f20563a = context;
        this.f20564b = executor;
        this.f20565c = bu0Var;
        this.f20567e = am2Var;
        this.f20566d = qn2Var;
        this.f20569g = fp2Var;
        this.f20568f = cp2Var;
    }

    @Override // p168r4.t92
    /* renamed from: a */
    public final boolean mo6510a() {
        throw null;
    }

    /* renamed from: i */
    public final void m12981i(int i) {
        this.f20569g.m11425O().m6044b(i);
    }

    @Override // p168r4.t92
    /* renamed from: b */
    public final boolean mo6509b(C6293tt c6293tt, String str, r92 r92Var, s92<? super uo1> s92Var) {
        mh0 mh0Var = new mh0(c6293tt, str);
        if (mh0Var.f27725b == null) {
            cm0.m12440c("Ad unit ID should not be null for rewarded video ad.");
            this.f20564b.execute(new Runnable(this) { // from class: r4.tn2

                /* renamed from: a */
                public final ao2 f31921a;

                {
                    this.f31921a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f31921a.m12983g();
                }
            });
        } else {
            h83<uo1> h83Var = this.f20570h;
            if (h83Var == null || h83Var.isDone()) {
                yp2.m4610b(this.f20563a, mh0Var.f27724a.f31999q);
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31096p6)).booleanValue() && mh0Var.f27724a.f31999q) {
                    this.f20565c.mo8647C().m10505c(true);
                }
                fp2 fp2Var = this.f20569g;
                fp2Var.m11428L(mh0Var.f27725b);
                fp2Var.m11431I(C6478yt.m4574Z0());
                fp2Var.m11433G(mh0Var.f27724a);
                hp2 m11413l = fp2Var.m11413l();
                zn2 zn2Var = new zn2(null);
                zn2Var.f34691a = m11413l;
                zn2Var.f34692b = null;
                h83<uo1> mo7802a = this.f20567e.mo7802a(new bm2(zn2Var, null), new zl2(this) { // from class: r4.un2

                    /* renamed from: a */
                    public final ao2 f32328a;

                    {
                        this.f32328a = this;
                    }

                    @Override // p168r4.zl2
                    /* renamed from: a */
                    public final q61 mo4187a(yl2 yl2Var) {
                        return this.f32328a.m12982h(yl2Var);
                    }
                }, null);
                this.f20570h = mo7802a;
                y73.m4799p(mo7802a, new xn2(this, s92Var, zn2Var), this.f20564b);
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    public final /* synthetic */ void m12983g() {
        this.f20566d.mo5143B(dq2.m11989d(6, null, null));
    }

    /* renamed from: j */
    public final zo1 m12982h(yl2 yl2Var) {
        zo1 mo8585v = this.f20565c.mo8585v();
        s61 s61Var = new s61();
        s61Var.m7197e(this.f20563a);
        s61Var.m7196f(((zn2) yl2Var).f34691a);
        s61Var.m7193i(this.f20568f);
        mo8585v.mo4158m(s61Var.m7194h());
        mo8585v.mo4157n(new zc1().m4323c());
        return mo8585v;
    }
}
