package p006a5;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: a5.h */
/* loaded from: classes2.dex */
public class C0094h implements IInterface {

    /* renamed from: a */
    public final IBinder f159a;

    /* renamed from: b */
    public final String f160b;

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f159a;
    }

    public C0094h(IBinder iBinder, String str) {
        this.f159a = iBinder;
        this.f160b = str;
    }

    /* renamed from: j0 */
    public final Parcel m27680j0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f160b);
        return obtain;
    }

    /* renamed from: o0 */
    public final Parcel m27679o0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f159a.transact(i, parcel, obtain, 0);
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
    public final void m27678t0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f159a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
