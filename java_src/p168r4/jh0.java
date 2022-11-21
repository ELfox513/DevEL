package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.jh0 */
/* loaded from: classes2.dex */
public final class jh0 extends C6155q2 implements lh0 {
    public jh0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // p168r4.lh0
    /* renamed from: T */
    public final void mo9668T(int i) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeInt(i);
        m8072t0(7, m8074j0);
    }

    @Override // p168r4.lh0
    /* renamed from: c */
    public final void mo9667c() {
        m8072t0(1, m8074j0());
    }

    @Override // p168r4.lh0
    /* renamed from: d */
    public final void mo9666d() {
        m8072t0(2, m8074j0());
    }

    @Override // p168r4.lh0
    /* renamed from: f */
    public final void mo9665f() {
        m8072t0(4, m8074j0());
    }

    @Override // p168r4.lh0
    /* renamed from: g */
    public final void mo9664g() {
        m8072t0(3, m8074j0());
    }

    @Override // p168r4.lh0
    /* renamed from: h */
    public final void mo9663h() {
        m8072t0(6, m8074j0());
    }

    @Override // p168r4.lh0
    /* renamed from: k */
    public final void mo9662k() {
        m8072t0(8, m8074j0());
    }

    @Override // p168r4.lh0
    /* renamed from: n4 */
    public final void mo9661n4(eh0 eh0Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, eh0Var);
        m8072t0(5, m8074j0);
    }
}
