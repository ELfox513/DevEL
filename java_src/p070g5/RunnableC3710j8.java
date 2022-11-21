package p070g5;

import android.os.RemoteException;
import p220x3.C7297q;
/* renamed from: g5.j8 */
/* loaded from: classes2.dex */
public final class RunnableC3710j8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3784pa f16661a;

    /* renamed from: b */
    public final /* synthetic */ C3866w8 f16662b;

    public RunnableC3710j8(C3866w8 c3866w8, C3784pa c3784pa) {
        this.f16662b = c3866w8;
        this.f16661a = c3784pa;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC3669g3 interfaceC3669g3;
        interfaceC3669g3 = this.f16662b.f17044d;
        if (interfaceC3669g3 == null) {
            this.f16662b.f17008a.mo17858F().m18018m().m18042a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            C7297q.m1883j(this.f16661a);
            interfaceC3669g3.mo17943e4(this.f16661a);
            this.f16662b.m17863z();
        } catch (RemoteException e) {
            this.f16662b.f17008a.mo17858F().m18018m().m18041b("Failed to send measurementEnabled to the service", e);
        }
    }
}
