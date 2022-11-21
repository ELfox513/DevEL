package p018b5;

import android.os.Bundle;
import android.os.Parcel;
/* renamed from: b5.k1 */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC0727k1 extends BinderC0811p0 implements InterfaceC0744l1 {
    public AbstractBinderC0727k1() {
        super("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // p018b5.BinderC0811p0
    /* renamed from: j0 */
    public final boolean mo18385j0(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            int mo25561e = mo25561e();
            parcel2.writeNoException();
            parcel2.writeInt(mo25561e);
        } else {
            mo25560e1(parcel.readString(), parcel.readString(), (Bundle) C0828q0.m25479a(parcel, Bundle.CREATOR), parcel.readLong());
            parcel2.writeNoException();
        }
        return true;
    }
}
