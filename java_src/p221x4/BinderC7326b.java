package p221x4;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: x4.b */
/* loaded from: classes2.dex */
public class BinderC7326b extends Binder implements IInterface {
    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    /* renamed from: j0 */
    public boolean mo1837j0(int i, Parcel parcel, Parcel parcel2, int i2) {
        return false;
    }

    public BinderC7326b(String str) {
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
        return mo1837j0(i, parcel, parcel2, i2);
    }
}
