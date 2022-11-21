package p070g5;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: g5.w6 */
/* loaded from: classes2.dex */
public final class RunnableC3864w6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f17029a;

    /* renamed from: b */
    public final /* synthetic */ C3697i7 f17030b;

    public RunnableC3864w6(C3697i7 c3697i7, AtomicReference atomicReference) {
        this.f17030b = c3697i7;
        this.f17029a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f17029a) {
            this.f17029a.set(this.f17030b.f17008a.m18513u().m18360s(this.f17030b.f17008a.m18511w().m18258n(), C3621c3.f16341M));
            this.f17029a.notify();
        }
    }
}
