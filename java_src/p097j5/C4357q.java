package p097j5;

import java.util.concurrent.Executor;
/* renamed from: j5.q */
/* loaded from: classes2.dex */
public final class C4357q<TResult, TContinuationResult> implements InterfaceC4337d0<TResult> {

    /* renamed from: a */
    public final Executor f18239a;

    /* renamed from: b */
    public final InterfaceC4330a<TResult, TContinuationResult> f18240b;

    /* renamed from: c */
    public final C4347i0<TContinuationResult> f18241c;

    public C4357q(Executor executor, InterfaceC4330a<TResult, TContinuationResult> interfaceC4330a, C4347i0<TContinuationResult> c4347i0) {
        this.f18239a = executor;
        this.f18240b = interfaceC4330a;
        this.f18241c = c4347i0;
    }

    @Override // p097j5.InterfaceC4337d0
    /* renamed from: a */
    public final void mo16750a() {
        throw new UnsupportedOperationException();
    }

    @Override // p097j5.InterfaceC4337d0
    /* renamed from: b */
    public final void mo16749b(AbstractC4346i<TResult> abstractC4346i) {
        this.f18239a.execute(new RunnableC4356p(this, abstractC4346i));
    }
}
