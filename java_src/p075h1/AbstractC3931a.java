package p075h1;

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
import p115l5.InterfaceFutureC4566a;
/* renamed from: h1.a */
/* loaded from: classes.dex */
public abstract class AbstractC3931a<V> implements InterfaceFutureC4566a<V> {

    /* renamed from: k */
    public static final boolean f17226k = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: p */
    public static final Logger f17227p = Logger.getLogger(AbstractC3931a.class.getName());

    /* renamed from: q */
    public static final AbstractC3933b f17228q;

    /* renamed from: r */
    public static final Object f17229r;

    /* renamed from: a */
    public volatile Object f17230a;

    /* renamed from: b */
    public volatile C3937e f17231b;

    /* renamed from: d */
    public volatile C3941i f17232d;

    /* renamed from: h1.a$b */
    /* loaded from: classes.dex */
    public static abstract class AbstractC3933b {
        public AbstractC3933b() {
        }

        /* renamed from: a */
        public abstract boolean mo17702a(AbstractC3931a<?> abstractC3931a, C3937e c3937e, C3937e c3937e2);

        /* renamed from: b */
        public abstract boolean mo17701b(AbstractC3931a<?> abstractC3931a, Object obj, Object obj2);

        /* renamed from: c */
        public abstract boolean mo17700c(AbstractC3931a<?> abstractC3931a, C3941i c3941i, C3941i c3941i2);

        /* renamed from: d */
        public abstract void mo17699d(C3941i c3941i, C3941i c3941i2);

        /* renamed from: e */
        public abstract void mo17698e(C3941i c3941i, Thread thread);
    }

    /* renamed from: h1.a$c */
    /* loaded from: classes.dex */
    public static final class C3934c {

        /* renamed from: c */
        public static final C3934c f17233c;

        /* renamed from: d */
        public static final C3934c f17234d;

        /* renamed from: a */
        public final boolean f17235a;

        /* renamed from: b */
        public final Throwable f17236b;

        static {
            if (AbstractC3931a.f17226k) {
                f17234d = null;
                f17233c = null;
                return;
            }
            f17234d = new C3934c(false, null);
            f17233c = new C3934c(true, null);
        }

        public C3934c(boolean z, Throwable th) {
            this.f17235a = z;
            this.f17236b = th;
        }
    }

    /* renamed from: h1.a$f */
    /* loaded from: classes.dex */
    public static final class C3938f extends AbstractC3933b {

        /* renamed from: a */
        public final AtomicReferenceFieldUpdater<C3941i, Thread> f17243a;

        /* renamed from: b */
        public final AtomicReferenceFieldUpdater<C3941i, C3941i> f17244b;

        /* renamed from: c */
        public final AtomicReferenceFieldUpdater<AbstractC3931a, C3941i> f17245c;

        /* renamed from: d */
        public final AtomicReferenceFieldUpdater<AbstractC3931a, C3937e> f17246d;

        /* renamed from: e */
        public final AtomicReferenceFieldUpdater<AbstractC3931a, Object> f17247e;

        public C3938f(AtomicReferenceFieldUpdater<C3941i, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<C3941i, C3941i> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractC3931a, C3941i> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractC3931a, C3937e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractC3931a, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f17243a = atomicReferenceFieldUpdater;
            this.f17244b = atomicReferenceFieldUpdater2;
            this.f17245c = atomicReferenceFieldUpdater3;
            this.f17246d = atomicReferenceFieldUpdater4;
            this.f17247e = atomicReferenceFieldUpdater5;
        }

        @Override // p075h1.AbstractC3931a.AbstractC3933b
        /* renamed from: a */
        public boolean mo17702a(AbstractC3931a<?> abstractC3931a, C3937e c3937e, C3937e c3937e2) {
            return C3942b.m17695a(this.f17246d, abstractC3931a, c3937e, c3937e2);
        }

        @Override // p075h1.AbstractC3931a.AbstractC3933b
        /* renamed from: b */
        public boolean mo17701b(AbstractC3931a<?> abstractC3931a, Object obj, Object obj2) {
            return C3942b.m17695a(this.f17247e, abstractC3931a, obj, obj2);
        }

        @Override // p075h1.AbstractC3931a.AbstractC3933b
        /* renamed from: c */
        public boolean mo17700c(AbstractC3931a<?> abstractC3931a, C3941i c3941i, C3941i c3941i2) {
            return C3942b.m17695a(this.f17245c, abstractC3931a, c3941i, c3941i2);
        }

        @Override // p075h1.AbstractC3931a.AbstractC3933b
        /* renamed from: d */
        public void mo17699d(C3941i c3941i, C3941i c3941i2) {
            this.f17244b.lazySet(c3941i, c3941i2);
        }

