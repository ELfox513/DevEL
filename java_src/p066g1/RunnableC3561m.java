package p066g1;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.work.ListenableWorker;
import p057f1.C3482p;
import p075h1.C3944d;
import p084i1.InterfaceC4086a;
import p115l5.InterfaceFutureC4566a;
import p209w0.AbstractC7114j;
import p209w0.C7108e;
import p209w0.InterfaceC7109f;
import p232z.C7519a;
/* renamed from: g1.m */
/* loaded from: classes.dex */
public class RunnableC3561m implements Runnable {

    /* renamed from: r */
    public static final String f16107r = AbstractC7114j.m2489f("WorkForegroundRunnable");

    /* renamed from: a */
    public final C3944d<Void> f16108a = C3944d.m17691u();

    /* renamed from: b */
    public final Context f16109b;

    /* renamed from: d */
    public final C3482p f16110d;

    /* renamed from: k */
    public final ListenableWorker f16111k;

    /* renamed from: p */
    public final InterfaceC7109f f16112p;

    /* renamed from: q */
    public final InterfaceC4086a f16113q;

    /* renamed from: g1.m$a */
    /* loaded from: classes.dex */
    public class RunnableC3562a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C3944d f16114a;

        public RunnableC3562a(C3944d c3944d) {
            this.f16114a = c3944d;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f16114a.mo17692s(RunnableC3561m.this.f16111k.getForegroundInfoAsync());
        }
    }

    /* renamed from: g1.m$b */
    /* loaded from: classes.dex */
    public class RunnableC3563b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C3944d f16116a;

        public RunnableC3563b(C3944d c3944d) {
            this.f16116a = c3944d;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C7108e c7108e = (C7108e) this.f16116a.get();
                if (c7108e != null) {
                    AbstractC7114j.m2491c().mo2488a(RunnableC3561m.f16107r, String.format("Updating notification for %s", RunnableC3561m.this.f16110d.f15923c), new Throwable[0]);
                    RunnableC3561m.this.f16111k.setRunInForeground(true);
                    RunnableC3561m runnableC3561m = RunnableC3561m.this;
                    runnableC3561m.f16108a.mo17692s(runnableC3561m.f16112p.mo2498a(runnableC3561m.f16109b, runnableC3561m.f16111k.getId(), c7108e));
                    return;
                }
                throw new IllegalStateException(String.format("Worker was marked important (%s) but did not provide ForegroundInfo", RunnableC3561m.this.f16110d.f15923c));
            } catch (Throwable th) {
                RunnableC3561m.this.f16108a.mo17693r(th);
            }
        }
    }

    /* renamed from: a */
    public InterfaceFutureC4566a<Void> m18612a() {
        return this.f16108a;
    }

    @Override // java.lang.Runnable
    @SuppressLint({"UnsafeExperimentalUsageError"})
    public void run() {
        if (this.f16110d.f15937q && !C7519a.m1308c()) {
            C3944d m17691u = C3944d.m17691u();
            this.f16113q.mo17408a().execute(new RunnableC3562a(m17691u));
            m17691u.mo15990d(new RunnableC3563b(m17691u), this.f16113q.mo17408a());
            return;
        }
        this.f16108a.mo17694q(null);
    }

    @SuppressLint({"LambdaLast"})
    public RunnableC3561m(Context context, C3482p c3482p, ListenableWorker listenableWorker, InterfaceC7109f interfaceC7109f, InterfaceC4086a interfaceC4086a) {
        this.f16109b = context;
        this.f16110d = c3482p;
        this.f16111k = listenableWorker;
        this.f16112p = interfaceC7109f;
        this.f16113q = interfaceC4086a;
    }
}
