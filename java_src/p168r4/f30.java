package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;
import p060f4.InterfaceC3512a;
/* renamed from: r4.f30 */
/* loaded from: classes2.dex */
public abstract class f30 extends BinderC6192r2 implements g30 {
    public f30() {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    /* renamed from: f7 */
    public static g30 m11643f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        if (queryLocalInterface instanceof g30) {
            return (g30) queryLocalInterface;
        }
        return new d30(iBinder);
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                String mo9334H = mo9334H(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(mo9334H);
                return true;
            case 2:
                p20 mo9321s = mo9321s(parcel.readString());
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo9321s);
                return true;
            case 3:
                List<String> mo9330g = mo9330g();
                parcel2.writeNoException();
                parcel2.writeStringList(mo9330g);
                return true;
            case 4:
                String mo9331f = mo9331f();
                parcel2.writeNoException();
                parcel2.writeString(mo9331f);
                return true;
            case 5:
                mo9333P0(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                mo9328h();
                parcel2.writeNoException();
                return true;
            case 7:
                InterfaceC6000lx mo9327i = mo9327i();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo9327i);
                return true;
            case 8:
                mo9325k();
                parcel2.writeNoException();
                return true;
            case 9:
                InterfaceC3512a mo9324l = mo9324l();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo9324l);
                return true;
            case 10:
                boolean mo9326i0 = mo9326i0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo9326i0);
                return true;
            case 11:
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, null);
                return true;
            case 12:
                boolean mo9322q = mo9322q();
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo9322q);
                return true;
            case 13:
                boolean mo9323o = mo9323o();
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo9323o);
                return true;
            case 14:
                mo9332c7(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                mo9320w();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
