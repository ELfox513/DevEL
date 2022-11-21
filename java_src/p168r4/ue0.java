package p168r4;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.ue0 */
/* loaded from: classes2.dex */
public final class ue0 extends C6155q2 implements we0 {
    public ue0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    @Override // p168r4.we0
    /* renamed from: c */
    public final void mo5759c() {
        m8072t0(10, m8074j0());
    }

    @Override // p168r4.we0
    /* renamed from: d */
    public final void mo5758d() {
        m8072t0(14, m8074j0());
    }

    @Override // p168r4.we0
    /* renamed from: g */
    public final boolean mo5757g() {
        Parcel m8073o0 = m8073o0(11, m8074j0());
        boolean m7251a = C6229s2.m7251a(m8073o0);
        m8073o0.recycle();
        return m7251a;
    }

    @Override // p168r4.we0
    /* renamed from: h */
    public final void mo5756h() {
        m8072t0(3, m8074j0());
    }

    @Override // p168r4.we0
    /* renamed from: i */
    public final void mo5755i() {
        m8072t0(4, m8074j0());
    }

    @Override // p168r4.we0
    /* renamed from: i0 */
    public final void mo5754i0(InterfaceC3512a interfaceC3512a) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        m8072t0(13, m8074j0);
    }

    @Override // p168r4.we0
    /* renamed from: j */
    public final void mo5753j() {
        m8072t0(2, m8074j0());
    }

    @Override // p168r4.we0
    /* renamed from: k */
    public final void mo5752k() {
        m8072t0(5, m8074j0());
    }

    @Override // p168r4.we0
    /* renamed from: l0 */
    public final void mo5751l0(Bundle bundle) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, bundle);
        m8072t0(1, m8074j0);
    }

    @Override // p168r4.we0
    /* renamed from: m */
    public final void mo5750m() {
        m8072t0(8, m8074j0());
    }

    @Override // p168r4.we0
    /* renamed from: m2 */
    public final void mo5749m2(int i, int i2, Intent intent) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeInt(i);
        m8074j0.writeInt(i2);
        C6229s2.m7248d(m8074j0, intent);
        m8072t0(12, m8074j0);
    }

    @Override // p168r4.we0
    /* renamed from: o */
    public final void mo5748o() {
        m8072t0(7, m8074j0());
    }

    @Override // p168r4.we0
    /* renamed from: r */
    public final void mo5747r() {
        m8072t0(9, m8074j0());
    }

    @Override // p168r4.we0
    /* renamed from: u0 */
    public final void mo5746u0(Bundle bundle) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, bundle);
        Parcel m8073o0 = m8073o0(6, m8074j0);
        if (m8073o0.readInt() != 0) {
            bundle.readFromParcel(m8073o0);
        }
        m8073o0.recycle();
    }
}
