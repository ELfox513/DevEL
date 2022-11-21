package p066g1;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* renamed from: g1.i */
/* loaded from: classes.dex */
public class ExecutorC3556i implements Executor {

    /* renamed from: b */
    public final Executor f16093b;

    /* renamed from: k */
    public volatile Runnable f16095k;

    /* renamed from: a */
    public final ArrayDeque<RunnableC3557a> f16092a = new ArrayDeque<>();

    /* renamed from: d */
    public final Object f16094d = new Object();

    /* renamed from: g1.i$a */
    /* loaded from: classes.dex */
    public static class RunnableC3557a implements Runnable {

        /* renamed from: a */
        public final ExecutorC3556i f16096a;

        /* renamed from: b */
        public final Runnable f16097b;

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f16097b.run();
            } finally {
                this.f16096a.m18615b();
            }
        }

        public RunnableC3557a(ExecutorC3556i executorC3556i, Runnable runnable) {
            this.f16096a = executorC3556i;
            this.f16097b = runnable;
        }
    }

    /* renamed from: a */
    public boolean m18616a() {
        boolean z;
        synchronized (this.f16094d) {
            if (!this.f16092a.isEmpty()) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: b */
    public void m18615b() {
        synchronized (this.f16094d) {
            RunnableC3557a poll = this.f16092a.poll();
            this.f16095k = poll;
            if (poll != null) {
                this.f16093b.execute(this.f16095k);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this.f16094d) {
            this.f16092a.add(new RunnableC3557a(this, runnable));
            if (this.f16095k == null) {
                m18615b();
            }
        }
    }

    public ExecutorC3556i(Executor executor) {
        this.f16093b = executor;
    }
}
