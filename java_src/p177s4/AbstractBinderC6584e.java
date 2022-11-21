package p177s4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: s4.e */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC6584e extends BinderC6581b implements InterfaceC6583d {
    /* renamed from: j0 */
    public static InterfaceC6583d m3876j0(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        return queryLocalInterface instanceof InterfaceC6583d ? (InterfaceC6583d) queryLocalInterface : new C6585f(iBinder);
    }
}
