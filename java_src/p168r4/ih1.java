package p168r4;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
/* renamed from: r4.ih1 */
/* loaded from: classes2.dex */
public final class ih1 implements j71, me1 {

    /* renamed from: a */
    public final pj0 f25091a;

    /* renamed from: b */
    public final Context f25092b;

    /* renamed from: d */
    public final ik0 f25093d;

    /* renamed from: k */
    public final View f25094k;

    /* renamed from: p */
    public String f25095p;

    /* renamed from: q */
    public final EnumC6178qp f25096q;

    public ih1(pj0 pj0Var, Context context, ik0 ik0Var, View view, EnumC6178qp enumC6178qp) {
        this.f25091a = pj0Var;
        this.f25092b = context;
        this.f25093d = ik0Var;
        this.f25094k = view;
        this.f25096q = enumC6178qp;
    }

    @Override // p168r4.me1
    /* renamed from: a */
    public final void mo9406a() {
    }

    @Override // p168r4.j71
    /* renamed from: h */
    public final void mo5384h() {
    }

    @Override // p168r4.j71
    /* renamed from: j */
    public final void mo5383j() {
        this.f25091a.m8311a(false);
    }

    @Override // p168r4.j71
    /* renamed from: k */
    public final void mo5382k() {
    }

    @Override // p168r4.j71
    /* renamed from: l */
    public final void mo5381l() {
    }

    @Override // p168r4.me1
    /* renamed from: e */
    public final void mo9405e() {
        String str;
        String str2;
        String m10616m = this.f25093d.m10616m(this.f25092b);
        this.f25095p = m10616m;
        String valueOf = String.valueOf(m10616m);
        if (this.f25096q == EnumC6178qp.REWARD_BASED_VIDEO_AD) {
            str = "/Rewarded";
        } else {
            str = "/Interstitial";
        }
        if (str.length() != 0) {
            str2 = valueOf.concat(str);
        } else {
            str2 = new String(valueOf);
        }
        this.f25095p = str2;
    }

    @Override // p168r4.j71
    /* renamed from: f */
    public final void mo5386f() {
        View view = this.f25094k;
        if (view != null && this.f25095p != null) {
            this.f25093d.m10615n(view.getContext(), this.f25095p);
        }
        this.f25091a.m8311a(true);
    }

    @Override // p168r4.j71
    /* renamed from: q */
    public final void mo5378q(eh0 eh0Var, String str, String str2) {
        if (this.f25093d.m10622g(this.f25092b)) {
            try {
                ik0 ik0Var = this.f25093d;
                Context context = this.f25092b;
                ik0Var.m10606w(context, ik0Var.m10612q(context), this.f25091a.m8310b(), eh0Var.mo11797a(), eh0Var.mo11796b());
            } catch (RemoteException e) {
                cm0.m12436g("Remote Exception to get reward item.", e);
            }
        }
    }
}
