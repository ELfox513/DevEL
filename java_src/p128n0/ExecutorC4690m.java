package p128n0;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* renamed from: n0.m */
/* loaded from: classes.dex */
public class ExecutorC4690m implements Executor {

    /* renamed from: a */
    public final Executor f18820a;

    /* renamed from: b */
    public final ArrayDeque<Runnable> f18821b = new ArrayDeque<>();

    /* renamed from: d */
    public Runnable f18822d;

    /* renamed from: n0.m$a */
    /* loaded from: classes.dex */
    public class RunnableC4691a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Runnable f18823a;

        public RunnableC4691a(Runnable runnable) {
            this.f18823a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f18823a.run();
            } finally {
                ExecutorC4690m.this.m15769a();
            }
        }
    }

    /* renamed from: a */
    public synchronized void m15769a() {
        Runnable poll = this.f18821b.poll();
        this.f18822d = poll;
        if (poll != null) {
            this.f18820a.execute(poll);
        }
    }

    @Override // java.util.concurrent.Executor
    public synchronized void execute(Runnable runnable) {
        this.f18821b.offer(new RunnableC4691a(runnable));
        if (this.f18822d == null) {
            m15769a();
        }
    }

    public ExecutorC4690m(Executor executor) {
        this.f18820a = executor;
    }
}
