package p070g5;

import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p220x3.C7297q;
/* renamed from: g5.y4 */
/* loaded from: classes2.dex */
public final class C3886y4 extends AbstractC3863w5 {

    /* renamed from: l */
    public static final AtomicLong f17097l = new AtomicLong(Long.MIN_VALUE);

    /* renamed from: c */
    public C3874x4 f17098c;

    /* renamed from: d */
    public C3874x4 f17099d;

    /* renamed from: e */
    public final PriorityBlockingQueue<C3862w4<?>> f17100e;

    /* renamed from: f */
    public final BlockingQueue<C3862w4<?>> f17101f;

    /* renamed from: g */
    public final Thread.UncaughtExceptionHandler f17102g;

    /* renamed from: h */
    public final Thread.UncaughtExceptionHandler f17103h;

    /* renamed from: i */
    public final Object f17104i;

    /* renamed from: j */
    public final Semaphore f17105j;

    /* renamed from: k */
    public volatile boolean f17106k;

    @Override // p070g5.AbstractC3863w5
    /* renamed from: e */
    public final boolean mo17838e() {
        return false;
    }

    /* renamed from: m */
    public final <T> T m17834m(AtomicReference<T> atomicReference, long j, String str, Runnable runnable) {
        String str2;
        String str3;
        synchronized (atomicReference) {
            this.f17008a.mo17855P().m17826u(runnable);
            try {
                atomicReference.wait(j);
            } catch (InterruptedException unused) {
                C3765o3 m18013r = this.f17008a.mo17858F().m18013r();
                if (str.length() != 0) {
                    str2 = "Interrupted waiting for ".concat(str);
                } else {
                    str2 = new String("Interrupted waiting for ");
                }
                m18013r.m18042a(str2);
                return null;
            }
        }
        T t = atomicReference.get();
        if (t == null) {
            C3765o3 m18013r2 = this.f17008a.mo17858F().m18013r();
            if (str.length() != 0) {
                str3 = "Timed out waiting for ".concat(str);
            } else {
                str3 = new String("Timed out waiting for ");
            }
            m18013r2.m18042a(str3);
        }
        return t;
    }

    /* renamed from: x */
    public final boolean m17823x() {
        return Thread.currentThread() == this.f17098c;
    }

    /* renamed from: y */
    public final void m17822y(C3862w4<?> c3862w4) {
        synchronized (this.f17104i) {
            this.f17100e.add(c3862w4);
            C3874x4 c3874x4 = this.f17098c;
            if (c3874x4 == null) {
                C3874x4 c3874x42 = new C3874x4(this, "Measurement Worker", this.f17100e);
                this.f17098c = c3874x42;
                c3874x42.setUncaughtExceptionHandler(this.f17102g);
                this.f17098c.start();
            } else {
                c3874x4.m17861a();
            }
        }
    }

    public C3886y4(C3611b5 c3611b5) {
        super(c3611b5);
        this.f17104i = new Object();
        this.f17105j = new Semaphore(2);
        this.f17100e = new PriorityBlockingQueue<>();
        this.f17101f = new LinkedBlockingQueue();
        this.f17102g = new C3850v4(this, "Thread death: Uncaught exception on worker thread");
        this.f17103h = new C3850v4(this, "Thread death: Uncaught exception on network thread");
    }

    @Override // p070g5.C3851v5
    /* renamed from: b */
    public final void mo17840b() {
        if (Thread.currentThread() == this.f17099d) {
            return;
        }
        throw new IllegalStateException("Call expected from network thread");
    }

    @Override // p070g5.C3851v5
    /* renamed from: c */
    public final void mo17839c() {
        if (Thread.currentThread() == this.f17098c) {
            return;
        }
        throw new IllegalStateException("Call expected from worker thread");
    }

    /* renamed from: n */
    public final <V> Future<V> m17833n(Callable<V> callable) {
        m17922f();
        C7297q.m1883j(callable);
        C3862w4<?> c3862w4 = new C3862w4<>(this, (Callable<?>) callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.f17098c) {
            if (!this.f17100e.isEmpty()) {
                this.f17008a.mo17858F().m18013r().m18042a("Callable skipped the worker queue.");
            }
            c3862w4.run();
        } else {
            m17822y(c3862w4);
        }
        return c3862w4;
    }

    /* renamed from: o */
    public final <V> Future<V> m17832o(Callable<V> callable) {
        m17922f();
        C7297q.m1883j(callable);
        C3862w4<?> c3862w4 = new C3862w4<>(this, (Callable<?>) callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.f17098c) {
            c3862w4.run();
        } else {
            m17822y(c3862w4);
        }
        return c3862w4;
    }

    /* renamed from: t */
    public final void m17827t(Runnable runnable) {
        m17922f();
        C7297q.m1883j(runnable);
        C3862w4<?> c3862w4 = new C3862w4<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.f17104i) {
            this.f17101f.add(c3862w4);
            C3874x4 c3874x4 = this.f17099d;
            if (c3874x4 == null) {
                C3874x4 c3874x42 = new C3874x4(this, "Measurement Network", this.f17101f);
                this.f17099d = c3874x42;
                c3874x42.setUncaughtExceptionHandler(this.f17103h);
                this.f17099d.start();
            } else {
                c3874x4.m17861a();
            }
        }
    }

    /* renamed from: u */
    public final void m17826u(Runnable runnable) {
        m17922f();
        C7297q.m1883j(runnable);
        m17822y(new C3862w4<>(this, runnable, false, "Task exception on worker thread"));
    }

    /* renamed from: v */
    public final void m17825v(Runnable runnable) {
        m17922f();
        C7297q.m1883j(runnable);
        m17822y(new C3862w4<>(this, runnable, true, "Task exception on worker thread"));
    }
}
