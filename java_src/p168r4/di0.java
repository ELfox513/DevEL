package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.di0 */
/* loaded from: classes2.dex */
public final class di0 extends C6155q2 implements fi0 {
    public di0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // p168r4.fi0
    /* renamed from: C */
    public final void mo4084C(int i) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeInt(i);
        m8072t0(2, m8074j0);
    }

    @Override // p168r4.fi0
    /* renamed from: F */
    public final void mo4083F(C5996lt c5996lt) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, c5996lt);
        m8072t0(3, m8074j0);
    }

    @Override // p168r4.fi0
    /* renamed from: c */
    public final void mo4082c() {
        m8072t0(1, m8074j0());
    }
}
