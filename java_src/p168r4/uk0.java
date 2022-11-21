package p168r4;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.uk0 */
/* loaded from: classes2.dex */
public abstract class uk0 extends BinderC6192r2 implements vk0 {
    public uk0() {
        super("com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        sk0 sk0Var = null;
        switch (i) {
            case 1:
                InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                zk0 zk0Var = (zk0) C6229s2.m7249c(parcel, zk0.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalCallback");
                    if (queryLocalInterface instanceof sk0) {
                        sk0Var = (sk0) queryLocalInterface;
                    } else {
                        sk0Var = new qk0(readStrongBinder);
                    }
                }
                mo6130k5(m18742o0, zk0Var, sk0Var);
                parcel2.writeNoException();
                return true;
            case 2:
                zzf(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 3:
                InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, null);
                return true;
            case 4:
                InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, null);
                return true;
            case 5:
                mo6133X3(parcel.createTypedArrayList(Uri.CREATOR), InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), mf0.m9402f7(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                mo6131i3(parcel.createTypedArrayList(Uri.CREATOR), InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), mf0.m9402f7(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                mo6134V6((qf0) C6229s2.m7249c(parcel, qf0.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                mo6132a0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }

    /* renamed from: f7 */
    public static vk0 m6511f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
        if (queryLocalInterface instanceof vk0) {
            return (vk0) queryLocalInterface;
        }
        return new tk0(iBinder);
    }
}
