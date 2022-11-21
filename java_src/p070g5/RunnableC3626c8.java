package p070g5;

import android.os.RemoteException;
import p220x3.C7297q;
/* renamed from: g5.c8 */
/* loaded from: classes2.dex */
public final class RunnableC3626c8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3784pa f16415a;

    /* renamed from: b */
    public final /* synthetic */ C3866w8 f16416b;

    public RunnableC3626c8(C3866w8 c3866w8, C3784pa c3784pa) {
        this.f16416b = c3866w8;
        this.f16415a = c3784pa;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC3669g3 interfaceC3669g3;
        interfaceC3669g3 = this.f16416b.f17044d;
        if (interfaceC3669g3 == null) {
            this.f16416b.f17008a.mo17858F().m18018m().m18042a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            C7297q.m1883j(this.f16415a);
            interfaceC3669g3.mo17956F4(this.f16415a);
            this.f16416b.f17008a.m18510x().m18139o();
            this.f16416b.m17876m(interfaceC3669g3, null, this.f16415a);
            this.f16416b.m17863z();
        } catch (RemoteException e) {
            this.f16416b.f17008a.mo17858F().m18018m().m18041b("Failed to send app launch to the service", e);
        }
    }
}
