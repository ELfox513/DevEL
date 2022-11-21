package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: r4.p30 */
/* loaded from: classes2.dex */
public abstract class p30 extends BinderC6192r2 implements q30 {
    public p30() {
        super("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        g30 d30Var;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                d30Var = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
                if (queryLocalInterface instanceof g30) {
                    d30Var = (g30) queryLocalInterface;
                } else {
                    d30Var = new d30(readStrongBinder);
                }
            }
            mo8038F6(d30Var, parcel.readString());
            parcel2.writeNoException();
            return true;
        }
        return false;
    }

    /* renamed from: f7 */
    public static q30 m8494f7(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
        if (queryLocalInterface instanceof q30) {
            return (q30) queryLocalInterface;
        }
        return new o30(iBinder);
    }
}
