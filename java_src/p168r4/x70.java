package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.x70 */
/* loaded from: classes2.dex */
public final class x70 extends C6155q2 implements z70 {
    public x70(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override // p168r4.z70
    /* renamed from: C */
    public final void mo4412C(int i) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeInt(i);
        m8072t0(2, m8074j0);
    }

    @Override // p168r4.z70
    /* renamed from: c */
    public final void mo4411c() {
        m8072t0(1, m8074j0());
    }
}
