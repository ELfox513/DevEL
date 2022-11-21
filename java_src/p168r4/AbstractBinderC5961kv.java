package p168r4;

import android.os.Parcel;
/* renamed from: r4.kv */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC5961kv extends BinderC6192r2 implements InterfaceC5998lv {
    public AbstractBinderC5961kv() {
        super("com.google.android.gms.ads.internal.client.IAdLoadCallback");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            mo8214u2((C5996lt) C6229s2.m7249c(parcel, C5996lt.CREATOR));
        } else {
            mo8215a();
        }
        parcel2.writeNoException();
        return true;
    }
}
