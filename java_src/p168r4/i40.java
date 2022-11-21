package p168r4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;
import p060f4.InterfaceC3512a;
/* renamed from: r4.i40 */
/* loaded from: classes2.dex */
public abstract class i40 extends BinderC6192r2 implements j40 {
    public i40() {
        super("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        g40 e40Var;
        switch (i) {
            case 2:
                String mo8743c = mo8743c();
                parcel2.writeNoException();
                parcel2.writeString(mo8743c);
                return true;
            case 3:
                List mo8742d = mo8742d();
                parcel2.writeNoException();
                parcel2.writeList(mo8742d);
                return true;
            case 4:
                String mo8740g = mo8740g();
                parcel2.writeNoException();
                parcel2.writeString(mo8740g);
                return true;
            case 5:
                p20 mo8741f = mo8741f();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo8741f);
                return true;
            case 6:
                String mo8737j = mo8737j();
                parcel2.writeNoException();
                parcel2.writeString(mo8737j);
                return true;
            case 7:
                String mo8739h = mo8739h();
                parcel2.writeNoException();
                parcel2.writeString(mo8739h);
                return true;
            case 8:
                double mo8738i = mo8738i();
                parcel2.writeNoException();
                parcel2.writeDouble(mo8738i);
                return true;
            case 9:
                String mo8736k = mo8736k();
                parcel2.writeNoException();
                parcel2.writeString(mo8736k);
                return true;
            case 10:
                String mo8734l = mo8734l();
                parcel2.writeNoException();
                parcel2.writeString(mo8734l);
                return true;
            case 11:
                InterfaceC6000lx mo8731p = mo8731p();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo8731p);
                return true;
            case 12:
                String mo8729q = mo8729q();
                parcel2.writeNoException();
                parcel2.writeString(mo8729q);
                return true;
            case 13:
                mo8732o();
                parcel2.writeNoException();
                return true;
            case 14:
                h20 mo8733m = mo8733m();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo8733m);
                return true;
            case 15:
                mo8728r5((Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 16:
                boolean mo8723x4 = mo8723x4((Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo8723x4);
                return true;
            case 17:
                mo8750E3((Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 18:
                InterfaceC3512a mo8726t = mo8726t();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo8726t);
                return true;
            case 19:
                InterfaceC3512a mo8751E = mo8751E();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo8751E);
                return true;
            case 20:
                Bundle mo8746K = mo8746K();
                parcel2.writeNoException();
                C6229s2.m7247e(parcel2, mo8746K);
                return true;
            case 21:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    e40Var = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
                    if (queryLocalInterface instanceof g40) {
                        e40Var = (g40) queryLocalInterface;
                    } else {
                        e40Var = new e40(readStrongBinder);
                    }
                }
                mo8735k1(e40Var);
                parcel2.writeNoException();
                return true;
            case 22:
                mo8752B();
                parcel2.writeNoException();
                return true;
            case 23:
                List mo8725v = mo8725v();
                parcel2.writeNoException();
                parcel2.writeList(mo8725v);
                return true;
            case 24:
                boolean mo8722z = mo8722z();
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo8722z);
                return true;
            case 25:
                mo8724v3(AbstractBinderC6296tw.m6700f7(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 26:
                mo8730p4(AbstractBinderC6185qw.m7656f7(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 27:
                mo8745L();
                parcel2.writeNoException();
                return true;
            case 28:
                mo8744N();
                parcel2.writeNoException();
                return true;
            case 29:
                m20 mo8749G = mo8749G();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo8749G);
                return true;
            case 30:
                boolean mo8747J = mo8747J();
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo8747J);
                return true;
            case 31:
                InterfaceC5853hx mo8748I = mo8748I();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo8748I);
                return true;
            case 32:
                mo8727s3(AbstractBinderC5704dx.m11901f7(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
