package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.mf0 */
/* loaded from: classes2.dex */
public abstract class mf0 extends BinderC6192r2 implements nf0 {
    /* renamed from: f7 */
    public static nf0 m9402f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
        if (queryLocalInterface instanceof nf0) {
            return (nf0) queryLocalInterface;
        }
        return new lf0(iBinder);
    }
}
