package p016b3;

import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
import p168r4.C6155q2;
import p168r4.C6229s2;
/* renamed from: b3.w0 */
/* loaded from: classes.dex */
public final class C0542w0 extends C6155q2 implements InterfaceC0548y0 {
    public C0542w0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    @Override // p016b3.InterfaceC0548y0
    public final boolean zze(InterfaceC3512a interfaceC3512a, String str, String str2) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        m8074j0.writeString(str);
        m8074j0.writeString(str2);
        Parcel m8073o0 = m8073o0(1, m8074j0);
        boolean m7251a = C6229s2.m7251a(m8073o0);
        m8073o0.recycle();
        return m7251a;
    }

    @Override // p016b3.InterfaceC0548y0
    public final void zzf(InterfaceC3512a interfaceC3512a) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        m8072t0(2, m8074j0);
    }
}
