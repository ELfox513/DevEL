package p070g5;

import android.os.RemoteException;
import p220x3.C7297q;
/* renamed from: g5.z7 */
/* loaded from: classes2.dex */
public final class RunnableC3901z7 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3784pa f17136a;

    /* renamed from: b */
    public final /* synthetic */ C3866w8 f17137b;

    public RunnableC3901z7(C3866w8 c3866w8, C3784pa c3784pa) {
        this.f17137b = c3866w8;
        this.f17136a = c3784pa;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC3669g3 interfaceC3669g3;
        interfaceC3669g3 = this.f17137b.f17044d;
        if (interfaceC3669g3 == null) {
            this.f17137b.f17008a.mo17858F().m18018m().m18042a("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            C7297q.m1883j(this.f17136a);
            interfaceC3669g3.mo17958C5(this.f17136a);
        } catch (RemoteException e) {
            this.f17137b.f17008a.mo17858F().m18018m().m18041b("Failed to reset data on the service: remote exception", e);
        }
        this.f17137b.m17863z();
    }
}
