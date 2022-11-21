package p168r4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.hh0 */
/* loaded from: classes2.dex */
public abstract class hh0 extends BinderC6192r2 implements ih0 {
    public hh0() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                lh0 lh0Var = null;
                gh0 gh0Var = null;
                if (i != 3) {
                    if (i != 34) {
                        switch (i) {
                            case 5:
                                boolean mo9981c = mo9981c();
                                parcel2.writeNoException();
                                C6229s2.m7250b(parcel2, mo9981c);
                                break;
                            case 6:
                                mo9980d();
                                parcel2.writeNoException();
                                break;
                            case 7:
                                mo9976g();
                                parcel2.writeNoException();
                                break;
                            case 8:
                                mo9978f();
                                parcel2.writeNoException();
                                break;
                            case 9:
                                mo9972m0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                break;
                            case 10:
                                mo9984a0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                break;
                            case 11:
                                mo9968s0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                break;
                            case 12:
                                String mo9973k = mo9973k();
                                parcel2.writeNoException();
                                parcel2.writeString(mo9973k);
                                break;
                            case 13:
                                mo9974h0(parcel.readString());
                                parcel2.writeNoException();
                                break;
                            case 14:
                                mo9979d1(AbstractBinderC6480yv.m4549f7(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                break;
                            case 15:
                                Bundle mo9970q = mo9970q();
                                parcel2.writeNoException();
                                C6229s2.m7247e(parcel2, mo9970q);
                                break;
                            case 16:
                                IBinder readStrongBinder = parcel.readStrongBinder();
                                if (readStrongBinder != null) {
                                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                                    if (queryLocalInterface instanceof gh0) {
                                        gh0Var = (gh0) queryLocalInterface;
                                    } else {
                                        gh0Var = new gh0(readStrongBinder);
                                    }
                                }
                                mo9985R4(gh0Var);
                                parcel2.writeNoException();
                                break;
                            case 17:
                                parcel.readString();
                                parcel2.writeNoException();
                                break;
                            case 18:
                                mo9983a6(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                break;
                            case 19:
                                mo9967v6(parcel.readString());
                                parcel2.writeNoException();
                                break;
                            case 20:
                                boolean mo9969r = mo9969r();
                                parcel2.writeNoException();
                                C6229s2.m7250b(parcel2, mo9969r);
                                break;
                            case 21:
                                InterfaceC5853hx mo9971n = mo9971n();
                                parcel2.writeNoException();
                                C6229s2.m7246f(parcel2, mo9971n);
                                break;
                            default:
                                return false;
                        }
                    } else {
                        mo9988N4(C6229s2.m7251a(parcel));
                        parcel2.writeNoException();
                    }
                } else {
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 != null) {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                        if (queryLocalInterface2 instanceof lh0) {
                            lh0Var = (lh0) queryLocalInterface2;
                        } else {
                            lh0Var = new jh0(readStrongBinder2);
                        }
                    }
                    mo9989A5(lh0Var);
                    parcel2.writeNoException();
                }
            } else {
                mo9982b();
                parcel2.writeNoException();
            }
        } else {
            mo9986P1((mh0) C6229s2.m7249c(parcel, mh0.CREATOR));
            parcel2.writeNoException();
        }
        return true;
    }
}
