package p097j5;
/* renamed from: j5.t */
/* loaded from: classes2.dex */
public final class RunnableC4360t implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C4361u f18247a;

    public RunnableC4360t(C4361u c4361u) {
        this.f18247a = c4361u;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        InterfaceC4334c interfaceC4334c;
        InterfaceC4334c interfaceC4334c2;
        obj = this.f18247a.f18249b;
        synchronized (obj) {
            interfaceC4334c = this.f18247a.f18250c;
            if (interfaceC4334c != null) {
                interfaceC4334c2 = this.f18247a.f18250c;
                interfaceC4334c2.mo15406d();
            }
        }
    }
}
