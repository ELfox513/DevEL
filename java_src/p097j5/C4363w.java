package p097j5;

import java.util.concurrent.Executor;
/* renamed from: j5.w */
/* loaded from: classes2.dex */
public final class C4363w<TResult> implements InterfaceC4337d0<TResult> {

    /* renamed from: a */
    public final Executor f18253a;

    /* renamed from: b */
    public final Object f18254b = new Object();

    /* renamed from: c */
    public InterfaceC4336d<TResult> f18255c;

    public C4363w(Executor executor, InterfaceC4336d<TResult> interfaceC4336d) {
        this.f18253a = executor;
        this.f18255c = interfaceC4336d;
    }

    @Override // p097j5.InterfaceC4337d0
    /* renamed from: a */
    public final void mo16750a() {
        synchronized (this.f18254b) {
            this.f18255c = null;
        }
    }

    @Override // p097j5.InterfaceC4337d0
    /* renamed from: b */
    public final void mo16749b(AbstractC4346i<TResult> abstractC4346i) {
        synchronized (this.f18254b) {
            if (this.f18255c == null) {
                return;
            }
            this.f18253a.execute(new RunnableC4362v(this, abstractC4346i));
        }
    }
}
