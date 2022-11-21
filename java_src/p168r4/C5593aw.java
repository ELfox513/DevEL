package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.aw */
/* loaded from: classes2.dex */
public final class C5593aw extends C6155q2 implements InterfaceC5666cw {
    public C5593aw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAppEventListener");
    }

    @Override // p168r4.InterfaceC5666cw
    /* renamed from: x6 */
    public final void mo12337x6(String str, String str2) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        m8074j0.writeString(str2);
        m8072t0(1, m8074j0);
    }
}
