package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.xk0 */
/* loaded from: classes2.dex */
public abstract class xk0 extends BinderC6192r2 implements yk0 {
    /* renamed from: f7 */
    public static yk0 m5289f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
        if (queryLocalInterface instanceof yk0) {
            return (yk0) queryLocalInterface;
        }
        return new wk0(iBinder);
    }
}
