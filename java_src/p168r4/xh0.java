package p168r4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.xh0 */
/* loaded from: classes2.dex */
public abstract class xh0 extends BinderC6192r2 implements yh0 {
    public xh0() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    /* renamed from: f7 */
    public static yh0 m5314f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        if (queryLocalInterface instanceof yh0) {
            return (yh0) queryLocalInterface;
        }
        return new wh0(iBinder);
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        fi0 fi0Var = null;
        fi0 fi0Var2 = null;
        hi0 hi0Var = null;
        bi0 bi0Var = null;
        switch (i) {
            case 1:
                C6293tt c6293tt = (C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    if (queryLocalInterface instanceof fi0) {
                        fi0Var = (fi0) queryLocalInterface;
                    } else {
                        fi0Var = new di0(readStrongBinder);
                    }
                }
                mo4713L2(c6293tt, fi0Var);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    if (queryLocalInterface2 instanceof bi0) {
                        bi0Var = (bi0) queryLocalInterface2;
                    } else {
                        bi0Var = new zh0(readStrongBinder2);
                    }
                }
                mo4715D5(bi0Var);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean mo4706j = mo4706j();
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo4706j);
                return true;
            case 4:
                String mo4708h = mo4708h();
                parcel2.writeNoException();
                parcel2.writeString(mo4708h);
                return true;
            case 5:
                mo4710b0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    if (queryLocalInterface3 instanceof hi0) {
                        hi0Var = (hi0) queryLocalInterface3;
                    } else {
                        hi0Var = new hi0(readStrongBinder3);
                    }
                }
                mo4702t2(hi0Var);
                parcel2.writeNoException();
                return true;
            case 7:
                mo4714F3((ni0) C6229s2.m7249c(parcel, ni0.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                mo4716A3(AbstractBinderC5594ax.m12919f7(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle mo4709g = mo4709g();
                parcel2.writeNoException();
                C6229s2.m7247e(parcel2, mo4709g);
                return true;
            case 10:
                mo4707i1(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), C6229s2.m7251a(parcel));
                parcel2.writeNoException();
                return true;
            case 11:
                vh0 mo4705k = mo4705k();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo4705k);
                return true;
            case 12:
                InterfaceC5853hx mo4704l = mo4704l();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo4704l);
                return true;
            case 13:
                mo4711M5(AbstractBinderC5704dx.m11901f7(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 14:
                C6293tt c6293tt2 = (C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    if (queryLocalInterface4 instanceof fi0) {
                        fi0Var2 = (fi0) queryLocalInterface4;
                    } else {
                        fi0Var2 = new di0(readStrongBinder4);
                    }
                }
                mo4703r3(c6293tt2, fi0Var2);
                parcel2.writeNoException();
                return true;
            case 15:
                mo4712M0(C6229s2.m7251a(parcel));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
