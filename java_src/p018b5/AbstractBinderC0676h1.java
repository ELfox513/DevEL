package p018b5;

import android.os.Bundle;
import android.os.Parcel;
/* renamed from: b5.h1 */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC0676h1 extends BinderC0811p0 implements InterfaceC0693i1 {
    public AbstractBinderC0676h1() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // p018b5.BinderC0811p0
    /* renamed from: j0 */
    public final boolean mo18385j0(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo25817C0((Bundle) C0828q0.m25479a(parcel, Bundle.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
