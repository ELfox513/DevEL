package p070g5;
/* renamed from: g5.q8 */
/* loaded from: classes2.dex */
public final class RunnableC3794q8 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC3669g3 f16898a;

    /* renamed from: b */
    public final /* synthetic */ ServiceConnectionC3854v8 f16899b;

    public RunnableC3794q8(ServiceConnectionC3854v8 serviceConnectionC3854v8, InterfaceC3669g3 interfaceC3669g3) {
        this.f16899b = serviceConnectionC3854v8;
        this.f16898a = interfaceC3669g3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f16899b) {
            this.f16899b.f17011a = false;
            if (!this.f16899b.f17013d.m17868u()) {
                this.f16899b.f17013d.f17008a.mo17858F().m18014q().m18042a("Connected to service");
                this.f16899b.f17013d.m17870s(this.f16898a);
            }
        }
    }
}
