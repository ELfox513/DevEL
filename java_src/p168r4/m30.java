package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.m30 */
/* loaded from: classes2.dex */
public abstract class m30 extends BinderC6192r2 implements n30 {
    /* renamed from: f7 */
    public static n30 m9512f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
        if (queryLocalInterface instanceof n30) {
            return (n30) queryLocalInterface;
        }
        return new l30(iBinder);
    }
}
