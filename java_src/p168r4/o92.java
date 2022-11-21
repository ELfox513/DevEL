package p168r4;

import android.os.RemoteException;
/* renamed from: r4.o92 */
/* loaded from: classes2.dex */
public final class o92 {

    /* renamed from: a */
    public final t92<i31> f28934a;

    /* renamed from: b */
    public final String f28935b;

    /* renamed from: c */
    public InterfaceC5853hx f28936c;

    public o92(t92<i31> t92Var, String str) {
        this.f28934a = t92Var;
        this.f28935b = str;
    }

    /* renamed from: b */
    public final synchronized boolean m8860b() {
        return this.f28934a.mo6510a();
    }

    /* renamed from: c */
    public final synchronized void m8859c(C6293tt c6293tt, int i) {
        this.f28936c = null;
        this.f28934a.mo6509b(c6293tt, this.f28935b, new u92(i), new n92(this));
    }

    /* renamed from: d */
    public final synchronized String m8858d() {
        InterfaceC5853hx interfaceC5853hx;
        try {
            interfaceC5853hx = this.f28936c;
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
            return null;
        }
        return interfaceC5853hx != null ? interfaceC5853hx.mo10772c() : null;
    }

    /* renamed from: e */
    public final synchronized String m8857e() {
        InterfaceC5853hx interfaceC5853hx;
        try {
            interfaceC5853hx = this.f28936c;
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
            return null;
        }
        return interfaceC5853hx != null ? interfaceC5853hx.mo10772c() : null;
    }
}
