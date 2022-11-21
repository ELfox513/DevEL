package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.zh0 */
/* loaded from: classes2.dex */
public final class zh0 extends C6155q2 implements bi0 {
    public zh0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // p168r4.bi0
    /* renamed from: G2 */
    public final void mo4247G2(vh0 vh0Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, vh0Var);
        m8072t0(3, m8074j0);
    }

    @Override // p168r4.bi0
    /* renamed from: J3 */
    public final void mo4246J3(C5996lt c5996lt) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, c5996lt);
        m8072t0(5, m8074j0);
    }

    @Override // p168r4.bi0
    /* renamed from: Y */
    public final void mo4245Y(int i) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeInt(i);
        m8072t0(4, m8074j0);
    }

    @Override // p168r4.bi0
    /* renamed from: c */
    public final void mo4244c() {
        m8072t0(1, m8074j0());
    }

    @Override // p168r4.bi0
    /* renamed from: d */
    public final void mo4243d() {
        m8072t0(2, m8074j0());
    }

    @Override // p168r4.bi0
    /* renamed from: h */
    public final void mo4242h() {
        m8072t0(6, m8074j0());
    }

    @Override // p168r4.bi0
    /* renamed from: i */
    public final void mo4241i() {
        m8072t0(7, m8074j0());
    }
}
