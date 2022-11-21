package p168r4;

import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.rc0 */
/* loaded from: classes2.dex */
public abstract class rc0 extends BinderC6192r2 implements sc0 {
    public rc0() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return false;
                    }
                    mo7177F5(nb0.m9129f7(parcel.readStrongBinder()));
                } else {
                    mo7178F((C5996lt) C6229s2.m7249c(parcel, C5996lt.CREATOR));
                }
            } else {
                mo7175s(parcel.readString());
            }
        } else {
            mo7176M(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
