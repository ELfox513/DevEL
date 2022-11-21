package p168r4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.ph0 */
/* loaded from: classes2.dex */
public abstract class ph0 extends BinderC6192r2 implements qh0 {
    public ph0() {
        super("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    /* renamed from: f7 */
    public static qh0 m8327f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
        if (queryLocalInterface instanceof qh0) {
            return (qh0) queryLocalInterface;
        }
        return new oh0(iBinder);
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                mo7855M(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                break;
            case 2:
                mo7854N0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 3:
                mo7852U(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                break;
            case 4:
                mo7856I5(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                break;
            case 5:
                mo7847m0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                break;
            case 6:
                mo7851a0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                break;
            case 7:
                mo7848l3(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), (rh0) C6229s2.m7249c(parcel, rh0.CREATOR));
                break;
            case 8:
                mo7846z2(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                break;
            case 9:
                mo7850h2(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 10:
                mo7849i0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                break;
            case 11:
                mo7853Q4(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                break;
            case 12:
                Bundle bundle = (Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
