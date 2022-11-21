package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: r4.bw */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC5630bw extends BinderC6192r2 implements InterfaceC5666cw {
    public AbstractBinderC5630bw() {
        super("com.google.android.gms.ads.internal.client.IAppEventListener");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo12337x6(parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            return true;
        }
        return false;
    }

    /* renamed from: f7 */
    public static InterfaceC5666cw m12683f7(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
        if (queryLocalInterface instanceof InterfaceC5666cw) {
            return (InterfaceC5666cw) queryLocalInterface;
        }
        return new C5593aw(iBinder);
    }
}
