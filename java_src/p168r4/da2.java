package p168r4;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
import p016b3.C0497k2;
import p235z2.C7601t;
/* renamed from: r4.da2 */
/* loaded from: classes2.dex */
public final class da2 implements t92<i31> {

    /* renamed from: a */
    public final fp2 f22203a;

    /* renamed from: b */
    public final bu0 f22204b;

    /* renamed from: c */
    public final Context f22205c;

    /* renamed from: d */
    public final q92 f22206d;

    /* renamed from: e */
    public w31 f22207e;

    public da2(bu0 bu0Var, Context context, q92 q92Var, fp2 fp2Var) {
        this.f22204b = bu0Var;
        this.f22205c = context;
        this.f22206d = q92Var;
        this.f22203a = fp2Var;
        fp2Var.m11415j(q92Var.m7927c());
    }

    @Override // p168r4.t92
    /* renamed from: a */
    public final boolean mo6510a() {
        w31 w31Var = this.f22207e;
        return w31Var != null && w31Var.m5899c();
    }

    /* renamed from: e */
    public final /* synthetic */ void m12186e() {
        this.f22206d.m7925e().mo5143B(dq2.m11989d(6, null, null));
    }

    /* renamed from: f */
    public final /* synthetic */ void m12185f() {
        this.f22206d.m7925e().mo5143B(dq2.m11989d(4, null, null));
    }

    @Override // p168r4.t92
    /* renamed from: b */
    public final boolean mo6509b(C6293tt c6293tt, String str, r92 r92Var, s92<? super i31> s92Var) {
        C7601t.m939d();
        if (C0497k2.m26311k(this.f22205c) && c6293tt.f31988D == null) {
            cm0.m12440c("Failed to load the ad because app ID is missing.");
            this.f22204b.mo8613h().execute(new Runnable(this) { // from class: r4.y92

                /* renamed from: a */
                public final da2 f34009a;

                {
                    this.f34009a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f34009a.m12185f();
                }
            });
            return false;
        } else if (str == null) {
            cm0.m12440c("Ad unit ID should not be null for NativeAdLoader.");
            this.f22204b.mo8613h().execute(new Runnable(this) { // from class: r4.z92

                /* renamed from: a */
                public final da2 f34403a;

                {
                    this.f34403a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f34403a.m12186e();
                }
            });
            return false;
        } else {
            yp2.m4610b(this.f22205c, c6293tt.f31999q);
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31096p6)).booleanValue() && c6293tt.f31999q) {
                this.f22204b.mo8647C().m10505c(true);
            }
            int i = ((u92) r92Var).f32233a;
            fp2 fp2Var = this.f22203a;
            fp2Var.m11433G(c6293tt);
            fp2Var.m11423b(i);
            hp2 m11413l = fp2Var.m11413l();
            if (m11413l.f24789n != null) {
                this.f22206d.m7927c().m12191z(m11413l.f24789n);
            }
            rh1 mo8587u = this.f22204b.mo8587u();
            s61 s61Var = new s61();
            s61Var.m7197e(this.f22205c);
            s61Var.m7196f(m11413l);
            mo8587u.mo7498j(s61Var.m7194h());
            zc1 zc1Var = new zc1();
            zc1Var.m4303w(this.f22206d.m7927c(), this.f22204b.mo8613h());
            mo8587u.mo7497l(zc1Var.m4323c());
            mo8587u.mo7500e(this.f22206d.m7928b());
            mo8587u.mo7499f(new e11(null));
            sh1 zza = mo8587u.zza();
            this.f22204b.mo8648B().m12971a(1);
            i83 i83Var = qm0.f30190a;
            ds3.m11980b(i83Var);
            ScheduledExecutorService mo8611i = this.f22204b.mo8611i();
            m41<p31> mo7161a = zza.mo7161a();
            w31 w31Var = new w31(i83Var, mo8611i, mo7161a.m9501d(mo7161a.m9502c()));
            this.f22207e = w31Var;
            w31Var.m5901a(new ca2(this, s92Var, zza));
            return true;
        }
    }
}
