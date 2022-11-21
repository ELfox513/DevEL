package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.m60 */
/* loaded from: classes2.dex */
public final class m60 extends C6155q2 implements o60 {
    public m60(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.h5.client.IH5AdsEventListener");
    }

    @Override // p168r4.o60
    /* renamed from: u */
    public final void mo8879u(String str) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        m8072t0(1, m8074j0);
    }
}
