package p168r4;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import java.util.List;
/* renamed from: r4.lf0 */
/* loaded from: classes2.dex */
public final class lf0 extends C6155q2 implements nf0 {
    public lf0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    @Override // p168r4.nf0
    /* renamed from: c6 */
    public final void mo9110c6(List<Uri> list) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeTypedList(list);
        m8072t0(1, m8074j0);
    }

    @Override // p168r4.nf0
    /* renamed from: s */
    public final void mo9109s(String str) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        m8072t0(2, m8074j0);
    }
}
