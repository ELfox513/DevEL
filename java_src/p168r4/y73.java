package p168r4;

import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.y73 */
/* loaded from: classes2.dex */
public final class y73 extends a83 {
    /* renamed from: b */
    public static h83<Void> m4813b() {
        return c83.f21444b;
    }

    @SafeVarargs
    /* renamed from: l */
    public static <V> w73<V> m4803l(h83<? extends V>... h83VarArr) {
        return new w73<>(false, o33.m8892y(h83VarArr), null);
    }

    /* renamed from: m */
    public static <V> w73<V> m4802m(Iterable<? extends h83<? extends V>> iterable) {
        return new w73<>(false, o33.m8894w(iterable), null);
    }

    @SafeVarargs
    /* renamed from: n */
    public static <V> w73<V> m4801n(h83<? extends V>... h83VarArr) {
        return new w73<>(true, o33.m8892y(h83VarArr), null);
    }

    /* renamed from: o */
    public static <V> w73<V> m4800o(Iterable<? extends h83<? extends V>> iterable) {
        return new w73<>(true, o33.m8894w(iterable), null);
    }

    /* renamed from: a */
    public static <V> h83<V> m4814a(V v) {
        if (v == null) {
            return (h83<V>) c83.f21444b;
        }
        return new c83(v);
    }

    /* renamed from: d */
    public static <O> h83<O> m4811d(Callable<O> callable, Executor executor) {
        x83 x83Var = new x83(callable);
        executor.execute(x83Var);
        return x83Var;
    }

    /* renamed from: e */
    public static <O> h83<O> m4810e(d73<O> d73Var, Executor executor) {
        x83 x83Var = new x83(d73Var);
        executor.execute(x83Var);
        return x83Var;
    }

    /* renamed from: f */
    public static <V, X extends Throwable> h83<V> m4809f(h83<? extends V> h83Var, Class<X> cls, p03<? super X, ? extends V> p03Var, Executor executor) {
        a63 a63Var = new a63(h83Var, cls, p03Var);
        h83Var.mo6087c(a63Var, o83.m8866c(executor, a63Var));
        return a63Var;
    }

    /* renamed from: g */
    public static <V, X extends Throwable> h83<V> m4808g(h83<? extends V> h83Var, Class<X> cls, e73<? super X, ? extends V> e73Var, Executor executor) {
        z53 z53Var = new z53(h83Var, cls, e73Var);
        h83Var.mo6087c(z53Var, o83.m8866c(executor, z53Var));
        return z53Var;
    }

    /* renamed from: i */
    public static <I, O> h83<O> m4806i(h83<I> h83Var, e73<? super I, ? extends O> e73Var, Executor executor) {
        int i = u63.f32209u;
        executor.getClass();
        r63 r63Var = new r63(h83Var, e73Var);
        h83Var.mo6087c(r63Var, o83.m8866c(executor, r63Var));
        return r63Var;
    }

    /* renamed from: j */
    public static <I, O> h83<O> m4805j(h83<I> h83Var, p03<? super I, ? extends O> p03Var, Executor executor) {
        int i = u63.f32209u;
        p03Var.getClass();
        s63 s63Var = new s63(h83Var, p03Var);
        h83Var.mo6087c(s63Var, o83.m8866c(executor, s63Var));
        return s63Var;
    }

    /* renamed from: k */
    public static <V> h83<List<V>> m4804k(Iterable<? extends h83<? extends V>> iterable) {
        return new f73(o33.m8894w(iterable), true);
    }

    /* renamed from: c */
    public static <V> h83<V> m4812c(Throwable th) {
        th.getClass();
        return new b83(th);
    }

    /* renamed from: h */
    public static <V> h83<V> m4807h(h83<V> h83Var, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        if (h83Var.isDone()) {
            return h83Var;
        }
        return t83.m6901I(h83Var, j, timeUnit, scheduledExecutorService);
    }

    /* renamed from: p */
    public static <V> void m4799p(h83<V> h83Var, t73<? super V> t73Var, Executor executor) {
        t73Var.getClass();
        h83Var.mo6087c(new v73(h83Var, t73Var), executor);
    }

    /* renamed from: q */
    public static <V> V m4798q(Future<V> future) {
        if (future.isDone()) {
            return (V) z83.m4404a(future);
        }
        throw new IllegalStateException(l13.m9808d("Future was expected to be done: %s", future));
    }

    /* renamed from: r */
    public static <V> V m4797r(Future<V> future) {
        try {
            return (V) z83.m4404a(future);
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause instanceof Error) {
                throw new m73((Error) cause);
            }
            throw new y83(cause);
        }
    }
}
