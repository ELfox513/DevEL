package p168r4;

import android.app.Activity;
import android.os.RemoteException;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p220x3.C7297q;
/* renamed from: r4.b11 */
/* loaded from: classes2.dex */
public final class b11 extends AbstractBinderC5658co {

    /* renamed from: a */
    public final a11 f20806a;

    /* renamed from: b */
    public final InterfaceC6369vv f20807b;

    /* renamed from: d */
    public final fk2 f20808d;

    /* renamed from: k */
    public boolean f20809k = false;

    public b11(a11 a11Var, InterfaceC6369vv interfaceC6369vv, fk2 fk2Var) {
        this.f20806a = a11Var;
        this.f20807b = interfaceC6369vv;
        this.f20808d = fk2Var;
    }

    @Override // p168r4.InterfaceC5695do
    /* renamed from: H0 */
    public final void mo12080H0(boolean z) {
        this.f20809k = z;
    }

    @Override // p168r4.InterfaceC5695do
    /* renamed from: c */
    public final InterfaceC6369vv mo12078c() {
        return this.f20807b;
    }

    @Override // p168r4.InterfaceC5695do
    /* renamed from: g3 */
    public final void mo12076g3(C5881io c5881io) {
    }

    @Override // p168r4.InterfaceC5695do
    /* renamed from: Y4 */
    public final void mo12079Y4(InterfaceC5742ex interfaceC5742ex) {
        C7297q.m1888e("setOnPaidEventListener must be called on the main UI thread.");
        fk2 fk2Var = this.f20808d;
        if (fk2Var != null) {
            fk2Var.m11492v(interfaceC5742ex);
        }
    }

    @Override // p168r4.InterfaceC5695do
    /* renamed from: g */
    public final InterfaceC5853hx mo12077g() {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30981b5)).booleanValue()) {
            return null;
        }
        return this.f20806a.m10732d();
    }

    @Override // p168r4.InterfaceC5695do
    /* renamed from: m3 */
    public final void mo12075m3(InterfaceC3512a interfaceC3512a, InterfaceC5954ko interfaceC5954ko) {
        try {
            this.f20808d.m11495j(interfaceC5954ko);
            this.f20806a.m13061h((Activity) BinderC3514b.m18740t0(interfaceC3512a), interfaceC5954ko, this.f20809k);
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }
}
