package p168r4;

import android.os.Parcel;
/* renamed from: r4.uc0 */
/* loaded from: classes2.dex */
public abstract class uc0 extends BinderC6192r2 implements vc0 {
    public uc0() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 2) {
            if (i != 3) {
                if (i != 4) {
                    return false;
                }
                mo6171F((C5996lt) C6229s2.m7249c(parcel, C5996lt.CREATOR));
            } else {
                mo6169s(parcel.readString());
            }
        } else {
            mo6170c();
        }
        parcel2.writeNoException();
        return true;
    }
}
