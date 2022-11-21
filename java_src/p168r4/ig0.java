package p168r4;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import p016b3.C0479g0;
/* renamed from: r4.ig0 */
/* loaded from: classes2.dex */
public final class ig0 extends C6155q2 implements kg0 {
    public ig0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // p168r4.kg0
    /* renamed from: E4 */
    public final void mo10041E4(ParcelFileDescriptor parcelFileDescriptor) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, parcelFileDescriptor);
        m8072t0(1, m8074j0);
    }

    @Override // p168r4.kg0
    /* renamed from: M4 */
    public final void mo10040M4(C0479g0 c0479g0) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, c0479g0);
        m8072t0(2, m8074j0);
    }
}
