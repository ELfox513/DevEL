package p168r4;

import android.os.Parcel;
import java.util.List;
/* renamed from: r4.gx */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC5816gx extends BinderC6192r2 implements InterfaceC5853hx {
    public AbstractBinderC5816gx() {
        super("com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                List<C5664cu> mo10770g = mo10770g();
                parcel2.writeNoException();
                parcel2.writeTypedList(mo10770g);
            } else {
                String mo10771d = mo10771d();
                parcel2.writeNoException();
                parcel2.writeString(mo10771d);
            }
        } else {
            String mo10772c = mo10772c();
            parcel2.writeNoException();
            parcel2.writeString(mo10772c);
        }
        return true;
    }
}
