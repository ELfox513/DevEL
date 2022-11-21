package p168r4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.cd0 */
/* loaded from: classes2.dex */
public final class cd0 extends C6155q2 implements ed0 {
    public cd0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // p168r4.ed0
    /* renamed from: G4 */
    public final void mo8357G4(String str, String str2, C6293tt c6293tt, InterfaceC3512a interfaceC3512a, vc0 vc0Var, lb0 lb0Var) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        m8074j0.writeString(str2);
        C6229s2.m7248d(m8074j0, c6293tt);
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7246f(m8074j0, vc0Var);
        C6229s2.m7246f(m8074j0, lb0Var);
        m8072t0(14, m8074j0);
    }

    @Override // p168r4.ed0
    /* renamed from: J0 */
    public final void mo8356J0(String str) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        m8072t0(19, m8074j0);
    }

    @Override // p168r4.ed0
    /* renamed from: K1 */
    public final void mo8355K1(String str, String str2, C6293tt c6293tt, InterfaceC3512a interfaceC3512a, sc0 sc0Var, lb0 lb0Var, C6478yt c6478yt) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        m8074j0.writeString(str2);
        C6229s2.m7248d(m8074j0, c6293tt);
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7246f(m8074j0, sc0Var);
        C6229s2.m7246f(m8074j0, lb0Var);
        C6229s2.m7248d(m8074j0, c6478yt);
        m8072t0(13, m8074j0);
    }

    @Override // p168r4.ed0
    /* renamed from: T0 */
    public final void mo8354T0(InterfaceC3512a interfaceC3512a, String str, Bundle bundle, Bundle bundle2, C6478yt c6478yt, hd0 hd0Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        m8074j0.writeString(str);
        C6229s2.m7248d(m8074j0, bundle);
        C6229s2.m7248d(m8074j0, bundle2);
        C6229s2.m7248d(m8074j0, c6478yt);
        C6229s2.m7246f(m8074j0, hd0Var);
        m8072t0(1, m8074j0);
    }

    @Override // p168r4.ed0
    /* renamed from: T3 */
    public final void mo8353T3(String str, String str2, C6293tt c6293tt, InterfaceC3512a interfaceC3512a, yc0 yc0Var, lb0 lb0Var, d20 d20Var) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        m8074j0.writeString(str2);
        C6229s2.m7248d(m8074j0, c6293tt);
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7246f(m8074j0, yc0Var);
        C6229s2.m7246f(m8074j0, lb0Var);
        C6229s2.m7248d(m8074j0, d20Var);
        m8072t0(22, m8074j0);
    }

    @Override // p168r4.ed0
    /* renamed from: a4 */
    public final void mo8352a4(String str, String str2, C6293tt c6293tt, InterfaceC3512a interfaceC3512a, bd0 bd0Var, lb0 lb0Var) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        m8074j0.writeString(str2);
        C6229s2.m7248d(m8074j0, c6293tt);
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7246f(m8074j0, bd0Var);
        C6229s2.m7246f(m8074j0, lb0Var);
        m8072t0(16, m8074j0);
    }

    @Override // p168r4.ed0
    /* renamed from: d */
    public final rd0 mo8351d() {
        Parcel m8073o0 = m8073o0(2, m8074j0());
        rd0 rd0Var = (rd0) C6229s2.m7249c(m8073o0, rd0.CREATOR);
        m8073o0.recycle();
        return rd0Var;
    }

    @Override // p168r4.ed0
    /* renamed from: f */
    public final InterfaceC6000lx mo8350f() {
        Parcel m8073o0 = m8073o0(5, m8074j0());
        InterfaceC6000lx m9853f7 = AbstractBinderC5963kx.m9853f7(m8073o0.readStrongBinder());
        m8073o0.recycle();
        return m9853f7;
    }

    @Override // p168r4.ed0
    /* renamed from: g */
    public final rd0 mo8349g() {
        Parcel m8073o0 = m8073o0(3, m8074j0());
        rd0 rd0Var = (rd0) C6229s2.m7249c(m8073o0, rd0.CREATOR);
        m8073o0.recycle();
        return rd0Var;
    }

    @Override // p168r4.ed0
    /* renamed from: i6 */
    public final void mo8346i6(String str, String str2, C6293tt c6293tt, InterfaceC3512a interfaceC3512a, sc0 sc0Var, lb0 lb0Var, C6478yt c6478yt) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        m8074j0.writeString(str2);
        C6229s2.m7248d(m8074j0, c6293tt);
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7246f(m8074j0, sc0Var);
        C6229s2.m7246f(m8074j0, lb0Var);
        C6229s2.m7248d(m8074j0, c6478yt);
        m8072t0(21, m8074j0);
    }

    @Override // p168r4.ed0
    /* renamed from: s0 */
    public final boolean mo8343s0(InterfaceC3512a interfaceC3512a) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        Parcel m8073o0 = m8073o0(15, m8074j0);
        boolean m7251a = C6229s2.m7251a(m8073o0);
        m8073o0.recycle();
        return m7251a;
    }

    @Override // p168r4.ed0
    /* renamed from: u3 */
    public final boolean mo8342u3(InterfaceC3512a interfaceC3512a) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        Parcel m8073o0 = m8073o0(17, m8074j0);
        boolean m7251a = C6229s2.m7251a(m8073o0);
        m8073o0.recycle();
        return m7251a;
    }

    @Override // p168r4.ed0
    /* renamed from: y5 */
    public final void mo8341y5(String str, String str2, C6293tt c6293tt, InterfaceC3512a interfaceC3512a, yc0 yc0Var, lb0 lb0Var) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        m8074j0.writeString(str2);
        C6229s2.m7248d(m8074j0, c6293tt);
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7246f(m8074j0, yc0Var);
        C6229s2.m7246f(m8074j0, lb0Var);
        m8072t0(18, m8074j0);
    }

    @Override // p168r4.ed0
    /* renamed from: z1 */
    public final void mo8340z1(String str, String str2, C6293tt c6293tt, InterfaceC3512a interfaceC3512a, bd0 bd0Var, lb0 lb0Var) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        m8074j0.writeString(str2);
        C6229s2.m7248d(m8074j0, c6293tt);
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7246f(m8074j0, bd0Var);
        C6229s2.m7246f(m8074j0, lb0Var);
        m8072t0(20, m8074j0);
    }
}
