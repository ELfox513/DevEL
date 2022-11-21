package p168r4;

import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.k20 */
/* loaded from: classes2.dex */
public final class k20 extends C6155q2 implements m20 {
    public k20(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // p168r4.m20
    /* renamed from: g */
    public final InterfaceC3512a mo8316g() {
        Parcel m8073o0 = m8073o0(4, m8074j0());
        InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(m8073o0.readStrongBinder());
        m8073o0.recycle();
        return m18742o0;
    }
}
