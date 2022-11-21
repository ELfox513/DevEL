package p168r4;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.o20 */
/* loaded from: classes2.dex */
public abstract class o20 extends BinderC6192r2 implements p20 {
    public o20() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return false;
                        }
                        int mo4481d = mo4481d();
                        parcel2.writeNoException();
                        parcel2.writeInt(mo4481d);
                    } else {
                        int mo4482c = mo4482c();
                        parcel2.writeNoException();
                        parcel2.writeInt(mo4482c);
                    }
                } else {
                    double mo4480e = mo4480e();
                    parcel2.writeNoException();
                    parcel2.writeDouble(mo4480e);
                }
            } else {
                Uri mo4483b = mo4483b();
                parcel2.writeNoException();
                C6229s2.m7247e(parcel2, mo4483b);
            }
        } else {
            InterfaceC3512a mo4484a = mo4484a();
            parcel2.writeNoException();
            C6229s2.m7246f(parcel2, mo4484a);
        }
        return true;
    }

    /* renamed from: f7 */
    public static p20 m8925f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
        if (queryLocalInterface instanceof p20) {
            return (p20) queryLocalInterface;
        }
        return new n20(iBinder);
    }
}
