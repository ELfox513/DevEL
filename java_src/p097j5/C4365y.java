package p097j5;

import java.util.concurrent.Executor;
/* renamed from: j5.y */
/* loaded from: classes2.dex */
public final class C4365y<TResult> implements InterfaceC4337d0<TResult> {

    /* renamed from: a */
    public final Executor f18258a;

    /* renamed from: b */
    public final Object f18259b = new Object();

    /* renamed from: c */
    public InterfaceC4338e f18260c;

    public C4365y(Executor executor, InterfaceC4338e interfaceC4338e) {
        this.f18258a = executor;
        this.f18260c = interfaceC4338e;
    }

    @Override // p097j5.InterfaceC4337d0
    /* renamed from: a */
    public final void mo16750a() {
        synchronized (this.f18259b) {
            this.f18260c = null;
        }
    }

    @Override // p097j5.InterfaceC4337d0
    /* renamed from: b */
    public final void mo16749b(AbstractC4346i<TResult> abstractC4346i) {
        if (!abstractC4346i.mo16786p() && !abstractC4346i.mo16788n()) {
            synchronized (this.f18259b) {
                if (this.f18260c == null) {
                    return;
                }
                this.f18258a.execute(new RunnableC4364x(this, abstractC4346i));
            }
        }
    }
}
