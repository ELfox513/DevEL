package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.room.InterfaceC0345a;
/* renamed from: androidx.room.b */
/* loaded from: classes.dex */
public interface InterfaceC0348b extends IInterface {

    /* renamed from: androidx.room.b$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC0349a extends Binder implements InterfaceC0348b {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 1598968902) {
                            return super.onTransact(i, parcel, parcel2, i2);
                        }
                        parcel2.writeString("androidx.room.IMultiInstanceInvalidationService");
                        return true;
                    }
                    parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                    mo26742u6(parcel.readInt(), parcel.createStringArray());
                    return true;
                }
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                mo26744S6(InterfaceC0345a.AbstractBinderC0346a.m26746j0(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
            int mo26743s2 = mo26743s2(InterfaceC0345a.AbstractBinderC0346a.m26746j0(parcel.readStrongBinder()), parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(mo26743s2);
            return true;
        }

        /* renamed from: androidx.room.b$a$a */
        /* loaded from: classes.dex */
        public static class C0350a implements InterfaceC0348b {

            /* renamed from: a */
            public IBinder f1260a;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f1260a;
            }

            public C0350a(IBinder iBinder) {
                this.f1260a = iBinder;
            }

            @Override // androidx.room.InterfaceC0348b
            /* renamed from: S6 */
            public void mo26744S6(InterfaceC0345a interfaceC0345a, int i) {
                IBinder iBinder;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    if (interfaceC0345a != null) {
                        iBinder = interfaceC0345a.asBinder();
                    } else {
                        iBinder = null;
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeInt(i);
                    this.f1260a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // androidx.room.InterfaceC0348b
            /* renamed from: s2 */
            public int mo26743s2(InterfaceC0345a interfaceC0345a, String str) {
                IBinder iBinder;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    if (interfaceC0345a != null) {
                        iBinder = interfaceC0345a.asBinder();
                    } else {
                        iBinder = null;
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeString(str);
                    this.f1260a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // androidx.room.InterfaceC0348b
            /* renamed from: u6 */
            public void mo26742u6(int i, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    obtain.writeInt(i);
                    obtain.writeStringArray(strArr);
                    this.f1260a.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        /* renamed from: j0 */
        public static InterfaceC0348b m26745j0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof InterfaceC0348b)) {
                return (InterfaceC0348b) queryLocalInterface;
            }
            return new C0350a(iBinder);
        }

        public AbstractBinderC0349a() {
            attachInterface(this, "androidx.room.IMultiInstanceInvalidationService");
        }
    }

    /* renamed from: S6 */
    void mo26744S6(InterfaceC0345a interfaceC0345a, int i);

    /* renamed from: s2 */
    int mo26743s2(InterfaceC0345a interfaceC0345a, String str);

    /* renamed from: u6 */
    void mo26742u6(int i, String[] strArr);
}
