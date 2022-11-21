package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.ye0 */
/* loaded from: classes2.dex */
public abstract class ye0 extends BinderC6192r2 implements ze0 {
    /* renamed from: f7 */
    public static ze0 m4745f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        if (queryLocalInterface instanceof ze0) {
            return (ze0) queryLocalInterface;
        }
        return new xe0(iBinder);
    }
}
