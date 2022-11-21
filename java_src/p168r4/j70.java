package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: r4.j70 */
/* loaded from: classes2.dex */
public abstract class j70 extends BinderC6192r2 implements k70 {
    public j70() {
        super("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 2) {
            if (i != 3) {
                return false;
            }
            mo8683s(parcel.readString());
        } else {
            mo8684c();
        }
        parcel2.writeNoException();
        return true;
    }

    /* renamed from: f7 */
    public static k70 m10393f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
        if (queryLocalInterface instanceof k70) {
            return (k70) queryLocalInterface;
        }
        return new i70(iBinder);
    }
}
