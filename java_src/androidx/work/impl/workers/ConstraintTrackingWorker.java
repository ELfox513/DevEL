package androidx.work.impl.workers;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import java.util.Collections;
import java.util.List;
import p014b1.C0427d;
import p014b1.InterfaceC0426c;
import p057f1.C3482p;
import p075h1.C3944d;
import p084i1.InterfaceC4086a;
import p115l5.InterfaceFutureC4566a;
import p209w0.AbstractC7114j;
import p217x0.C7199i;
/* loaded from: classes.dex */
public class ConstraintTrackingWorker extends ListenableWorker implements InterfaceC0426c {

    /* renamed from: v */
    public static final String f1471v = AbstractC7114j.m2489f("ConstraintTrkngWrkr");

    /* renamed from: q */
    public WorkerParameters f1472q;

    /* renamed from: r */
    public final Object f1473r;

    /* renamed from: s */
    public volatile boolean f1474s;

    /* renamed from: t */
    public C3944d<ListenableWorker.AbstractC0370a> f1475t;

    /* renamed from: u */
    public ListenableWorker f1476u;

    /* renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$a */
    /* loaded from: classes.dex */
    public class RunnableC0410a implements Runnable {
        public RunnableC0410a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ConstraintTrackingWorker.this.m26565e();
        }
    }

    /* renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$b */
    /* loaded from: classes.dex */
    public class RunnableC0411b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ InterfaceFutureC4566a f1478a;

        public RunnableC0411b(InterfaceFutureC4566a interfaceFutureC4566a) {
            this.f1478a = interfaceFutureC4566a;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ConstraintTrackingWorker.this.f1473r) {
                if (ConstraintTrackingWorker.this.f1474s) {
                    ConstraintTrackingWorker.this.m26566d();
                } else {
                    ConstraintTrackingWorker.this.f1475t.mo17692s(this.f1478a);
                }
            }
        }
    }

    /* renamed from: a */
    public WorkDatabase m26568a() {
        return C7199i.m2163n(getApplicationContext()).m2159r();
    }

    /* renamed from: c */
    public void m26567c() {
        this.f1475t.mo17694q(ListenableWorker.AbstractC0370a.m26701a());
    }

    /* renamed from: d */
    public void m26566d() {
        this.f1475t.mo17694q(ListenableWorker.AbstractC0370a.m26700b());
    }

    @Override // p014b1.InterfaceC0426c
    /* renamed from: f */
    public void mo1575f(List<String> list) {
    }

    @Override // androidx.work.ListenableWorker
    public InterfaceC4086a getTaskExecutor() {
        return C7199i.m2163n(getApplicationContext()).m2158s();
    }

    @Override // androidx.work.ListenableWorker
    public boolean isRunInForeground() {
        ListenableWorker listenableWorker = this.f1476u;
        return listenableWorker != null && listenableWorker.isRunInForeground();
    }

    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f1472q = workerParameters;
        this.f1473r = new Object();
        this.f1474s = false;
        this.f1475t = C3944d.m17691u();
    }

    @Override // p014b1.InterfaceC0426c
    /* renamed from: b */
    public void mo1577b(List<String> list) {
        AbstractC7114j.m2491c().mo2488a(f1471v, String.format("Constraints changed for %s", list), new Throwable[0]);
        synchronized (this.f1473r) {
            this.f1474s = true;
        }
    }

    /* renamed from: e */
    public void m26565e() {
        String m26658j = getInputData().m26658j("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
        if (TextUtils.isEmpty(m26658j)) {
            AbstractC7114j.m2491c().mo2487b(f1471v, "No worker to delegate to.", new Throwable[0]);
            m26567c();
            return;
        }
        ListenableWorker m2463b = getWorkerFactory().m2463b(getApplicationContext(), m26658j, this.f1472q);
        this.f1476u = m2463b;
        if (m2463b == null) {
            AbstractC7114j.m2491c().mo2488a(f1471v, "No worker to delegate to.", new Throwable[0]);
            m26567c();
            return;
        }
        C3482p mo18772m = m26568a().mo26644B().mo18772m(getId().toString());
        if (mo18772m == null) {
            m26567c();
            return;
        }
        C0427d c0427d = new C0427d(getApplicationContext(), getTaskExecutor(), this);
        c0427d.m26537d(Collections.singletonList(mo18772m));
        if (c0427d.m26538c(getId().toString())) {
            AbstractC7114j.m2491c().mo2488a(f1471v, String.format("Constraints met for delegate %s", m26658j), new Throwable[0]);
            try {
                InterfaceFutureC4566a<ListenableWorker.AbstractC0370a> startWork = this.f1476u.startWork();
                startWork.mo15990d(new RunnableC0411b(startWork), getBackgroundExecutor());
                return;
            } catch (Throwable th) {
                AbstractC7114j m2491c = AbstractC7114j.m2491c();
                String str = f1471v;
                m2491c.mo2488a(str, String.format("Delegated worker %s threw exception in startWork.", m26658j), th);
                synchronized (this.f1473r) {
                    if (this.f1474s) {
                        AbstractC7114j.m2491c().mo2488a(str, "Constraints were unmet, Retrying.", new Throwable[0]);
                        m26566d();
                    } else {
                        m26567c();
                    }
                    return;
                }
            }
        }
        AbstractC7114j.m2491c().mo2488a(f1471v, String.format("Constraints not met for delegate %s. Requesting retry.", m26658j), new Throwable[0]);
        m26566d();
    }

    @Override // androidx.work.ListenableWorker
    public void onStopped() {
        super.onStopped();
        ListenableWorker listenableWorker = this.f1476u;
        if (listenableWorker != null && !listenableWorker.isStopped()) {
            this.f1476u.stop();
        }
    }

    @Override // androidx.work.ListenableWorker
    public InterfaceFutureC4566a<ListenableWorker.AbstractC0370a> startWork() {
        getBackgroundExecutor().execute(new RunnableC0410a());
        return this.f1475t;
    }
}
