package p097j5;

import java.util.concurrent.Executor;
/* renamed from: j5.c0 */
/* loaded from: classes2.dex */
public final class C4335c0<TResult, TContinuationResult> implements InterfaceC4340f<TContinuationResult>, InterfaceC4338e, InterfaceC4334c, InterfaceC4337d0 {

    /* renamed from: a */
    public final Executor f18208a;

    /* renamed from: b */
    public final InterfaceC4344h<TResult, TContinuationResult> f18209b;

    /* renamed from: c */
    public final C4347i0<TContinuationResult> f18210c;

    public C4335c0(Executor executor, InterfaceC4344h<TResult, TContinuationResult> interfaceC4344h, C4347i0<TContinuationResult> c4347i0) {
        this.f18208a = executor;
        this.f18209b = interfaceC4344h;
        this.f18210c = c4347i0;
    }

    @Override // p097j5.InterfaceC4337d0
    /* renamed from: a */
    public final void mo16750a() {
        throw new UnsupportedOperationException();
    }

    @Override // p097j5.InterfaceC4337d0
    /* renamed from: b */
    public final void mo16749b(AbstractC4346i<TResult> abstractC4346i) {
        this.f18208a.execute(new RunnableC4333b0(this, abstractC4346i));
    }

    @Override // p097j5.InterfaceC4340f
    /* renamed from: c */
    public final void mo1c(TContinuationResult tcontinuationresult) {
        this.f18210c.m16783s(tcontinuationresult);
    }

    @Override // p097j5.InterfaceC4334c
    /* renamed from: d */
    public final void mo15406d() {
        this.f18210c.m16779w();
    }

    @Override // p097j5.InterfaceC4338e
    /* renamed from: e */
    public final void mo0e(Exception exc) {
        this.f18210c.m16781u(exc);
    }
}
