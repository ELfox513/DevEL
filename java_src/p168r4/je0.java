package p168r4;

import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.je0 */
/* loaded from: classes2.dex */
public abstract class je0 extends BinderC6192r2 implements ke0 {
    public je0() {
        super("com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                mo10052g();
            } else {
                mo10053U0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
            }
        } else {
            mo10054R0((Intent) C6229s2.m7249c(parcel, Intent.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }

    /* renamed from: f7 */
    public static ke0 m10300f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
        if (queryLocalInterface instanceof ke0) {
            return (ke0) queryLocalInterface;
        }
        return new ie0(iBinder);
    }
}
