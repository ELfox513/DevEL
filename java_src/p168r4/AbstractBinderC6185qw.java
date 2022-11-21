package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.qw */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC6185qw extends BinderC6192r2 implements InterfaceC6222rw {
    /* renamed from: f7 */
    public static InterfaceC6222rw m7656f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdListener");
        if (queryLocalInterface instanceof InterfaceC6222rw) {
            return (InterfaceC6222rw) queryLocalInterface;
        }
        return new C6148pw(iBinder);
    }
}
