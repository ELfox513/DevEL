package p168r4;

import android.os.Parcel;
/* renamed from: r4.dh0 */
/* loaded from: classes2.dex */
public abstract class dh0 extends BinderC6192r2 implements eh0 {
    public dh0() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardItem");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            int mo11796b = mo11796b();
            parcel2.writeNoException();
            parcel2.writeInt(mo11796b);
        } else {
            String mo11797a = mo11797a();
            parcel2.writeNoException();
            parcel2.writeString(mo11797a);
        }
        return true;
    }
}
