package p168r4;

import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.tk0 */
/* loaded from: classes2.dex */
public final class tk0 extends C6155q2 implements vk0 {
    public tk0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // p168r4.vk0
    /* renamed from: k5 */
    public final void mo6130k5(InterfaceC3512a interfaceC3512a, zk0 zk0Var, sk0 sk0Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7248d(m8074j0, zk0Var);
        C6229s2.m7246f(m8074j0, sk0Var);
        m8072t0(1, m8074j0);
    }
}
