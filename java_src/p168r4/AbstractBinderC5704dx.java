package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: r4.dx */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC5704dx extends BinderC6192r2 implements InterfaceC5742ex {
    public AbstractBinderC5704dx() {
        super("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo7279v5((C5591au) C6229s2.m7249c(parcel, C5591au.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }

    /* renamed from: f7 */
    public static InterfaceC5742ex m11901f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
        if (queryLocalInterface instanceof InterfaceC5742ex) {
            return (InterfaceC5742ex) queryLocalInterface;
        }
        return new C5667cx(iBinder);
    }
}
