package p168r4;

import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.wv */
/* loaded from: classes2.dex */
public final class C6406wv extends C6155q2 {
    public C6406wv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    /* renamed from: b2 */
    public final IBinder m5564b2(InterfaceC3512a interfaceC3512a, C6478yt c6478yt, String str, fb0 fb0Var, int i, int i2) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7248d(m8074j0, c6478yt);
        m8074j0.writeString(str);
        C6229s2.m7246f(m8074j0, fb0Var);
        m8074j0.writeInt(213806000);
        m8074j0.writeInt(i2);
        Parcel m8073o0 = m8073o0(2, m8074j0);
        IBinder readStrongBinder = m8073o0.readStrongBinder();
        m8073o0.recycle();
        return readStrongBinder;
    }
}
