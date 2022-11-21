package p070g5;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: g5.s6 */
/* loaded from: classes2.dex */
public final class RunnableC3816s6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f16932a;

    /* renamed from: b */
    public final /* synthetic */ C3697i7 f16933b;

    public RunnableC3816s6(C3697i7 c3697i7, AtomicReference atomicReference) {
        this.f16933b = c3697i7;
        this.f16932a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f16932a) {
            this.f16932a.set(Boolean.valueOf(this.f16933b.f17008a.m18513u().m18356w(this.f16933b.f17008a.m18511w().m18258n(), C3621c3.f16340L)));
            this.f16932a.notify();
        }
    }
}
