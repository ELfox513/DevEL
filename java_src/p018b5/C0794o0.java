package p018b5;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: b5.o0 */
/* loaded from: classes2.dex */
public class C0794o0 implements IInterface {

    /* renamed from: a */
    public final IBinder f2068a;

    /* renamed from: b */
    public final String f2069b;

    public C0794o0(IBinder iBinder, String str) {
        this.f2068a = iBinder;
        this.f2069b = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f2068a;
    }

    /* renamed from: j0 */
    public final Parcel m25564j0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f2069b);
        return obtain;
    }

    /* renamed from: o0 */
    public final Parcel m25563o0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f2068a.transact(i, parcel, obtain, 0);
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

    /* renamed from: t0 */
    public final void m25562t0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f2068a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
