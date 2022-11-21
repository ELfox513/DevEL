package p070g5;
/* renamed from: g5.s8 */
/* loaded from: classes2.dex */
public final class RunnableC3818s8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC3669g3 f16935a;

    /* renamed from: b */
    public final /* synthetic */ ServiceConnectionC3854v8 f16936b;

    public RunnableC3818s8(ServiceConnectionC3854v8 serviceConnectionC3854v8, InterfaceC3669g3 interfaceC3669g3) {
        this.f16936b = serviceConnectionC3854v8;
        this.f16935a = interfaceC3669g3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f16936b) {
            this.f16936b.f17011a = false;
            if (!this.f16936b.f17013d.m17868u()) {
                this.f16936b.f17013d.f17008a.mo17858F().m18019l().m18042a("Connected to remote service");
                this.f16936b.f17013d.m17870s(this.f16935a);
            }
        }
    }
}
