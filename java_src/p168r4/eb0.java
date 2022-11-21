package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: r4.eb0 */
/* loaded from: classes2.dex */
public abstract class eb0 extends BinderC6192r2 implements fb0 {
    public eb0() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return false;
                    }
                    boolean mo11589E0 = mo11589E0(parcel.readString());
                    parcel2.writeNoException();
                    C6229s2.m7250b(parcel2, mo11589E0);
                } else {
                    ed0 mo11588s = mo11588s(parcel.readString());
                    parcel2.writeNoException();
                    C6229s2.m7246f(parcel2, mo11588s);
                }
            } else {
                boolean mo11590A = mo11590A(parcel.readString());
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo11590A);
            }
        } else {
            ib0 mo11587u = mo11587u(parcel.readString());
            parcel2.writeNoException();
            C6229s2.m7246f(parcel2, mo11587u);
        }
        return true;
    }

    /* renamed from: f7 */
    public static fb0 m11830f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        if (queryLocalInterface instanceof fb0) {
            return (fb0) queryLocalInterface;
        }
        return new db0(iBinder);
    }
}
