package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.vo */
/* loaded from: classes2.dex */
public final class C6362vo extends C6155q2 {
    public C6362vo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    /* renamed from: A2 */
    public final C6177qo m6055A2(C6288to c6288to) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, c6288to);
        Parcel m8073o0 = m8073o0(2, m8074j0);
        C6177qo c6177qo = (C6177qo) C6229s2.m7249c(m8073o0, C6177qo.CREATOR);
        m8073o0.recycle();
        return c6177qo;
    }

    /* renamed from: b2 */
    public final C6177qo m6054b2(C6288to c6288to) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, c6288to);
        Parcel m8073o0 = m8073o0(1, m8074j0);
        C6177qo c6177qo = (C6177qo) C6229s2.m7249c(m8073o0, C6177qo.CREATOR);
        m8073o0.recycle();
        return c6177qo;
    }

    /* renamed from: e3 */
    public final long m6053e3(C6288to c6288to) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, c6288to);
        Parcel m8073o0 = m8073o0(3, m8074j0);
        long readLong = m8073o0.readLong();
        m8073o0.recycle();
        return readLong;
    }
}
