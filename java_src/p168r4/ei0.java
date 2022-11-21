package p168r4;

import android.os.Parcel;
/* renamed from: r4.ei0 */
/* loaded from: classes2.dex */
public abstract class ei0 extends BinderC6192r2 implements fi0 {
    public ei0() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                mo4083F((C5996lt) C6229s2.m7249c(parcel, C5996lt.CREATOR));
            } else {
                mo4084C(parcel.readInt());
            }
        } else {
            mo4082c();
        }
        parcel2.writeNoException();
        return true;
    }
}
