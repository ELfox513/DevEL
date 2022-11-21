package p168r4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: r4.kb0 */
/* loaded from: classes2.dex */
public abstract class kb0 extends BinderC6192r2 implements lb0 {
    public kb0() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    /* renamed from: f7 */
    public static lb0 m10062f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        if (queryLocalInterface instanceof lb0) {
            return (lb0) queryLocalInterface;
        }
        return new jb0(iBinder);
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                mo5488c();
                break;
            case 2:
                mo5487d();
                break;
            case 3:
                mo5492W(parcel.readInt());
                break;
            case 4:
                mo5485f();
                break;
            case 5:
                mo5482j();
                break;
            case 6:
                mo5484h();
                break;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                    if (queryLocalInterface instanceof pb0) {
                        pb0 pb0Var = (pb0) queryLocalInterface;
                        break;
                    } else {
                        new pb0(readStrongBinder);
                        break;
                    }
                }
                break;
            case 8:
                mo5483i();
                break;
            case 9:
                mo5491Z5(parcel.readString(), parcel.readString());
                break;
            case 10:
                f30.m11643f7(parcel.readStrongBinder());
                parcel.readString();
                break;
            case 11:
                mo5479p();
                break;
            case 12:
                parcel.readString();
                break;
            case 13:
                mo5478q();
                break;
            case 14:
                mo5493L6((rh0) C6229s2.m7249c(parcel, rh0.CREATOR));
                break;
            case 15:
                mo5481m();
                break;
            case 16:
                mo5473y1(uh0.m6518f7(parcel.readStrongBinder()));
                break;
            case 17:
                mo5486d0(parcel.readInt());
                break;
            case 18:
                mo5480n();
                break;
            case 19:
                Bundle bundle = (Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR);
                break;
            case 20:
                mo5476t();
                break;
            case 21:
                mo5474x0(parcel.readString());
                break;
            case 22:
                mo5490Z6(parcel.readInt(), parcel.readString());
                break;
            case 23:
                mo5475u5((C5996lt) C6229s2.m7249c(parcel, C5996lt.CREATOR));
                break;
            case 24:
                mo5477s6((C5996lt) C6229s2.m7249c(parcel, C5996lt.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
