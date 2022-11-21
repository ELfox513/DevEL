package p168r4;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.ie0 */
/* loaded from: classes2.dex */
public final class ie0 extends C6155q2 implements ke0 {
    public ie0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    @Override // p168r4.ke0
    /* renamed from: R0 */
    public final void mo10054R0(Intent intent) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, intent);
        m8072t0(1, m8074j0);
    }

    @Override // p168r4.ke0
    /* renamed from: U0 */
    public final void mo10053U0(InterfaceC3512a interfaceC3512a, String str, String str2) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        m8074j0.writeString(str);
        m8074j0.writeString(str2);
        m8072t0(2, m8074j0);
    }

    @Override // p168r4.ke0
    /* renamed from: g */
    public final void mo10052g() {
        m8072t0(3, m8074j0());
    }
}
