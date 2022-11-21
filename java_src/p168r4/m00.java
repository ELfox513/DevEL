package p168r4;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: r4.m00 */
/* loaded from: classes2.dex */
public abstract class m00 extends BinderC6192r2 implements n00 {
    /* renamed from: f7 */
    public static n00 m9526f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
        if (queryLocalInterface instanceof n00) {
            return (n00) queryLocalInterface;
        }
        return new l00(iBinder);
    }
}
