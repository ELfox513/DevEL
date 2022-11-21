package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: r4.q2 */
/* loaded from: classes2.dex */
public class C6155q2 implements IInterface {

    /* renamed from: a */
    public final IBinder f29884a;

    /* renamed from: b */
    public final String f29885b;

    public C6155q2(IBinder iBinder, String str) {
        this.f29884a = iBinder;
        this.f29885b = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f29884a;
    }

    /* renamed from: L0 */
    public final void m8075L0(int i, Parcel parcel) {
        try {
            this.f29884a.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    /* renamed from: j0 */
    public final Parcel m8074j0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f29885b);
        return obtain;
    }

    /* renamed from: o0 */
    public final Parcel m8073o0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f29884a.transact(i, parcel, obtain, 0);
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
    public final void m8072t0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f29884a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
