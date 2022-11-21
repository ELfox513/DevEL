package p085i2;

import java.util.concurrent.Executor;
import p112l2.C4560a;
/* renamed from: i2.k */
/* loaded from: classes.dex */
public class ExecutorC4109k implements Executor {

    /* renamed from: a */
    public final Executor f17715a;

    /* renamed from: i2.k$a */
    /* loaded from: classes.dex */
    public static class RunnableC4110a implements Runnable {

        /* renamed from: a */
        public final Runnable f17716a;

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f17716a.run();
            } catch (Exception e) {
                C4560a.m16003c("Executor", "Background execution failure.", e);
            }
        }

        public RunnableC4110a(Runnable runnable) {
            this.f17716a = runnable;
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f17715a.execute(new RunnableC4110a(runnable));
    }

    public ExecutorC4109k(Executor executor) {
        this.f17715a = executor;
    }
}
