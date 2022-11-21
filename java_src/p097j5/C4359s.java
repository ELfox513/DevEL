package p097j5;

import java.util.concurrent.Executor;
/* renamed from: j5.s */
/* loaded from: classes2.dex */
public final class C4359s<TResult, TContinuationResult> implements InterfaceC4340f<TContinuationResult>, InterfaceC4338e, InterfaceC4334c, InterfaceC4337d0 {

    /* renamed from: a */
    public final Executor f18244a;

    /* renamed from: b */
    public final InterfaceC4330a<TResult, AbstractC4346i<TContinuationResult>> f18245b;

    /* renamed from: c */
    public final C4347i0<TContinuationResult> f18246c;

    public C4359s(Executor executor, InterfaceC4330a<TResult, AbstractC4346i<TContinuationResult>> interfaceC4330a, C4347i0<TContinuationResult> c4347i0) {
        this.f18244a = executor;
        this.f18245b = interfaceC4330a;
        this.f18246c = c4347i0;
    }

    @Override // p097j5.InterfaceC4337d0
    /* renamed from: a */
    public final void mo16750a() {
        throw new UnsupportedOperationException();
    }

    @Override // p097j5.InterfaceC4337d0
    /* renamed from: b */
    public final void mo16749b(AbstractC4346i<TResult> abstractC4346i) {
        this.f18244a.execute(new RunnableC4358r(this, abstractC4346i));
    }

    @Override // p097j5.InterfaceC4340f
    /* renamed from: c */
    public final void mo1c(TContinuationResult tcontinuationresult) {
        this.f18246c.m16783s(tcontinuationresult);
    }

    @Override // p097j5.InterfaceC4334c
    /* renamed from: d */
    public final void mo15406d() {
        this.f18246c.m16779w();
    }

    @Override // p097j5.InterfaceC4338e
    /* renamed from: e */
    public final void mo0e(Exception exc) {
        this.f18246c.m16781u(exc);
    }
}
