package p168r4;

import android.content.Context;
import android.os.RemoteException;
import p016b3.C0543w1;
import p060f4.BinderC3514b;
/* renamed from: r4.t52 */
/* loaded from: classes2.dex */
public final class t52 implements y12<uo1, ed0, n32> {

    /* renamed from: a */
    public final Context f31712a;

    /* renamed from: b */
    public final ap1 f31713b;

    public t52(Context context, ap1 ap1Var) {
        this.f31712a = context;
        this.f31713b = ap1Var;
    }

    @Override // p168r4.y12
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ uo1 mo4458a(bp2 bp2Var, no2 no2Var, t12<ed0, n32> t12Var) {
        x32 x32Var = new x32(no2Var, t12Var.f31617b, true);
        vo1 mo9879b = this.f31713b.mo9879b(new x31(bp2Var, no2Var, t12Var.f31616a), new wo1(x32Var));
        x32Var.m5510b(mo9879b.mo4737d());
        t12Var.f31618c.m9201g7(mo9879b.mo6046n());
        return mo9879b.mo6052h();
    }

    @Override // p168r4.y12
    /* renamed from: b */
    public final void mo4457b(bp2 bp2Var, no2 no2Var, t12<ed0, n32> t12Var) {
        try {
            t12Var.f31617b.mo8356J0(no2Var.f28399V);
            if (bp2Var.f21153a.f34161a.f24790o.f33649a == 3) {
                t12Var.f31617b.mo8340z1(no2Var.f28394Q, no2Var.f28435v.toString(), bp2Var.f21153a.f34161a.f24779d, BinderC3514b.m18741L0(this.f31712a), new q52(this, t12Var, null), t12Var.f31618c);
            } else {
                t12Var.f31617b.mo8352a4(no2Var.f28394Q, no2Var.f28435v.toString(), bp2Var.f21153a.f34161a.f24779d, BinderC3514b.m18741L0(this.f31712a), new q52(this, t12Var, null), t12Var.f31618c);
            }
        } catch (RemoteException e) {
            C0543w1.m26250l("Remote exception loading a rewarded RTB ad", e);
        }
    }
}
