package p168r4;

import android.os.Bundle;
import android.os.Parcel;
import java.util.List;
import java.util.Map;
import p060f4.InterfaceC3512a;
/* renamed from: r4.wt0 */
/* loaded from: classes2.dex */
public abstract class wt0 extends BinderC6192r2 implements xt0 {
    public wt0() {
        super("com.google.android.gms.ads.measurement.IAppMeasurementProxy");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                mo5007B4((Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                Bundle mo5006G3 = mo5006G3((Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                C6229s2.m7247e(parcel2, mo5006G3);
                return true;
            case 3:
                mo4992u1(parcel.readString(), parcel.readString(), (Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 4:
                mo5002R5(parcel.readString(), parcel.readString(), InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 5:
                Map mo5004O4 = mo5004O4(parcel.readString(), parcel.readString(), C6229s2.m7251a(parcel));
                parcel2.writeNoException();
                parcel2.writeMap(mo5004O4);
                return true;
            case 6:
                int mo5003Q = mo5003Q(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(mo5003Q);
                return true;
            case 7:
                mo4996l0((Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                mo5001U2(parcel.readString(), parcel.readString(), (Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                List mo4999i4 = mo4999i4(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeList(mo4999i4);
                return true;
            case 10:
                String mo5000i = mo5000i();
                parcel2.writeNoException();
                parcel2.writeString(mo5000i);
                return true;
            case 11:
                String mo4998k = mo4998k();
                parcel2.writeNoException();
                parcel2.writeString(mo4998k);
                return true;
            case 12:
                long mo4997l = mo4997l();
                parcel2.writeNoException();
                parcel2.writeLong(mo4997l);
                return true;
            case 13:
                mo5008B0(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 14:
                mo5005J0(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 15:
                mo4990z3(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
                String mo4991w = mo4991w();
                parcel2.writeNoException();
                parcel2.writeString(mo4991w);
                return true;
            case 17:
                String mo4994r = mo4994r();
                parcel2.writeNoException();
                parcel2.writeString(mo4994r);
                return true;
            case 18:
                String mo4995n = mo4995n();
                parcel2.writeNoException();
                parcel2.writeString(mo4995n);
                return true;
            case 19:
                mo4993r0((Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
