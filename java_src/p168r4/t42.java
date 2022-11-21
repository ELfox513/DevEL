package p168r4;

import android.content.Context;
import android.os.RemoteException;
import p060f4.BinderC3514b;
/* renamed from: r4.t42 */
/* loaded from: classes2.dex */
public final class t42 implements y12<zi1, ed0, n32> {

    /* renamed from: a */
    public final Context f31678a;

    /* renamed from: b */
    public final sh1 f31679b;

    /* renamed from: c */
    public ub0 f31680c;

    /* renamed from: d */
    public final im0 f31681d;

    public t42(Context context, sh1 sh1Var, im0 im0Var) {
        this.f31678a = context;
        this.f31679b = sh1Var;
        this.f31681d = im0Var;
    }

    @Override // p168r4.y12
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ zi1 mo4458a(bp2 bp2Var, no2 no2Var, t12<ed0, n32> t12Var) {
        if (bp2Var.f21153a.f34161a.f24782g.contains(Integer.toString(6))) {
            ej1 m11794B = ej1.m11794B(this.f31680c);
            if (bp2Var.f21153a.f34161a.f24782g.contains(Integer.toString(m11794B.m11762d0()))) {
                gj1 mo7158d = this.f31679b.mo7158d(new x31(bp2Var, no2Var, t12Var.f31616a), new qj1(m11794B), new fl1(null, null, this.f31680c, null));
                t12Var.f31618c.m9201g7(mo7158d.mo5994g());
                return mo7158d.mo5993h();
            }
            throw new j52(1, "No corresponding native ad listener");
        }
        throw new j52(2, "Unified must be used for RTB.");
    }

    @Override // p168r4.y12
    /* renamed from: b */
    public final void mo4457b(bp2 bp2Var, no2 no2Var, t12<ed0, n32> t12Var) {
        try {
            t12Var.f31617b.mo8356J0(no2Var.f28399V);
            if (this.f31681d.f25173d < ((Integer) C5592av.m12935c().m8098c(C6225rz.f30995d1)).intValue()) {
                t12Var.f31617b.mo8341y5(no2Var.f28394Q, no2Var.f28435v.toString(), bp2Var.f21153a.f34161a.f24779d, BinderC3514b.m18741L0(this.f31678a), new r42(this, t12Var, null), t12Var.f31618c);
            } else {
                t12Var.f31617b.mo8353T3(no2Var.f28394Q, no2Var.f28435v.toString(), bp2Var.f21153a.f34161a.f24779d, BinderC3514b.m18741L0(this.f31678a), new r42(this, t12Var, null), t12Var.f31618c, bp2Var.f21153a.f34161a.f24784i);
            }
        } catch (RemoteException e) {
            throw new mp2(e);
        }
    }
}
