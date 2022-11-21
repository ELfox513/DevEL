package p168r4;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: r4.r0 */
/* loaded from: classes2.dex */
public final class ThreadFactoryC6190r0 implements ThreadFactory {

    /* renamed from: a */
    public final ThreadFactory f30392a = Executors.defaultThreadFactory();

    /* renamed from: b */
    public final AtomicInteger f30393b = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f30392a.newThread(runnable);
        int andIncrement = this.f30393b.getAndIncrement();
        StringBuilder sb = new StringBuilder(16);
        sb.append("gads-");
        sb.append(andIncrement);
        newThread.setName(sb.toString());
        return newThread;
    }
}
