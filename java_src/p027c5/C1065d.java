package p027c5;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: c5.d */
/* loaded from: classes2.dex */
public class C1065d implements IInterface {

    /* renamed from: a */
    public final IBinder f2963a;

    /* renamed from: b */
    public final String f2964b;

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f2963a;
    }

    public C1065d(IBinder iBinder, String str) {
        this.f2963a = iBinder;
        this.f2964b = str;
    }

    /* renamed from: j0 */
    public final Parcel m24707j0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f2964b);
        return obtain;
    }

    /* renamed from: o0 */
    public final Parcel m24706o0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f2963a.transact(i, parcel, obtain, 0);
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
}
