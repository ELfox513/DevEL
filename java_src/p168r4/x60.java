package p168r4;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
/* renamed from: r4.x60 */
/* loaded from: classes2.dex */
public abstract class x60 extends BinderC6192r2 implements y60 {
    public x60() {
        super("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheCallback");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo4831b1((ParcelFileDescriptor) C6229s2.m7249c(parcel, ParcelFileDescriptor.CREATOR));
            return true;
        }
        return false;
    }
}
