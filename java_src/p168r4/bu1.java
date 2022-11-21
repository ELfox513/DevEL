package p168r4;

import android.content.Context;
import android.os.RemoteException;
import p060f4.BinderC3514b;
/* renamed from: r4.bu1 */
/* loaded from: classes2.dex */
public final class bu1 implements lt1 {

    /* renamed from: a */
    public final long f21220a;

    /* renamed from: b */
    public final String f21221b;

    /* renamed from: c */
    public final qt1 f21222c;

    /* renamed from: d */
    public final eo2 f21223d;

    @Override // p168r4.lt1
    /* renamed from: b */
    public final void mo4988b() {
    }

    @Override // p168r4.lt1
    /* renamed from: a */
    public final void mo4989a() {
        try {
            this.f21223d.mo4715D5(new au1(this));
            this.f21223d.mo4710b0(BinderC3514b.m18741L0(null));
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p168r4.lt1
    /* renamed from: c */
    public final void mo4987c(C6293tt c6293tt) {
        try {
            this.f21223d.mo4713L2(c6293tt, new zt1(this));
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    public bu1(long j, Context context, qt1 qt1Var, bu0 bu0Var, String str) {
        this.f21220a = j;
        this.f21221b = str;
        this.f21222c = qt1Var;
        go2 mo8583w = bu0Var.mo8583w();
        mo8583w.mo11048a(context);
        mo8583w.mo11047u(str);
        this.f21223d = mo8583w.zza().mo10779a();
    }
}
