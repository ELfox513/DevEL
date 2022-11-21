package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;
import p060f4.InterfaceC3512a;
/* renamed from: r4.mw */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC6036mw extends BinderC6192r2 implements InterfaceC6074nw {
    public AbstractBinderC6036mw() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        InterfaceC6481yw c6407ww;
        switch (i) {
            case 1:
                mo8563c();
                parcel2.writeNoException();
                return true;
            case 2:
                mo8561j2(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case 3:
                mo8567Q(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 4:
                mo8570H0(C6229s2.m7251a(parcel));
                parcel2.writeNoException();
                return true;
            case 5:
                mo8568O5(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                mo8557p5(parcel.readString(), InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                float mo8562i = mo8562i();
                parcel2.writeNoException();
                parcel2.writeFloat(mo8562i);
                return true;
            case 8:
                boolean mo8560k = mo8560k();
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo8560k);
                return true;
            case 9:
                String mo8559l = mo8559l();
                parcel2.writeNoException();
                parcel2.writeString(mo8559l);
                return true;
            case 10:
                mo8571B0(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                mo8555s1(eb0.m11830f7(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 12:
                mo8565Y0(m70.m9470f7(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 13:
                List<g70> mo8558m = mo8558m();
                parcel2.writeNoException();
                parcel2.writeTypedList(mo8558m);
                return true;
            case 14:
                mo8566S2((C6261sy) C6229s2.m7249c(parcel, C6261sy.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                mo8556r();
                parcel2.writeNoException();
                return true;
            case 16:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c6407ww = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
                    if (queryLocalInterface instanceof InterfaceC6481yw) {
                        c6407ww = (InterfaceC6481yw) queryLocalInterface;
                    } else {
                        c6407ww = new C6407ww(readStrongBinder);
                    }
                }
                mo8569N5(c6407ww);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
