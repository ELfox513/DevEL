package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.le0 */
/* loaded from: classes2.dex */
public final class le0 extends C6155q2 implements ne0 {
    public le0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
    }

    @Override // p168r4.ne0
    /* renamed from: Q0 */
    public final ke0 mo9118Q0(InterfaceC3512a interfaceC3512a, fb0 fb0Var, int i) {
        ke0 ie0Var;
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7246f(m8074j0, fb0Var);
        m8074j0.writeInt(213806000);
        Parcel m8073o0 = m8073o0(1, m8074j0);
        IBinder readStrongBinder = m8073o0.readStrongBinder();
        if (readStrongBinder == null) {
            ie0Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            if (queryLocalInterface instanceof ke0) {
                ie0Var = (ke0) queryLocalInterface;
            } else {
                ie0Var = new ie0(readStrongBinder);
            }
        }
        m8073o0.recycle();
        return ie0Var;
    }
}
