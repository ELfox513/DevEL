package p168r4;

import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;
/* renamed from: r4.f20 */
/* loaded from: classes2.dex */
public final class f20 extends C6155q2 implements h20 {
    public f20(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    @Override // p168r4.h20
    /* renamed from: a */
    public final String mo5944a() {
        Parcel m8073o0 = m8073o0(2, m8074j0());
        String readString = m8073o0.readString();
        m8073o0.recycle();
        return readString;
    }

    @Override // p168r4.h20
    /* renamed from: b */
    public final List<p20> mo5943b() {
        Parcel m8073o0 = m8073o0(3, m8074j0());
        ArrayList m7245g = C6229s2.m7245g(m8073o0);
        m8073o0.recycle();
        return m7245g;
    }
}
