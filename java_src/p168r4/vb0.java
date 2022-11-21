package p168r4;

import android.os.RemoteException;
/* renamed from: r4.vb0 */
/* loaded from: classes2.dex */
public final class vb0 extends AbstractBinderC5963kx {

    /* renamed from: a */
    public final Object f32671a = new Object();

    /* renamed from: b */
    public volatile InterfaceC6112ox f32672b;

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
        throw new RemoteException();
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: i */
    public final float mo6184i() {
        throw new RemoteException();
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
        synchronized (this.f32671a) {
            this.f32672b = interfaceC6112ox;
        }
    }

    @Override // p168r4.InterfaceC6000lx
    /* renamed from: q */
    public final InterfaceC6112ox mo6177q() {
        InterfaceC6112ox interfaceC6112ox;
        synchronized (this.f32671a) {
            interfaceC6112ox = this.f32672b;
        }
        return interfaceC6112ox;
    }
}
