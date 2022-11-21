package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: r4.uh0 */
/* loaded from: classes2.dex */
public abstract class uh0 extends BinderC6192r2 implements vh0 {
    public uh0() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            int mo6149d = mo6149d();
            parcel2.writeNoException();
            parcel2.writeInt(mo6149d);
        } else {
            String mo6150c = mo6150c();
            parcel2.writeNoException();
            parcel2.writeString(mo6150c);
        }
        return true;
    }

    /* renamed from: f7 */
    public static vh0 m6518f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
        if (queryLocalInterface instanceof vh0) {
            return (vh0) queryLocalInterface;
        }
        return new th0(iBinder);
    }
}
