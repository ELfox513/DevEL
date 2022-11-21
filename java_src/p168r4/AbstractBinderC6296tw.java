package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: r4.tw */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC6296tw extends BinderC6192r2 implements InterfaceC6333uw {
    public AbstractBinderC6296tw() {
        super("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            String mo6323d = mo6323d();
            parcel2.writeNoException();
            parcel2.writeString(mo6323d);
        } else {
            String mo6324c = mo6324c();
            parcel2.writeNoException();
            parcel2.writeString(mo6324c);
        }
        return true;
    }

    /* renamed from: f7 */
    public static InterfaceC6333uw m6700f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
        if (queryLocalInterface instanceof InterfaceC6333uw) {
            return (InterfaceC6333uw) queryLocalInterface;
        }
        return new C6259sw(iBinder);
    }
}
