package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.i70 */
/* loaded from: classes2.dex */
public final class i70 extends C6155q2 implements k70 {
    public i70(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
    }

    @Override // p168r4.k70
    /* renamed from: s */
    public final void mo8683s(String str) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        m8072t0(3, m8074j0);
    }
}
