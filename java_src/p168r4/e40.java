package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.e40 */
/* loaded from: classes2.dex */
public final class e40 extends C6155q2 implements g40 {
    public e40(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override // p168r4.g40
    /* renamed from: H */
    public final void mo11295H(String str) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        m8072t0(1, m8074j0);
    }

    @Override // p168r4.g40
    /* renamed from: d */
    public final void mo11294d() {
        m8072t0(2, m8074j0());
    }
}
