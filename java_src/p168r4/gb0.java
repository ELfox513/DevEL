package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;
import p060f4.InterfaceC3512a;
/* renamed from: r4.gb0 */
/* loaded from: classes2.dex */
public final class gb0 extends C6155q2 implements ib0 {
    public gb0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // p168r4.ib0
    /* renamed from: D0 */
    public final qb0 mo10347D0() {
        qb0 qb0Var;
        Parcel m8073o0 = m8073o0(15, m8074j0());
        IBinder readStrongBinder = m8073o0.readStrongBinder();
        if (readStrongBinder == null) {
            qb0Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            if (queryLocalInterface instanceof qb0) {
                qb0Var = (qb0) queryLocalInterface;
            } else {
                qb0Var = new qb0(readStrongBinder);
            }
        }
        m8073o0.recycle();
        return qb0Var;
    }

    @Override // p168r4.ib0
    /* renamed from: D4 */
    public final void mo10346D4(InterfaceC3512a interfaceC3512a) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        m8072t0(30, m8074j0);
    }

    @Override // p168r4.ib0
    /* renamed from: F2 */
    public final void mo10345F2(InterfaceC3512a interfaceC3512a, C6293tt c6293tt, String str, lb0 lb0Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7248d(m8074j0, c6293tt);
        m8074j0.writeString(str);
        C6229s2.m7246f(m8074j0, lb0Var);
        m8072t0(32, m8074j0);
    }

    @Override // p168r4.ib0
    /* renamed from: G0 */
    public final void mo10344G0(InterfaceC3512a interfaceC3512a) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        m8072t0(21, m8074j0);
    }

    @Override // p168r4.ib0
    /* renamed from: I */
    public final rd0 mo10343I() {
        Parcel m8073o0 = m8073o0(33, m8074j0());
        rd0 rd0Var = (rd0) C6229s2.m7249c(m8073o0, rd0.CREATOR);
        m8073o0.recycle();
        return rd0Var;
    }

    @Override // p168r4.ib0
    /* renamed from: O */
    public final boolean mo10341O() {
        Parcel m8073o0 = m8073o0(22, m8074j0());
        boolean m7251a = C6229s2.m7251a(m8073o0);
        m8073o0.recycle();
        return m7251a;
    }

    @Override // p168r4.ib0
    /* renamed from: O2 */
    public final void mo10340O2(InterfaceC3512a interfaceC3512a, k70 k70Var, List<q70> list) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7246f(m8074j0, k70Var);
        m8074j0.writeTypedList(list);
        m8072t0(31, m8074j0);
    }

    @Override // p168r4.ib0
    /* renamed from: P */
    public final InterfaceC6000lx mo10339P() {
        Parcel m8073o0 = m8073o0(26, m8074j0());
        InterfaceC6000lx m9853f7 = AbstractBinderC5963kx.m9853f7(m8073o0.readStrongBinder());
        m8073o0.recycle();
        return m9853f7;
    }

    @Override // p168r4.ib0
    /* renamed from: U5 */
    public final void mo10338U5(C6293tt c6293tt, String str) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, c6293tt);
        m8074j0.writeString(str);
        m8072t0(11, m8074j0);
    }

    @Override // p168r4.ib0
    /* renamed from: X */
    public final rd0 mo10337X() {
        Parcel m8073o0 = m8073o0(34, m8074j0());
        rd0 rd0Var = (rd0) C6229s2.m7249c(m8073o0, rd0.CREATOR);
        m8073o0.recycle();
        return rd0Var;
    }

    @Override // p168r4.ib0
    /* renamed from: Z */
    public final rb0 mo10336Z() {
        rb0 rb0Var;
        Parcel m8073o0 = m8073o0(16, m8074j0());
        IBinder readStrongBinder = m8073o0.readStrongBinder();
        if (readStrongBinder == null) {
            rb0Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            if (queryLocalInterface instanceof rb0) {
                rb0Var = (rb0) queryLocalInterface;
            } else {
                rb0Var = new rb0(readStrongBinder);
            }
        }
        m8073o0.recycle();
        return rb0Var;
    }

    @Override // p168r4.ib0
    /* renamed from: a2 */
    public final void mo10335a2(InterfaceC3512a interfaceC3512a, C6293tt c6293tt, String str, qh0 qh0Var, String str2) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7248d(m8074j0, c6293tt);
        m8074j0.writeString(null);
        C6229s2.m7246f(m8074j0, qh0Var);
        m8074j0.writeString(str2);
        m8072t0(10, m8074j0);
    }

    @Override // p168r4.ib0
    /* renamed from: a7 */
    public final void mo10334a7(InterfaceC3512a interfaceC3512a, C6293tt c6293tt, String str, lb0 lb0Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7248d(m8074j0, c6293tt);
        m8074j0.writeString(str);
        C6229s2.m7246f(m8074j0, lb0Var);
        m8072t0(28, m8074j0);
    }

    @Override // p168r4.ib0
    /* renamed from: c4 */
    public final void mo10333c4(InterfaceC3512a interfaceC3512a) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        m8072t0(37, m8074j0);
    }

    @Override // p168r4.ib0
    /* renamed from: d */
    public final InterfaceC3512a mo10332d() {
        Parcel m8073o0 = m8073o0(2, m8074j0());
        InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(m8073o0.readStrongBinder());
        m8073o0.recycle();
        return m18742o0;
    }

    @Override // p168r4.ib0
    /* renamed from: f */
    public final void mo10331f() {
        m8072t0(4, m8074j0());
    }

    @Override // p168r4.ib0
    /* renamed from: f6 */
    public final void mo10330f6(InterfaceC3512a interfaceC3512a, C6478yt c6478yt, C6293tt c6293tt, String str, String str2, lb0 lb0Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7248d(m8074j0, c6478yt);
        C6229s2.m7248d(m8074j0, c6293tt);
        m8074j0.writeString(str);
        m8074j0.writeString(str2);
        C6229s2.m7246f(m8074j0, lb0Var);
        m8072t0(6, m8074j0);
    }

    @Override // p168r4.ib0
    /* renamed from: j */
    public final void mo10327j() {
        m8072t0(5, m8074j0());
    }

    @Override // p168r4.ib0
    /* renamed from: j3 */
    public final void mo10326j3(boolean z) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7250b(m8074j0, z);
        m8072t0(25, m8074j0);
    }

    @Override // p168r4.ib0
    /* renamed from: k */
    public final void mo10325k() {
        m8072t0(8, m8074j0());
    }

    @Override // p168r4.ib0
    /* renamed from: k0 */
    public final ob0 mo10324k0() {
        ob0 mb0Var;
        Parcel m8073o0 = m8073o0(36, m8074j0());
        IBinder readStrongBinder = m8073o0.readStrongBinder();
        if (readStrongBinder == null) {
            mb0Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
            if (queryLocalInterface instanceof ob0) {
                mb0Var = (ob0) queryLocalInterface;
            } else {
                mb0Var = new mb0(readStrongBinder);
            }
        }
        m8073o0.recycle();
        return mb0Var;
    }

    @Override // p168r4.ib0
    /* renamed from: l */
    public final void mo10323l() {
        m8072t0(9, m8074j0());
    }

    @Override // p168r4.ib0
    /* renamed from: l4 */
    public final void mo10322l4(InterfaceC3512a interfaceC3512a, C6478yt c6478yt, C6293tt c6293tt, String str, String str2, lb0 lb0Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7248d(m8074j0, c6478yt);
        C6229s2.m7248d(m8074j0, c6293tt);
        m8074j0.writeString(str);
        m8074j0.writeString(str2);
        C6229s2.m7246f(m8074j0, lb0Var);
        m8072t0(35, m8074j0);
    }

    @Override // p168r4.ib0
    /* renamed from: l5 */
    public final void mo10321l5(InterfaceC3512a interfaceC3512a, C6293tt c6293tt, String str, String str2, lb0 lb0Var, d20 d20Var, List<String> list) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7248d(m8074j0, c6293tt);
        m8074j0.writeString(str);
        m8074j0.writeString(str2);
        C6229s2.m7246f(m8074j0, lb0Var);
        C6229s2.m7248d(m8074j0, d20Var);
        m8074j0.writeStringList(list);
        m8072t0(14, m8074j0);
    }

    @Override // p168r4.ib0
    /* renamed from: m */
    public final boolean mo10320m() {
        Parcel m8073o0 = m8073o0(13, m8074j0());
        boolean m7251a = C6229s2.m7251a(m8073o0);
        m8073o0.recycle();
        return m7251a;
    }

    @Override // p168r4.ib0
    /* renamed from: o */
    public final void mo10318o() {
        m8072t0(12, m8074j0());
    }

    @Override // p168r4.ib0
    /* renamed from: o5 */
    public final void mo10317o5(InterfaceC3512a interfaceC3512a, qh0 qh0Var, List<String> list) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7246f(m8074j0, qh0Var);
        m8074j0.writeStringList(list);
        m8072t0(23, m8074j0);
    }

    @Override // p168r4.ib0
    /* renamed from: w2 */
    public final void mo10311w2(InterfaceC3512a interfaceC3512a, C6293tt c6293tt, String str, String str2, lb0 lb0Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7248d(m8074j0, c6293tt);
        m8074j0.writeString(str);
        m8074j0.writeString(str2);
        C6229s2.m7246f(m8074j0, lb0Var);
        m8072t0(7, m8074j0);
    }

    @Override // p168r4.ib0
    /* renamed from: y */
    public final ub0 mo10310y() {
        ub0 sb0Var;
        Parcel m8073o0 = m8073o0(27, m8074j0());
        IBinder readStrongBinder = m8073o0.readStrongBinder();
        if (readStrongBinder == null) {
            sb0Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            if (queryLocalInterface instanceof ub0) {
                sb0Var = (ub0) queryLocalInterface;
            } else {
                sb0Var = new sb0(readStrongBinder);
            }
        }
        m8073o0.recycle();
        return sb0Var;
    }
}
