package p204v4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: v4.d */
/* loaded from: classes2.dex */
public class C7065d implements IInterface {

    /* renamed from: a */
    public final IBinder f36061a;

    /* renamed from: b */
    public final String f36062b;

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f36061a;
    }

    public C7065d(IBinder iBinder, String str) {
        this.f36061a = iBinder;
        this.f36062b = str;
    }

    /* renamed from: j0 */
    public final Parcel m2575j0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f36062b);
        return obtain;
    }

    /* renamed from: o0 */
    public final void m2574o0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f36061a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
