package p168r4;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import p060f4.AbstractC3515c;
import p060f4.BinderC3514b;
/* renamed from: r4.st */
/* loaded from: classes2.dex */
public final class C6256st extends AbstractC3515c<C6406wv> {

    /* renamed from: c */
    public xf0 f31505c;

    public C6256st() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    @Override // p060f4.AbstractC3515c
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C6406wv mo6841a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        if (queryLocalInterface instanceof C6406wv) {
            return (C6406wv) queryLocalInterface;
        }
        return new C6406wv(iBinder);
    }

    /* renamed from: c */
    public final InterfaceC6369vv m7014c(Context context, C6478yt c6478yt, String str, fb0 fb0Var, int i) {
        InterfaceC6369vv c6295tv;
        InterfaceC6369vv c6295tv2;
        C6225rz.m7278a(context);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30941W6)).booleanValue()) {
            try {
                IBinder m5564b2 = ((C6406wv) gm0.m11109a(context, "com.google.android.gms.ads.ChimeraAdManagerCreatorImpl", C6219rt.f30680a)).m5564b2(BinderC3514b.m18741L0(context), c6478yt, str, fb0Var, 213806000, i);
                if (m5564b2 == null) {
                    return null;
                }
                IInterface queryLocalInterface = m5564b2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
                if (queryLocalInterface instanceof InterfaceC6369vv) {
                    c6295tv = (InterfaceC6369vv) queryLocalInterface;
                } else {
                    c6295tv = new C6295tv(m5564b2);
                }
                return c6295tv;
            } catch (RemoteException | NullPointerException | fm0 e) {
                xf0 m6164c = vf0.m6164c(context);
                this.f31505c = m6164c;
                m6164c.mo5332b(e, "AdManagerCreator.newAdManagerByDynamiteLoader");
                cm0.m12434i("#007 Could not call remote method.", e);
                return null;
            }
        }
        try {
            IBinder m5564b22 = m18739b(context).m5564b2(BinderC3514b.m18741L0(context), c6478yt, str, fb0Var, 213806000, i);
            if (m5564b22 == null) {
                return null;
            }
            IInterface queryLocalInterface2 = m5564b22.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface2 instanceof InterfaceC6369vv) {
                c6295tv2 = (InterfaceC6369vv) queryLocalInterface2;
            } else {
                c6295tv2 = new C6295tv(m5564b22);
            }
            return c6295tv2;
        } catch (RemoteException | AbstractC3515c.C3516a e2) {
            cm0.m12441b("Could not create remote AdManager.", e2);
            return null;
        }
    }
}
