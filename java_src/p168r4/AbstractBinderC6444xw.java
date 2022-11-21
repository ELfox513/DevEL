package p168r4;

import android.os.Parcel;
/* renamed from: r4.xw */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC6444xw extends BinderC6192r2 implements InterfaceC6481yw {
    public AbstractBinderC6444xw() {
        super("com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo4541q0((C5996lt) C6229s2.m7249c(parcel, C5996lt.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
