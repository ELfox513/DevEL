package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.a80 */
/* loaded from: classes2.dex */
public final class a80 extends C6155q2 implements c80 {
    public a80(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
    }

    @Override // p168r4.c80
    /* renamed from: C */
    public final void mo12511C(int i) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeInt(i);
        m8072t0(2, m8074j0);
    }

    @Override // p168r4.c80
    /* renamed from: F */
    public final void mo12510F(C5996lt c5996lt) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, c5996lt);
        m8072t0(3, m8074j0);
    }

    @Override // p168r4.c80
    /* renamed from: J5 */
    public final void mo12509J5(w70 w70Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, w70Var);
        m8072t0(1, m8074j0);
    }
}
