package p168r4;

import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.b40 */
/* loaded from: classes2.dex */
public final class b40 extends C6155q2 implements d40 {
    public b40(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
    }

    @Override // p168r4.d40
    /* renamed from: b0 */
    public final boolean mo12226b0(InterfaceC3512a interfaceC3512a) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        Parcel m8073o0 = m8073o0(2, m8074j0);
        boolean m7251a = C6229s2.m7251a(m8073o0);
        m8073o0.recycle();
        return m7251a;
    }
}
