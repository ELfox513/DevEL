package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.co */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC5658co extends BinderC6192r2 implements InterfaceC5695do {
    public AbstractBinderC5658co() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        C5881io c5881io = null;
        InterfaceC5954ko interfaceC5954ko = null;
        switch (i) {
            case 2:
                InterfaceC6369vv mo12078c = mo12078c();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo12078c);
                return true;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
                    if (queryLocalInterface instanceof C5881io) {
                        c5881io = (C5881io) queryLocalInterface;
                    } else {
                        c5881io = new C5881io(readStrongBinder);
                    }
                }
                mo12076g3(c5881io);
                parcel2.writeNoException();
                return true;
            case 4:
                InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
                    if (queryLocalInterface2 instanceof InterfaceC5954ko) {
                        interfaceC5954ko = (InterfaceC5954ko) queryLocalInterface2;
                    } else {
                        interfaceC5954ko = new C5917jo(readStrongBinder2);
                    }
                }
                mo12075m3(m18742o0, interfaceC5954ko);
                parcel2.writeNoException();
                return true;
            case 5:
                InterfaceC5853hx mo12077g = mo12077g();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo12077g);
                return true;
            case 6:
                mo12080H0(C6229s2.m7251a(parcel));
                parcel2.writeNoException();
                return true;
            case 7:
                mo12079Y4(AbstractBinderC5704dx.m11901f7(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
