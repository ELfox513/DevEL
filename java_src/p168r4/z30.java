package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: r4.z30 */
/* loaded from: classes2.dex */
public abstract class z30 extends BinderC6192r2 implements a40 {
    public z30() {
        super("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        j40 h40Var;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                h40Var = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
                if (queryLocalInterface instanceof j40) {
                    h40Var = (j40) queryLocalInterface;
                } else {
                    h40Var = new h40(readStrongBinder);
                }
            }
            mo4922W1(h40Var);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }

    /* renamed from: f7 */
    public static a40 m4460f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
        if (queryLocalInterface instanceof a40) {
            return (a40) queryLocalInterface;
        }
        return new y30(iBinder);
    }
}
