package p168r4;

import android.os.RemoteException;
/* renamed from: r4.h92 */
/* loaded from: classes2.dex */
public final class h92 implements InterfaceC5812gt, cf1 {

    /* renamed from: a */
    public InterfaceC5740ev f24519a;

    @Override // p168r4.InterfaceC5812gt
    /* renamed from: F0 */
    public final synchronized void mo3609F0() {
        InterfaceC5740ev interfaceC5740ev = this.f24519a;
        if (interfaceC5740ev != null) {
            try {
                interfaceC5740ev.mo10824a();
            } catch (RemoteException e) {
                cm0.m12436g("Remote Exception at onAdClicked.", e);
            }
        }
    }

    @Override // p168r4.cf1
    /* renamed from: a */
    public final synchronized void mo5096a() {
        InterfaceC5740ev interfaceC5740ev = this.f24519a;
        if (interfaceC5740ev != null) {
            try {
                interfaceC5740ev.mo10824a();
            } catch (RemoteException e) {
                cm0.m12436g("Remote Exception at onPhysicalClick.", e);
            }
        }
    }

    /* renamed from: c */
    public final synchronized void m10958c(InterfaceC5740ev interfaceC5740ev) {
        this.f24519a = interfaceC5740ev;
    }
}
