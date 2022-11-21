package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: r4.m70 */
/* loaded from: classes2.dex */
public abstract class m70 extends BinderC6192r2 implements n70 {
    public m70() {
        super("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo4540c5(parcel.createTypedArrayList(g70.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }

    /* renamed from: f7 */
    public static n70 m9470f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
        if (queryLocalInterface instanceof n70) {
            return (n70) queryLocalInterface;
        }
        return new l70(iBinder);
    }
}
