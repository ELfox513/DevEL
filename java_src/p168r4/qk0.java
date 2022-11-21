package p168r4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.qk0 */
/* loaded from: classes2.dex */
public final class qk0 extends C6155q2 implements sk0 {
    public qk0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // p168r4.sk0
    /* renamed from: f2 */
    public final void mo7149f2(String str, String str2, Bundle bundle) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        m8074j0.writeString(str2);
        C6229s2.m7248d(m8074j0, bundle);
        m8072t0(3, m8074j0);
    }

    @Override // p168r4.sk0
    /* renamed from: u */
    public final void mo7148u(String str) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        m8072t0(2, m8074j0);
    }
}
