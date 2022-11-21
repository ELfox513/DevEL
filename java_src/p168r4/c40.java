package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.c40 */
/* loaded from: classes2.dex */
public abstract class c40 extends BinderC6192r2 implements d40 {
    /* renamed from: f7 */
    public static d40 m12632f7(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
        if (queryLocalInterface instanceof d40) {
            return (d40) queryLocalInterface;
        }
        return new b40(iBinder);
    }
}
