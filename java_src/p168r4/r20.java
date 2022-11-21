package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.r20 */
/* loaded from: classes2.dex */
public abstract class r20 extends BinderC6192r2 implements s20 {
    public r20() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        m20 k20Var;
        switch (i) {
            case 1:
                mo7241P6(parcel.readString(), InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 2:
                InterfaceC3512a mo7244A = mo7244A(parcel.readString());
                parcel2.writeNoException();
                C6229s2.m7246f(parcel2, mo7244A);
                return true;
            case 3:
                mo7238c0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                mo7239c();
                parcel2.writeNoException();
                return true;
            case 5:
                InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                parcel.readInt();
                parcel2.writeNoException();
                return true;
            case 6:
                mo7240U(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                mo7236w1(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    k20Var = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
                    if (queryLocalInterface instanceof m20) {
                        k20Var = (m20) queryLocalInterface;
                    } else {
                        k20Var = new k20(readStrongBinder);
                    }
                }
                mo7237r4(k20Var);
                parcel2.writeNoException();
                return true;
            case 9:
                mo7243I1(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
