package p168r4;

import android.os.RemoteException;
/* renamed from: r4.dj1 */
/* loaded from: classes2.dex */
public final class dj1 extends AbstractBinderC5963kx {

    /* renamed from: a */
    public final Object f22291a = new Object();

    /* renamed from: b */
    public final InterfaceC6000lx f22292b;

    /* renamed from: d */
    public final ub0 f22293d;

    public dj1(InterfaceC6000lx interfaceC6000lx, ub0 ub0Var) {
        this.f22292b = interfaceC6000lx;
        this.f22293d = ub0Var;
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: c */
    public final void mo6188c() {
        throw new RemoteException();
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: d */
    public final void mo6187d() {
        throw new RemoteException();
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: f */
    public final boolean mo6186f() {
        throw new RemoteException();
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: h */
    public final float mo6185h() {
        ub0 ub0Var = this.f22293d;
        if (ub0Var != null) {
            return ub0Var.mo6565z();
        }
        return 0.0f;
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: i */
    public final float mo6184i() {
        ub0 ub0Var = this.f22293d;
        if (ub0Var != null) {
            return ub0Var.mo6585P();
        }
        return 0.0f;
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: j */
    public final int mo6183j() {
        throw new RemoteException();
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: l */
    public final float mo6182l() {
        throw new RemoteException();
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: m */
    public final void mo6181m() {
        throw new RemoteException();
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: n0 */
    public final void mo6180n0(boolean z) {
        throw new RemoteException();
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: o */
    public final boolean mo6179o() {
        throw new RemoteException();
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: p */
    public final boolean mo6178p() {
        throw new RemoteException();
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: U4 */
    public final void mo6189U4(InterfaceC6112ox interfaceC6112ox) {
        synchronized (this.f22291a) {
            InterfaceC6000lx interfaceC6000lx = this.f22292b;
            if (interfaceC6000lx != null) {
                interfaceC6000lx.mo6189U4(interfaceC6112ox);
            }
        }
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: q */
    public final InterfaceC6112ox mo6177q() {
        synchronized (this.f22291a) {
            InterfaceC6000lx interfaceC6000lx = this.f22292b;
            if (interfaceC6000lx != null) {
                return interfaceC6000lx.mo6177q();
            }
            return null;
        }
    }
}
