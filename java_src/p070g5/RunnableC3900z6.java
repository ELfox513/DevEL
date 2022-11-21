package p070g5;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: g5.z6 */
/* loaded from: classes2.dex */
public final class RunnableC3900z6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f17134a;

    /* renamed from: b */
    public final /* synthetic */ C3697i7 f17135b;

    public RunnableC3900z6(C3697i7 c3697i7, AtomicReference atomicReference) {
        this.f17135b = c3697i7;
        this.f17134a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f17134a) {
            this.f17134a.set(Double.valueOf(this.f17135b.f17008a.m18513u().m18373f(this.f17135b.f17008a.m18511w().m18258n(), C3621c3.f16344P)));
            this.f17134a.notify();
        }
    }
}
