package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: r4.pv */
/* loaded from: classes2.dex */
public final class C6147pv extends C6155q2 implements InterfaceC6221rv {
    public C6147pv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // p168r4.InterfaceC6221rv
    /* renamed from: F1 */
    public final void mo7335F1(InterfaceC5887iv interfaceC5887iv) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC5887iv);
        m8072t0(2, m8074j0);
    }

    @Override // p168r4.InterfaceC6221rv
    /* renamed from: H3 */
    public final void mo7334H3(a40 a40Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, a40Var);
        m8072t0(10, m8074j0);
    }

    @Override // p168r4.InterfaceC6221rv
    /* renamed from: T5 */
    public final void mo7331T5(String str, t30 t30Var, q30 q30Var) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        C6229s2.m7246f(m8074j0, t30Var);
        C6229s2.m7246f(m8074j0, q30Var);
        m8072t0(5, m8074j0);
    }

    @Override // p168r4.InterfaceC6221rv
    /* renamed from: W2 */
    public final void mo7329W2(d20 d20Var) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7248d(m8074j0, d20Var);
        m8072t0(6, m8074j0);
    }

    @Override // p168r4.InterfaceC6221rv
    /* renamed from: c */
    public final InterfaceC6110ov mo7327c() {
        InterfaceC6110ov c6035mv;
        Parcel m8073o0 = m8073o0(1, m8074j0());
        IBinder readStrongBinder = m8073o0.readStrongBinder();
        if (readStrongBinder == null) {
            c6035mv = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            if (queryLocalInterface instanceof InterfaceC6110ov) {
                c6035mv = (InterfaceC6110ov) queryLocalInterface;
            } else {
                c6035mv = new C6035mv(readStrongBinder);
            }
        }
        m8073o0.recycle();
        return c6035mv;
    }
}
