package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.hw */
/* loaded from: classes2.dex */
public final class C5852hw extends C6155q2 implements InterfaceC5962kw {
    public C5852hw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
    }

    @Override // p168r4.InterfaceC5962kw
    /* renamed from: I4 */
    public final void mo9905I4(C5996lt c5996lt) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, c5996lt);
        m8072t0(1, m8074j0);
    }

    @Override // p168r4.InterfaceC5962kw
    /* renamed from: b */
    public final void mo9904b() {
        m8072t0(2, m8074j0());
    }

    @Override // p168r4.InterfaceC5962kw
    /* renamed from: c */
    public final void mo9903c() {
        m8072t0(4, m8074j0());
    }

    @Override // p168r4.InterfaceC5962kw
    /* renamed from: d */
    public final void mo9902d() {
        m8072t0(5, m8074j0());
    }

    @Override // p168r4.InterfaceC5962kw
    /* renamed from: e */
    public final void mo9901e() {
        m8072t0(3, m8074j0());
    }
}
