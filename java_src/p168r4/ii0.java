package p168r4;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import p060f4.BinderC3514b;
import p095j3.AbstractC4327b;
import p095j3.AbstractC4328c;
import p184t2.AbstractC6715l;
import p184t2.InterfaceC6721r;
/* renamed from: r4.ii0 */
/* loaded from: classes2.dex */
public final class ii0 extends AbstractC4327b {

    /* renamed from: a */
    public final String f25099a;

    /* renamed from: b */
    public final yh0 f25100b;

    /* renamed from: c */
    public final Context f25101c;

    /* renamed from: d */
    public final qi0 f25102d = new qi0();

    /* renamed from: e */
    public AbstractC6715l f25103e;

    @Override // p095j3.AbstractC4327b
    /* renamed from: b */
    public final void mo10653b(AbstractC6715l abstractC6715l) {
        this.f25103e = abstractC6715l;
        this.f25102d.m7818f7(abstractC6715l);
    }

    @Override // p095j3.AbstractC4327b
    /* renamed from: c */
    public final void mo10652c(Activity activity, InterfaceC6721r interfaceC6721r) {
        this.f25102d.m7817g7(interfaceC6721r);
        if (activity == null) {
            cm0.m12437f("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            yh0 yh0Var = this.f25100b;
            if (yh0Var != null) {
                yh0Var.mo4715D5(this.f25102d);
                this.f25100b.mo4710b0(BinderC3514b.m18741L0(activity));
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: d */
    public final void m10651d(C6260sx c6260sx, AbstractC4328c abstractC4328c) {
        try {
            yh0 yh0Var = this.f25100b;
            if (yh0Var != null) {
                yh0Var.mo4713L2(C6441xt.f33766a.m5009a(this.f25101c, c6260sx), new mi0(abstractC4328c, this));
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    public ii0(Context context, String str) {
        this.f25101c = context.getApplicationContext();
        this.f25099a = str;
        this.f25100b = C6479yu.m4567b().m5571j(context, str, new cb0());
    }
}
