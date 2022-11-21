package p018b5;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* renamed from: b5.r0 */
/* loaded from: classes2.dex */
public final class C0845r0 extends C0794o0 implements InterfaceC0879t0 {
    public C0845r0(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // p018b5.InterfaceC0879t0
    /* renamed from: C0 */
    public final Bundle mo25242C0(Bundle bundle) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25476d(m25564j0, bundle);
        Parcel m25563o0 = m25563o0(1, m25564j0);
        Bundle bundle2 = (Bundle) C0828q0.m25479a(m25563o0, Bundle.CREATOR);
        m25563o0.recycle();
        return bundle2;
    }
}
