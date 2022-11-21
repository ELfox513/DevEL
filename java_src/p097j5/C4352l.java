package p097j5;

import androidx.annotation.RecentlyNonNull;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p220x3.C7297q;
/* renamed from: j5.l */
/* loaded from: classes2.dex */
public final class C4352l {
    @Deprecated
    /* renamed from: b */
    public static <TResult> AbstractC4346i<TResult> m16769b(@RecentlyNonNull Executor executor, @RecentlyNonNull Callable<TResult> callable) {
        C7297q.m1882k(executor, "Executor must not be null");
        C7297q.m1882k(callable, "Callback must not be null");
        C4347i0 c4347i0 = new C4347i0();
        executor.execute(new RunnableC4349j0(c4347i0, callable));
        return c4347i0;
    }

    /* renamed from: c */
    public static <TResult> AbstractC4346i<TResult> m16768c(@RecentlyNonNull Exception exc) {
        C4347i0 c4347i0 = new C4347i0();
        c4347i0.m16781u(exc);
        return c4347i0;
    }

    /* renamed from: d */
    public static <TResult> AbstractC4346i<TResult> m16767d(@RecentlyNonNull TResult tresult) {
        C4347i0 c4347i0 = new C4347i0();
        c4347i0.m16783s(tresult);
        return c4347i0;
    }

    /* renamed from: e */
    public static AbstractC4346i<Void> m16766e(Collection<? extends AbstractC4346i<?>> collection) {
        if (collection != null && !collection.isEmpty()) {
            for (AbstractC4346i<?> abstractC4346i : collection) {
                if (abstractC4346i == null) {
                    throw new NullPointerException("null tasks are not accepted");
                }
            }
            C4347i0 c4347i0 = new C4347i0();
            C4355o c4355o = new C4355o(collection.size(), c4347i0);
            for (AbstractC4346i<?> abstractC4346i2 : collection) {
                m16761j(abstractC4346i2, c4355o);
            }
            return c4347i0;
        }
        return m16767d(null);
    }

    /* renamed from: f */
    public static AbstractC4346i<Void> m16765f(AbstractC4346i<?>... abstractC4346iArr) {
        if (abstractC4346iArr != null && abstractC4346iArr.length != 0) {
            return m16766e(Arrays.asList(abstractC4346iArr));
        }
        return m16767d(null);
    }

    /* renamed from: g */
    public static AbstractC4346i<List<AbstractC4346i<?>>> m16764g(Collection<? extends AbstractC4346i<?>> collection) {
        if (collection != null && !collection.isEmpty()) {
            return m16766e(collection).mo16792j(C4350k.f18225a, new C4351k0(collection));
        }
        return m16767d(Collections.emptyList());
    }

    /* renamed from: h */
    public static AbstractC4346i<List<AbstractC4346i<?>>> m16763h(AbstractC4346i<?>... abstractC4346iArr) {
        if (abstractC4346iArr != null && abstractC4346iArr.length != 0) {
            return m16764g(Arrays.asList(abstractC4346iArr));
        }
        return m16767d(Collections.emptyList());
    }

    /* renamed from: j */
    public static <T> void m16761j(AbstractC4346i<T> abstractC4346i, InterfaceC4354n<? super T> interfaceC4354n) {
        Executor executor = C4350k.f18226b;
        abstractC4346i.mo16796f(executor, interfaceC4354n);
        abstractC4346i.mo16797e(executor, interfaceC4354n);
        abstractC4346i.mo16801a(executor, interfaceC4354n);
    }

    @RecentlyNonNull
    /* renamed from: a */
    public static <TResult> TResult m16770a(@RecentlyNonNull AbstractC4346i<TResult> abstractC4346i, long j, @RecentlyNonNull TimeUnit timeUnit) {
        C7297q.m1885h();
        C7297q.m1882k(abstractC4346i, "Task must not be null");
        C7297q.m1882k(timeUnit, "TimeUnit must not be null");
        if (abstractC4346i.mo16787o()) {
            return (TResult) m16762i(abstractC4346i);
        }
        C4353m c4353m = new C4353m(null);
        m16761j(abstractC4346i, c4353m);
        if (c4353m.m16760a(j, timeUnit)) {
            return (TResult) m16762i(abstractC4346i);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    /* renamed from: i */
    public static <TResult> TResult m16762i(AbstractC4346i<TResult> abstractC4346i) {
        if (abstractC4346i.mo16786p()) {
            return abstractC4346i.mo16790l();
        }
        if (abstractC4346i.mo16788n()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(abstractC4346i.mo16791k());
    }
}
