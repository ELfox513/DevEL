package p168r4;

import android.os.Parcel;
/* renamed from: r4.jw */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC5925jw extends BinderC6192r2 implements InterfaceC5962kw {
    public AbstractBinderC5925jw() {
        super("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
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
                        mo9902d();
                    } else {
                        mo9903c();
                    }
                } else {
                    mo9901e();
                }
            } else {
                mo9904b();
            }
        } else {
            mo9905I4((C5996lt) C6229s2.m7249c(parcel, C5996lt.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
