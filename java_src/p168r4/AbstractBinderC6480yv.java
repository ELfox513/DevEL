package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.yv */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC6480yv extends BinderC6192r2 implements InterfaceC6517zv {
    /* renamed from: f7 */
    public static InterfaceC6517zv m4549f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
        if (queryLocalInterface instanceof InterfaceC6517zv) {
            return (InterfaceC6517zv) queryLocalInterface;
        }
        return new C6443xv(iBinder);
    }
}
