package p070g5;

import android.os.Process;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Semaphore;
import p220x3.C7297q;
/* renamed from: g5.x4 */
/* loaded from: classes2.dex */
public final class C3874x4 extends Thread {

    /* renamed from: a */
    public final Object f17060a;

    /* renamed from: b */
    public final BlockingQueue<C3862w4<?>> f17061b;

    /* renamed from: d */
    public boolean f17062d = false;

    /* renamed from: k */
    public final /* synthetic */ C3886y4 f17063k;

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Semaphore semaphore;
        int i;
        Object obj;
        boolean z = false;
        while (!z) {
            try {
                semaphore = this.f17063k.f17105j;
                semaphore.acquire();
                z = true;
            } catch (InterruptedException e) {
                m17859c(e);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                C3862w4<?> poll = this.f17061b.poll();
                if (poll != null) {
                    if (true != poll.f17025b) {
                        i = 10;
                    } else {
                        i = threadPriority;
                    }
                    Process.setThreadPriority(i);
                    poll.run();
                } else {
                    synchronized (this.f17060a) {
                        if (this.f17061b.peek() == null) {
                            boolean unused = this.f17063k.f17106k;
                            try {
                                this.f17060a.wait(30000L);
                            } catch (InterruptedException e2) {
                                m17859c(e2);
                            }
                        }
                    }
                    obj = this.f17063k.f17104i;
                    synchronized (obj) {
                        if (this.f17061b.peek() == null) {
                            break;
                        }
                    }
                }
            }
            if (this.f17063k.f17008a.m18513u().m18356w(null, C3621c3.f16380m0)) {
                m17860b();
            }
        } finally {
            m17860b();
        }
    }

    public C3874x4(C3886y4 c3886y4, String str, BlockingQueue<C3862w4<?>> blockingQueue) {
        this.f17063k = c3886y4;
        C7297q.m1883j(str);
        C7297q.m1883j(blockingQueue);
        this.f17060a = new Object();
        this.f17061b = blockingQueue;
        setName(str);
    }

    /* renamed from: a */
    public final void m17861a() {
        synchronized (this.f17060a) {
            this.f17060a.notifyAll();
        }
    }

    /* renamed from: b */
    public final void m17860b() {
        Object obj;
        Semaphore semaphore;
        Object obj2;
        C3874x4 c3874x4;
        C3874x4 c3874x42;
        obj = this.f17063k.f17104i;
        synchronized (obj) {
            if (!this.f17062d) {
                semaphore = this.f17063k.f17105j;
                semaphore.release();
                obj2 = this.f17063k.f17104i;
                obj2.notifyAll();
                c3874x4 = this.f17063k.f17098c;
                if (this == c3874x4) {
                    this.f17063k.f17098c = null;
                } else {
                    c3874x42 = this.f17063k.f17099d;
                    if (this == c3874x42) {
                        this.f17063k.f17099d = null;
                    } else {
                        this.f17063k.f17008a.mo17858F().m18018m().m18042a("Current scheduler thread is neither worker nor network");
                    }
                }
                this.f17062d = true;
            }
        }
    }

    /* renamed from: c */
    public final void m17859c(InterruptedException interruptedException) {
        this.f17063k.f17008a.mo17858F().m18013r().m18041b(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }
}
