package p177s4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: s4.a */
/* loaded from: classes2.dex */
public class C6580a implements IInterface {

    /* renamed from: a */
    public final IBinder f35142a;

    /* renamed from: b */
    public final String f35143b;

    public C6580a(IBinder iBinder, String str) {
        this.f35142a = iBinder;
        this.f35143b = str;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f35142a;
    }

    /* renamed from: j0 */
    public final Parcel m3880j0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f35143b);
        return obtain;
    }

    /* renamed from: o0 */
    public final Parcel m3879o0(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f35142a.transact(i, parcel, obtain, 0);
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
