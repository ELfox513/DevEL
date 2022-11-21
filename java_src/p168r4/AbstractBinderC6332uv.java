package p168r4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.uv */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC6332uv extends BinderC6192r2 implements InterfaceC6369vv {
    public AbstractBinderC6332uv() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        InterfaceC5887iv interfaceC5887iv = null;
        InterfaceC5962kw interfaceC5962kw = null;
        InterfaceC5998lv interfaceC5998lv = null;
        InterfaceC5742ex interfaceC5742ex = null;
        InterfaceC6517zv interfaceC6517zv = null;
        C5815gw c5815gw = null;
        InterfaceC5740ev interfaceC5740ev = null;
        InterfaceC5666cw interfaceC5666cw = null;
        switch (i) {
            case 1:
                InterfaceC3512a mo968j = mo968j();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo968j);
                return true;
            case 2:
                mo973h();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean mo970i = mo970i();
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo970i);
                return true;
            case 4:
                boolean mo948w5 = mo948w5((C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR));
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo948w5);
                return true;
            case 5:
                mo965l();
                parcel2.writeNoException();
                return true;
            case 6:
                mo959p();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    if (queryLocalInterface instanceof InterfaceC5887iv) {
                        interfaceC5887iv = (InterfaceC5887iv) queryLocalInterface;
                    } else {
                        interfaceC5887iv = new C5777fv(readStrongBinder);
                    }
                }
                mo980S1(interfaceC5887iv);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    if (queryLocalInterface2 instanceof InterfaceC5666cw) {
                        interfaceC5666cw = (InterfaceC5666cw) queryLocalInterface2;
                    } else {
                        interfaceC5666cw = new C5593aw(readStrongBinder2);
                    }
                }
                mo951v4(interfaceC5666cw);
                parcel2.writeNoException();
                return true;
            case 9:
                mo956r();
                parcel2.writeNoException();
                return true;
            case 10:
                parcel2.writeNoException();
                return true;
            case 11:
                mo962n();
                parcel2.writeNoException();
                return true;
            case 12:
                C6478yt mo953t = mo953t();
                parcel2.writeNoException();
                C6229s2.m7247e(parcel2, mo953t);
                return true;
            case 13:
                mo981S0((C6478yt) C6229s2.m7249c(parcel, C6478yt.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                mo994B2(ef0.m11798f7(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                mo990E5(jf0.m10297f7(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                String mo995B = mo995B();
                parcel2.writeNoException();
                parcel2.writeString(mo995B);
                return true;
            case 19:
                mo992C1(m00.m9526f7(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    if (queryLocalInterface3 instanceof InterfaceC5740ev) {
                        interfaceC5740ev = (InterfaceC5740ev) queryLocalInterface3;
                    } else {
                        interfaceC5740ev = new C5665cv(readStrongBinder3);
                    }
                }
                mo993B6(interfaceC5740ev);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    if (queryLocalInterface4 instanceof C5815gw) {
                        c5815gw = (C5815gw) queryLocalInterface4;
                    } else {
                        c5815gw = new C5815gw(readStrongBinder4);
                    }
                }
                mo972h4(c5815gw);
                parcel2.writeNoException();
                return true;
            case 22:
                mo986J4(C6229s2.m7251a(parcel));
                parcel2.writeNoException();
                return true;
            case 23:
                boolean mo987I = mo987I();
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo987I);
                return true;
            case 24:
                mo989G1(kh0.m10027f7(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 25:
                mo947x1(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 26:
                InterfaceC6000lx mo949w0 = mo949w0();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo949w0);
                return true;
            case 29:
                mo976Z1((C6446xy) C6229s2.m7249c(parcel, C6446xy.CREATOR));
                parcel2.writeNoException();
                return true;
            case 30:
                mo979S5((C6149px) C6229s2.m7249c(parcel, C6149px.CREATOR));
                parcel2.writeNoException();
                return true;
            case 31:
                String mo983P = mo983P();
                parcel2.writeNoException();
                parcel2.writeString(mo983P);
                return true;
            case 32:
                InterfaceC5666cw mo945y = mo945y();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo945y);
                return true;
            case 33:
                InterfaceC5887iv mo985L = mo985L();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo985L);
                return true;
            case 34:
                mo996A0(C6229s2.m7251a(parcel));
                parcel2.writeNoException();
                return true;
            case 35:
                String mo952v = mo952v();
                parcel2.writeNoException();
                parcel2.writeString(mo952v);
                return true;
            case 36:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    if (queryLocalInterface5 instanceof InterfaceC6517zv) {
                        interfaceC6517zv = (InterfaceC6517zv) queryLocalInterface5;
                    } else {
                        interfaceC6517zv = new C6443xv(readStrongBinder5);
                    }
                }
                mo988H6(interfaceC6517zv);
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle mo950w = mo950w();
                parcel2.writeNoException();
                C6229s2.m7247e(parcel2, mo950w);
                return true;
            case 38:
                mo946x3(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 39:
                mo991D1((C5739eu) C6229s2.m7249c(parcel, C5739eu.CREATOR));
                parcel2.writeNoException();
                return true;
            case 40:
                mo977Y1(AbstractBinderC5770fo.m11459f7(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 41:
                InterfaceC5853hx mo944z = mo944z();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo944z);
                return true;
            case 42:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
                    if (queryLocalInterface6 instanceof InterfaceC5742ex) {
                        interfaceC5742ex = (InterfaceC5742ex) queryLocalInterface6;
                    } else {
                        interfaceC5742ex = new C5667cx(readStrongBinder6);
                    }
                }
                mo978X4(interfaceC5742ex);
                parcel2.writeNoException();
                return true;
            case 43:
                C6293tt c6293tt = (C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR);
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoadCallback");
                    if (queryLocalInterface7 instanceof InterfaceC5998lv) {
                        interfaceC5998lv = (InterfaceC5998lv) queryLocalInterface7;
                    } else {
                        interfaceC5998lv = new C5924jv(readStrongBinder7);
                    }
                }
                mo982Q5(c6293tt, interfaceC5998lv);
                parcel2.writeNoException();
                return true;
            case 44:
                mo984L1(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 45:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
                    if (queryLocalInterface8 instanceof InterfaceC5962kw) {
                        interfaceC5962kw = (InterfaceC5962kw) queryLocalInterface8;
                    } else {
                        interfaceC5962kw = new C5852hw(readStrongBinder8);
                    }
                }
                mo954s5(interfaceC5962kw);
                parcel2.writeNoException();
                return true;
        }
    }
}
