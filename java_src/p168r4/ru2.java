package p168r4;

import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.ru2 */
/* loaded from: classes2.dex */
public final class ru2 extends C6155q2 implements tu2 {
    public ru2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.omid.IOmid");
    }

    @Override // p168r4.tu2
    /* renamed from: J1 */
    public final void mo6716J1(InterfaceC3512a interfaceC3512a, InterfaceC3512a interfaceC3512a2) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7246f(m8074j0, interfaceC3512a2);
        m8072t0(8, m8074j0);
    }

    @Override // p168r4.tu2
    /* renamed from: M */
    public final boolean mo6715M(InterfaceC3512a interfaceC3512a) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        Parcel m8073o0 = m8073o0(2, m8074j0);
        boolean m7251a = C6229s2.m7251a(m8073o0);
        m8073o0.recycle();
        return m7251a;
    }

    @Override // p168r4.tu2
    /* renamed from: M2 */
    public final InterfaceC3512a mo6714M2(String str, InterfaceC3512a interfaceC3512a, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        m8074j0.writeString("");
        m8074j0.writeString("javascript");
        m8074j0.writeString(str4);
        m8074j0.writeString(str5);
        m8074j0.writeString(str6);
        m8074j0.writeString(str7);
        m8074j0.writeString(str8);
        Parcel m8073o0 = m8073o0(10, m8074j0);
        InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(m8073o0.readStrongBinder());
        m8073o0.recycle();
        return m18742o0;
    }

    @Override // p168r4.tu2
    /* renamed from: T4 */
    public final InterfaceC3512a mo6713T4(String str, InterfaceC3512a interfaceC3512a, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        m8074j0.writeString("");
        m8074j0.writeString("javascript");
        m8074j0.writeString(str4);
        m8074j0.writeString("Google");
        m8074j0.writeString(str6);
        m8074j0.writeString(str7);
        m8074j0.writeString(str8);
        Parcel m8073o0 = m8073o0(11, m8074j0);
        InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(m8073o0.readStrongBinder());
        m8073o0.recycle();
        return m18742o0;
    }

    @Override // p168r4.tu2
    /* renamed from: f */
    public final String mo6712f() {
        Parcel m8073o0 = m8073o0(6, m8074j0());
        String readString = m8073o0.readString();
        m8073o0.recycle();
        return readString;
    }

    @Override // p168r4.tu2
    /* renamed from: m0 */
    public final void mo6711m0(InterfaceC3512a interfaceC3512a) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        m8072t0(7, m8074j0);
    }

    @Override // p168r4.tu2
    /* renamed from: n5 */
    public final void mo6710n5(InterfaceC3512a interfaceC3512a, InterfaceC3512a interfaceC3512a2) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7246f(m8074j0, interfaceC3512a2);
        m8072t0(5, m8074j0);
    }

    @Override // p168r4.tu2
    public final void zzf(InterfaceC3512a interfaceC3512a) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        m8072t0(4, m8074j0);
    }
}
