package p168r4;

import android.os.Parcel;
/* renamed from: r4.gd0 */
/* loaded from: classes2.dex */
public abstract class gd0 extends BinderC6192r2 implements hd0 {
    public gd0() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                mo10949F((C5996lt) C6229s2.m7249c(parcel, C5996lt.CREATOR));
            } else {
                mo10947s(parcel.readString());
            }
        } else {
            mo10948H(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
