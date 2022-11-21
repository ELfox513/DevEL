package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.hi0 */
/* loaded from: classes2.dex */
public final class hi0 extends C6155q2 {
    public hi0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
    }

    /* renamed from: b2 */
    public final void m10907b2(vh0 vh0Var, String str, String str2) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, vh0Var);
        m8074j0.writeString(str);
        m8074j0.writeString(str2);
        m8072t0(2, m8074j0);
    }
}
