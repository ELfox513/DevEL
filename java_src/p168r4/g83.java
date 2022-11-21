package p168r4;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;
/* renamed from: r4.g83 */
/* loaded from: classes2.dex */
public abstract class g83<T> extends AtomicReference<Runnable> implements Runnable {

    /* renamed from: a */
    public static final Runnable f23942a = new e83(null);

    /* renamed from: b */
    public static final Runnable f23943b = new e83(null);

    /* renamed from: a */
    public abstract T mo5804a();

    /* renamed from: c */
    public abstract String mo5803c();

    /* renamed from: d */
    public abstract boolean mo5802d();

    /* renamed from: e */
    public abstract void mo5801e(T t);

    /* renamed from: f */
    public abstract void mo5800f(Throwable th);

    /* renamed from: b */
    public final void m11252b(Thread thread) {
        Runnable runnable = get();
        d83 d83Var = null;
        boolean z = false;
        int i = 0;
        while (true) {
            if (!(runnable instanceof d83)) {
                if (runnable != f23943b) {
                    break;
                }
            } else {
                d83Var = (d83) runnable;
            }
            i++;
            if (i > 1000) {
                Runnable runnable2 = f23943b;
                if (runnable == runnable2 || compareAndSet(runnable, runnable2)) {
                    if (!Thread.interrupted() && !z) {
                        z = false;
                    } else {
                        z = true;
                    }
                    LockSupport.park(d83Var);
                }
            } else {
                Thread.yield();
            }
            runnable = get();
        }
        if (z) {
            thread.interrupt();
        }
    }

    /* renamed from: g */
    public final void m11251g() {
        Runnable runnable = get();
        if (runnable instanceof Thread) {
            d83 d83Var = new d83(this, null);
            super/*java.util.concurrent.locks.AbstractOwnableSynchronizer*/.setExclusiveOwnerThread(Thread.currentThread());
            if (compareAndSet(runnable, d83Var)) {
                try {
                    Thread thread = (Thread) runnable;
                    thread.interrupt();
                    if (getAndSet(f23942a) == f23943b) {
                        LockSupport.unpark(thread);
                    }
                } catch (Throwable th) {
                    if (getAndSet(f23942a) == f23943b) {
                        LockSupport.unpark((Thread) runnable);
                    }
                    throw th;
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread currentThread = Thread.currentThread();
        T t = null;
        if (!compareAndSet(null, currentThread)) {
            return;
        }
        boolean z = !mo5802d();
        if (z) {
            try {
                t = mo5804a();
            } catch (Throwable th) {
                if (!compareAndSet(currentThread, f23942a)) {
                    m11252b(currentThread);
                }
                mo5800f(th);
                return;
            }
        }
        if (!compareAndSet(currentThread, f23942a)) {
            m11252b(currentThread);
        }
        if (z) {
            mo5801e(t);
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == f23942a) {
            str = "running=[DONE]";
        } else if (runnable instanceof d83) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            String name = ((Thread) runnable).getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 21);
            sb.append("running=[RUNNING ON ");
            sb.append(name);
            sb.append("]");
            str = sb.toString();
        } else {
            str = "running=[NOT STARTED YET]";
        }
        String mo5803c = mo5803c();
        StringBuilder sb2 = new StringBuilder(str.length() + 2 + String.valueOf(mo5803c).length());
        sb2.append(str);
        sb2.append(", ");
        sb2.append(mo5803c);
        return sb2.toString();
    }
}
