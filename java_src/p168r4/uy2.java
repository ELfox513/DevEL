package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.uy2 */
/* loaded from: classes2.dex */
public final class uy2 extends C6155q2 {
    public uy2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    /* renamed from: A2 */
    public final void m6294A2(ny2 ny2Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, ny2Var);
        m8072t0(2, m8074j0);
    }

    /* renamed from: b2 */
    public final sy2 m6293b2(qy2 qy2Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, qy2Var);
        Parcel m8073o0 = m8073o0(1, m8074j0);
        sy2 sy2Var = (sy2) C6229s2.m7249c(m8073o0, sy2.CREATOR);
        m8073o0.recycle();
        return sy2Var;
    }

    /* renamed from: e3 */
    public final cz2 m6292e3(zy2 zy2Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, zy2Var);
        Parcel m8073o0 = m8073o0(3, m8074j0);
        cz2 cz2Var = (cz2) C6229s2.m7249c(m8073o0, cz2.CREATOR);
        m8073o0.recycle();
        return cz2Var;
    }
}
