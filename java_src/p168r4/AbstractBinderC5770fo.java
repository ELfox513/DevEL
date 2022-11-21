package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.fo */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC5770fo extends BinderC6192r2 implements InterfaceC5807go {
    /* renamed from: f7 */
    public static InterfaceC5807go m11459f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
        if (queryLocalInterface instanceof InterfaceC5807go) {
            return (InterfaceC5807go) queryLocalInterface;
        }
        return new C5733eo(iBinder);
    }
}
