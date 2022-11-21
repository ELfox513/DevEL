package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
/* renamed from: r4.pm2 */
/* loaded from: classes2.dex */
public final class pm2 implements t92<xf1> {

    /* renamed from: a */
    public final Context f29522a;

    /* renamed from: b */
    public final Executor f29523b;

    /* renamed from: c */
    public final bu0 f29524c;

    /* renamed from: d */
    public final d92 f29525d;

    /* renamed from: e */
    public final qn2 f29526e;

    /* renamed from: f */
    public n00 f29527f;

    /* renamed from: g */
    public final fp2 f29528g;

    /* renamed from: h */
    public h83<xf1> f29529h;

    public pm2(Context context, Executor executor, bu0 bu0Var, d92 d92Var, qn2 qn2Var, fp2 fp2Var) {
        this.f29522a = context;
        this.f29523b = executor;
        this.f29524c = bu0Var;
        this.f29525d = d92Var;
        this.f29528g = fp2Var;
        this.f29526e = qn2Var;
    }

    @Override // p168r4.t92
    /* renamed from: a */
    public final boolean mo6510a() {
        h83<xf1> h83Var = this.f29529h;
        return (h83Var == null || h83Var.isDone()) ? false : true;
    }

    @Override // p168r4.t92
    /* renamed from: b */
    public final boolean mo6509b(C6293tt c6293tt, String str, r92 r92Var, s92<? super xf1> s92Var) {
        vg1 zza;
        if (str == null) {
            cm0.m12440c("Ad unit ID should not be null for interstitial ad.");
            this.f29523b.execute(new Runnable(this) { // from class: r4.im2

                /* renamed from: a */
                public final pm2 f25192a;

                {
                    this.f25192a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f25192a.m8271h();
                }
            });
            return false;
        } else if (mo6510a()) {
            return false;
        } else {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31096p6)).booleanValue() && c6293tt.f31999q) {
                this.f29524c.mo8647C().m10505c(true);
            }
            C6478yt c6478yt = ((hm2) r92Var).f24695a;
            fp2 fp2Var = this.f29528g;
            fp2Var.m11428L(str);
            fp2Var.m11431I(c6478yt);
            fp2Var.m11433G(c6293tt);
            hp2 m11413l = fp2Var.m11413l();
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30892Q5)).booleanValue()) {
                ug1 mo8591s = this.f29524c.mo8591s();
                s61 s61Var = new s61();
                s61Var.m7197e(this.f29522a);
                s61Var.m7196f(m11413l);
                mo8591s.mo6522b(s61Var.m7194h());
                zc1 zc1Var = new zc1();
                zc1Var.m4324b(this.f29525d, this.f29523b);
                zc1Var.m4303w(this.f29525d, this.f29523b);
                mo8591s.mo6521i(zc1Var.m4323c());
                mo8591s.mo6520q(new j72(this.f29527f));
                zza = mo8591s.zza();
            } else {
                zc1 zc1Var2 = new zc1();
                qn2 qn2Var = this.f29526e;
                if (qn2Var != null) {
                    zc1Var2.m4307s(qn2Var, this.f29523b);
                    zc1Var2.m4306t(this.f29526e, this.f29523b);
                    zc1Var2.m4305u(this.f29526e, this.f29523b);
                }
                ug1 mo8591s2 = this.f29524c.mo8591s();
                s61 s61Var2 = new s61();
                s61Var2.m7197e(this.f29522a);
                s61Var2.m7196f(m11413l);
                mo8591s2.mo6522b(s61Var2.m7194h());
                zc1Var2.m4324b(this.f29525d, this.f29523b);
                zc1Var2.m4307s(this.f29525d, this.f29523b);
                zc1Var2.m4306t(this.f29525d, this.f29523b);
                zc1Var2.m4305u(this.f29525d, this.f29523b);
                zc1Var2.m4302x(this.f29525d, this.f29523b);
                zc1Var2.m4301y(this.f29525d, this.f29523b);
                zc1Var2.m4303w(this.f29525d, this.f29523b);
                zc1Var2.m4326C(this.f29525d, this.f29523b);
                zc1Var2.m4304v(this.f29525d, this.f29523b);
                mo8591s2.mo6521i(zc1Var2.m4323c());
                mo8591s2.mo6520q(new j72(this.f29527f));
                zza = mo8591s2.zza();
            }
            m41<xf1> mo6160b = zza.mo6160b();
            h83<xf1> m9501d = mo6160b.m9501d(mo6160b.m9502c());
            this.f29529h = m9501d;
            y73.m4799p(m9501d, new om2(this, s92Var, zza), this.f29523b);
            return true;
        }
    }

    /* renamed from: g */
    public final void m8272g(n00 n00Var) {
        this.f29527f = n00Var;
    }

    /* renamed from: h */
    public final /* synthetic */ void m8271h() {
        this.f29525d.mo5143B(dq2.m11989d(6, null, null));
    }
}
