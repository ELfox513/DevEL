package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.su2 */
/* loaded from: classes2.dex */
public abstract class su2 extends BinderC6192r2 implements tu2 {
    /* renamed from: f7 */
    public static tu2 m6994f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.omid.IOmid");
        if (queryLocalInterface instanceof tu2) {
            return (tu2) queryLocalInterface;
        }
        return new ru2(iBinder);
    }
}
