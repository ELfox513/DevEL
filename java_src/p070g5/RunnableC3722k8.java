package p070g5;

import android.os.RemoteException;
import p220x3.C7297q;
/* renamed from: g5.k8 */
/* loaded from: classes2.dex */
public final class RunnableC3722k8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3784pa f16690a;

    /* renamed from: b */
    public final /* synthetic */ C3866w8 f16691b;

    public RunnableC3722k8(C3866w8 c3866w8, C3784pa c3784pa) {
        this.f16691b = c3866w8;
        this.f16690a = c3784pa;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC3669g3 interfaceC3669g3;
        interfaceC3669g3 = this.f16691b.f17044d;
        if (interfaceC3669g3 == null) {
            this.f16691b.f17008a.mo17858F().m18018m().m18042a("Failed to send consent settings to service");
            return;
        }
        try {
            C7297q.m1883j(this.f16690a);
            interfaceC3669g3.mo17935q3(this.f16690a);
            this.f16691b.m17863z();
        } catch (RemoteException e) {
            this.f16691b.f17008a.mo17858F().m18018m().m18041b("Failed to send consent settings to the service", e);
        }
    }
}
