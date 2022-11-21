package p168r4;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import p016b3.C0460b1;
import p060f4.BinderC3514b;
import p184t2.C6729x;
/* renamed from: r4.w22 */
/* loaded from: classes2.dex */
public final class w22 implements y12<h11, zp2, n32> {

    /* renamed from: a */
    public final Context f33026a;

    /* renamed from: b */
    public final f21 f33027b;

    /* renamed from: c */
    public final Executor f33028c;

    public w22(Context context, f21 f21Var, Executor executor) {
        this.f33026a = context;
        this.f33027b = f21Var;
        this.f33028c = executor;
    }

    @Override // p168r4.y12
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ h11 mo4458a(bp2 bp2Var, final no2 no2Var, t12<zp2, n32> t12Var) {
        final View m4140d;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30772B5)).booleanValue() && no2Var.f28411d0) {
            ob0 m4138f = t12Var.f31617b.m4138f();
            if (m4138f != null) {
                try {
                    m4140d = (View) BinderC3514b.m18740t0(m4138f.mo8843c());
                    boolean mo8842d = m4138f.mo8842d();
                    if (m4140d != null) {
                        if (mo8842d) {
                            try {
                                m4140d = (View) y73.m4806i(y73.m4814a(null), new e73(this, m4140d, no2Var) { // from class: r4.v22

                                    /* renamed from: a */
                                    public final w22 f32553a;

                                    /* renamed from: b */
                                    public final View f32554b;

                                    /* renamed from: c */
                                    public final no2 f32555c;

                                    {
                                        this.f32553a = this;
                                        this.f32554b = m4140d;
                                        this.f32555c = no2Var;
                                    }

                                    @Override // p168r4.e73
                                    /* renamed from: a */
                                    public final h83 mo1029a(Object obj) {
                                        return this.f32553a.m5932c(this.f32554b, this.f32555c, obj);
                                    }
                                }, qm0.f30194e).get();
                            } catch (InterruptedException | ExecutionException e) {
                                throw new mp2(e);
                            }
                        }
                    } else {
                        throw new mp2(new Exception("BannerAdapterWrapper interscrollerView should not be null"));
                    }
                } catch (RemoteException e2) {
                    throw new mp2(e2);
                }
            } else {
                cm0.m12440c("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad.");
                throw new mp2(new Exception("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."));
            }
        } else {
            m4140d = t12Var.f31617b.m4140d();
        }
        i11 mo8151d = this.f33027b.mo8151d(new x31(bp2Var, no2Var, t12Var.f31616a), new o11(m4140d, null, u22.m6646a(t12Var.f31617b), no2Var.f28434u.get(0)));
        mo8151d.mo8991j().m5335T0(m4140d);
        mo8151d.mo5996a().m4759K0(new sy0(t12Var.f31617b), this.f33028c);
        t12Var.f31618c.m9201g7(mo8151d.mo5995f());
        return mo8151d.mo8993h();
    }

    @Override // p168r4.y12
    /* renamed from: b */
    public final void mo4457b(bp2 bp2Var, no2 no2Var, t12<zp2, n32> t12Var) {
        C6478yt m9587b;
        C6478yt c6478yt = bp2Var.f21153a.f34161a.f24780e;
        if (c6478yt.f34210y) {
            m9587b = new C6478yt(this.f33026a, C6729x.m3536b(c6478yt.f34201p, c6478yt.f34198b));
        } else {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30772B5)).booleanValue() && no2Var.f28411d0) {
                m9587b = new C6478yt(this.f33026a, C6729x.m3535c(c6478yt.f34201p, c6478yt.f34198b));
            } else {
                m9587b = lp2.m9587b(this.f33026a, no2Var.f28434u);
            }
        }
        C6478yt c6478yt2 = m9587b;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30772B5)).booleanValue() && no2Var.f28411d0) {
            t12Var.f31617b.m4139e(this.f33026a, c6478yt2, bp2Var.f21153a.f34161a.f24779d, no2Var.f28435v.toString(), C0460b1.m26418l(no2Var.f28432s), t12Var.f31618c);
        } else {
            t12Var.f31617b.m4134j(this.f33026a, c6478yt2, bp2Var.f21153a.f34161a.f24779d, no2Var.f28435v.toString(), C0460b1.m26418l(no2Var.f28432s), t12Var.f31618c);
        }
    }

    /* renamed from: c */
    public final /* synthetic */ h83 m5932c(View view, no2 no2Var, Object obj) {
        return y73.m4814a(w21.m5935a(this.f33026a, view, no2Var));
    }
}
