package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.wk0 */
/* loaded from: classes2.dex */
public final class wk0 extends C6155q2 implements yk0 {
    public wk0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
    }

    @Override // p168r4.yk0
    /* renamed from: Q0 */
    public final vk0 mo4657Q0(InterfaceC3512a interfaceC3512a, fb0 fb0Var, int i) {
        vk0 tk0Var;
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7246f(m8074j0, fb0Var);
        m8074j0.writeInt(213806000);
        Parcel m8073o0 = m8073o0(2, m8074j0);
        IBinder readStrongBinder = m8073o0.readStrongBinder();
        if (readStrongBinder == null) {
            tk0Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            if (queryLocalInterface instanceof vk0) {
                tk0Var = (vk0) queryLocalInterface;
            } else {
                tk0Var = new tk0(readStrongBinder);
            }
        }
        m8073o0.recycle();
        return tk0Var;
    }
}
