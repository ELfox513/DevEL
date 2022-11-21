package p168r4;

import android.app.Activity;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import p060f4.AbstractC3515c;
import p060f4.BinderC3514b;
/* renamed from: r4.te0 */
/* loaded from: classes2.dex */
public final class te0 extends AbstractC3515c<ze0> {
    public te0() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    @Override // p060f4.AbstractC3515c
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ ze0 mo6841a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        if (queryLocalInterface instanceof ze0) {
            return (ze0) queryLocalInterface;
        }
        return new xe0(iBinder);
    }

    /* renamed from: c */
    public final we0 m6840c(Activity activity) {
        we0 ue0Var;
        try {
            IBinder mo4279M = m18739b(activity).mo4279M(BinderC3514b.m18741L0(activity));
            if (mo4279M == null) {
                return null;
            }
            IInterface queryLocalInterface = mo4279M.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
            if (queryLocalInterface instanceof we0) {
                ue0Var = (we0) queryLocalInterface;
            } else {
                ue0Var = new ue0(mo4279M);
            }
            return ue0Var;
        } catch (RemoteException e) {
            cm0.m12436g("Could not create remote AdOverlay.", e);
            return null;
        } catch (AbstractC3515c.C3516a e2) {
            cm0.m12436g("Could not create remote AdOverlay.", e2);
            return null;
        }
    }
}
