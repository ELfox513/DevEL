package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.u70 */
/* loaded from: classes2.dex */
public abstract class u70 extends BinderC6192r2 implements w70 {
    public u70() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        z70 x70Var;
        if (i != 3) {
            if (i != 4) {
                if (i != 5) {
                    if (i != 6) {
                        if (i != 7) {
                            return false;
                        }
                        m20 mo5820d = mo5820d();
                        parcel2.writeNoException();
                        C6229s2.m7246f(parcel2, mo5820d);
                        return true;
                    }
                    mo5823M(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder());
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    x70Var = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                    if (queryLocalInterface instanceof z70) {
                        x70Var = (z70) queryLocalInterface;
                    } else {
                        x70Var = new x70(readStrongBinder);
                    }
                }
                mo5819u4(m18742o0, x70Var);
                parcel2.writeNoException();
                return true;
            }
            mo5821b();
            parcel2.writeNoException();
            return true;
        }
        InterfaceC6000lx mo5822a = mo5822a();
        parcel2.writeNoException();
        C6229s2.m7246f(parcel2, mo5822a);
        return true;
    }
}
