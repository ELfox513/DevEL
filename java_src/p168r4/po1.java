package p168r4;

import android.os.RemoteException;
import p184t2.C6726v;
/* renamed from: r4.po1 */
/* loaded from: classes2.dex */
public final class po1 extends C6726v.AbstractC6727a {

    /* renamed from: a */
    public final ej1 f29542a;

    public po1(ej1 ej1Var) {
        this.f29542a = ej1Var;
    }

    /* renamed from: f */
    public static InterfaceC6112ox m8233f(ej1 ej1Var) {
        InterfaceC6000lx m11760e0 = ej1Var.m11760e0();
        if (m11760e0 == null) {
            return null;
        }
        try {
            return m11760e0.mo6177q();
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // p184t2.C6726v.AbstractC6727a
    /* renamed from: a */
    public final void mo3545a() {
        InterfaceC6112ox m8233f = m8233f(this.f29542a);
        if (m8233f == null) {
            return;
        }
        try {
            m8233f.mo5550f();
        } catch (RemoteException e) {
            cm0.m12436g("Unable to call onVideoEnd()", e);
        }
    }

    @Override // p184t2.C6726v.AbstractC6727a
    /* renamed from: c */
    public final void mo3543c() {
        InterfaceC6112ox m8233f = m8233f(this.f29542a);
        if (m8233f == null) {
            return;
        }
        try {
            m8233f.mo5549g();
        } catch (RemoteException e) {
            cm0.m12436g("Unable to call onVideoEnd()", e);
        }
    }

    @Override // p184t2.C6726v.AbstractC6727a
    /* renamed from: e */
    public final void mo3541e() {
        InterfaceC6112ox m8233f = m8233f(this.f29542a);
        if (m8233f == null) {
            return;
        }
        try {
            m8233f.mo5552c();
        } catch (RemoteException e) {
            cm0.m12436g("Unable to call onVideoEnd()", e);
        }
    }
}
