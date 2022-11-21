package p168r4;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import p016b3.C0479g0;
/* renamed from: r4.jg0 */
/* loaded from: classes2.dex */
public abstract class jg0 extends BinderC6192r2 implements kg0 {
    public jg0() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            mo10040M4((C0479g0) C6229s2.m7249c(parcel, C0479g0.CREATOR));
        } else {
            mo10041E4((ParcelFileDescriptor) C6229s2.m7249c(parcel, ParcelFileDescriptor.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
