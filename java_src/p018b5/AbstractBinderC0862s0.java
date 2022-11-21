package p018b5;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: b5.s0 */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC0862s0 extends BinderC0811p0 implements InterfaceC0879t0 {
    /* renamed from: o0 */
    public static InterfaceC0879t0 m25332o0(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
        if (queryLocalInterface instanceof InterfaceC0879t0) {
            return (InterfaceC0879t0) queryLocalInterface;
        }
        return new C0845r0(iBinder);
    }
}
