package p168r4;

import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.ci0 */
/* loaded from: classes2.dex */
public final class ci0 extends C6155q2 {
    public ci0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
    }

    /* renamed from: b2 */
    public final IBinder m12460b2(InterfaceC3512a interfaceC3512a, String str, fb0 fb0Var, int i) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        m8074j0.writeString(str);
        C6229s2.m7246f(m8074j0, fb0Var);
        m8074j0.writeInt(213806000);
        Parcel m8073o0 = m8073o0(1, m8074j0);
        IBinder readStrongBinder = m8073o0.readStrongBinder();
        m8073o0.recycle();
        return readStrongBinder;
    }
}
