package p186t4;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: t4.b */
/* loaded from: classes2.dex */
public class BinderC6772b extends Binder implements IInterface {
    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    /* renamed from: j0 */
    public boolean mo3447j0(int i, Parcel parcel, Parcel parcel2, int i2) {
        throw null;
    }

    public BinderC6772b(String str) {
        attachInterface(this, "com.google.android.gms.appset.internal.IAppSetIdCallback");
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
        return mo3447j0(i, parcel, parcel2, i2);
    }
}
