package p186t4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: t4.a */
/* loaded from: classes2.dex */
public class C6771a implements IInterface {

    /* renamed from: a */
    public final IBinder f35450a;

    /* renamed from: b */
    public final String f35451b = "com.google.android.gms.appset.internal.IAppSetService";

    public C6771a(IBinder iBinder, String str) {
        this.f35450a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f35450a;
    }

    /* renamed from: j0 */
    public final Parcel m3452j0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f35451b);
        return obtain;
    }

    /* renamed from: o0 */
    public final void m3451o0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f35450a.transact(1, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
