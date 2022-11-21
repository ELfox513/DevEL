package p168r4;

import android.os.Parcel;
/* renamed from: r4.nv */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC6073nv extends BinderC6192r2 implements InterfaceC6110ov {
    public AbstractBinderC6073nv() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return false;
                        }
                        mo8667V2((C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR), parcel.readInt());
                        parcel2.writeNoException();
                    } else {
                        String mo8665f = mo8665f();
                        parcel2.writeNoException();
                        parcel2.writeString(mo8665f);
                    }
                } else {
                    boolean mo8664g = mo8664g();
                    parcel2.writeNoException();
                    C6229s2.m7250b(parcel2, mo8664g);
                }
            } else {
                String mo8666d = mo8666d();
                parcel2.writeNoException();
                parcel2.writeString(mo8666d);
            }
        } else {
            mo8668U6((C6293tt) C6229s2.m7249c(parcel, C6293tt.CREATOR));
            parcel2.writeNoException();
        }
        return true;
    }
}
