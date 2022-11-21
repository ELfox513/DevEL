package p168r4;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.yz2 */
/* loaded from: classes2.dex */
public final class yz2 implements xz2 {
    public /* synthetic */ yz2(zz2 zz2Var) {
    }

    @Override // p168r4.xz2
    /* renamed from: b */
    public final ExecutorService mo4503b(ThreadFactory threadFactory, int i) {
        return mo4504a(1, threadFactory, 1);
    }

    @Override // p168r4.xz2
    /* renamed from: x */
    public final ExecutorService mo4502x(int i) {
        return mo4504a(1, Executors.defaultThreadFactory(), 2);
    }

    @Override // p168r4.xz2
    /* renamed from: a */
    public final ExecutorService mo4504a(int i, ThreadFactory threadFactory, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }
}
