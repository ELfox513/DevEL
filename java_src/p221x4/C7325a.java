package p221x4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: x4.a */
/* loaded from: classes2.dex */
public class C7325a implements IInterface {

    /* renamed from: a */
    public final IBinder f36812a;

    /* renamed from: b */
    public final String f36813b;

    public C7325a(IBinder iBinder, String str) {
        this.f36812a = iBinder;
        this.f36813b = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f36812a;
    }

    /* renamed from: j0 */
    public final Parcel m1839j0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f36812a.transact(i, parcel, obtain, 0);
                obtain.readException();
                return obtain;
            } catch (RuntimeException e) {
                obtain.recycle();
                throw e;
            }
        } finally {
            parcel.recycle();
        }
    }

    /* renamed from: o0 */
    public final Parcel m1838o0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f36813b);
        return obtain;
    }
}
