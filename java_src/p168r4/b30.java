package p168r4;

import android.os.Bundle;
import android.os.Parcel;
import java.util.List;
import p060f4.InterfaceC3512a;
/* renamed from: r4.b30 */
/* loaded from: classes2.dex */
public abstract class b30 extends BinderC6192r2 implements c30 {
    public b30() {
        super("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 2:
                InterfaceC3512a mo10244a = mo10244a();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo10244a);
                return true;
            case 3:
                String mo10243b = mo10243b();
                parcel2.writeNoException();
                parcel2.writeString(mo10243b);
                return true;
            case 4:
                List mo10240e = mo10240e();
                parcel2.writeNoException();
                parcel2.writeList(mo10240e);
                return true;
            case 5:
                String mo10242c = mo10242c();
                parcel2.writeNoException();
                parcel2.writeString(mo10242c);
                return true;
            case 6:
                p20 mo10241d = mo10241d();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo10241d);
                return true;
            case 7:
                String mo10237g = mo10237g();
                parcel2.writeNoException();
                parcel2.writeString(mo10237g);
                return true;
            case 8:
                String mo10238f = mo10238f();
                parcel2.writeNoException();
                parcel2.writeString(mo10238f);
                return true;
            case 9:
                Bundle mo10234j = mo10234j();
                parcel2.writeNoException();
                C6229s2.m7247e(parcel2, mo10234j);
                return true;
            case 10:
                mo10236h();
                parcel2.writeNoException();
                return true;
            case 11:
                InterfaceC6000lx mo10235i = mo10235i();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo10235i);
                return true;
            case 12:
                mo10245U3((Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                boolean mo10246B3 = mo10246B3((Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo10246B3);
                return true;
            case 14:
                mo10239e0((Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                h20 mo10231q = mo10231q();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo10231q);
                return true;
            case 16:
                InterfaceC3512a mo10232o = mo10232o();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo10232o);
                return true;
            case 17:
                String mo10233m = mo10233m();
                parcel2.writeNoException();
                parcel2.writeString(mo10233m);
                return true;
            default:
                return false;
        }
    }
}
