package p168r4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.hb0 */
/* loaded from: classes2.dex */
public abstract class hb0 extends BinderC6192r2 implements ib0 {
    public hb0() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        lb0 lb0Var = null;
        switch (i) {
            case 1:
                InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                C6478yt c6478yt = (C6478yt) C6229s2.m7249c(parcel, C6478yt.CREATOR);
                C6293tt c6293tt = (C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface instanceof lb0) {
                        lb0Var = (lb0) queryLocalInterface;
                    } else {
                        lb0Var = new jb0(readStrongBinder);
                    }
                }
                mo10342N2(m18742o0, c6478yt, c6293tt, readString, lb0Var);
                parcel2.writeNoException();
                return true;
            case 2:
                InterfaceC3512a mo10332d = mo10332d();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo10332d);
                return true;
            case 3:
                InterfaceC3512a m18742o02 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                C6293tt c6293tt2 = (C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface2 instanceof lb0) {
                        lb0Var = (lb0) queryLocalInterface2;
                    } else {
                        lb0Var = new jb0(readStrongBinder2);
                    }
                }
                mo10313t1(m18742o02, c6293tt2, readString2, lb0Var);
                parcel2.writeNoException();
                return true;
            case 4:
                mo10331f();
                parcel2.writeNoException();
                return true;
            case 5:
                mo10327j();
                parcel2.writeNoException();
                return true;
            case 6:
                InterfaceC3512a m18742o03 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                C6478yt c6478yt2 = (C6478yt) C6229s2.m7249c(parcel, C6478yt.CREATOR);
                C6293tt c6293tt3 = (C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface3 instanceof lb0) {
                        lb0Var = (lb0) queryLocalInterface3;
                    } else {
                        lb0Var = new jb0(readStrongBinder3);
                    }
                }
                mo10330f6(m18742o03, c6478yt2, c6293tt3, readString3, readString4, lb0Var);
                parcel2.writeNoException();
                return true;
            case 7:
                InterfaceC3512a m18742o04 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                C6293tt c6293tt4 = (C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface4 instanceof lb0) {
                        lb0Var = (lb0) queryLocalInterface4;
                    } else {
                        lb0Var = new jb0(readStrongBinder4);
                    }
                }
                mo10311w2(m18742o04, c6293tt4, readString5, readString6, lb0Var);
                parcel2.writeNoException();
                return true;
            case 8:
                mo10325k();
                parcel2.writeNoException();
                return true;
            case 9:
                mo10323l();
                parcel2.writeNoException();
                return true;
            case 10:
                mo10335a2(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), (C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR), parcel.readString(), ph0.m8327f7(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                mo10338U5((C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 12:
                mo10318o();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean mo10320m = mo10320m();
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, mo10320m);
                return true;
            case 14:
                InterfaceC3512a m18742o05 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                C6293tt c6293tt5 = (C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR);
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface5 instanceof lb0) {
                        lb0Var = (lb0) queryLocalInterface5;
                    } else {
                        lb0Var = new jb0(readStrongBinder5);
                    }
                }
                mo10321l5(m18742o05, c6293tt5, readString7, readString8, lb0Var, (d20) C6229s2.m7249c(parcel, d20.CREATOR), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 15:
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, null);
                return true;
            case 16:
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, null);
                return true;
            case 17:
                Bundle mo10315r = mo10315r();
                parcel2.writeNoException();
                C6229s2.m7247e(parcel2, mo10315r);
                return true;
            case 18:
                Bundle mo10319n = mo10319n();
                parcel2.writeNoException();
                C6229s2.m7247e(parcel2, mo10319n);
                return true;
            case 19:
                Bundle mo10314t = mo10314t();
                parcel2.writeNoException();
                C6229s2.m7247e(parcel2, mo10314t);
                return true;
            case 20:
                mo10316q6((C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 21:
                mo10344G0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                parcel2.writeNoException();
                C6229s2.m7250b(parcel2, false);
                return true;
            case 23:
                mo10317o5(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), ph0.m8327f7(parcel.readStrongBinder()), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 24:
                g30 mo10312v = mo10312v();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo10312v);
                return true;
            case 25:
                mo10326j3(C6229s2.m7251a(parcel));
                parcel2.writeNoException();
                return true;
            case 26:
                InterfaceC6000lx mo10339P = mo10339P();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo10339P);
                return true;
            case 27:
                ub0 mo10310y = mo10310y();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo10310y);
                return true;
            case 28:
                InterfaceC3512a m18742o06 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                C6293tt c6293tt6 = (C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR);
                String readString9 = parcel.readString();
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface6 instanceof lb0) {
                        lb0Var = (lb0) queryLocalInterface6;
                    } else {
                        lb0Var = new jb0(readStrongBinder6);
                    }
                }
                mo10334a7(m18742o06, c6293tt6, readString9, lb0Var);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case 30:
                mo10346D4(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 31:
                mo10340O2(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()), j70.m10393f7(parcel.readStrongBinder()), parcel.createTypedArrayList(q70.CREATOR));
                parcel2.writeNoException();
                return true;
            case 32:
                InterfaceC3512a m18742o07 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                C6293tt c6293tt7 = (C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR);
                String readString10 = parcel.readString();
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface7 instanceof lb0) {
                        lb0Var = (lb0) queryLocalInterface7;
                    } else {
                        lb0Var = new jb0(readStrongBinder7);
                    }
                }
                mo10345F2(m18742o07, c6293tt7, readString10, lb0Var);
                parcel2.writeNoException();
                return true;
            case 33:
                rd0 mo10343I = mo10343I();
                parcel2.writeNoException();
                C6229s2.m7247e(parcel2, mo10343I);
                return true;
            case 34:
                rd0 mo10337X = mo10337X();
                parcel2.writeNoException();
                C6229s2.m7247e(parcel2, mo10337X);
                return true;
            case 35:
                InterfaceC3512a m18742o08 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                C6478yt c6478yt3 = (C6478yt) C6229s2.m7249c(parcel, C6478yt.CREATOR);
                C6293tt c6293tt8 = (C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR);
                String readString11 = parcel.readString();
                String readString12 = parcel.readString();
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface8 instanceof lb0) {
                        lb0Var = (lb0) queryLocalInterface8;
                    } else {
                        lb0Var = new jb0(readStrongBinder8);
                    }
                }
                mo10322l4(m18742o08, c6478yt3, c6293tt8, readString11, readString12, lb0Var);
                parcel2.writeNoException();
                return true;
            case 36:
                ob0 mo10324k0 = mo10324k0();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo10324k0);
                return true;
            case 37:
                mo10333c4(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
        }
    }
}
