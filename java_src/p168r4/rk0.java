package p168r4;

import android.os.Bundle;
import android.os.Parcel;
/* renamed from: r4.rk0 */
/* loaded from: classes2.dex */
public abstract class rk0 extends BinderC6192r2 implements sk0 {
    public rk0() {
        super("com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                mo7149f2(parcel.readString(), parcel.readString(), (Bundle) C6229s2.m7249c(parcel, Bundle.CREATOR));
            } else {
                mo7148u(parcel.readString());
            }
        } else {
            parcel.readString();
            parcel.readString();
        }
        parcel2.writeNoException();
        return true;
    }
}
