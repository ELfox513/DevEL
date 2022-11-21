package p097j5;

import java.util.concurrent.Executor;
/* renamed from: j5.u */
/* loaded from: classes2.dex */
public final class C4361u<TResult> implements InterfaceC4337d0<TResult> {

    /* renamed from: a */
    public final Executor f18248a;

    /* renamed from: b */
    public final Object f18249b = new Object();

    /* renamed from: c */
    public InterfaceC4334c f18250c;

    public C4361u(Executor executor, InterfaceC4334c interfaceC4334c) {
        this.f18248a = executor;
        this.f18250c = interfaceC4334c;
    }

    @Override // p097j5.InterfaceC4337d0
    /* renamed from: a */
    public final void mo16750a() {
        synchronized (this.f18249b) {
            this.f18250c = null;
        }
    }

    @Override // p097j5.InterfaceC4337d0
    /* renamed from: b */
    public final void mo16749b(AbstractC4346i<TResult> abstractC4346i) {
        if (abstractC4346i.mo16788n()) {
            synchronized (this.f18249b) {
                if (this.f18250c == null) {
                    return;
                }
                this.f18248a.execute(new RunnableC4360t(this));
            }
        }
    }
}
