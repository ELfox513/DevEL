package p168r4;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: r4.r2 */
/* loaded from: classes2.dex */
public class BinderC6192r2 extends Binder implements IInterface {
    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    /* renamed from: e7 */
    public boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        throw null;
    }

    public BinderC6192r2(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i > 16777215) {
            if (super.onTransact(i, parcel, parcel2, i2)) {
                return true;
            }
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
        }
        return mo4461e7(i, parcel, parcel2, i2);
    }
}
