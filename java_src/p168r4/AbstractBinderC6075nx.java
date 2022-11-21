package p168r4;

import android.os.Parcel;
/* renamed from: r4.nx */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC6075nx extends BinderC6192r2 implements InterfaceC6112ox {
    public AbstractBinderC6075nx() {
        super("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
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
                        mo5548w4(C6229s2.m7251a(parcel));
                    } else {
                        mo5550f();
                    }
                } else {
                    mo5549g();
                }
            } else {
                mo5551d();
            }
        } else {
            mo5552c();
        }
        parcel2.writeNoException();
        return true;
    }
}
