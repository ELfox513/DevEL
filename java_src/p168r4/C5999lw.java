package p168r4;

import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;
import p060f4.InterfaceC3512a;
/* renamed from: r4.lw */
/* loaded from: classes2.dex */
public final class C5999lw extends C6155q2 implements InterfaceC6074nw {
    public C5999lw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: S2 */
    public final void mo8566S2(C6261sy c6261sy) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, c6261sy);
        m8072t0(14, m8074j0);
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: Y0 */
    public final void mo8565Y0(n70 n70Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, n70Var);
        m8072t0(12, m8074j0);
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: c */
    public final void mo8563c() {
        m8072t0(1, m8074j0());
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: l */
    public final String mo8559l() {
        Parcel m8073o0 = m8073o0(9, m8074j0());
        String readString = m8073o0.readString();
        m8073o0.recycle();
        return readString;
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: m */
    public final List<g70> mo8558m() {
        Parcel m8073o0 = m8073o0(13, m8074j0());
        ArrayList createTypedArrayList = m8073o0.createTypedArrayList(g70.CREATOR);
        m8073o0.recycle();
        return createTypedArrayList;
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: p5 */
    public final void mo8557p5(String str, InterfaceC3512a interfaceC3512a) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(null);
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        m8072t0(6, m8074j0);
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: s1 */
    public final void mo8555s1(fb0 fb0Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, fb0Var);
        m8072t0(11, m8074j0);
    }
}
