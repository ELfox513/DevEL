package p168r4;

import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.bytebuddy.description.method.MethodDescription;
/* renamed from: r4.p63 */
/* loaded from: classes2.dex */
public abstract class p63<V> extends a93 implements h83<V> {

    /* renamed from: k */
    public static final boolean f29367k;

    /* renamed from: p */
    public static final Logger f29368p;

    /* renamed from: q */
    public static final c63 f29369q;

    /* renamed from: r */
    public static final Object f29370r;

    /* renamed from: a */
    public volatile Object f29371a;

    /* renamed from: b */
    public volatile f63 f29372b;

    /* renamed from: d */
    public volatile o63 f29373d;

    /* renamed from: A */
    public static <V> V m8478A(Future<V> future) {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [r4.c63] */
    /* JADX WARN: Type inference failed for: r5v0, types: [r4.p63<?>] */
    /* JADX WARN: Type inference failed for: r5v1, types: [r4.p63] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v7, types: [r4.p63<V>, r4.p63] */
    /* renamed from: B */
    public static void m8477B(p63<?> p63Var) {
        f63 f63Var;
        f63 f63Var2;
        f63 f63Var3 = null;
        while (true) {
            o63 o63Var = ((p63) p63Var).f29373d;
            if (f29369q.mo9149c((p63) p63Var, o63Var, o63.f28910c)) {
                while (o63Var != null) {
                    Thread thread = o63Var.f28911a;
                    if (thread != null) {
                        o63Var.f28911a = null;
                        LockSupport.unpark(thread);
                    }
                    o63Var = o63Var.f28912b;
                }
                ((p63) p63Var).mo5447j();
                do {
                    f63Var = ((p63) p63Var).f29372b;
                } while (!f29369q.mo9148d((p63) p63Var, f63Var, f63.f23396d));
                while (true) {
                    f63Var2 = f63Var3;
                    f63Var3 = f63Var;
                    if (f63Var3 == null) {
                        break;
                    }
                    f63Var = f63Var3.f23399c;
                    f63Var3.f23399c = f63Var2;
                }
                while (f63Var2 != null) {
                    f63Var3 = f63Var2.f23399c;
                    Runnable runnable = f63Var2.f23397a;
                    runnable.getClass();
                    if (runnable instanceof i63) {
                        i63 i63Var = (i63) runnable;
                        p63Var = i63Var.f24988a;
                        if (p63Var.f29371a == i63Var) {
                            if (f29369q.mo9147e(p63Var, i63Var, m8469h(i63Var.f24989b))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        Executor executor = f63Var2.f23398b;
                        executor.getClass();
                        m8472e(runnable, executor);
                    }
                    f63Var2 = f63Var3;
                }
                return;
            }
        }
    }

    /* renamed from: g */
    public final void m8470g(o63 o63Var) {
        o63Var.f28911a = null;
        while (true) {
            o63 o63Var2 = this.f29373d;
            if (o63Var2 != o63.f28910c) {
                o63 o63Var3 = null;
                while (o63Var2 != null) {
                    o63 o63Var4 = o63Var2.f28912b;
                    if (o63Var2.f28911a != null) {
                        o63Var3 = o63Var2;
                    } else if (o63Var3 != null) {
                        o63Var3.f28912b = o63Var4;
                        if (o63Var3.f28911a == null) {
                            break;
                        }
                    } else if (!f29369q.mo9149c(this, o63Var2, o63Var4)) {
                        break;
                    }
                    o63Var2 = o63Var4;
                }
                return;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public V get() {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f29371a;
            if ((obj2 != null) && (!(obj2 instanceof i63))) {
                return (V) m8471f(obj2);
            }
            o63 o63Var = this.f29373d;
            if (o63Var != o63.f28910c) {
                o63 o63Var2 = new o63();
                do {
                    c63 c63Var = f29369q;
                    c63Var.mo9150b(o63Var2, o63Var);
                    if (c63Var.mo9149c(this, o63Var, o63Var2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f29371a;
                            } else {
                                m8470g(o63Var2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof i63))));
                        return (V) m8471f(obj);
                    }
                    o63Var = this.f29373d;
                } while (o63Var != o63.f28910c);
                Object obj3 = this.f29371a;
                obj3.getClass();
                return (V) m8471f(obj3);
            }
            Object obj32 = this.f29371a;
            obj32.getClass();
            return (V) m8471f(obj32);
        }
        throw new InterruptedException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f29371a instanceof d63;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        Object obj = this.f29371a;
        return (!(obj instanceof i63)) & (obj != null);
    }

    /* renamed from: j */
    public void mo5447j() {
    }

    /* renamed from: s */
    public void mo8460s() {
    }

    /* renamed from: t */
    public final boolean m8459t() {
        Object obj = this.f29371a;
        return (obj instanceof d63) && ((d63) obj).f22115a;
    }

    static {
        boolean z;
        Throwable th;
        Throwable th2;
        c63 j63Var;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z = false;
        }
        f29367k = z;
        f29368p = Logger.getLogger(p63.class.getName());
        try {
            j63Var = new n63(null);
            th2 = null;
            th = null;
        } catch (Throwable th3) {
            try {
                th2 = th3;
                j63Var = new h63(AtomicReferenceFieldUpdater.newUpdater(o63.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(o63.class, o63.class, "b"), AtomicReferenceFieldUpdater.newUpdater(p63.class, o63.class, "d"), AtomicReferenceFieldUpdater.newUpdater(p63.class, f63.class, "b"), AtomicReferenceFieldUpdater.newUpdater(p63.class, Object.class, "a"));
                th = null;
            } catch (Throwable th4) {
                th = th4;
                th2 = th3;
                j63Var = new j63(null);
            }
        }
        f29369q = j63Var;
        if (th != null) {
            Logger logger = f29368p;
            Level level = Level.SEVERE;
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", MethodDescription.TYPE_INITIALIZER_INTERNAL_NAME, "UnsafeAtomicHelper is broken!", th2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", MethodDescription.TYPE_INITIALIZER_INTERNAL_NAME, "SafeAtomicHelper is broken!", th);
        }
        f29370r = new Object();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public static final V m8471f(Object obj) {
        if (!(obj instanceof d63)) {
            if (!(obj instanceof e63)) {
                if (obj == f29370r) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException(((e63) obj).f22872a);
        }
        Throwable th = ((d63) obj).f22116b;
        CancellationException cancellationException = new CancellationException("Task was cancelled.");
        cancellationException.initCause(th);
        throw cancellationException;
    }

    /* renamed from: h */
    public static Object m8469h(h83<?> h83Var) {
        Throwable mo8474a;
        if (h83Var instanceof k63) {
            Object obj = ((p63) h83Var).f29371a;
            if (obj instanceof d63) {
                d63 d63Var = (d63) obj;
                if (d63Var.f22115a) {
                    Throwable th = d63Var.f22116b;
                    obj = th != null ? new d63(false, th) : d63.f22114d;
                }
            }
            obj.getClass();
            return obj;
        } else if ((h83Var instanceof a93) && (mo8474a = ((a93) h83Var).mo8474a()) != null) {
            return new e63(mo8474a);
        } else {
            boolean isCancelled = h83Var.isCancelled();
            if ((!f29367k) & isCancelled) {
                d63 d63Var2 = d63.f22114d;
                d63Var2.getClass();
                return d63Var2;
            }
            try {
                Object m8478A = m8478A(h83Var);
                if (isCancelled) {
                    String valueOf = String.valueOf(h83Var);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 84);
                    sb.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                    sb.append(valueOf);
                    return new d63(false, new IllegalArgumentException(sb.toString()));
                } else if (m8478A == null) {
                    return f29370r;
                } else {
                    return m8478A;
                }
            } catch (CancellationException e) {
                if (!isCancelled) {
                    return new e63(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(h83Var)), e));
                }
                return new d63(false, e);
            } catch (ExecutionException e2) {
                if (isCancelled) {
                    return new d63(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(h83Var)), e2));
                }
                return new e63(e2.getCause());
            } catch (Throwable th2) {
                return new e63(th2);
            }
        }
    }

    /* renamed from: D */
    public final void m8475D(StringBuilder sb) {
        try {
            Object m8478A = m8478A(this);
            sb.append("SUCCESS, result=[");
            if (m8478A == null) {
                sb.append("null");
            } else if (m8478A == this) {
                sb.append("this future");
            } else {
                sb.append(m8478A.getClass().getName());
                sb.append("@");
                sb.append(Integer.toHexString(System.identityHashCode(m8478A)));
            }
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e2) {
            sb.append("FAILURE, cause=[");
            sb.append(e2.getCause());
            sb.append("]");
        }
    }

    @Override // p168r4.a93
    /* renamed from: a */
    public final Throwable mo8474a() {
        if (this instanceof k63) {
            Object obj = this.f29371a;
            if (obj instanceof e63) {
                return ((e63) obj).f22872a;
            }
            return null;
        }
        return null;
    }

    /* renamed from: b */
    public final void m8473b(StringBuilder sb, Object obj) {
        try {
            if (obj == this) {
                sb.append("this future");
            } else {
                sb.append(obj);
            }
        } catch (RuntimeException | StackOverflowError e) {
            sb.append("Exception thrown from implementation: ");
            sb.append(e.getClass());
        }
    }

    @Override // p168r4.h83
    /* renamed from: c */
    public void mo6087c(Runnable runnable, Executor executor) {
        f63 f63Var;
        z03.m4494c(runnable, "Runnable was null.");
        z03.m4494c(executor, "Executor was null.");
        if (!isDone() && (f63Var = this.f29372b) != f63.f23396d) {
            f63 f63Var2 = new f63(runnable, executor);
            do {
                f63Var2.f23399c = f63Var;
                if (f29369q.mo9148d(this, f63Var, f63Var2)) {
                    return;
                }
                f63Var = this.f29372b;
            } while (f63Var != f63.f23396d);
            m8472e(runnable, executor);
        }
        m8472e(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        boolean z2;
        d63 d63Var;
        boolean z3;
        Object obj = this.f29371a;
        if (obj == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!(z2 | (obj instanceof i63))) {
            return false;
        }
        if (f29367k) {
            d63Var = new d63(z, new CancellationException("Future.cancel() was called."));
        } else {
            if (z) {
                d63Var = d63.f22113c;
            } else {
                d63Var = d63.f22114d;
            }
            d63Var.getClass();
        }
        boolean z4 = false;
        p63<V> p63Var = this;
        while (true) {
            if (f29369q.mo9147e(p63Var, obj, d63Var)) {
                if (z) {
                    p63Var.mo8460s();
                }
                m8477B(p63Var);
                if (!(obj instanceof i63)) {
                    break;
                }
                h83<? extends V> h83Var = ((i63) obj).f24989b;
                if (h83Var instanceof k63) {
                    p63Var = (p63) h83Var;
                    obj = p63Var.f29371a;
                    if (obj == null) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (!z3 && !(obj instanceof i63)) {
                        break;
                    }
                    z4 = true;
                } else {
                    h83Var.cancel(z);
                    break;
                }
            } else {
                obj = p63Var.f29371a;
                if (!(obj instanceof i63)) {
                    return z4;
                }
            }
        }
        return true;
    }

    /* renamed from: i */
    public String mo5448i() {
        if (this instanceof ScheduledFuture) {
            long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
            StringBuilder sb = new StringBuilder(41);
            sb.append("remaining delay=[");
            sb.append(delay);
            sb.append(" ms]");
            return sb.toString();
        }
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            m8475D(sb);
        } else {
            m8476C(sb);
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: u */
    public boolean mo8450u(V v) {
        if (v == null) {
            v = (V) f29370r;
        }
        if (f29369q.mo9147e(this, null, v)) {
            m8477B(this);
            return true;
        }
        return false;
    }

    /* renamed from: v */
    public boolean mo8449v(Throwable th) {
        th.getClass();
        if (f29369q.mo9147e(this, null, new e63(th))) {
            m8477B(this);
            return true;
        }
        return false;
    }

    /* renamed from: z */
    public final void m8455z(Future<?> future) {
        boolean z;
        if (future != null) {
            z = true;
        } else {
            z = false;
        }
        if (z & isCancelled()) {
            future.cancel(m8459t());
        }
    }

    /* renamed from: e */
    public static void m8472e(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f29368p;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(valueOf.length() + 57 + valueOf2.length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(valueOf);
            sb.append(" with executor ");
            sb.append(valueOf2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", sb.toString(), (Throwable) e);
        }
    }

    /* renamed from: C */
    public final void m8476C(StringBuilder sb) {
        String concat;
        int length = sb.length();
        sb.append("PENDING");
        Object obj = this.f29371a;
        if (obj instanceof i63) {
            sb.append(", setFuture=[");
            m8473b(sb, ((i63) obj).f24989b);
            sb.append("]");
        } else {
            try {
                concat = l13.m9810b(mo5448i());
            } catch (RuntimeException | StackOverflowError e) {
                concat = "Exception thrown from implementation: ".concat(String.valueOf(e.getClass()));
            }
            if (concat != null) {
                sb.append(", info=[");
                sb.append(concat);
                sb.append("]");
            }
        }
        if (isDone()) {
            sb.delete(length, sb.length());
            m8475D(sb);
        }
    }

    /* renamed from: w */
    public final boolean m8458w(h83<? extends V> h83Var) {
        e63 e63Var;
        h83Var.getClass();
        Object obj = this.f29371a;
        if (obj == null) {
            if (h83Var.isDone()) {
                if (!f29369q.mo9147e(this, null, m8469h(h83Var))) {
                    return false;
                }
                m8477B(this);
                return true;
            }
            i63 i63Var = new i63(this, h83Var);
            if (f29369q.mo9147e(this, null, i63Var)) {
                try {
                    h83Var.mo6087c(i63Var, l73.INSTANCE);
                } catch (Throwable th) {
                    try {
                        e63Var = new e63(th);
                    } catch (Throwable unused) {
                        e63Var = e63.f22871b;
                    }
                    f29369q.mo9147e(this, i63Var, e63Var);
                }
                return true;
            }
            obj = this.f29371a;
        }
        if (obj instanceof d63) {
            h83Var.cancel(((d63) obj).f22115a);
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j);
        if (!Thread.interrupted()) {
            Object obj = this.f29371a;
            boolean z = true;
            if ((obj != null) & (!(obj instanceof i63))) {
                return (V) m8471f(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                o63 o63Var = this.f29373d;
                if (o63Var != o63.f28910c) {
                    o63 o63Var2 = new o63();
                    do {
                        c63 c63Var = f29369q;
                        c63Var.mo9150b(o63Var2, o63Var);
                        if (c63Var.mo9149c(this, o63Var, o63Var2)) {
                            do {
                                LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.f29371a;
                                    if ((obj2 != null) & (!(obj2 instanceof i63))) {
                                        return (V) m8471f(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    m8470g(o63Var2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            m8470g(o63Var2);
                        } else {
                            o63Var = this.f29373d;
                        }
                    } while (o63Var != o63.f28910c);
                    Object obj3 = this.f29371a;
                    obj3.getClass();
                    return (V) m8471f(obj3);
                }
                Object obj32 = this.f29371a;
                obj32.getClass();
                return (V) m8471f(obj32);
            }
            while (nanos > 0) {
                Object obj4 = this.f29371a;
                if ((obj4 != null) & (!(obj4 instanceof i63))) {
                    return (V) m8471f(obj4);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String p63Var = toString();
            String obj5 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = obj5.toLowerCase(locale);
            String lowerCase2 = timeUnit.toString().toLowerCase(locale);
            StringBuilder sb = new StringBuilder(String.valueOf(lowerCase2).length() + 28);
            sb.append("Waited ");
            sb.append(j);
            sb.append(" ");
            sb.append(lowerCase2);
            String sb2 = sb.toString();
            if (nanos + 1000 < 0) {
                String concat = sb2.concat(" (plus ");
                long j2 = -nanos;
                long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
                long nanos2 = j2 - timeUnit.toNanos(convert);
                if (convert != 0 && nanos2 <= 1000) {
                    z = false;
                }
                if (convert > 0) {
                    String valueOf = String.valueOf(concat);
                    StringBuilder sb3 = new StringBuilder(valueOf.length() + 21 + String.valueOf(lowerCase).length());
                    sb3.append(valueOf);
                    sb3.append(convert);
                    sb3.append(" ");
                    sb3.append(lowerCase);
                    String sb4 = sb3.toString();
                    if (z) {
                        sb4 = sb4.concat(",");
                    }
                    concat = String.valueOf(sb4).concat(" ");
                }
                if (z) {
                    String valueOf2 = String.valueOf(concat);
                    StringBuilder sb5 = new StringBuilder(valueOf2.length() + 33);
                    sb5.append(valueOf2);
                    sb5.append(nanos2);
                    sb5.append(" nanoseconds ");
                    concat = sb5.toString();
                }
                sb2 = String.valueOf(concat).concat("delay)");
            }
            if (isDone()) {
                throw new TimeoutException(String.valueOf(sb2).concat(" but future completed as timeout expired"));
            }
            StringBuilder sb6 = new StringBuilder(String.valueOf(sb2).length() + 5 + String.valueOf(p63Var).length());
            sb6.append(sb2);
            sb6.append(" for ");
            sb6.append(p63Var);
            throw new TimeoutException(sb6.toString());
        }
        throw new InterruptedException();
    }
}
