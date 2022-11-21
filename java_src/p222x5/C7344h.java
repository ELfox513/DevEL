package p222x5;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import p097j5.AbstractC4346i;
import p097j5.C4352l;
import p097j5.InterfaceC4330a;
/* renamed from: x5.h */
/* loaded from: classes2.dex */
public class C7344h {

    /* renamed from: a */
    public final Executor f36854a;

    /* renamed from: b */
    public AbstractC4346i<Void> f36855b = C4352l.m16767d(null);

    /* renamed from: c */
    public final Object f36856c = new Object();

    /* renamed from: d */
    public final ThreadLocal<Boolean> f36857d = new ThreadLocal<>();

    /* renamed from: x5.h$a */
    /* loaded from: classes2.dex */
    public class RunnableC7345a implements Runnable {
        public RunnableC7345a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C7344h.this.f36857d.set(Boolean.TRUE);
        }
    }

    /* renamed from: x5.h$b */
    /* loaded from: classes2.dex */
    public class C7346b implements InterfaceC4330a<Void, T> {

        /* renamed from: a */
        public final /* synthetic */ Callable f36859a;

        public C7346b(Callable callable) {
            this.f36859a = callable;
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [T, java.lang.Object] */
        @Override // p097j5.InterfaceC4330a
        /* renamed from: a */
        public T mo1688a(AbstractC4346i<Void> abstractC4346i) {
            return this.f36859a.call();
        }
    }

    /* renamed from: x5.h$c */
    /* loaded from: classes2.dex */
    public class C7347c implements InterfaceC4330a<T, Void> {
        public C7347c() {
        }

        @Override // p097j5.InterfaceC4330a
        /* renamed from: b */
        public Void mo1688a(AbstractC4346i<T> abstractC4346i) {
            return null;
        }
    }

    /* renamed from: c */
    public Executor m1763c() {
        return this.f36854a;
    }

    /* renamed from: d */
    public final <T> AbstractC4346i<Void> m1762d(AbstractC4346i<T> abstractC4346i) {
        return abstractC4346i.mo16794h(this.f36854a, new C7347c());
    }

    /* renamed from: e */
    public final boolean m1761e() {
        return Boolean.TRUE.equals(this.f36857d.get());
    }

    /* renamed from: f */
    public final <T> InterfaceC4330a<Void, T> m1760f(Callable<T> callable) {
        return new C7346b(callable);
    }

    /* renamed from: g */
    public <T> AbstractC4346i<T> m1759g(Callable<T> callable) {
        AbstractC4346i<T> mo16794h;
        synchronized (this.f36856c) {
            mo16794h = this.f36855b.mo16794h(this.f36854a, m1760f(callable));
            this.f36855b = m1762d(mo16794h);
        }
        return mo16794h;
    }

    /* renamed from: h */
    public <T> AbstractC4346i<T> m1758h(Callable<AbstractC4346i<T>> callable) {
        AbstractC4346i<T> mo16792j;
        synchronized (this.f36856c) {
            mo16792j = this.f36855b.mo16792j(this.f36854a, m1760f(callable));
            this.f36855b = m1762d(mo16792j);
        }
        return mo16792j;
    }

    public C7344h(Executor executor) {
        this.f36854a = executor;
        executor.execute(new RunnableC7345a());
    }

    /* renamed from: b */
    public void m1764b() {
        if (m1761e()) {
            return;
        }
        throw new IllegalStateException("Not running on background worker thread as intended.");
    }
}
