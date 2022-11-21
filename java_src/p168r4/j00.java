package p168r4;

import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.j00 */
/* loaded from: classes2.dex */
public abstract class j00 extends BinderC6192r2 implements k00 {
    public j00() {
        super("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
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
                        mo10121d();
                        parcel2.writeNoException();
                    } else {
                        mo10123c();
                        parcel2.writeNoException();
                    }
                } else {
                    mo10122c0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                }
            } else {
                String mo10124b = mo10124b();
                parcel2.writeNoException();
                parcel2.writeString(mo10124b);
            }
        } else {
            String mo10125a = mo10125a();
            parcel2.writeNoException();
            parcel2.writeString(mo10125a);
        }
        return true;
    }
}
