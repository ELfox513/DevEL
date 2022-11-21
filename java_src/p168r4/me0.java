package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.me0 */
/* loaded from: classes2.dex */
public abstract class me0 extends BinderC6192r2 implements ne0 {
    /* renamed from: f7 */
    public static ne0 m9407f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
        if (queryLocalInterface instanceof ne0) {
            return (ne0) queryLocalInterface;
        }
        return new le0(iBinder);
    }
}
