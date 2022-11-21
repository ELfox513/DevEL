package p168r4;

import android.content.Context;
import android.os.RemoteException;
import p060f4.BinderC3514b;
/* renamed from: r4.d42 */
/* loaded from: classes2.dex */
public final class d42 implements y12<xf1, ed0, n32> {

    /* renamed from: a */
    public final Context f22074a;

    /* renamed from: b */
    public final vg1 f22075b;

    public d42(Context context, vg1 vg1Var) {
        this.f22074a = context;
        this.f22075b = vg1Var;
    }

    @Override // p168r4.y12
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ xf1 mo4458a(bp2 bp2Var, no2 no2Var, t12<ed0, n32> t12Var) {
        x32 x32Var = new x32(no2Var, t12Var.f31617b, false);
        yf1 mo6159c = this.f22075b.mo6159c(new x31(bp2Var, no2Var, t12Var.f31616a), new bg1(x32Var, null));
        x32Var.m5510b(mo6159c.mo4737d());
        t12Var.f31618c.m9201g7(mo6159c.mo5994g());
        return mo6159c.mo4736h();
    }

    @Override // p168r4.y12
    /* renamed from: b */
    public final void mo4457b(bp2 bp2Var, no2 no2Var, t12<ed0, n32> t12Var) {
        try {
            t12Var.f31617b.mo8356J0(no2Var.f28399V);
            t12Var.f31617b.mo8357G4(no2Var.f28394Q, no2Var.f28435v.toString(), bp2Var.f21153a.f34161a.f24779d, BinderC3514b.m18741L0(this.f22074a), new b42(this, t12Var, null), t12Var.f31618c);
        } catch (RemoteException e) {
            throw new mp2(e);
        }
    }
}
