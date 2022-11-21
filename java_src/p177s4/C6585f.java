package p177s4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: s4.f */
/* loaded from: classes2.dex */
public final class C6585f extends C6580a implements InterfaceC6583d {
    public C6585f(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    }

    @Override // p177s4.InterfaceC6583d
    /* renamed from: b */
    public final boolean mo3875b() {
        Parcel m3879o0 = m3879o0(6, m3880j0());
        boolean m3877b = C6582c.m3877b(m3879o0);
        m3879o0.recycle();
        return m3877b;
    }

    @Override // p177s4.InterfaceC6583d
    public final String getId() {
        Parcel m3879o0 = m3879o0(1, m3880j0());
        String readString = m3879o0.readString();
        m3879o0.recycle();
        return readString;
    }

    @Override // p177s4.InterfaceC6583d
    /* renamed from: z0 */
    public final boolean mo3874z0(boolean z) {
        Parcel m3880j0 = m3880j0();
        C6582c.m3878a(m3880j0, true);
        Parcel m3879o0 = m3879o0(2, m3880j0);
        boolean m3877b = C6582c.m3877b(m3879o0);
        m3879o0.recycle();
        return m3877b;
    }
}
