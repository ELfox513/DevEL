package p168r4;

import android.os.Parcel;
/* renamed from: r4.y70 */
/* loaded from: classes2.dex */
public abstract class y70 extends BinderC6192r2 implements z70 {
    public y70() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            parcel.readInt();
        }
        parcel2.writeNoException();
        return true;
    }
}
