package p168r4;

import android.os.Bundle;
import android.os.Parcel;
import java.util.List;
import p060f4.InterfaceC3512a;
/* renamed from: r4.z20 */
/* loaded from: classes2.dex */
public abstract class z20 extends BinderC6192r2 implements a30 {
    public z20() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 2:
                InterfaceC3512a mo10855a = mo10855a();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo10855a);
                return true;
            case 3:
                String mo10854b = mo10854b();
                parcel2.writeNoException();
                parcel2.writeString(mo10854b);
                return true;
            case 4:
                List mo10851e = mo10851e();
                parcel2.writeNoException();
                parcel2.writeList(mo10851e);
                return true;
            case 5:
                String mo10853c = mo10853c();
                parcel2.writeNoException();
                parcel2.writeString(mo10853c);
                return true;
            case 6:
                p20 mo10852d = mo10852d();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo10852d);
                return true;
            case 7:
                String mo10848g = mo10848g();
                parcel2.writeNoException();
                parcel2.writeString(mo10848g);
                return true;
            case 8:
                double mo10849f = mo10849f();
                parcel2.writeNoException();
                parcel2.writeDouble(mo10849f);
                return true;
            case 9:
                String mo10845j = mo10845j();
                parcel2.writeNoException();
                parcel2.writeString(mo10845j);
                return true;
            case 10:
                String mo10847h = mo10847h();
                parcel2.writeNoException();
                parcel2.writeString(mo10847h);
                return true;
            case 11:
                Bundle mo10846i = mo10846i();
                parcel2.writeNoException();
                C6229s2.m7247e(parcel2, mo10846i);
                return true;
            case 12:
                mo10844k();
                parcel2.writeNoException();
                return true;
            case 13:
                InterfaceC6000lx mo10843l = mo10843l();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo10843l);
                return true;
            case 14:
                mo10850e0((Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                boolean mo10839u0 = mo10839u0((Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo10839u0);
                return true;
            case 16:
                mo10840r0((Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 17:
                h20 mo10842m = mo10842m();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo10842m);
                return true;
            case 18:
                InterfaceC3512a mo10838w = mo10838w();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo10838w);
                return true;
            case 19:
                String mo10841r = mo10841r();
                parcel2.writeNoException();
                parcel2.writeString(mo10841r);
                return true;
            default:
                return false;
        }
    }
}
