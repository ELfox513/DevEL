package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.kh0 */
/* loaded from: classes2.dex */
public abstract class kh0 extends BinderC6192r2 implements lh0 {
    /* renamed from: f7 */
    public static lh0 m10027f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
        if (queryLocalInterface instanceof lh0) {
            return (lh0) queryLocalInterface;
        }
        return new jh0(iBinder);
    }
}
