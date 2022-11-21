package p168r4;

import android.os.RemoteException;
/* renamed from: r4.co2 */
/* loaded from: classes2.dex */
public final class co2 extends cx2 {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC5631bx f21641a;

    /* renamed from: b */
    public final /* synthetic */ eo2 f21642b;

    public co2(eo2 eo2Var, InterfaceC5631bx interfaceC5631bx) {
        this.f21642b = eo2Var;
        this.f21641a = interfaceC5631bx;
    }

    @Override // p168r4.cx2
    /* renamed from: v */
    public final void mo5376v() {
        uo1 uo1Var;
        uo1Var = this.f21642b.f23103q;
        if (uo1Var != null) {
            try {
                this.f21641a.mo4062c();
            } catch (RemoteException e) {
                cm0.m12434i("#007 Could not call remote method.", e);
            }
        }
    }
}
