package p135n7;

import android.util.Log;
import com.google.firebase.remoteconfig.internal.C1433a;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p097j5.AbstractC4346i;
import p097j5.C4352l;
import p097j5.InterfaceC4334c;
import p097j5.InterfaceC4338e;
import p097j5.InterfaceC4340f;
import p097j5.InterfaceC4344h;
/* renamed from: n7.e */
/* loaded from: classes2.dex */
public class C4767e {

    /* renamed from: d */
    public static final Map<String, C4767e> f19040d = new HashMap();

    /* renamed from: e */
    public static final Executor f19041e = new Executor() { // from class: n7.b
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    };

    /* renamed from: a */
    public final ExecutorService f19042a;

    /* renamed from: b */
    public final C4776l f19043b;

    /* renamed from: c */
    public AbstractC4346i<C1433a> f19044c = null;

    /* renamed from: n7.e$b */
    /* loaded from: classes2.dex */
    public static class C4769b<TResult> implements InterfaceC4340f<TResult>, InterfaceC4338e, InterfaceC4334c {

        /* renamed from: a */
        public final CountDownLatch f19045a;

        public C4769b() {
            this.f19045a = new CountDownLatch(1);
        }

        /* renamed from: a */
        public boolean m15407a(long j, TimeUnit timeUnit) {
            return this.f19045a.await(j, timeUnit);
        }

        @Override // p097j5.InterfaceC4340f
        /* renamed from: c */
        public void mo1c(TResult tresult) {
            this.f19045a.countDown();
        }

        @Override // p097j5.InterfaceC4334c
        /* renamed from: d */
        public void mo15406d() {
            this.f19045a.countDown();
        }

        @Override // p097j5.InterfaceC4338e
        /* renamed from: e */
        public void mo0e(Exception exc) {
            this.f19045a.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ Void m15412i(C1433a c1433a) {
        return this.f19043b.m15391e(c1433a);
    }

    /* renamed from: d */
    public void m15417d() {
        synchronized (this) {
            this.f19044c = C4352l.m16767d(null);
        }
        this.f19043b.m15395a();
    }

    /* renamed from: e */
    public synchronized AbstractC4346i<C1433a> m15416e() {
        AbstractC4346i<C1433a> abstractC4346i = this.f19044c;
        if (abstractC4346i == null || (abstractC4346i.mo16787o() && !this.f19044c.mo16786p())) {
            ExecutorService executorService = this.f19042a;
            final C4776l c4776l = this.f19043b;
            c4776l.getClass();
            this.f19044c = C4352l.m16769b(executorService, new Callable() { // from class: n7.a
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return C4776l.this.m15392d();
                }
            });
        }
        return this.f19044c;
    }

    /* renamed from: f */
    public C1433a m15415f() {
        return m15414g(5L);
    }

    /* renamed from: g */
    public C1433a m15414g(long j) {
        synchronized (this) {
            AbstractC4346i<C1433a> abstractC4346i = this.f19044c;
            if (abstractC4346i != null && abstractC4346i.mo16786p()) {
                return this.f19044c.mo16790l();
            }
            try {
                return (C1433a) m15418c(m15416e(), j, TimeUnit.SECONDS);
            } catch (InterruptedException | ExecutionException | TimeoutException e) {
                Log.d("FirebaseRemoteConfig", "Reading from storage file failed.", e);
                return null;
            }
        }
    }

    /* renamed from: k */
    public AbstractC4346i<C1433a> m15410k(C1433a c1433a) {
        return m15409l(c1433a, true);
    }

    /* renamed from: m */
    public final synchronized void m15408m(C1433a c1433a) {
        this.f19044c = C4352l.m16767d(c1433a);
    }

    /* renamed from: c */
    public static <TResult> TResult m15418c(AbstractC4346i<TResult> abstractC4346i, long j, TimeUnit timeUnit) {
        C4769b c4769b = new C4769b();
        Executor executor = f19041e;
        abstractC4346i.mo16796f(executor, c4769b);
        abstractC4346i.mo16797e(executor, c4769b);
        abstractC4346i.mo16801a(executor, c4769b);
        if (c4769b.m15407a(j, timeUnit)) {
            if (abstractC4346i.mo16786p()) {
                return abstractC4346i.mo16790l();
            }
            throw new ExecutionException(abstractC4346i.mo16791k());
        }
        throw new TimeoutException("Task await timed out.");
    }

    /* renamed from: h */
    public static synchronized C4767e m15413h(ExecutorService executorService, C4776l c4776l) {
        C4767e c4767e;
        synchronized (C4767e.class) {
            String m15394b = c4776l.m15394b();
            Map<String, C4767e> map = f19040d;
            if (!map.containsKey(m15394b)) {
                map.put(m15394b, new C4767e(executorService, c4776l));
            }
            c4767e = map.get(m15394b);
        }
        return c4767e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ AbstractC4346i m15411j(boolean z, C1433a c1433a, Void r3) {
        if (z) {
            m15408m(c1433a);
        }
        return C4352l.m16767d(c1433a);
    }

    /* renamed from: l */
    public AbstractC4346i<C1433a> m15409l(final C1433a c1433a, final boolean z) {
        return C4352l.m16769b(this.f19042a, new Callable() { // from class: n7.c
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Void m15412i;
                m15412i = C4767e.this.m15412i(c1433a);
                return m15412i;
            }
        }).mo16784r(this.f19042a, new InterfaceC4344h() { // from class: n7.d
            @Override // p097j5.InterfaceC4344h
            /* renamed from: a */
            public final AbstractC4346i mo1703a(Object obj) {
                AbstractC4346i m15411j;
                m15411j = C4767e.this.m15411j(z, c1433a, (Void) obj);
                return m15411j;
            }
        });
    }

    public C4767e(ExecutorService executorService, C4776l c4776l) {
        this.f19042a = executorService;
        this.f19043b = c4776l;
    }
}
