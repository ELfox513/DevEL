package p070g5;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: g5.y6 */
/* loaded from: classes2.dex */
public final class RunnableC3888y6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f17107a;

    /* renamed from: b */
    public final /* synthetic */ C3697i7 f17108b;

    public RunnableC3888y6(C3697i7 c3697i7, AtomicReference atomicReference) {
        this.f17108b = c3697i7;
        this.f17107a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f17107a) {
            this.f17107a.set(Integer.valueOf(this.f17108b.f17008a.m18513u().m18369j(this.f17108b.f17008a.m18511w().m18258n(), C3621c3.f16343O)));
            this.f17107a.notify();
        }
    }
}
