package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.oc */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC6091oc extends BinderC6192r2 implements InterfaceC6128pc {
    /* renamed from: f7 */
    public static InterfaceC6128pc m8835f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.clearcut.IClearcut");
        if (queryLocalInterface instanceof InterfaceC6128pc) {
            return (InterfaceC6128pc) queryLocalInterface;
        }
        return new C6054nc(iBinder);
    }
}
