package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.dg0 */
/* loaded from: classes2.dex */
public final class dg0 extends C6155q2 implements gg0 {
    public dg0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // p168r4.gg0
    /* renamed from: c3 */
    public final void mo11169c3(String str, kg0 kg0Var) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        C6229s2.m7246f(m8074j0, kg0Var);
        m8072t0(7, m8074j0);
    }

    @Override // p168r4.gg0
    /* renamed from: k4 */
    public final void mo11168k4(og0 og0Var, kg0 kg0Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, og0Var);
        C6229s2.m7246f(m8074j0, kg0Var);
        m8072t0(6, m8074j0);
    }

    @Override // p168r4.gg0
    /* renamed from: t5 */
    public final void mo11167t5(og0 og0Var, kg0 kg0Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, og0Var);
        C6229s2.m7246f(m8074j0, kg0Var);
        m8072t0(4, m8074j0);
    }

    @Override // p168r4.gg0
    /* renamed from: w6 */
    public final void mo11166w6(og0 og0Var, kg0 kg0Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, og0Var);
        C6229s2.m7246f(m8074j0, kg0Var);
        m8072t0(5, m8074j0);
    }
}
