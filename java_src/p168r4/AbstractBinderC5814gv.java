package p168r4;

import android.os.Parcel;
/* renamed from: r4.gv */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC5814gv extends BinderC6192r2 implements InterfaceC5887iv {
    public AbstractBinderC5814gv() {
        super("com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // p168r4.BinderC6192r2
    /* renamed from: e7 */
    public final boolean mo4461e7(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                mo5597a();
                break;
            case 2:
                mo5598D(parcel.readInt());
                break;
            case 3:
                break;
            case 4:
                mo5595d();
                break;
            case 5:
                mo5593g();
                break;
            case 6:
                mo5594f();
                break;
            case 7:
                mo5591j();
                break;
            case 8:
                mo5592g0((C5996lt) C6229s2.m7249c(parcel, C5996lt.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
