package p168r4;

import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.xe0 */
/* loaded from: classes2.dex */
public final class xe0 extends C6155q2 implements ze0 {
    public xe0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
    }

    @Override // p168r4.ze0
    /* renamed from: M */
    public final IBinder mo4279M(InterfaceC3512a interfaceC3512a) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        Parcel m8073o0 = m8073o0(1, m8074j0);
        IBinder readStrongBinder = m8073o0.readStrongBinder();
        m8073o0.recycle();
        return readStrongBinder;
    }
}
