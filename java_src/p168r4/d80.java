package p168r4;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import p060f4.BinderC3514b;
import p184t2.AbstractC6705d;
import p184t2.AbstractC6715l;
import p184t2.C6716m;
import p193u2.AbstractC6881b;
/* renamed from: r4.d80 */
/* loaded from: classes2.dex */
public final class d80<AdT> extends AbstractC6881b {

    /* renamed from: a */
    public final Context f22160a;

    /* renamed from: b */
    public final C6441xt f22161b;

    /* renamed from: c */
    public final InterfaceC6369vv f22162c;

    /* renamed from: d */
    public final String f22163d;

    /* renamed from: e */
    public final cb0 f22164e;

    /* renamed from: f */
    public AbstractC6715l f22165f;

    @Override // p025c3.AbstractC1038a
    /* renamed from: b */
    public final void mo12206b(AbstractC6715l abstractC6715l) {
        try {
            this.f22165f = abstractC6715l;
            InterfaceC6369vv interfaceC6369vv = this.f22162c;
            if (interfaceC6369vv != null) {
                interfaceC6369vv.mo954s5(new BinderC5629bv(abstractC6715l));
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p025c3.AbstractC1038a
    /* renamed from: c */
    public final void mo12205c(boolean z) {
        try {
            InterfaceC6369vv interfaceC6369vv = this.f22162c;
            if (interfaceC6369vv != null) {
                interfaceC6369vv.mo996A0(z);
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // p025c3.AbstractC1038a
    /* renamed from: d */
    public final void mo12204d(Activity activity) {
        if (activity == null) {
            cm0.m12437f("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            InterfaceC6369vv interfaceC6369vv = this.f22162c;
            if (interfaceC6369vv != null) {
                interfaceC6369vv.mo984L1(BinderC3514b.m18741L0(activity));
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: e */
    public final void m12203e(C6260sx c6260sx, AbstractC6705d<AdT> abstractC6705d) {
        try {
            if (this.f22162c != null) {
                this.f22164e.m12499g7(c6260sx.m6964l());
                this.f22162c.mo982Q5(this.f22161b.m5009a(this.f22160a, c6260sx), new BinderC6145pt(abstractC6705d, this));
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
            abstractC6705d.onAdFailedToLoad(new C6716m(0, "Internal Error.", "com.google.android.gms.ads", null, null));
        }
    }

    public d80(Context context, String str) {
        cb0 cb0Var = new cb0();
        this.f22164e = cb0Var;
        this.f22160a = context;
        this.f22163d = str;
        this.f22161b = C6441xt.f33766a;
        this.f22162c = C6479yu.m4567b().m5573h(context, new C6478yt(), str, cb0Var);
    }
}
