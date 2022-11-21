package p168r4;

import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.d30 */
/* loaded from: classes2.dex */
public final class d30 extends C6155q2 implements g30 {
    public d30(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // p168r4.g30
    /* renamed from: f */
    public final String mo9331f() {
        Parcel m8073o0 = m8073o0(4, m8074j0());
        String readString = m8073o0.readString();
        m8073o0.recycle();
        return readString;
    }

    @Override // p168r4.g30
    /* renamed from: i0 */
    public final boolean mo9326i0(InterfaceC3512a interfaceC3512a) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        Parcel m8073o0 = m8073o0(10, m8074j0);
        boolean m7251a = C6229s2.m7251a(m8073o0);
        m8073o0.recycle();
        return m7251a;
    }

    @Override // p168r4.g30
    /* renamed from: l */
    public final InterfaceC3512a mo9324l() {
        Parcel m8073o0 = m8073o0(9, m8074j0());
        InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(m8073o0.readStrongBinder());
        m8073o0.recycle();
        return m18742o0;
    }
}
