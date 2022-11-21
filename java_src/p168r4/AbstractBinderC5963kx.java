package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: r4.kx */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC5963kx extends BinderC6192r2 implements InterfaceC6000lx {
    public AbstractBinderC5963kx() {
        super("com.google.android.gms.ads.internal.client.IVideoController");
    }

    /* renamed from: f7 */
    public static InterfaceC6000lx m9853f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
        if (queryLocalInterface instanceof InterfaceC6000lx) {
            return (InterfaceC6000lx) queryLocalInterface;
        }
        return new C5926jx(iBinder);
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        InterfaceC6112ox c6037mx;
        switch (i) {
            case 1:
                mo6188c();
                parcel2.writeNoException();
                return true;
            case 2:
                mo6187d();
                parcel2.writeNoException();
                return true;
            case 3:
                mo6180n0(C6229s2.m7251a(parcel));
                parcel2.writeNoException();
                return true;
            case 4:
                boolean mo6186f = mo6186f();
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo6186f);
                return true;
            case 5:
                int mo6183j = mo6183j();
                parcel2.writeNoException();
                parcel2.writeInt(mo6183j);
                return true;
            case 6:
                float mo6185h = mo6185h();
                parcel2.writeNoException();
                parcel2.writeFloat(mo6185h);
                return true;
            case 7:
                float mo6184i = mo6184i();
                parcel2.writeNoException();
                parcel2.writeFloat(mo6184i);
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c6037mx = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
                    if (queryLocalInterface instanceof InterfaceC6112ox) {
                        c6037mx = (InterfaceC6112ox) queryLocalInterface;
                    } else {
                        c6037mx = new C6037mx(readStrongBinder);
                    }
                }
                mo6189U4(c6037mx);
                parcel2.writeNoException();
                return true;
            case 9:
                float mo6182l = mo6182l();
                parcel2.writeNoException();
                parcel2.writeFloat(mo6182l);
                return true;
            case 10:
                boolean mo6178p = mo6178p();
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo6178p);
                return true;
            case 11:
                InterfaceC6112ox mo6177q = mo6177q();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo6177q);
                return true;
            case 12:
                boolean mo6179o = mo6179o();
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo6179o);
                return true;
            case 13:
                mo6181m();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
