package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.jf0 */
/* loaded from: classes2.dex */
public final class jf0 extends BinderC6192r2 implements kf0 {
    /* renamed from: f7 */
    public static kf0 m10297f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
        if (queryLocalInterface instanceof kf0) {
            return (kf0) queryLocalInterface;
        }
        return new if0(iBinder);
    }
}
