package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.ax */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC5594ax extends BinderC6192r2 implements InterfaceC5631bx {
    /* renamed from: f7 */
    public static InterfaceC5631bx m12919f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
        if (queryLocalInterface instanceof InterfaceC5631bx) {
            return (InterfaceC5631bx) queryLocalInterface;
        }
        return new C6518zw(iBinder);
    }
}
