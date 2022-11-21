package p168r4;

import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.nc */
/* loaded from: classes2.dex */
public final class C6054nc extends C6155q2 implements InterfaceC6128pc {
    public C6054nc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.clearcut.IClearcut");
    }

    @Override // p168r4.InterfaceC6128pc
    /* renamed from: C4 */
    public final void mo8364C4(byte[] bArr) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeByteArray(bArr);
        m8072t0(5, m8074j0);
    }

    @Override // p168r4.InterfaceC6128pc
    /* renamed from: I0 */
    public final void mo8363I0(int i) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeInt(0);
        m8072t0(6, m8074j0);
    }

    @Override // p168r4.InterfaceC6128pc
    /* renamed from: K0 */
    public final void mo8362K0(int i) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeInt(i);
        m8072t0(7, m8074j0);
    }

    @Override // p168r4.InterfaceC6128pc
    /* renamed from: N3 */
    public final void mo8361N3(int[] iArr) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeIntArray(null);
        m8072t0(4, m8074j0);
    }

    @Override // p168r4.InterfaceC6128pc
    /* renamed from: V4 */
    public final void mo8360V4(InterfaceC3512a interfaceC3512a, String str) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        m8074j0.writeString("GMA_SDK");
        m8072t0(2, m8074j0);
    }

    @Override // p168r4.InterfaceC6128pc
    /* renamed from: d */
    public final void mo8359d() {
        m8072t0(3, m8074j0());
    }
}