        @Override // p075h1.AbstractC3931a.AbstractC3933b
        /* renamed from: e */
        public void mo17698e(C3941i c3941i, Thread thread) {
            this.f17243a.lazySet(c3941i, thread);
        }
    }

    /* renamed from: h1.a$g */
    /* loaded from: classes.dex */
    public static final class RunnableC3939g<V> implements Runnable {

        /* renamed from: a */
        public final AbstractC3931a<V> f17248a;

        /* renamed from: b */
        public final InterfaceFutureC4566a<? extends V> f17249b;

        @Override // java.lang.Runnable
        public void run() {
            if (this.f17248a.f17230a != this) {
                return;
            }
            if (AbstractC3931a.f17228q.mo17701b(this.f17248a, this, AbstractC3931a.m17709k(this.f17249b))) {
                AbstractC3931a.m17712h(this.f17248a);
            }
        }

        public RunnableC3939g(AbstractC3931a<V> abstractC3931a, InterfaceFutureC4566a<? extends V> interfaceFutureC4566a) {
            this.f17248a = abstractC3931a;
            this.f17249b = interfaceFutureC4566a;
        }
    }

    /* renamed from: h1.a$h */
    /* loaded from: classes.dex */
    public static final class C3940h extends AbstractC3933b {
        public C3940h() {
            super();
        }

        @Override // p075h1.AbstractC3931a.AbstractC3933b
        /* renamed from: a */
        public boolean mo17702a(AbstractC3931a<?> abstractC3931a, C3937e c3937e, C3937e c3937e2) {
            synchronized (abstractC3931a) {
                if (abstractC3931a.f17231b == c3937e) {
                    abstractC3931a.f17231b = c3937e2;
                    return true;
                }
                return false;
            }
        }

        @Override // p075h1.AbstractC3931a.AbstractC3933b
        /* renamed from: b */
        public boolean mo17701b(AbstractC3931a<?> abstractC3931a, Object obj, Object obj2) {
            synchronized (abstractC3931a) {
                if (abstractC3931a.f17230a == obj) {
                    abstractC3931a.f17230a = obj2;
                    return true;
                }
                return false;
            }
        }

        @Override // p075h1.AbstractC3931a.AbstractC3933b
        /* renamed from: c */
        public boolean mo17700c(AbstractC3931a<?> abstractC3931a, C3941i c3941i, C3941i c3941i2) {
            synchronized (abstractC3931a) {
                if (abstractC3931a.f17232d == c3941i) {
                    abstractC3931a.f17232d = c3941i2;
                    return true;
                }
                return false;
            }
        }

        @Override // p075h1.AbstractC3931a.AbstractC3933b
        /* renamed from: d */
        public void mo17699d(C3941i c3941i, C3941i c3941i2) {
            c3941i.f17252b = c3941i2;
        }

        @Override // p075h1.AbstractC3931a.AbstractC3933b
        /* renamed from: e */
        public void mo17698e(C3941i c3941i, Thread thread) {
            c3941i.f17251a = thread;
        }
    }

    /* renamed from: h1.a$i */
    /* loaded from: classes.dex */
    public static final class C3941i {

        /* renamed from: c */
        public static final C3941i f17250c = new C3941i(false);

        /* renamed from: a */
        public volatile Thread f17251a;

        /* renamed from: b */
        public volatile C3941i f17252b;

        public C3941i(boolean z) {
        }

        /* renamed from: a */
        public void m17697a(C3941i c3941i) {
            AbstractC3931a.f17228q.mo17699d(this, c3941i);
        }

        public C3941i() {
            AbstractC3931a.f17228q.mo17698e(this, Thread.currentThread());
        }

        /* renamed from: b */
        public void m17696b() {
            Thread thread = this.f17251a;
            if (thread != null) {
                this.f17251a = null;
                LockSupport.unpark(thread);
            }
        }
    }

