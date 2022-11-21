package p168r4;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: r4.ek0 */
/* loaded from: classes2.dex */
public final class ek0 implements ThreadFactory {

    /* renamed from: a */
    public final AtomicInteger f23046a = new AtomicInteger(1);

    public ek0(ik0 ik0Var) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int andIncrement = this.f23046a.getAndIncrement();
        StringBuilder sb = new StringBuilder(42);
        sb.append("AdWorker(SCION_TASK_EXECUTOR) #");
        sb.append(andIncrement);
        return new Thread(runnable, sb.toString());
    }
}
