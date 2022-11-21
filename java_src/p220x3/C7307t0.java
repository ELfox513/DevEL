package p220x3;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: x3.t0 */
/* loaded from: classes.dex */
public final class C7307t0 implements InterfaceC7283m {

    /* renamed from: a */
    public final IBinder f36802a;

    public C7307t0(IBinder iBinder) {
        this.f36802a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f36802a;
    }

    @Override // p220x3.InterfaceC7283m
    /* renamed from: X2 */
    public final void mo1858X2(InterfaceC7280l interfaceC7280l, C7261f c7261f) {
        IBinder iBinder;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (interfaceC7280l != null) {
                iBinder = interfaceC7280l.asBinder();
            } else {
                iBinder = null;
            }
            obtain.writeStrongBinder(iBinder);
            if (c7261f != null) {
                obtain.writeInt(1);
                C7279k1.m1926a(c7261f, obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.f36802a.transact(46, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
