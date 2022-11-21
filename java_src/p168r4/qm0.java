package p168r4;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p026c4.C1044e;
/* renamed from: r4.qm0 */
/* loaded from: classes2.dex */
public final class qm0 {

    /* renamed from: a */
    public static final i83 f30190a;

    /* renamed from: b */
    public static final i83 f30191b;

    /* renamed from: c */
    public static final i83 f30192c;

    /* renamed from: d */
    public static final ScheduledExecutorService f30193d;

    /* renamed from: e */
    public static final i83 f30194e;

    /* renamed from: f */
    public static final i83 f30195f;

    static {
        Executor threadPoolExecutor;
        ThreadPoolExecutor threadPoolExecutor2;
        ThreadPoolExecutor threadPoolExecutor3;
        if (C1044e.m24774a()) {
            a03.m13063a();
            threadPoolExecutor = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool(new mm0("Default")));
        } else {
            threadPoolExecutor = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new mm0("Default"));
        }
        f30190a = new om0(threadPoolExecutor, null);
        if (C1044e.m24774a()) {
            threadPoolExecutor2 = a03.m13063a().mo4504a(5, new mm0("Loader"), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor4 = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new mm0("Loader"));
            threadPoolExecutor4.allowCoreThreadTimeOut(true);
            threadPoolExecutor2 = threadPoolExecutor4;
        }
        f30191b = new om0(threadPoolExecutor2, null);
        if (C1044e.m24774a()) {
            threadPoolExecutor3 = a03.m13063a().mo4503b(new mm0("Activeview"), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor5 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new mm0("Activeview"));
            threadPoolExecutor5.allowCoreThreadTimeOut(true);
            threadPoolExecutor3 = threadPoolExecutor5;
        }
        f30192c = new om0(threadPoolExecutor3, null);
        f30193d = new lm0(3, new mm0("Schedule"));
        f30194e = new om0(new nm0(), null);
        f30195f = new om0(o83.m8868a(), null);
    }
}
