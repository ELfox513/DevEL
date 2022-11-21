package p168r4;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: r4.o83 */
/* loaded from: classes2.dex */
public final class o83 {
    /* renamed from: a */
    public static Executor m8868a() {
        return l73.INSTANCE;
    }

    /* renamed from: b */
    public static i83 m8867b(ExecutorService executorService) {
        i83 k83Var;
        if (executorService instanceof i83) {
            return (i83) executorService;
        }
        if (executorService instanceof ScheduledExecutorService) {
            k83Var = new n83((ScheduledExecutorService) executorService);
        } else {
            k83Var = new k83(executorService);
        }
        return k83Var;
    }

    /* renamed from: c */
    public static Executor m8866c(Executor executor, p63<?> p63Var) {
        executor.getClass();
        if (executor == l73.INSTANCE) {
            return executor;
        }
        return new j83(executor, p63Var);
    }
}
