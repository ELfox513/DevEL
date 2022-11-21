package p097j5;

import java.util.concurrent.Executor;
/* renamed from: j5.a0 */
/* loaded from: classes2.dex */
public final class C4331a0<TResult> implements InterfaceC4337d0<TResult> {

    /* renamed from: a */
    public final Executor f18203a;

    /* renamed from: b */
    public final Object f18204b = new Object();

    /* renamed from: c */
    public InterfaceC4340f<? super TResult> f18205c;

    public C4331a0(Executor executor, InterfaceC4340f<? super TResult> interfaceC4340f) {
        this.f18203a = executor;
        this.f18205c = interfaceC4340f;
    }

    @Override // p097j5.InterfaceC4337d0
    /* renamed from: a */
    public final void mo16750a() {
        synchronized (this.f18204b) {
            this.f18205c = null;
        }
    }

    @Override // p097j5.InterfaceC4337d0
    /* renamed from: b */
    public final void mo16749b(AbstractC4346i<TResult> abstractC4346i) {
        if (abstractC4346i.mo16786p()) {
            synchronized (this.f18204b) {
                if (this.f18205c == null) {
                    return;
                }
                this.f18203a.execute(new RunnableC4366z(this, abstractC4346i));
            }
        }
    }
}
