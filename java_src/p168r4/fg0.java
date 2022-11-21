package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: r4.fg0 */
/* loaded from: classes2.dex */
public abstract class fg0 extends BinderC6192r2 implements gg0 {
    public fg0() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        kg0 kg0Var = null;
        if (i != 1) {
            if (i != 2) {
                if (i != 4) {
                    if (i != 5) {
                        if (i != 6) {
                            if (i != 7) {
                                return false;
                            }
                            String readString = parcel.readString();
                            IBinder readStrongBinder = parcel.readStrongBinder();
                            if (readStrongBinder != null) {
                                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                                if (queryLocalInterface instanceof kg0) {
                                    kg0Var = (kg0) queryLocalInterface;
                                } else {
                                    kg0Var = new ig0(readStrongBinder);
                                }
                            }
                            mo11169c3(readString, kg0Var);
                            parcel2.writeNoException();
                        } else {
                            og0 og0Var = (og0) C6229s2.m7249c(parcel, og0.CREATOR);
                            IBinder readStrongBinder2 = parcel.readStrongBinder();
                            if (readStrongBinder2 != null) {
                                IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                                if (queryLocalInterface2 instanceof kg0) {
                                    kg0Var = (kg0) queryLocalInterface2;
                                } else {
                                    kg0Var = new ig0(readStrongBinder2);
                                }
                            }
                            mo11168k4(og0Var, kg0Var);
                            parcel2.writeNoException();
                        }
                    } else {
                        og0 og0Var2 = (og0) C6229s2.m7249c(parcel, og0.CREATOR);
                        IBinder readStrongBinder3 = parcel.readStrongBinder();
                        if (readStrongBinder3 != null) {
                            IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                            if (queryLocalInterface3 instanceof kg0) {
                                kg0Var = (kg0) queryLocalInterface3;
                            } else {
                                kg0Var = new ig0(readStrongBinder3);
                            }
                        }
                        mo11166w6(og0Var2, kg0Var);
                        parcel2.writeNoException();
                    }
                } else {
                    og0 og0Var3 = (og0) C6229s2.m7249c(parcel, og0.CREATOR);
                    IBinder readStrongBinder4 = parcel.readStrongBinder();
                    if (readStrongBinder4 != null) {
                        IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                        if (queryLocalInterface4 instanceof kg0) {
                            kg0Var = (kg0) queryLocalInterface4;
                        } else {
                            kg0Var = new ig0(readStrongBinder4);
                        }
                    }
                    mo11167t5(og0Var3, kg0Var);
                    parcel2.writeNoException();
                }
            } else {
                zf0 zf0Var = (zf0) C6229s2.m7249c(parcel, zf0.CREATOR);
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                    if (queryLocalInterface5 instanceof hg0) {
                        hg0 hg0Var = (hg0) queryLocalInterface5;
                    } else {
                        new hg0(readStrongBinder5);
                    }
                }
                parcel2.writeNoException();
            }
        } else {
            zf0 zf0Var2 = (zf0) C6229s2.m7249c(parcel, zf0.CREATOR);
            parcel2.writeNoException();
            C6229s2.m7247e(parcel2, null);
        }
        return true;
    }
}
