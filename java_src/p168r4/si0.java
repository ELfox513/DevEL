package p168r4;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import p060f4.BinderC3514b;
import p104k3.AbstractC4441a;
import p104k3.AbstractC4442b;
import p184t2.AbstractC6715l;
import p184t2.InterfaceC6721r;
/* renamed from: r4.si0 */
/* loaded from: classes2.dex */
public final class si0 extends AbstractC4441a {

    /* renamed from: a */
    public final String f31371a;

    /* renamed from: b */
    public final yh0 f31372b;

    /* renamed from: c */
    public final Context f31373c;

    /* renamed from: d */
    public final qi0 f31374d = new qi0();

    /* renamed from: e */
    public AbstractC6715l f31375e;

    @Override // p104k3.AbstractC4441a
    /* renamed from: b */
    public final void mo7156b(AbstractC6715l abstractC6715l) {
        this.f31375e = abstractC6715l;
        this.f31374d.m7818f7(abstractC6715l);
    }

    @Override // p104k3.AbstractC4441a
    /* renamed from: c */
    public final void mo7155c(Activity activity, InterfaceC6721r interfaceC6721r) {
        this.f31374d.m7817g7(interfaceC6721r);
        try {
            yh0 yh0Var = this.f31372b;
            if (yh0Var != null) {
                yh0Var.mo4715D5(this.f31374d);
                this.f31372b.mo4710b0(BinderC3514b.m18741L0(activity));
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: d */
    public final void m7154d(C6260sx c6260sx, AbstractC4442b abstractC4442b) {
        try {
            yh0 yh0Var = this.f31372b;
            if (yh0Var != null) {
                yh0Var.mo4703r3(C6441xt.f33766a.m5009a(this.f31373c, c6260sx), new ri0(abstractC4442b, this));
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    public si0(Context context, String str) {
        this.f31371a = str;
        this.f31373c = context.getApplicationContext();
        this.f31372b = C6479yu.m4567b().m5571j(context, str, new cb0());
    }
}
