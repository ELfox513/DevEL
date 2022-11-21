package p168r4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import p060f4.InterfaceC3512a;
/* renamed from: r4.dd0 */
/* loaded from: classes2.dex */
public abstract class dd0 extends BinderC6192r2 implements ed0 {
    public dd0() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        hd0 fd0Var;
        hd0 hd0Var;
        sc0 sc0Var = null;
        yc0 wc0Var = null;
        sc0 pc0Var = null;
        bd0 zc0Var = null;
        yc0 wc0Var2 = null;
        bd0 zc0Var2 = null;
        vc0 tc0Var = null;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 5) {
                        if (i != 10) {
                            if (i != 11) {
                                switch (i) {
                                    case 13:
                                        String readString = parcel.readString();
                                        String readString2 = parcel.readString();
                                        C6293tt c6293tt = (C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR);
                                        InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                                        IBinder readStrongBinder = parcel.readStrongBinder();
                                        if (readStrongBinder != null) {
                                            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                                            if (queryLocalInterface instanceof sc0) {
                                                sc0Var = (sc0) queryLocalInterface;
                                            } else {
                                                sc0Var = new pc0(readStrongBinder);
                                            }
                                        }
                                        mo8355K1(readString, readString2, c6293tt, m18742o0, sc0Var, kb0.m10062f7(parcel.readStrongBinder()), (C6478yt) C6229s2.m7249c(parcel, C6478yt.CREATOR));
                                        parcel2.writeNoException();
                                        break;
                                    case 14:
                                        String readString3 = parcel.readString();
                                        String readString4 = parcel.readString();
                                        C6293tt c6293tt2 = (C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR);
                                        InterfaceC3512a m18742o02 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                                        IBinder readStrongBinder2 = parcel.readStrongBinder();
                                        if (readStrongBinder2 != null) {
                                            IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                                            if (queryLocalInterface2 instanceof vc0) {
                                                tc0Var = (vc0) queryLocalInterface2;
                                            } else {
                                                tc0Var = new tc0(readStrongBinder2);
                                            }
                                        }
                                        mo8357G4(readString3, readString4, c6293tt2, m18742o02, tc0Var, kb0.m10062f7(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        break;
                                    case 15:
                                        boolean mo8343s0 = mo8343s0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        C6229s2.m7250b(parcel2, mo8343s0);
                                        break;
                                    case 16:
                                        String readString5 = parcel.readString();
                                        String readString6 = parcel.readString();
                                        C6293tt c6293tt3 = (C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR);
                                        InterfaceC3512a m18742o03 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                                        IBinder readStrongBinder3 = parcel.readStrongBinder();
                                        if (readStrongBinder3 != null) {
                                            IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                                            if (queryLocalInterface3 instanceof bd0) {
                                                zc0Var2 = (bd0) queryLocalInterface3;
                                            } else {
                                                zc0Var2 = new zc0(readStrongBinder3);
                                            }
                                        }
                                        mo8352a4(readString5, readString6, c6293tt3, m18742o03, zc0Var2, kb0.m10062f7(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        break;
                                    case 17:
                                        boolean mo8342u3 = mo8342u3(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        C6229s2.m7250b(parcel2, mo8342u3);
                                        break;
                                    case 18:
                                        String readString7 = parcel.readString();
                                        String readString8 = parcel.readString();
                                        C6293tt c6293tt4 = (C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR);
                                        InterfaceC3512a m18742o04 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                                        IBinder readStrongBinder4 = parcel.readStrongBinder();
                                        if (readStrongBinder4 != null) {
                                            IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                                            if (queryLocalInterface4 instanceof yc0) {
                                                wc0Var2 = (yc0) queryLocalInterface4;
                                            } else {
                                                wc0Var2 = new wc0(readStrongBinder4);
                                            }
                                        }
                                        mo8341y5(readString7, readString8, c6293tt4, m18742o04, wc0Var2, kb0.m10062f7(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        break;
                                    case 19:
                                        mo8356J0(parcel.readString());
                                        parcel2.writeNoException();
                                        break;
                                    case 20:
                                        String readString9 = parcel.readString();
                                        String readString10 = parcel.readString();
                                        C6293tt c6293tt5 = (C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR);
                                        InterfaceC3512a m18742o05 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                                        IBinder readStrongBinder5 = parcel.readStrongBinder();
                                        if (readStrongBinder5 != null) {
                                            IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                                            if (queryLocalInterface5 instanceof bd0) {
                                                zc0Var = (bd0) queryLocalInterface5;
                                            } else {
                                                zc0Var = new zc0(readStrongBinder5);
                                            }
                                        }
                                        mo8340z1(readString9, readString10, c6293tt5, m18742o05, zc0Var, kb0.m10062f7(parcel.readStrongBinder()));
                                        parcel2.writeNoException();
                                        break;
                                    case 21:
                                        String readString11 = parcel.readString();
                                        String readString12 = parcel.readString();
                                        C6293tt c6293tt6 = (C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR);
                                        InterfaceC3512a m18742o06 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                                        IBinder readStrongBinder6 = parcel.readStrongBinder();
                                        if (readStrongBinder6 != null) {
                                            IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                                            if (queryLocalInterface6 instanceof sc0) {
                                                pc0Var = (sc0) queryLocalInterface6;
                                            } else {
                                                pc0Var = new pc0(readStrongBinder6);
                                            }
                                        }
                                        mo8346i6(readString11, readString12, c6293tt6, m18742o06, pc0Var, kb0.m10062f7(parcel.readStrongBinder()), (C6478yt) C6229s2.m7249c(parcel, C6478yt.CREATOR));
                                        parcel2.writeNoException();
                                        break;
                                    case 22:
                                        String readString13 = parcel.readString();
                                        String readString14 = parcel.readString();
                                        C6293tt c6293tt7 = (C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR);
                                        InterfaceC3512a m18742o07 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                                        IBinder readStrongBinder7 = parcel.readStrongBinder();
                                        if (readStrongBinder7 != null) {
                                            IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                                            if (queryLocalInterface7 instanceof yc0) {
                                                wc0Var = (yc0) queryLocalInterface7;
                                            } else {
                                                wc0Var = new wc0(readStrongBinder7);
                                            }
                                        }
                                        mo8353T3(readString13, readString14, c6293tt7, m18742o07, wc0Var, kb0.m10062f7(parcel.readStrongBinder()), (d20) C6229s2.m7249c(parcel, d20.CREATOR));
                                        parcel2.writeNoException();
                                        break;
                                    default:
                                        return false;
                                }
                            } else {
                                parcel.createStringArray();
                                Bundle[] bundleArr = (Bundle[]) parcel.createTypedArray(Bundle.CREATOR);
                                parcel2.writeNoException();
                            }
                        } else {
                            InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                            parcel2.writeNoException();
                        }
                    } else {
                        InterfaceC6000lx mo8350f = mo8350f();
                        parcel2.writeNoException();
                        C6229s2.m7246f(parcel2, mo8350f);
                    }
                } else {
                    rd0 mo8349g = mo8349g();
                    parcel2.writeNoException();
                    C6229s2.m7247e(parcel2, mo8349g);
                }
            } else {
                rd0 mo8351d = mo8351d();
                parcel2.writeNoException();
                C6229s2.m7247e(parcel2, mo8351d);
            }
        } else {
            InterfaceC3512a m18742o08 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
            String readString15 = parcel.readString();
            Parcelable.Creator creator = Bundle.CREATOR;
            Bundle bundle = (Bundle) C6229s2.m7249c(parcel, creator);
            Bundle bundle2 = (Bundle) C6229s2.m7249c(parcel, creator);
            C6478yt c6478yt = (C6478yt) C6229s2.m7249c(parcel, C6478yt.CREATOR);
            IBinder readStrongBinder8 = parcel.readStrongBinder();
            if (readStrongBinder8 == null) {
                hd0Var = null;
            } else {
                IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                if (queryLocalInterface8 instanceof hd0) {
                    fd0Var = (hd0) queryLocalInterface8;
                } else {
                    fd0Var = new fd0(readStrongBinder8);
                }
                hd0Var = fd0Var;
            }
            mo8354T0(m18742o08, readString15, bundle, bundle2, c6478yt, hd0Var);
            parcel2.writeNoException();
        }
        return true;
    }

    /* renamed from: f7 */
    public static ed0 m12163f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        if (queryLocalInterface instanceof ed0) {
            return (ed0) queryLocalInterface;
        }
        return new cd0(iBinder);
    }
}
