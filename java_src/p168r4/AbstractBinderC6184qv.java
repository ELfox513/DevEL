package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p202v2.C6974a;
import p202v2.C6983g;
/* renamed from: r4.qv */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC6184qv extends BinderC6192r2 implements InterfaceC6221rv {
    public AbstractBinderC6184qv() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        InterfaceC5887iv interfaceC5887iv = null;
        C5815gw c5815gw = null;
        switch (i) {
            case 1:
                InterfaceC6110ov mo7327c = mo7327c();
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo7327c);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    if (queryLocalInterface instanceof InterfaceC5887iv) {
                        interfaceC5887iv = (InterfaceC5887iv) queryLocalInterface;
                    } else {
                        interfaceC5887iv = new C5777fv(readStrongBinder);
                    }
                }
                mo7335F1(interfaceC5887iv);
                parcel2.writeNoException();
                return true;
            case 3:
                mo7328b3(j30.m10428f7(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                mo7325o6(m30.m9512f7(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 5:
                mo7331T5(parcel.readString(), s30.m7226f7(parcel.readStrongBinder()), p30.m8494f7(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                mo7329W2((d20) C6229s2.m7249c(parcel, d20.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    if (queryLocalInterface2 instanceof C5815gw) {
                        c5815gw = (C5815gw) queryLocalInterface2;
                    } else {
                        c5815gw = new C5815gw(readStrongBinder2);
                    }
                }
                mo7326n2(c5815gw);
                parcel2.writeNoException();
                return true;
            case 8:
                mo7330V0(w30.m5902f7(parcel.readStrongBinder()), (C6478yt) C6229s2.m7249c(parcel, C6478yt.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                mo7333R2((C6983g) C6229s2.m7249c(parcel, C6983g.CREATOR));
                parcel2.writeNoException();
                return true;
            case 10:
                mo7334H3(z30.m4460f7(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                mo7323r6((s70) C6229s2.m7249c(parcel, s70.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                mo7332T1(b80.m12846f7(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                mo7324q2((C6974a) C6229s2.m7249c(parcel, C6974a.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
