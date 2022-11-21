package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: androidx.room.a */
/* loaded from: classes.dex */
public interface InterfaceC0345a extends IInterface {

    /* renamed from: androidx.room.a$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC0346a extends Binder implements InterfaceC0345a {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("androidx.room.IMultiInstanceInvalidationCallback");
                return true;
            }
            parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationCallback");
            mo26721O1(parcel.createStringArray());
            return true;
        }

        /* renamed from: androidx.room.a$a$a */
        /* loaded from: classes.dex */
        public static class C0347a implements InterfaceC0345a {

            /* renamed from: a */
            public IBinder f1259a;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f1259a;
            }

            public C0347a(IBinder iBinder) {
                this.f1259a = iBinder;
            }

            @Override // androidx.room.InterfaceC0345a
            /* renamed from: O1 */
            public void mo26721O1(String[] strArr) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationCallback");
                    obtain.writeStringArray(strArr);
                    this.f1259a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        /* renamed from: j0 */
        public static InterfaceC0345a m26746j0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
            if (queryLocalInterface != null && (queryLocalInterface instanceof InterfaceC0345a)) {
                return (InterfaceC0345a) queryLocalInterface;
            }
            return new C0347a(iBinder);
        }

        public AbstractBinderC0346a() {
            attachInterface(this, "androidx.room.IMultiInstanceInvalidationCallback");
        }
    }

    /* renamed from: O1 */
    void mo26721O1(String[] strArr);
}
