package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.w30 */
/* loaded from: classes2.dex */
public abstract class w30 extends BinderC6192r2 implements x30 {
    /* renamed from: f7 */
    public static x30 m5902f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
        if (queryLocalInterface instanceof x30) {
            return (x30) queryLocalInterface;
        }
        return new v30(iBinder);
    }
}
