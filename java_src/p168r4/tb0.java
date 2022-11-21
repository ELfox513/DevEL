package p168r4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;
import p060f4.InterfaceC3512a;
/* renamed from: r4.tb0 */
/* loaded from: classes2.dex */
public abstract class tb0 extends BinderC6192r2 implements ub0 {
    public tb0() {
        super("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    /* renamed from: f7 */
    public static ub0 m6890f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
        if (queryLocalInterface instanceof ub0) {
            return (ub0) queryLocalInterface;
        }
        return new sb0(iBinder);
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 2:
                String mo6584c = mo6584c();
                parcel2.writeNoException();
                parcel2.writeString(mo6584c);
                return true;
            case 3:
                List mo6583d = mo6583d();
                parcel2.writeNoException();
                parcel2.writeList(mo6583d);
                return true;
            case 4:
                String mo6580g = mo6580g();
                parcel2.writeNoException();
                parcel2.writeString(mo6580g);
                return true;
            case 5:
                p20 mo6581f = mo6581f();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo6581f);
                return true;
            case 6:
                String mo6577j = mo6577j();
                parcel2.writeNoException();
                parcel2.writeString(mo6577j);
                return true;
            case 7:
                String mo6579h = mo6579h();
                parcel2.writeNoException();
                parcel2.writeString(mo6579h);
                return true;
            case 8:
                double mo6578i = mo6578i();
                parcel2.writeNoException();
                parcel2.writeDouble(mo6578i);
                return true;
            case 9:
                String mo6576k = mo6576k();
                parcel2.writeNoException();
                parcel2.writeString(mo6576k);
                return true;
            case 10:
                String mo6575l = mo6575l();
                parcel2.writeNoException();
                parcel2.writeString(mo6575l);
                return true;
            case 11:
                InterfaceC6000lx mo6571p = mo6571p();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo6571p);
                return true;
            case 12:
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, null);
                return true;
            case 13:
                InterfaceC3512a mo6572o = mo6572o();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo6572o);
                return true;
            case 14:
                InterfaceC3512a mo6574m = mo6574m();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo6574m);
                return true;
            case 15:
                InterfaceC3512a mo6566w = mo6566w();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo6566w);
                return true;
            case 16:
                Bundle mo6569r = mo6569r();
                parcel2.writeNoException();
                C6229s2.m7247e(parcel2, mo6569r);
                return true;
            case 17:
                boolean mo6573n = mo6573n();
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo6573n);
                return true;
            case 18:
                boolean mo6568t = mo6568t();
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo6568t);
                return true;
            case 19:
                mo6588E();
                parcel2.writeNoException();
                return true;
            case 20:
                mo6587G0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 21:
                mo6582d5(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                mo6586L5(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 23:
                float mo6567v = mo6567v();
                parcel2.writeNoException();
                parcel2.writeFloat(mo6567v);
                return true;
            case 24:
                float mo6565z = mo6565z();
                parcel2.writeNoException();
                parcel2.writeFloat(mo6565z);
                return true;
            case 25:
                float mo6585P = mo6585P();
                parcel2.writeNoException();
                parcel2.writeFloat(mo6585P);
                return true;
            default:
                return false;
        }
    }
}
