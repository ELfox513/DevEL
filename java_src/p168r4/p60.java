package p168r4;

import android.os.Parcel;
/* renamed from: r4.p60 */
/* loaded from: classes2.dex */
public abstract class p60 extends BinderC6192r2 implements q60 {
    public p60() {
        super("com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            mo6997d();
        } else {
            mo6998H(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
