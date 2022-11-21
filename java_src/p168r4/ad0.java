package p168r4;

import android.os.Parcel;
/* renamed from: r4.ad0 */
/* loaded from: classes2.dex */
public abstract class ad0 extends BinderC6192r2 implements bd0 {
    public ad0() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 2) {
            if (i != 3) {
                if (i != 4) {
                    return false;
                }
                mo4329F((C5996lt) C6229s2.m7249c(parcel, C5996lt.CREATOR));
            } else {
                mo8024s(parcel.readString());
            }
        } else {
            mo8025c();
        }
        parcel2.writeNoException();
        return true;
    }
}
