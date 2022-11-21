package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.nb0 */
/* loaded from: classes2.dex */
public abstract class nb0 extends BinderC6192r2 implements ob0 {
    public nb0() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            boolean mo8842d = mo8842d();
            parcel2.writeNoException();
            C6229s2.m7250b(parcel2, mo8842d);
        } else {
            InterfaceC3512a mo8843c = mo8843c();
            parcel2.writeNoException();
            C6229s2.m7246f(parcel2, mo8843c);
        }
        return true;
    }

    /* renamed from: f7 */
    public static ob0 m9129f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
        if (queryLocalInterface instanceof ob0) {
            return (ob0) queryLocalInterface;
        }
        return new mb0(iBinder);
    }
}
