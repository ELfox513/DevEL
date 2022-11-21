package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.n60 */
/* loaded from: classes2.dex */
public abstract class n60 extends BinderC6192r2 implements o60 {
    /* renamed from: f7 */
    public static o60 m9152f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.h5.client.IH5AdsEventListener");
        if (queryLocalInterface instanceof o60) {
            return (o60) queryLocalInterface;
        }
        return new m60(iBinder);
    }
}
