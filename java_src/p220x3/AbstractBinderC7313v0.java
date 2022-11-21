package p220x3;

import android.os.IBinder;
import android.os.IInterface;
import p221x4.BinderC7326b;
/* renamed from: x3.v0 */
/* loaded from: classes.dex */
public abstract class AbstractBinderC7313v0 extends BinderC7326b implements InterfaceC7316w0 {
    /* renamed from: o0 */
    public static InterfaceC7316w0 m1851o0(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
        if (queryLocalInterface instanceof InterfaceC7316w0) {
            return (InterfaceC7316w0) queryLocalInterface;
        }
        return new C7310u0(iBinder);
    }
}
