package p168r4;

import android.os.IBinder;
import android.os.Parcel;
import java.util.List;
/* renamed from: r4.l70 */
/* loaded from: classes2.dex */
public final class l70 extends C6155q2 implements n70 {
    public l70(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    @Override // p168r4.n70
    /* renamed from: c5 */
    public final void mo4540c5(List<g70> list) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeTypedList(list);
        m8072t0(1, m8074j0);
    }
}
