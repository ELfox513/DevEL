package p018b5;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: b5.p0 */
/* loaded from: classes2.dex */
public class BinderC0811p0 extends Binder implements IInterface {
    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    /* renamed from: j0 */
    public boolean mo18385j0(int i, Parcel parcel, Parcel parcel2, int i2) {
        throw null;
    }

    public BinderC0811p0(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i > 16777215) {
            if (super.onTransact(i, parcel, parcel2, i2)) {
                return true;
            }
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
        }
        return mo18385j0(i, parcel, parcel2, i2);
    }
}
