package p204v4;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: v4.c */
/* loaded from: classes2.dex */
public class BinderC7064c extends Binder implements IInterface {
    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    /* renamed from: j0 */
    public boolean mo2576j0(int i, Parcel parcel, Parcel parcel2, int i2) {
        throw null;
    }

    public BinderC7064c(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        if (i > 16777215) {
            z = super.onTransact(i, parcel, parcel2, i2);
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
            z = false;
        }
        if (z) {
            return true;
        }
        return mo2576j0(i, parcel, parcel2, i2);
    }
}
