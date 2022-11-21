package p070g5;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: g5.x6 */
/* loaded from: classes2.dex */
public final class RunnableC3876x6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f17064a;

    /* renamed from: b */
    public final /* synthetic */ C3697i7 f17065b;

    public RunnableC3876x6(C3697i7 c3697i7, AtomicReference atomicReference) {
        this.f17065b = c3697i7;
        this.f17064a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f17064a) {
            this.f17064a.set(Long.valueOf(this.f17065b.f17008a.m18513u().m18366m(this.f17065b.f17008a.m18511w().m18258n(), C3621c3.f16342N)));
            this.f17064a.notify();
        }
    }
}
