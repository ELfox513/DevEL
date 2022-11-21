package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.eo */
/* loaded from: classes2.dex */
public final class C5733eo extends C6155q2 implements InterfaceC5807go {
    public C5733eo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    @Override // p168r4.InterfaceC5807go
    /* renamed from: D */
    public final void mo11097D(int i) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeInt(i);
        m8072t0(2, m8074j0);
    }

    @Override // p168r4.InterfaceC5807go
    /* renamed from: g0 */
    public final void mo11096g0(C5996lt c5996lt) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, c5996lt);
        m8072t0(3, m8074j0);
    }

    @Override // p168r4.InterfaceC5807go
    /* renamed from: p3 */
    public final void mo11095p3(InterfaceC5695do interfaceC5695do) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC5695do);
        m8072t0(1, m8074j0);
    }
}
