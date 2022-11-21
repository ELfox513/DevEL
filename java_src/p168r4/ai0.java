package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: r4.ai0 */
/* loaded from: classes2.dex */
public abstract class ai0 extends BinderC6192r2 implements bi0 {
    public ai0() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        vh0 th0Var;
        switch (i) {
            case 1:
                mo4244c();
                break;
            case 2:
                mo4243d();
                break;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    th0Var = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                    if (queryLocalInterface instanceof vh0) {
                        th0Var = (vh0) queryLocalInterface;
                    } else {
                        th0Var = new th0(readStrongBinder);
                    }
                }
                mo4247G2(th0Var);
                break;
            case 4:
                mo4245Y(parcel.readInt());
                break;
            case 5:
                mo4246J3((C5996lt) C6229s2.m7249c(parcel, C5996lt.CREATOR));
                break;
            case 6:
                mo4242h();
                break;
            case 7:
                mo4241i();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
