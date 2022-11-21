package p168r4;

import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.v20 */
/* loaded from: classes2.dex */
public abstract class v20 extends BinderC6192r2 implements w20 {
    public v20() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                mo4674c0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
            } else {
                mo4677b();
            }
        } else {
            mo4676b0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
