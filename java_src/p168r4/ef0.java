package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.ef0 */
/* loaded from: classes2.dex */
public final class ef0 extends BinderC6192r2 implements ff0 {
    /* renamed from: f7 */
    public static ff0 m11798f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
        if (queryLocalInterface instanceof ff0) {
            return (ff0) queryLocalInterface;
        }
        return new df0(iBinder);
    }
}
