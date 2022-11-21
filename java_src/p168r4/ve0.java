package p168r4;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.ve0 */
/* loaded from: classes2.dex */
public abstract class ve0 extends BinderC6192r2 implements we0 {
    public ve0() {
        super("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    /* renamed from: f7 */
    public static we0 m6166f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
        if (queryLocalInterface instanceof we0) {
            return (we0) queryLocalInterface;
        }
        return new ue0(iBinder);
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                mo5751l0((Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                parcel2.writeNoException();
                return true;
            case 3:
                mo5756h();
                parcel2.writeNoException();
                return true;
            case 4:
                mo5755i();
                parcel2.writeNoException();
                return true;
            case 5:
                mo5752k();
                parcel2.writeNoException();
                return true;
            case 6:
                Bundle bundle = (Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR);
                mo5746u0(bundle);
                parcel2.writeNoException();
                C6229s2.m7247e(parcel2, bundle);
                return true;
            case 7:
                mo5748o();
                parcel2.writeNoException();
                return true;
            case 8:
                mo5750m();
                parcel2.writeNoException();
                return true;
            case 9:
                mo5747r();
                parcel2.writeNoException();
                return true;
            case 10:
                mo5759c();
                parcel2.writeNoException();
                return true;
            case 11:
                boolean mo5757g = mo5757g();
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo5757g);
                return true;
            case 12:
                parcel.readInt();
                parcel.readInt();
                Intent intent = (Intent) C6229s2.m7249c(parcel, Intent.CREATOR);
                parcel2.writeNoException();
                return true;
            case 13:
                mo5754i0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 14:
                mo5758d();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
