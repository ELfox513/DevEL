package p222x5;

import android.os.Looper;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p097j5.AbstractC4346i;
import p097j5.C4348j;
import p097j5.InterfaceC4330a;
/* renamed from: x5.k0 */
/* loaded from: classes2.dex */
public final class C7364k0 {

    /* renamed from: a */
    public static final ExecutorService f36907a = C7381t.m1622c("awaitEvenIfOnMainThread task continuation executor");

    /* renamed from: x5.k0$a */
    /* loaded from: classes2.dex */
    public class RunnableC7365a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Callable f36908a;

        /* renamed from: b */
        public final /* synthetic */ C4348j f36909b;

        public RunnableC7365a(Callable callable, C4348j c4348j) {
            this.f36908a = callable;
            this.f36909b = c4348j;
        }

        /* renamed from: x5.k0$a$a */
        /* loaded from: classes2.dex */
        public class C7366a implements InterfaceC4330a<T, Void> {
            public C7366a() {
            }

            @Override // p097j5.InterfaceC4330a
            /* renamed from: b */
            public Void mo1688a(AbstractC4346i<T> abstractC4346i) {
                if (abstractC4346i.mo16786p()) {
                    RunnableC7365a.this.f36909b.m16773c(abstractC4346i.mo16790l());
                    return null;
                }
                RunnableC7365a.this.f36909b.m16774b(abstractC4346i.mo16791k());
                return null;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ((AbstractC4346i) this.f36908a.call()).mo16795g(new C7366a());
            } catch (Exception e) {
                this.f36909b.m16774b(e);
            }
        }
    }

    /* renamed from: d */
    public static <T> T m1695d(AbstractC4346i<T> abstractC4346i) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        abstractC4346i.mo16794h(f36907a, new InterfaceC4330a() { // from class: x5.h0
            @Override // p097j5.InterfaceC4330a
            /* renamed from: a */
            public final Object mo1688a(AbstractC4346i abstractC4346i2) {
                Object countDown;
                countDown = countDownLatch.countDown();
                return countDown;
            }
        });
        if (Looper.getMainLooper() == Looper.myLooper()) {
            countDownLatch.await(4L, TimeUnit.SECONDS);
        } else {
            countDownLatch.await();
        }
        if (abstractC4346i.mo16786p()) {
            return abstractC4346i.mo16790l();
        }
        if (!abstractC4346i.mo16788n()) {
            if (abstractC4346i.mo16787o()) {
                throw new IllegalStateException(abstractC4346i.mo16791k());
            }
            throw new TimeoutException();
        }
        throw new CancellationException("Task is already canceled");
    }

    /* renamed from: e */
    public static <T> AbstractC4346i<T> m1694e(Executor executor, Callable<AbstractC4346i<T>> callable) {
        C4348j c4348j = new C4348j();
        executor.execute(new RunnableC7365a(callable, c4348j));
        return c4348j.m16775a();
    }

    /* renamed from: i */
    public static <T> AbstractC4346i<T> m1690i(AbstractC4346i<T> abstractC4346i, AbstractC4346i<T> abstractC4346i2) {
        final C4348j c4348j = new C4348j();
        InterfaceC4330a<T, TContinuationResult> interfaceC4330a = new InterfaceC4330a() { // from class: x5.j0
            @Override // p097j5.InterfaceC4330a
            /* renamed from: a */
            public final Object mo1688a(AbstractC4346i abstractC4346i3) {
                Void m1692g;
                m1692g = C7364k0.m1692g(C4348j.this, abstractC4346i3);
                return m1692g;
            }
        };
        abstractC4346i.mo16795g(interfaceC4330a);
        abstractC4346i2.mo16795g(interfaceC4330a);
        return c4348j.m16775a();
    }

    /* renamed from: j */
    public static <T> AbstractC4346i<T> m1689j(Executor executor, AbstractC4346i<T> abstractC4346i, AbstractC4346i<T> abstractC4346i2) {
        final C4348j c4348j = new C4348j();
        InterfaceC4330a<T, TContinuationResult> interfaceC4330a = new InterfaceC4330a() { // from class: x5.i0
            @Override // p097j5.InterfaceC4330a
            /* renamed from: a */
            public final Object mo1688a(AbstractC4346i abstractC4346i3) {
                Void m1691h;
                m1691h = C7364k0.m1691h(C4348j.this, abstractC4346i3);
                return m1691h;
            }
        };
        abstractC4346i.mo16794h(executor, interfaceC4330a);
        abstractC4346i2.mo16794h(executor, interfaceC4330a);
        return c4348j.m16775a();
    }

    /* renamed from: g */
    public static /* synthetic */ Void m1692g(C4348j c4348j, AbstractC4346i abstractC4346i) {
        if (abstractC4346i.mo16786p()) {
            c4348j.m16771e(abstractC4346i.mo16790l());
            return null;
        }
        Exception mo16791k = abstractC4346i.mo16791k();
        mo16791k.getClass();
        c4348j.m16772d(mo16791k);
        return null;
    }

    /* renamed from: h */
    public static /* synthetic */ Void m1691h(C4348j c4348j, AbstractC4346i abstractC4346i) {
        if (abstractC4346i.mo16786p()) {
            c4348j.m16771e(abstractC4346i.mo16790l());
            return null;
        }
        Exception mo16791k = abstractC4346i.mo16791k();
        mo16791k.getClass();
        c4348j.m16772d(mo16791k);
        return null;
    }
}
