package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.mx */
/* loaded from: classes2.dex */
public final class C6037mx extends C6155q2 implements InterfaceC6112ox {
    public C6037mx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // p168r4.InterfaceC6112ox
    /* renamed from: c */
    public final void mo5552c() {
        m8072t0(1, m8074j0());
    }

    @Override // p168r4.InterfaceC6112ox
    /* renamed from: d */
    public final void mo5551d() {
        m8072t0(2, m8074j0());
    }

    @Override // p168r4.InterfaceC6112ox
    /* renamed from: f */
    public final void mo5550f() {
        m8072t0(4, m8074j0());
    }

    @Override // p168r4.InterfaceC6112ox
    /* renamed from: g */
    public final void mo5549g() {
        m8072t0(3, m8074j0());
    }

    @Override // p168r4.InterfaceC6112ox
    /* renamed from: w4 */
    public final void mo5548w4(boolean z) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7250b(m8074j0, z);
        m8072t0(5, m8074j0);
    }
}
