package p070g5;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: g5.p6 */
/* loaded from: classes2.dex */
public final class RunnableC3780p6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ long f16822a;

    /* renamed from: b */
    public final /* synthetic */ C3697i7 f16823b;

    public RunnableC3780p6(C3697i7 c3697i7, long j) {
        this.f16823b = c3697i7;
        this.f16822a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16823b.m18211u(this.f16822a, true);
        this.f16823b.f17008a.m18540I().m17885S(new AtomicReference<>());
    }
}
