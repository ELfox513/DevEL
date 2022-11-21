package p168r4;

import android.os.Parcel;
/* renamed from: r4.dv */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC5702dv extends BinderC6192r2 implements InterfaceC5740ev {
    public AbstractBinderC5702dv() {
        super("com.google.android.gms.ads.internal.client.IAdClickListener");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo10824a();
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
