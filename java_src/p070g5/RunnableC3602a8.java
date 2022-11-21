package p070g5;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;
import p220x3.C7297q;
/* renamed from: g5.a8 */
/* loaded from: classes2.dex */
public final class RunnableC3602a8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f16207a;

    /* renamed from: b */
    public final /* synthetic */ C3784pa f16208b;

    /* renamed from: d */
    public final /* synthetic */ C3866w8 f16209d;

    public RunnableC3602a8(C3866w8 c3866w8, AtomicReference atomicReference, C3784pa c3784pa) {
        this.f16209d = c3866w8;
        this.f16207a = atomicReference;
        this.f16208b = c3784pa;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        InterfaceC3669g3 interfaceC3669g3;
        synchronized (this.f16207a) {
            try {
            } catch (RemoteException e) {
                this.f16209d.f17008a.mo17858F().m18018m().m18041b("Failed to get app instance id", e);
                atomicReference = this.f16207a;
            }
            if (!this.f16209d.f17008a.m18546A().m18350l().m18270k()) {
                this.f16209d.f17008a.mo17858F().m18012s().m18042a("Analytics storage consent denied; will not get app instance id");
                this.f16209d.f17008a.m18543D().m18208x(null);
                this.f16209d.f17008a.m18546A().f16500g.m18387b(null);
                this.f16207a.set(null);
                this.f16207a.notify();
                return;
            }
            interfaceC3669g3 = this.f16209d.f17044d;
            if (interfaceC3669g3 == null) {
                this.f16209d.f17008a.mo17858F().m18018m().m18042a("Failed to get app instance id");
                this.f16207a.notify();
                return;
            }
            C7297q.m1883j(this.f16208b);
            this.f16207a.set(interfaceC3669g3.mo17940g6(this.f16208b));
            String str = (String) this.f16207a.get();
            if (str != null) {
                this.f16209d.f17008a.m18543D().m18208x(str);
                this.f16209d.f17008a.m18546A().f16500g.m18387b(str);
            }
            this.f16209d.m17863z();
            atomicReference = this.f16207a;
            atomicReference.notify();
        }
    }
}
