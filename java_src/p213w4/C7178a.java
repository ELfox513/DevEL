package p213w4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: w4.a */
/* loaded from: classes2.dex */
public class C7178a implements IInterface {

    /* renamed from: a */
    public final IBinder f36462a;

    /* renamed from: b */
    public final String f36463b;

    public C7178a(IBinder iBinder, String str) {
        this.f36462a = iBinder;
        this.f36463b = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f36462a;
    }

    /* renamed from: t0 */
    public final void m2224t0(int i, Parcel parcel) {
        try {
            this.f36462a.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    /* renamed from: j0 */
    public final Parcel m2226j0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f36463b);
        return obtain;
    }

    /* renamed from: o0 */
    public final void m2225o0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f36462a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
