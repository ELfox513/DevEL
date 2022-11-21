package p018b5;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: b5.y0 */
/* loaded from: classes2.dex */
public final class C0964y0 implements InterfaceC0930w0 {
    public /* synthetic */ C0964y0(C0947x0 c0947x0) {
    }

    @Override // p018b5.InterfaceC0930w0
    /* renamed from: a */
    public final ExecutorService mo24962a(ThreadFactory threadFactory, int i) {
        return m24961b(1, threadFactory, 1);
    }

    /* renamed from: b */
    public static final ExecutorService m24961b(int i, ThreadFactory threadFactory, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }
}
