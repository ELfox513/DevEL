package p168r4;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import p060f4.AbstractC3515c;
import p060f4.BinderC3514b;
/* renamed from: r4.fy */
/* loaded from: classes2.dex */
public final class C5780fy extends AbstractC3515c<C6111ow> {
    public C5780fy() {
        super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
    }

    /* renamed from: c */
    public final InterfaceC6074nw m11331c(Context context) {
        InterfaceC6074nw c5999lw;
        try {
            IBinder m8650b2 = m18739b(context).m8650b2(BinderC3514b.m18741L0(context), 213806000);
            if (m8650b2 == null) {
                return null;
            }
            IInterface queryLocalInterface = m8650b2.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            if (queryLocalInterface instanceof InterfaceC6074nw) {
                c5999lw = (InterfaceC6074nw) queryLocalInterface;
            } else {
                c5999lw = new C5999lw(m8650b2);
            }
            return c5999lw;
        } catch (RemoteException | AbstractC3515c.C3516a e) {
            cm0.m12436g("Could not get remote MobileAdsSettingManager.", e);
            return null;
        }
    }

    @Override // p060f4.AbstractC3515c
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C6111ow mo6841a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
        if (queryLocalInterface instanceof C6111ow) {
            return (C6111ow) queryLocalInterface;
        }
        return new C6111ow(iBinder);
    }
}
