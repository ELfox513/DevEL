package p168r4;

import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.mb0 */
/* loaded from: classes2.dex */
public final class mb0 extends C6155q2 implements ob0 {
    public mb0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
    }

    @Override // p168r4.ob0
    /* renamed from: c */
    public final InterfaceC3512a mo8843c() {
        Parcel m8073o0 = m8073o0(1, m8074j0());
        InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(m8073o0.readStrongBinder());
        m8073o0.recycle();
        return m18742o0;
    }

    @Override // p168r4.ob0
    /* renamed from: d */
    public final boolean mo8842d() {
        Parcel m8073o0 = m8073o0(2, m8074j0());
        boolean m7251a = C6229s2.m7251a(m8073o0);
        m8073o0.recycle();
        return m7251a;
    }
}
