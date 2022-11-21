package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: r4.jx */
/* loaded from: classes2.dex */
public final class C5926jx extends C6155q2 implements InterfaceC6000lx {
    public C5926jx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: h */
    public final float mo6185h() {
        throw null;
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: i */
    public final float mo6184i() {
        throw null;
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: l */
    public final float mo6182l() {
        throw null;
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: U4 */
    public final void mo6189U4(InterfaceC6112ox interfaceC6112ox) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC6112ox);
        m8072t0(8, m8074j0);
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: q */
    public final InterfaceC6112ox mo6177q() {
        InterfaceC6112ox c6037mx;
        Parcel m8073o0 = m8073o0(11, m8074j0());
        IBinder readStrongBinder = m8073o0.readStrongBinder();
        if (readStrongBinder == null) {
            c6037mx = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            if (queryLocalInterface instanceof InterfaceC6112ox) {
                c6037mx = (InterfaceC6112ox) queryLocalInterface;
            } else {
                c6037mx = new C6037mx(readStrongBinder);
            }
        }
        m8073o0.recycle();
        return c6037mx;
    }
}
