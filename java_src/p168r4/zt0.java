package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.zt0 */
/* loaded from: classes2.dex */
public abstract class zt0 extends BinderC6192r2 implements au0 {
    /* renamed from: f7 */
    public static au0 m4085f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.measurement.IMeasurementManager");
        if (queryLocalInterface instanceof au0) {
            return (au0) queryLocalInterface;
        }
        return new yt0(iBinder);
    }
}
