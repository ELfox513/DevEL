package p006a5;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: a5.a */
/* loaded from: classes2.dex */
public class BinderC0087a extends Binder implements IInterface {
    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    /* renamed from: j0 */
    public boolean mo16478j0(int i, Parcel parcel, Parcel parcel2, int i2) {
        throw null;
    }

    public BinderC0087a(String str) {
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
        return mo16478j0(i, parcel, parcel2, i2);
    }
}
