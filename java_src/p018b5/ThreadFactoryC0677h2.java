package p018b5;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* renamed from: b5.h2 */
/* loaded from: classes2.dex */
public final class ThreadFactoryC0677h2 implements ThreadFactory {

    /* renamed from: a */
    public final ThreadFactory f1844a = Executors.defaultThreadFactory();

    public ThreadFactoryC0677h2(C0966y2 c0966y2) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f1844a.newThread(runnable);
        newThread.setName("ScionFrontendApi");
        return newThread;
    }
}
