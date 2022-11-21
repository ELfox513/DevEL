package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;
/* renamed from: r4.g20 */
/* loaded from: classes2.dex */
public abstract class g20 extends BinderC6192r2 implements h20 {
    public g20() {
        super("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 2) {
            if (i != 3) {
                return false;
            }
            List<p20> mo5943b = mo5943b();
            parcel2.writeNoException();
            parcel2.writeList(mo5943b);
            return true;
        }
        String mo5944a = mo5944a();
        parcel2.writeNoException();
        parcel2.writeString(mo5944a);
        return true;
    }

    /* renamed from: f7 */
    public static h20 m11310f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
        if (queryLocalInterface instanceof h20) {
            return (h20) queryLocalInterface;
        }
        return new f20(iBinder);
    }
}
