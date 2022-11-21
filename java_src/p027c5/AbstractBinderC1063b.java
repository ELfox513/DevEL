package p027c5;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: c5.b */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC1063b extends BinderC1068g implements InterfaceC1064c {
    /* renamed from: j0 */
    public static InterfaceC1064c m24708j0(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
        if (queryLocalInterface instanceof InterfaceC1064c) {
            return (InterfaceC1064c) queryLocalInterface;
        }
        return new C1066e(iBinder);
    }
}
