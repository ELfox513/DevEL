package p168r4;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import p060f4.BinderC3514b;
/* renamed from: r4.li0 */
/* loaded from: classes2.dex */
public final class li0 {
    /* renamed from: a */
    public static final yh0 m9658a(Context context, String str, fb0 fb0Var) {
        yh0 wh0Var;
        try {
            IBinder m12460b2 = ((ci0) gm0.m11109a(context, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl", ki0.f26430a)).m12460b2(BinderC3514b.m18741L0(context), str, fb0Var, 213806000);
            if (m12460b2 == null) {
                return null;
            }
            IInterface queryLocalInterface = m12460b2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
            if (queryLocalInterface instanceof yh0) {
                wh0Var = (yh0) queryLocalInterface;
            } else {
                wh0Var = new wh0(m12460b2);
            }
            return wh0Var;
        } catch (RemoteException | fm0 e) {
            cm0.m12434i("#007 Could not call remote method.", e);
            return null;
        }
    }
}
