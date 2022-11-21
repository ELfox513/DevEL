package p000a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: a.b */
/* loaded from: classes.dex */
public interface InterfaceC0002b extends IInterface {

    /* renamed from: a.b$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC0003a extends Binder implements InterfaceC0002b {

        /* renamed from: a.b$a$a */
        /* loaded from: classes.dex */
        public static class C0004a implements InterfaceC0002b {

            /* renamed from: a */
            public IBinder f0a;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f0a;
            }

            public C0004a(IBinder iBinder) {
                this.f0a = iBinder;
            }

            @Override // p000a.InterfaceC0002b
            /* renamed from: E2 */
            public boolean mo27842E2(InterfaceC0000a interfaceC0000a) {
                IBinder iBinder;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    if (interfaceC0000a != null) {
                        iBinder = interfaceC0000a.asBinder();
                    } else {
                        iBinder = null;
                    }
                    obtain.writeStrongBinder(iBinder);
                    boolean z = false;
                    this.f0a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // p000a.InterfaceC0002b
            /* renamed from: a3 */
            public boolean mo27841a3(long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeLong(j);
                    boolean z = false;
                    this.f0a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        /* renamed from: j0 */
        public static InterfaceC0002b m27843j0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.ICustomTabsService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof InterfaceC0002b)) {
                return (InterfaceC0002b) queryLocalInterface;
            }
            return new C0004a(iBinder);
        }
    }

    /* renamed from: E2 */
    boolean mo27842E2(InterfaceC0000a interfaceC0000a);

    /* renamed from: a3 */
    boolean mo27841a3(long j);
}