    /* renamed from: f */
    public static <T> T m17714f(T t) {
        t.getClass();
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [h1.a$b] */
    /* JADX WARN: Type inference failed for: r4v0, types: [h1.a<?>] */
    /* JADX WARN: Type inference failed for: r4v1, types: [h1.a] */
    /* JADX WARN: Type inference failed for: r4v6, types: [h1.a<V>, h1.a] */
    /* renamed from: h */
    public static void m17712h(AbstractC3931a<?> abstractC3931a) {
        C3937e c3937e = null;
        while (true) {
            abstractC3931a.m17705o();
            abstractC3931a.m17716b();
            C3937e m17713g = abstractC3931a.m17713g(c3937e);
            while (m17713g != null) {
                c3937e = m17713g.f17242c;
                Runnable runnable = m17713g.f17240a;
                if (runnable instanceof RunnableC3939g) {
                    RunnableC3939g runnableC3939g = (RunnableC3939g) runnable;
                    abstractC3931a = runnableC3939g.f17248a;
                    if (abstractC3931a.f17230a == runnableC3939g) {
                        if (f17228q.mo17701b(abstractC3931a, runnableC3939g, m17709k(runnableC3939g.f17249b))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    m17711i(runnable, m17713g.f17241b);
                }
                m17713g = c3937e;
            }
            return;
        }
    }

    /* renamed from: l */
    public static <V> V m17708l(Future<V> future) {
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

    /* renamed from: b */
    public void m17716b() {
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) {
        Locale locale;
        long nanos = timeUnit.toNanos(j);
        if (!Thread.interrupted()) {
            Object obj = this.f17230a;
            if ((obj != null) & (!(obj instanceof RunnableC3939g))) {
                return m17710j(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                C3941i c3941i = this.f17232d;
                if (c3941i != C3941i.f17250c) {
                    C3941i c3941i2 = new C3941i();
                    do {
                        c3941i2.m17697a(c3941i);
                        if (f17228q.mo17700c(this, c3941i, c3941i2)) {
                            do {
                                LockSupport.parkNanos(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.f17230a;
                                    if ((obj2 != null) & (!(obj2 instanceof RunnableC3939g))) {
                                        return m17710j(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    m17704p(c3941i2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            m17704p(c3941i2);
                        } else {
                            c3941i = this.f17232d;
                        }
                    } while (c3941i != C3941i.f17250c);
                    return m17710j(this.f17230a);
                }
                return m17710j(this.f17230a);
            }
            while (nanos > 0) {
                Object obj3 = this.f17230a;
                if ((obj3 != null) & (!(obj3 instanceof RunnableC3939g))) {
                    return m17710j(obj3);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String abstractC3931a = toString();
            String lowerCase = timeUnit.toString().toLowerCase(Locale.ROOT);
            String str = "Waited " + j + " " + timeUnit.toString().toLowerCase(locale);
            if (nanos + 1000 < 0) {
                String str2 = str + " (plus ";
                long j2 = -nanos;
                long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
                long nanos2 = j2 - timeUnit.toNanos(convert);
                boolean z = convert == 0 || nanos2 > 1000;
                if (convert > 0) {
                    String str3 = str2 + convert + " " + lowerCase;
                    if (z) {
                        str3 = str3 + ",";
                    }
                    str2 = str3 + " ";
                }
                if (z) {
                    str2 = str2 + nanos2 + " nanoseconds ";
                }
                str = str2 + "delay)";
            }
            if (isDone()) {
                throw new TimeoutException(str + " but future completed as timeout expired");
            }
            throw new TimeoutException(str + " for " + abstractC3931a);
        }
        throw new InterruptedException();
    }

    /* renamed from: m */
    public void m17707m() {
    }

    /* renamed from: p */
    public final void m17704p(C3941i c3941i) {
        c3941i.f17251a = null;
        while (true) {
            C3941i c3941i2 = this.f17232d;
            if (c3941i2 == C3941i.f17250c) {
                return;
            }
            C3941i c3941i3 = null;
            while (c3941i2 != null) {
                C3941i c3941i4 = c3941i2.f17252b;
                if (c3941i2.f17251a != null) {
                    c3941i3 = c3941i2;
                } else if (c3941i3 != null) {
                    c3941i3.f17252b = c3941i4;
                    if (c3941i3.f17251a == null) {
                        break;
                    }
                } else if (!f17228q.mo17700c(this, c3941i2, c3941i4)) {
                    break;
                }
                c3941i2 = c3941i4;
            }
            return;
        }
    }

    /* renamed from: t */
    public final String m17703t(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    /* renamed from: h1.a$d */
    /* loaded from: classes.dex */
    public static final class C3935d {

        /* renamed from: b */
        public static final C3935d f17237b = new C3935d(new C3936a("Failure occurred while trying to finish a future."));

        /* renamed from: a */
        public final Throwable f17238a;

        /* renamed from: h1.a$d$a */
        /* loaded from: classes.dex */
        public class C3936a extends Throwable {
            public C3936a(String str) {
                super(str);
            }

            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        public C3935d(Throwable th) {
            this.f17238a = (Throwable) AbstractC3931a.m17714f(th);
        }
    }

    /* renamed from: h1.a$e */
    /* loaded from: classes.dex */
    public static final class C3937e {

        /* renamed from: d */
        public static final C3937e f17239d = new C3937e(null, null);

        /* renamed from: a */
        public final Runnable f17240a;

        /* renamed from: b */
        public final Executor f17241b;

        /* renamed from: c */
        public C3937e f17242c;

        public C3937e(Runnable runnable, Executor executor) {
            this.f17240a = runnable;
            this.f17241b = executor;
        }
    }

    static {
        AbstractC3933b c3940h;
        try {
            c3940h = new C3938f(AtomicReferenceFieldUpdater.newUpdater(C3941i.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(C3941i.class, C3941i.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractC3931a.class, C3941i.class, "d"), AtomicReferenceFieldUpdater.newUpdater(AbstractC3931a.class, C3937e.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractC3931a.class, Object.class, "a"));
            th = null;
        } catch (Throwable th) {
            th = th;
            c3940h = new C3940h();
        }
        f17228q = c3940h;
        if (th != null) {
            f17227p.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f17229r = new Object();
    }

    /* renamed from: e */
    public static CancellationException m17715e(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    /* renamed from: k */
    public static Object m17709k(InterfaceFutureC4566a<?> interfaceFutureC4566a) {
        if (interfaceFutureC4566a instanceof AbstractC3931a) {
            Object obj = ((AbstractC3931a) interfaceFutureC4566a).f17230a;
            if (obj instanceof C3934c) {
                C3934c c3934c = (C3934c) obj;
                if (c3934c.f17235a) {
                    if (c3934c.f17236b != null) {
                        return new C3934c(false, c3934c.f17236b);
                    }
                    return C3934c.f17234d;
                }
                return obj;
            }
            return obj;
        }
        boolean isCancelled = interfaceFutureC4566a.isCancelled();
        if ((!f17226k) & isCancelled) {
            return C3934c.f17234d;
        }
        try {
            Object m17708l = m17708l(interfaceFutureC4566a);
            if (m17708l == null) {
                return f17229r;
            }
            return m17708l;
        } catch (CancellationException e) {
            if (!isCancelled) {
                return new C3935d(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + interfaceFutureC4566a, e));
            }
            return new C3934c(false, e);
        } catch (ExecutionException e2) {
            return new C3935d(e2.getCause());
        } catch (Throwable th) {
            return new C3935d(th);
        }
    }

    /* renamed from: a */
    public final void m17717a(StringBuilder sb) {
        try {
            Object m17708l = m17708l(this);
            sb.append("SUCCESS, result=[");
            sb.append(m17703t(m17708l));
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

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean z2;
        C3934c c3934c;
        boolean z3;
        Object obj = this.f17230a;
        if (obj == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2 | (obj instanceof RunnableC3939g)) {
            if (f17226k) {
                c3934c = new C3934c(z, new CancellationException("Future.cancel() was called."));
            } else if (z) {
                c3934c = C3934c.f17233c;
            } else {
                c3934c = C3934c.f17234d;
            }
            boolean z4 = false;
            AbstractC3931a<V> abstractC3931a = this;
            while (true) {
                if (f17228q.mo17701b(abstractC3931a, obj, c3934c)) {
                    if (z) {
                        abstractC3931a.m17707m();
                    }
                    m17712h(abstractC3931a);
                    if (!(obj instanceof RunnableC3939g)) {
                        return true;
                    }
                    InterfaceFutureC4566a<? extends V> interfaceFutureC4566a = ((RunnableC3939g) obj).f17249b;
                    if (interfaceFutureC4566a instanceof AbstractC3931a) {
                        abstractC3931a = (AbstractC3931a) interfaceFutureC4566a;
                        obj = abstractC3931a.f17230a;
                        if (obj == null) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (!(z3 | (obj instanceof RunnableC3939g))) {
                            return true;
                        }
                        z4 = true;
                    } else {
                        interfaceFutureC4566a.cancel(z);
                        return true;
                    }
                } else {
                    obj = abstractC3931a.f17230a;
                    if (!(obj instanceof RunnableC3939g)) {
                        return z4;
                    }
                }
            }
        } else {
            return false;
        }
    }

    /* renamed from: g */
    public final C3937e m17713g(C3937e c3937e) {
        C3937e c3937e2;
        do {
            c3937e2 = this.f17231b;
        } while (!f17228q.mo17702a(this, c3937e2, C3937e.f17239d));
        C3937e c3937e3 = c3937e;
        C3937e c3937e4 = c3937e2;
        while (c3937e4 != null) {
            C3937e c3937e5 = c3937e4.f17242c;
            c3937e4.f17242c = c3937e3;
            c3937e3 = c3937e4;
            c3937e4 = c3937e5;
        }
        return c3937e3;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f17230a instanceof C3934c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        boolean z;
        Object obj = this.f17230a;
        if (obj != null) {
            z = true;
        } else {
            z = false;
        }
        return (!(obj instanceof RunnableC3939g)) & z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: j */
    public final V m17710j(Object obj) {
        if (!(obj instanceof C3934c)) {
            if (!(obj instanceof C3935d)) {
                if (obj == f17229r) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException(((C3935d) obj).f17238a);
        }
        throw m17715e("Task was cancelled.", ((C3934c) obj).f17236b);
    }

    /* renamed from: n */
    public String m17706n() {
        Object obj = this.f17230a;
        if (obj instanceof RunnableC3939g) {
            return "setFuture=[" + m17703t(((RunnableC3939g) obj).f17249b) + "]";
        } else if (this instanceof ScheduledFuture) {
            return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
        } else {
            return null;
        }
    }

    /* renamed from: o */
    public final void m17705o() {
        C3941i c3941i;
        do {
            c3941i = this.f17232d;
        } while (!f17228q.mo17700c(this, c3941i, C3941i.f17250c));
        while (c3941i != null) {
            c3941i.m17696b();
            c3941i = c3941i.f17252b;
        }
    }

    /* renamed from: q */
    public boolean mo17694q(V v) {
        if (v == null) {
            v = (V) f17229r;
        }
        if (f17228q.mo17701b(this, null, v)) {
            m17712h(this);
            return true;
        }
        return false;
    }

    /* renamed from: r */
    public boolean mo17693r(Throwable th) {
        if (f17228q.mo17701b(this, null, new C3935d((Throwable) m17714f(th)))) {
            m17712h(this);
            return true;
        }
        return false;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            m17717a(sb);
        } else {
            try {
                str = m17706n();
            } catch (RuntimeException e) {
                str = "Exception thrown from implementation: " + e.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                m17717a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: i */
    public static void m17711i(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f17227p;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    @Override // p115l5.InterfaceFutureC4566a
    /* renamed from: d */
    public final void mo15990d(Runnable runnable, Executor executor) {
        m17714f(runnable);
        m17714f(executor);
        C3937e c3937e = this.f17231b;
        if (c3937e != C3937e.f17239d) {
            C3937e c3937e2 = new C3937e(runnable, executor);
            do {
                c3937e2.f17242c = c3937e;
                if (f17228q.mo17702a(this, c3937e, c3937e2)) {
                    return;
                }
                c3937e = this.f17231b;
            } while (c3937e != C3937e.f17239d);
            m17711i(runnable, executor);
        }
        m17711i(runnable, executor);
    }

    /* renamed from: s */
    public boolean mo17692s(InterfaceFutureC4566a<? extends V> interfaceFutureC4566a) {
        C3935d c3935d;
        m17714f(interfaceFutureC4566a);
        Object obj = this.f17230a;
        if (obj == null) {
            if (interfaceFutureC4566a.isDone()) {
                if (!f17228q.mo17701b(this, null, m17709k(interfaceFutureC4566a))) {
                    return false;
                }
                m17712h(this);
                return true;
            }
            RunnableC3939g runnableC3939g = new RunnableC3939g(this, interfaceFutureC4566a);
            if (f17228q.mo17701b(this, null, runnableC3939g)) {
                try {
                    interfaceFutureC4566a.mo15990d(runnableC3939g, EnumC3943c.INSTANCE);
                } catch (Throwable th) {
                    try {
                        c3935d = new C3935d(th);
                    } catch (Throwable unused) {
                        c3935d = C3935d.f17237b;
                    }
                    f17228q.mo17701b(this, runnableC3939g, c3935d);
                }
                return true;
            }
            obj = this.f17230a;
        }
        if (obj instanceof C3934c) {
            interfaceFutureC4566a.cancel(((C3934c) obj).f17235a);
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public final V get() {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f17230a;
            if ((obj2 != null) & (!(obj2 instanceof RunnableC3939g))) {
                return m17710j(obj2);
            }
            C3941i c3941i = this.f17232d;
            if (c3941i != C3941i.f17250c) {
                C3941i c3941i2 = new C3941i();
                do {
                    c3941i2.m17697a(c3941i);
                    if (f17228q.mo17700c(this, c3941i, c3941i2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f17230a;
                            } else {
                                m17704p(c3941i2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof RunnableC3939g))));
                        return m17710j(obj);
                    }
                    c3941i = this.f17232d;
                } while (c3941i != C3941i.f17250c);
                return m17710j(this.f17230a);
            }
            return m17710j(this.f17230a);
        }
        throw new InterruptedException();
    }
}
