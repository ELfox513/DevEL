package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.b80 */
/* loaded from: classes2.dex */
public abstract class b80 extends BinderC6192r2 implements c80 {
    /* renamed from: f7 */
    public static c80 m12846f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
        if (queryLocalInterface instanceof c80) {
            return (c80) queryLocalInterface;
        }
        return new a80(iBinder);
    }
}
