package p217x0;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.work.C0376a;
import androidx.work.C0380b;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import p048e1.InterfaceC3359a;
import p057f1.C3482p;
import p057f1.InterfaceC3460b;
import p057f1.InterfaceC3485q;
import p057f1.InterfaceC3497t;
import p066g1.C3552e;
import p066g1.C3564n;
import p066g1.C3566o;
import p066g1.RunnableC3561m;
import p075h1.C3944d;
import p084i1.InterfaceC4086a;
import p115l5.InterfaceFutureC4566a;
import p209w0.AbstractC7111h;
import p209w0.AbstractC7114j;
import p209w0.EnumC7130s;
/* renamed from: x0.j */
/* loaded from: classes.dex */
public class RunnableC7200j implements Runnable {

    /* renamed from: E */
    public static final String f36515E = AbstractC7114j.m2489f("WorkerWrapper");

    /* renamed from: A */
    public String f36516A;

    /* renamed from: D */
    public volatile boolean f36519D;

    /* renamed from: a */
    public Context f36520a;

    /* renamed from: b */
    public String f36521b;

    /* renamed from: d */
    public List<InterfaceC7195e> f36522d;

    /* renamed from: k */
    public WorkerParameters.C0375a f36523k;

    /* renamed from: p */
    public C3482p f36524p;

    /* renamed from: q */
    public ListenableWorker f36525q;

    /* renamed from: r */
    public InterfaceC4086a f36526r;

    /* renamed from: t */
    public C0376a f36528t;

    /* renamed from: u */
    public InterfaceC3359a f36529u;

    /* renamed from: v */
    public WorkDatabase f36530v;

    /* renamed from: w */
    public InterfaceC3485q f36531w;

    /* renamed from: x */
    public InterfaceC3460b f36532x;

    /* renamed from: y */
    public InterfaceC3497t f36533y;

    /* renamed from: z */
    public List<String> f36534z;

    /* renamed from: s */
    public ListenableWorker.AbstractC0370a f36527s = ListenableWorker.AbstractC0370a.m26701a();

    /* renamed from: B */
    public C3944d<Boolean> f36517B = C3944d.m17691u();

    /* renamed from: C */
    public InterfaceFutureC4566a<ListenableWorker.AbstractC0370a> f36518C = null;

    /* renamed from: x0.j$a */
    /* loaded from: classes.dex */
    public class RunnableC7201a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ InterfaceFutureC4566a f36535a;

        /* renamed from: b */
        public final /* synthetic */ C3944d f36536b;

