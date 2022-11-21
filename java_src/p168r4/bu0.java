package p168r4;

import android.content.Context;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import p016b3.C0540v1;
import p077h3.BinderC3998g0;
import p077h3.C4008m;
import p077h3.InterfaceC4012q;
import p235z2.C7601t;
/* renamed from: r4.bu0 */
/* loaded from: classes2.dex */
public abstract class bu0 implements ux0 {

    /* renamed from: a */
    public static bu0 f21219a;

    /* renamed from: A */
    public abstract k12 mo8649A();

    /* renamed from: B */
    public abstract aq2<fo1> mo8648B();

    /* renamed from: C */
    public abstract iv1 mo8647C();

    @Override // p168r4.ux0
    /* renamed from: a */
    public final xg2 mo6295a(og0 og0Var, int i) {
        return mo8622b(new fi2(og0Var, i));
    }

    /* renamed from: b */
    public abstract xg2 mo8622b(fi2 fi2Var);

    /* renamed from: c */
    public abstract ut1 mo8620c();

    /* renamed from: g */
    public abstract xt2 mo8615g();

    /* renamed from: h */
    public abstract Executor mo8613h();

    /* renamed from: i */
    public abstract ScheduledExecutorService mo8611i();

    /* renamed from: j */
    public abstract i83 mo8609j();

    /* renamed from: k */
    public abstract aa1 mo8607k();

    /* renamed from: l */
    public abstract gq1 mo8605l();

    /* renamed from: m */
    public abstract ax0 mo8603m();

    /* renamed from: n */
    public abstract e21 mo8601n();

    /* renamed from: o */
    public abstract wk2 mo8599o();

    /* renamed from: p */
    public abstract i01 mo8597p();

    /* renamed from: q */
    public abstract t01 mo8595q();

    /* renamed from: r */
    public abstract gj2 mo8593r();

    /* renamed from: s */
    public abstract ug1 mo8591s();

    /* renamed from: t */
    public abstract rm2 mo8589t();

    /* renamed from: u */
    public abstract rh1 mo8587u();

    /* renamed from: v */
    public abstract zo1 mo8585v();

    /* renamed from: w */
    public abstract go2 mo8583w();

    /* renamed from: x */
    public abstract InterfaceC4012q mo8581x();

    /* renamed from: y */
    public abstract BinderC3998g0 mo8579y();

    /* renamed from: z */
    public abstract C4008m mo8577z();

    @Deprecated
    /* renamed from: e */
    public static bu0 m12694e(Context context, int i) {
        synchronized (bu0.class) {
            bu0 bu0Var = f21219a;
            if (bu0Var != null) {
                return bu0Var;
            }
            return m12693f(new im0(213806000, i, true, false), context, new bv0());
        }
    }

    @Deprecated
    /* renamed from: f */
    public static synchronized bu0 m12693f(im0 im0Var, Context context, pw0 pw0Var) {
        bu0 bu0Var;
        synchronized (bu0.class) {
            if (f21219a == null) {
                sv0 sv0Var = new sv0(null);
                cu0 cu0Var = new cu0();
                cu0Var.m12361d(im0Var);
                cu0Var.m12360e(context);
                sv0Var.m6992a(new eu0(cu0Var, null));
                sv0Var.m6991b(new qw0(pw0Var));
                f21219a = sv0Var.m6990c();
                C6225rz.m7278a(context);
                C7601t.m935h().m9058i(context, im0Var);
                C7601t.m933j().m8242d(context);
                C7601t.m939d().m26341N(context);
                C7601t.m939d().m26340O(context);
                C7601t.m939d().m26330Y(context);
                C0540v1.m26252a(context);
                C7601t.m936g().m10860a(context);
                C7601t.m918y().m26283a(context);
                jk0.m10256d(context);
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31158x4)).booleanValue()) {
                    if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31090p0)).booleanValue()) {
                        C5882ip c5882ip = new C5882ip(new C6029mp(context));
                        b02 b02Var = new b02(new xz1(context), f21219a.mo8609j());
                        C7601t.m939d();
                        new u02(context, im0Var, c5882ip, b02Var, UUID.randomUUID().toString(), f21219a.mo8615g()).m6671a(C7601t.m935h().m9051p().mo26190y());
                    }
                }
            }
            bu0Var = f21219a;
        }
        return bu0Var;
    }

    /* renamed from: d */
    public static bu0 m12695d(Context context, fb0 fb0Var, int i) {
        bu0 m12694e = m12694e(context, i);
        m12694e.mo8605l().m11064a(fb0Var);
        return m12694e;
    }
}
