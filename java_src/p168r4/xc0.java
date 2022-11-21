package p168r4;

import android.os.Parcel;
/* renamed from: r4.xc0 */
/* loaded from: classes2.dex */
public abstract class xc0 extends BinderC6192r2 implements yc0 {
    public xc0() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                mo4763F((C5996lt) C6229s2.m7249c(parcel, C5996lt.CREATOR));
            } else {
                mo4761s(parcel.readString());
            }
        } else {
            mo4762L4(tb0.m6890f7(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