        public RunnableC7201a(InterfaceFutureC4566a interfaceFutureC4566a, C3944d c3944d) {
            this.f36535a = interfaceFutureC4566a;
            this.f36536b = c3944d;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f36535a.get();
                AbstractC7114j.m2491c().mo2488a(RunnableC7200j.f36515E, String.format("Starting work for %s", RunnableC7200j.this.f36524p.f15923c), new Throwable[0]);
                RunnableC7200j runnableC7200j = RunnableC7200j.this;
                runnableC7200j.f36518C = runnableC7200j.f36525q.startWork();
                this.f36536b.mo17692s(RunnableC7200j.this.f36518C);
            } catch (Throwable th) {
                this.f36536b.mo17693r(th);
            }
        }
    }

    /* renamed from: x0.j$b */
    /* loaded from: classes.dex */
    public class RunnableC7202b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C3944d f36538a;

        /* renamed from: b */
        public final /* synthetic */ String f36539b;

        public RunnableC7202b(C3944d c3944d, String str) {
            this.f36538a = c3944d;
            this.f36539b = str;
        }

        @Override // java.lang.Runnable
        @SuppressLint({"SyntheticAccessor"})
        public void run() {
            try {
                try {
                    ListenableWorker.AbstractC0370a abstractC0370a = (ListenableWorker.AbstractC0370a) this.f36538a.get();
                    if (abstractC0370a == null) {
                        AbstractC7114j.m2491c().mo2487b(RunnableC7200j.f36515E, String.format("%s returned a null result. Treating it as a failure.", RunnableC7200j.this.f36524p.f15923c), new Throwable[0]);
                    } else {
                        AbstractC7114j.m2491c().mo2488a(RunnableC7200j.f36515E, String.format("%s returned a %s result.", RunnableC7200j.this.f36524p.f15923c, abstractC0370a), new Throwable[0]);
                        RunnableC7200j.this.f36527s = abstractC0370a;
                    }
                } catch (InterruptedException e) {
                    e = e;
                    AbstractC7114j.m2491c().mo2487b(RunnableC7200j.f36515E, String.format("%s failed because it threw an exception/error", this.f36539b), e);
                } catch (CancellationException e2) {
                    AbstractC7114j.m2491c().mo2486d(RunnableC7200j.f36515E, String.format("%s was cancelled", this.f36539b), e2);
                } catch (ExecutionException e3) {
                    e = e3;
                    AbstractC7114j.m2491c().mo2487b(RunnableC7200j.f36515E, String.format("%s failed because it threw an exception/error", this.f36539b), e);
                }
            } finally {
                RunnableC7200j.this.m2145f();
            }
        }
    }

    /* renamed from: b */
    public InterfaceFutureC4566a<Boolean> m2149b() {
        return this.f36517B;
    }

    /* renamed from: d */
    public void m2147d() {
        boolean z;
        this.f36519D = true;
        m2137n();
        InterfaceFutureC4566a<ListenableWorker.AbstractC0370a> interfaceFutureC4566a = this.f36518C;
        if (interfaceFutureC4566a != null) {
            z = interfaceFutureC4566a.isDone();
            this.f36518C.cancel(true);
        } else {
            z = false;
        }
        ListenableWorker listenableWorker = this.f36525q;
        if (listenableWorker != null && !z) {
            listenableWorker.stop();
        } else {
            AbstractC7114j.m2491c().mo2488a(f36515E, String.format("WorkSpec %s is already done. Not interrupting.", this.f36524p), new Throwable[0]);
        }
    }

    /* renamed from: x0.j$c */
    /* loaded from: classes.dex */
    public static class C7203c {

        /* renamed from: a */
        public Context f36541a;

        /* renamed from: b */
        public ListenableWorker f36542b;

        /* renamed from: c */
        public InterfaceC3359a f36543c;

        /* renamed from: d */
        public InterfaceC4086a f36544d;

        /* renamed from: e */
        public C0376a f36545e;

        /* renamed from: f */
        public WorkDatabase f36546f;

        /* renamed from: g */
        public String f36547g;

        /* renamed from: h */
        public List<InterfaceC7195e> f36548h;

        /* renamed from: i */
        public WorkerParameters.C0375a f36549i = new WorkerParameters.C0375a();

        /* renamed from: a */
        public RunnableC7200j m2135a() {
            return new RunnableC7200j(this);
        }

        /* renamed from: b */
        public C7203c m2134b(WorkerParameters.C0375a c0375a) {
            if (c0375a != null) {
                this.f36549i = c0375a;
            }
            return this;
        }

        /* renamed from: c */
        public C7203c m2133c(List<InterfaceC7195e> list) {
            this.f36548h = list;
            return this;
        }

        public C7203c(Context context, C0376a c0376a, InterfaceC4086a interfaceC4086a, InterfaceC3359a interfaceC3359a, WorkDatabase workDatabase, String str) {
            this.f36541a = context.getApplicationContext();
            this.f36544d = interfaceC4086a;
            this.f36543c = interfaceC3359a;
            this.f36545e = c0376a;
            this.f36546f = workDatabase;
            this.f36547g = str;
        }
    }

    /* renamed from: a */
    public final String m2150a(List<String> list) {
        StringBuilder sb = new StringBuilder("Work [ id=");
        sb.append(this.f36521b);
        sb.append(", tags={ ");
        boolean z = true;
        for (String str : list) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(str);
        }
        sb.append(" } ]");
        return sb.toString();
    }

    /* renamed from: c */
    public final void m2148c(ListenableWorker.AbstractC0370a abstractC0370a) {
        if (abstractC0370a instanceof ListenableWorker.AbstractC0370a.C0373c) {
            AbstractC7114j.m2491c().mo2486d(f36515E, String.format("Worker result SUCCESS for %s", this.f36516A), new Throwable[0]);
            if (this.f36524p.m18785d()) {
                m2143h();
            } else {
                m2138m();
            }
        } else if (abstractC0370a instanceof ListenableWorker.AbstractC0370a.C0372b) {
            AbstractC7114j.m2491c().mo2486d(f36515E, String.format("Worker result RETRY for %s", this.f36516A), new Throwable[0]);
            m2144g();
        } else {
            AbstractC7114j.m2491c().mo2486d(f36515E, String.format("Worker result FAILURE for %s", this.f36516A), new Throwable[0]);
            if (this.f36524p.m18785d()) {
                m2143h();
            } else {
                m2139l();
            }
        }
    }

    /* renamed from: e */
    public final void m2146e(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            if (this.f36531w.mo18773l(str2) != EnumC7130s.CANCELLED) {
                this.f36531w.mo18783b(EnumC7130s.FAILED, str2);
            }
            linkedList.addAll(this.f36532x.mo18808a(str2));
        }
    }

    /* renamed from: g */
    public final void m2144g() {
        this.f36530v.m15828c();
        try {
            this.f36531w.mo18783b(EnumC7130s.ENQUEUED, this.f36521b);
            this.f36531w.mo18766s(this.f36521b, System.currentTimeMillis());
            this.f36531w.mo18782c(this.f36521b, -1L);
            this.f36530v.m15813r();
        } finally {
            this.f36530v.m15824g();
            m2142i(true);
        }
    }

    /* renamed from: h */
    public final void m2143h() {
        this.f36530v.m15828c();
        try {
            this.f36531w.mo18766s(this.f36521b, System.currentTimeMillis());
            this.f36531w.mo18783b(EnumC7130s.ENQUEUED, this.f36521b);
            this.f36531w.mo18771n(this.f36521b);
            this.f36531w.mo18782c(this.f36521b, -1L);
            this.f36530v.m15813r();
        } finally {
            this.f36530v.m15824g();
            m2142i(false);
        }
    }

    /* renamed from: i */
    public final void m2142i(boolean z) {
        ListenableWorker listenableWorker;
        this.f36530v.m15828c();
        try {
            if (!this.f36530v.mo26644B().mo18775j()) {
                C3552e.m18623a(this.f36520a, RescheduleReceiver.class, false);
            }
            if (z) {
                this.f36531w.mo18783b(EnumC7130s.ENQUEUED, this.f36521b);
                this.f36531w.mo18782c(this.f36521b, -1L);
            }
            if (this.f36524p != null && (listenableWorker = this.f36525q) != null && listenableWorker.isRunInForeground()) {
                this.f36529u.mo2208b(this.f36521b);
            }
            this.f36530v.m15813r();
            this.f36530v.m15824g();
            this.f36517B.mo17694q(Boolean.valueOf(z));
        } catch (Throwable th) {
            this.f36530v.m15824g();
            throw th;
        }
    }

    /* renamed from: j */
    public final void m2141j() {
        EnumC7130s mo18773l = this.f36531w.mo18773l(this.f36521b);
        if (mo18773l == EnumC7130s.RUNNING) {
            AbstractC7114j.m2491c().mo2488a(f36515E, String.format("Status for %s is RUNNING;not doing any work and rescheduling for later execution", this.f36521b), new Throwable[0]);
            m2142i(true);
            return;
        }
        AbstractC7114j.m2491c().mo2488a(f36515E, String.format("Status for %s is %s; not doing any work", this.f36521b, mo18773l), new Throwable[0]);
        m2142i(false);
    }

    /* renamed from: k */
    public final void m2140k() {
        boolean z;
        C0380b mo2495b;
        if (m2137n()) {
            return;
        }
        this.f36530v.m15828c();
        try {
            C3482p mo18772m = this.f36531w.mo18772m(this.f36521b);
            this.f36524p = mo18772m;
            if (mo18772m == null) {
                AbstractC7114j.m2491c().mo2487b(f36515E, String.format("Didn't find WorkSpec for id %s", this.f36521b), new Throwable[0]);
                m2142i(false);
                this.f36530v.m15813r();
            } else if (mo18772m.f15922b != EnumC7130s.ENQUEUED) {
                m2141j();
                this.f36530v.m15813r();
                AbstractC7114j.m2491c().mo2488a(f36515E, String.format("%s is not in ENQUEUED state. Nothing more to do.", this.f36524p.f15923c), new Throwable[0]);
            } else {
                if (mo18772m.m18785d() || this.f36524p.m18786c()) {
                    long currentTimeMillis = System.currentTimeMillis();
                    C3482p c3482p = this.f36524p;
                    if (c3482p.f15934n == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z && currentTimeMillis < c3482p.m18788a()) {
                        AbstractC7114j.m2491c().mo2488a(f36515E, String.format("Delaying execution for %s because it is being executed before schedule.", this.f36524p.f15923c), new Throwable[0]);
                        m2142i(true);
                        this.f36530v.m15813r();
                        return;
                    }
                }
                this.f36530v.m15813r();
                this.f36530v.m15824g();
                if (this.f36524p.m18785d()) {
                    mo2495b = this.f36524p.f15925e;
                } else {
                    AbstractC7111h m2494b = this.f36528t.m26677f().m2494b(this.f36524p.f15924d);
                    if (m2494b == null) {
                        AbstractC7114j.m2491c().mo2487b(f36515E, String.format("Could not create Input Merger %s", this.f36524p.f15924d), new Throwable[0]);
                        m2139l();
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(this.f36524p.f15925e);
                    arrayList.addAll(this.f36531w.mo18768q(this.f36521b));
                    mo2495b = m2494b.mo2495b(arrayList);
                }
                WorkerParameters workerParameters = new WorkerParameters(UUID.fromString(this.f36521b), mo2495b, this.f36534z, this.f36523k, this.f36524p.f15931k, this.f36528t.m26678e(), this.f36526r, this.f36528t.m26670m(), new C3566o(this.f36530v, this.f36526r), new C3564n(this.f36530v, this.f36529u, this.f36526r));
                if (this.f36525q == null) {
                    this.f36525q = this.f36528t.m26670m().m2463b(this.f36520a, this.f36524p.f15923c, workerParameters);
                }
                ListenableWorker listenableWorker = this.f36525q;
                if (listenableWorker == null) {
                    AbstractC7114j.m2491c().mo2487b(f36515E, String.format("Could not create Worker %s", this.f36524p.f15923c), new Throwable[0]);
                    m2139l();
                } else if (listenableWorker.isUsed()) {
                    AbstractC7114j.m2491c().mo2487b(f36515E, String.format("Received an already-used Worker %s; WorkerFactory should return new instances", this.f36524p.f15923c), new Throwable[0]);
                    m2139l();
                } else {
                    this.f36525q.setUsed();
                    if (m2136o()) {
                        if (m2137n()) {
                            return;
                        }
                        C3944d m17691u = C3944d.m17691u();
                        RunnableC3561m runnableC3561m = new RunnableC3561m(this.f36520a, this.f36524p, this.f36525q, workerParameters.m26693b(), this.f36526r);
                        this.f36526r.mo17408a().execute(runnableC3561m);
                        InterfaceFutureC4566a<Void> m18612a = runnableC3561m.m18612a();
                        m18612a.mo15990d(new RunnableC7201a(m18612a, m17691u), this.f36526r.mo17408a());
                        m17691u.mo15990d(new RunnableC7202b(m17691u, this.f36516A), this.f36526r.mo17406c());
                        return;
                    }
                    m2141j();
                }
            }
        } finally {
            this.f36530v.m15824g();
        }
    }

    /* renamed from: l */
    public void m2139l() {
        this.f36530v.m15828c();
        try {
            m2146e(this.f36521b);
            this.f36531w.mo18777h(this.f36521b, ((ListenableWorker.AbstractC0370a.C0371a) this.f36527s).m26697e());
            this.f36530v.m15813r();
        } finally {
            this.f36530v.m15824g();
            m2142i(false);
        }
    }

    /* renamed from: m */
    public final void m2138m() {
        this.f36530v.m15828c();
        try {
            this.f36531w.mo18783b(EnumC7130s.SUCCEEDED, this.f36521b);
            this.f36531w.mo18777h(this.f36521b, ((ListenableWorker.AbstractC0370a.C0373c) this.f36527s).m26696e());
            long currentTimeMillis = System.currentTimeMillis();
            for (String str : this.f36532x.mo18808a(this.f36521b)) {
                if (this.f36531w.mo18773l(str) == EnumC7130s.BLOCKED && this.f36532x.mo18807b(str)) {
                    AbstractC7114j.m2491c().mo2486d(f36515E, String.format("Setting status to enqueued for %s", str), new Throwable[0]);
                    this.f36531w.mo18783b(EnumC7130s.ENQUEUED, str);
                    this.f36531w.mo18766s(str, currentTimeMillis);
                }
            }
            this.f36530v.m15813r();
        } finally {
            this.f36530v.m15824g();
            m2142i(false);
        }
    }

    /* renamed from: n */
    public final boolean m2137n() {
        if (!this.f36519D) {
            return false;
        }
        AbstractC7114j.m2491c().mo2488a(f36515E, String.format("Work interrupted for %s", this.f36516A), new Throwable[0]);
        EnumC7130s mo18773l = this.f36531w.mo18773l(this.f36521b);
        if (mo18773l == null) {
            m2142i(false);
        } else {
            m2142i(!mo18773l.m2478c());
        }
        return true;
    }

    /* renamed from: o */
    public final boolean m2136o() {
        this.f36530v.m15828c();
        try {
            boolean z = true;
            if (this.f36531w.mo18773l(this.f36521b) == EnumC7130s.ENQUEUED) {
                this.f36531w.mo18783b(EnumC7130s.RUNNING, this.f36521b);
                this.f36531w.mo18767r(this.f36521b);
            } else {
                z = false;
            }
            this.f36530v.m15813r();
            return z;
        } finally {
            this.f36530v.m15824g();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        List<String> mo18762a = this.f36533y.mo18762a(this.f36521b);
        this.f36534z = mo18762a;
        this.f36516A = m2150a(mo18762a);
        m2140k();
    }

    public RunnableC7200j(C7203c c7203c) {
        this.f36520a = c7203c.f36541a;
        this.f36526r = c7203c.f36544d;
        this.f36529u = c7203c.f36543c;
        this.f36521b = c7203c.f36547g;
        this.f36522d = c7203c.f36548h;
        this.f36523k = c7203c.f36549i;
        this.f36525q = c7203c.f36542b;
        this.f36528t = c7203c.f36545e;
        WorkDatabase workDatabase = c7203c.f36546f;
        this.f36530v = workDatabase;
        this.f36531w = workDatabase.mo26644B();
        this.f36532x = this.f36530v.mo26631t();
        this.f36533y = this.f36530v.mo26643C();
    }

    /* renamed from: f */
    public void m2145f() {
        if (!m2137n()) {
            this.f36530v.m15828c();
            try {
                EnumC7130s mo18773l = this.f36531w.mo18773l(this.f36521b);
                this.f36530v.mo26645A().mo18792a(this.f36521b);
                if (mo18773l == null) {
                    m2142i(false);
                } else if (mo18773l == EnumC7130s.RUNNING) {
                    m2148c(this.f36527s);
                } else if (!mo18773l.m2478c()) {
                    m2144g();
                }
                this.f36530v.m15813r();
            } finally {
                this.f36530v.m15824g();
            }
        }
        List<InterfaceC7195e> list = this.f36522d;
        if (list != null) {
            for (InterfaceC7195e interfaceC7195e : list) {
                interfaceC7195e.mo1288e(this.f36521b);
            }
            C7196f.m2194b(this.f36528t, this.f36530v, this.f36522d);
        }
    }
}
