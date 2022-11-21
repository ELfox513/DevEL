package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.j30 */
/* loaded from: classes2.dex */
public abstract class j30 extends BinderC6192r2 implements k30 {
    /* renamed from: f7 */
    public static k30 m10428f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
        if (queryLocalInterface instanceof k30) {
            return (k30) queryLocalInterface;
        }
        return new i30(iBinder);
    }
}
