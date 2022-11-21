package p168r4;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import p060f4.AbstractC3515c;
import p060f4.BinderC3514b;
/* renamed from: r4.qt */
/* loaded from: classes2.dex */
public final class C6182qt extends AbstractC3515c<C6258sv> {
    public C6182qt() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    /* renamed from: c */
    public final InterfaceC6221rv m7680c(Context context, String str, fb0 fb0Var) {
        InterfaceC6221rv c6147pv;
        try {
            IBinder m6993b2 = m18739b(context).m6993b2(BinderC3514b.m18741L0(context), str, fb0Var, 213806000);
            if (m6993b2 == null) {
                return null;
            }
            IInterface queryLocalInterface = m6993b2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            if (queryLocalInterface instanceof InterfaceC6221rv) {
                c6147pv = (InterfaceC6221rv) queryLocalInterface;
            } else {
                c6147pv = new C6147pv(m6993b2);
            }
            return c6147pv;
        } catch (RemoteException | AbstractC3515c.C3516a e) {
            cm0.m12436g("Could not create remote builder for AdLoader.", e);
            return null;
        }
    }

    @Override // p060f4.AbstractC3515c
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C6258sv mo6841a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
        if (queryLocalInterface instanceof C6258sv) {
            return (C6258sv) queryLocalInterface;
        }
        return new C6258sv(iBinder);
    }
}
