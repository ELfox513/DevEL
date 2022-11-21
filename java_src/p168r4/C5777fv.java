package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.fv */
/* loaded from: classes2.dex */
public final class C5777fv extends C6155q2 implements InterfaceC5887iv {
    public C5777fv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // p168r4.InterfaceC5887iv
    /* renamed from: D */
    public final void mo5598D(int i) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeInt(i);
        m8072t0(2, m8074j0);
    }

    @Override // p168r4.InterfaceC5887iv
    /* renamed from: a */
    public final void mo5597a() {
        m8072t0(1, m8074j0());
    }

    @Override // p168r4.InterfaceC5887iv
    /* renamed from: c */
    public final void mo5596c() {
        m8072t0(3, m8074j0());
    }

    @Override // p168r4.InterfaceC5887iv
    /* renamed from: d */
    public final void mo5595d() {
        m8072t0(4, m8074j0());
    }

    @Override // p168r4.InterfaceC5887iv
    /* renamed from: f */
    public final void mo5594f() {
        m8072t0(6, m8074j0());
    }

    @Override // p168r4.InterfaceC5887iv
    /* renamed from: g */
    public final void mo5593g() {
        m8072t0(5, m8074j0());
    }

    @Override // p168r4.InterfaceC5887iv
    /* renamed from: g0 */
    public final void mo5592g0(C5996lt c5996lt) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, c5996lt);
        m8072t0(8, m8074j0);
    }

    @Override // p168r4.InterfaceC5887iv
    /* renamed from: j */
    public final void mo5591j() {
        m8072t0(7, m8074j0());
    }
}
