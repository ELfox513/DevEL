package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import p066g1.C3560l;
import p066g1.C3568p;
import p066g1.ExecutorC3556i;
import p084i1.InterfaceC4086a;
import p209w0.AbstractC7114j;
import p217x0.C7193d;
import p217x0.C7199i;
import p217x0.InterfaceC7191b;
/* renamed from: androidx.work.impl.background.systemalarm.d */
/* loaded from: classes.dex */
public class C0399d implements InterfaceC7191b {

    /* renamed from: v */
    public static final String f1416v = AbstractC7114j.m2489f("SystemAlarmDispatcher");

    /* renamed from: a */
    public final Context f1417a;

    /* renamed from: b */
    public final InterfaceC4086a f1418b;

    /* renamed from: d */
    public final C3568p f1419d;

    /* renamed from: k */
    public final C7193d f1420k;

    /* renamed from: p */
    public final C7199i f1421p;

    /* renamed from: q */
    public final C0396a f1422q;

    /* renamed from: r */
    public final Handler f1423r;

    /* renamed from: s */
    public final List<Intent> f1424s;

    /* renamed from: t */
    public Intent f1425t;

    /* renamed from: u */
    public InterfaceC0402c f1426u;

    /* renamed from: androidx.work.impl.background.systemalarm.d$a */
    /* loaded from: classes.dex */
    public class RunnableC0400a implements Runnable {
        public RunnableC0400a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0399d c0399d;
            RunnableC0403d runnableC0403d;
            synchronized (C0399d.this.f1424s) {
                C0399d c0399d2 = C0399d.this;
                c0399d2.f1425t = c0399d2.f1424s.get(0);
            }
            Intent intent = C0399d.this.f1425t;
            if (intent != null) {
                String action = intent.getAction();
                int intExtra = C0399d.this.f1425t.getIntExtra("KEY_START_ID", 0);
                AbstractC7114j m2491c = AbstractC7114j.m2491c();
                String str = C0399d.f1416v;
                m2491c.mo2488a(str, String.format("Processing command %s, %s", C0399d.this.f1425t, Integer.valueOf(intExtra)), new Throwable[0]);
                PowerManager.WakeLock m18613b = C3560l.m18613b(C0399d.this.f1417a, String.format("%s (%s)", action, Integer.valueOf(intExtra)));
                try {
                    AbstractC7114j.m2491c().mo2488a(str, String.format("Acquiring operation wake lock (%s) %s", action, m18613b), new Throwable[0]);
                    m18613b.acquire();
                    C0399d c0399d3 = C0399d.this;
                    c0399d3.f1422q.m26610p(c0399d3.f1425t, intExtra, c0399d3);
                    AbstractC7114j.m2491c().mo2488a(str, String.format("Releasing operation wake lock (%s) %s", action, m18613b), new Throwable[0]);
                    m18613b.release();
                    c0399d = C0399d.this;
                    runnableC0403d = new RunnableC0403d(c0399d);
                } catch (Throwable th) {
                    try {
                        AbstractC7114j m2491c2 = AbstractC7114j.m2491c();
                        String str2 = C0399d.f1416v;
                        m2491c2.mo2487b(str2, "Unexpected error in onHandleIntent", th);
                        AbstractC7114j.m2491c().mo2488a(str2, String.format("Releasing operation wake lock (%s) %s", action, m18613b), new Throwable[0]);
                        m18613b.release();
                        c0399d = C0399d.this;
                        runnableC0403d = new RunnableC0403d(c0399d);
                    } catch (Throwable th2) {
                        AbstractC7114j.m2491c().mo2488a(C0399d.f1416v, String.format("Releasing operation wake lock (%s) %s", action, m18613b), new Throwable[0]);
                        m18613b.release();
                        C0399d c0399d4 = C0399d.this;
                        c0399d4.m26596k(new RunnableC0403d(c0399d4));
                        throw th2;
                    }
                }
                c0399d.m26596k(runnableC0403d);
            }
        }
    }

    /* renamed from: androidx.work.impl.background.systemalarm.d$c */
    /* loaded from: classes.dex */
    public interface InterfaceC0402c {
        /* renamed from: a */
        void mo26593a();
    }

    public C0399d(Context context) {
        this(context, null, null);
    }

    /* renamed from: e */
    public C7193d m26602e() {
        return this.f1420k;
    }

    /* renamed from: f */
    public InterfaceC4086a m26601f() {
        return this.f1418b;
    }

    /* renamed from: g */
    public C7199i m26600g() {
        return this.f1421p;
    }

    /* renamed from: h */
    public C3568p m26599h() {
        return this.f1419d;
    }

    /* renamed from: k */
    public void m26596k(Runnable runnable) {
        this.f1423r.post(runnable);
    }

    /* renamed from: androidx.work.impl.background.systemalarm.d$b */
    /* loaded from: classes.dex */
    public static class RunnableC0401b implements Runnable {

        /* renamed from: a */
        public final C0399d f1428a;

        /* renamed from: b */
        public final Intent f1429b;

        /* renamed from: d */
        public final int f1430d;

        @Override // java.lang.Runnable
        public void run() {
            this.f1428a.m26605a(this.f1429b, this.f1430d);
        }

        public RunnableC0401b(C0399d c0399d, Intent intent, int i) {
            this.f1428a = c0399d;
            this.f1429b = intent;
            this.f1430d = i;
        }
    }

    /* renamed from: androidx.work.impl.background.systemalarm.d$d */
    /* loaded from: classes.dex */
    public static class RunnableC0403d implements Runnable {

        /* renamed from: a */
        public final C0399d f1431a;

        @Override // java.lang.Runnable
        public void run() {
            this.f1431a.m26603c();
        }

        public RunnableC0403d(C0399d c0399d) {
            this.f1431a = c0399d;
        }
    }

    public C0399d(Context context, C7193d c7193d, C7199i c7199i) {
        Context applicationContext = context.getApplicationContext();
        this.f1417a = applicationContext;
        this.f1422q = new C0396a(applicationContext);
        this.f1419d = new C3568p();
        c7199i = c7199i == null ? C7199i.m2163n(context) : c7199i;
        this.f1421p = c7199i;
        c7193d = c7193d == null ? c7199i.m2161p() : c7193d;
        this.f1420k = c7193d;
        this.f1418b = c7199i.m2158s();
        c7193d.m2207c(this);
        this.f1424s = new ArrayList();
        this.f1425t = null;
        this.f1423r = new Handler(Looper.getMainLooper());
    }

    /* renamed from: b */
    public final void m26604b() {
        if (this.f1423r.getLooper().getThread() == Thread.currentThread()) {
            return;
        }
        throw new IllegalStateException("Needs to be invoked on the main thread.");
    }

    @Override // p217x0.InterfaceC7191b
    /* renamed from: d */
    public void mo1576d(String str, boolean z) {
        m26596k(new RunnableC0401b(this, C0396a.m26622c(this.f1417a, str, z), 0));
    }

    /* renamed from: m */
    public void m26594m(InterfaceC0402c interfaceC0402c) {
        if (this.f1426u != null) {
            AbstractC7114j.m2491c().mo2487b(f1416v, "A completion listener for SystemAlarmDispatcher already exists.", new Throwable[0]);
        } else {
            this.f1426u = interfaceC0402c;
        }
    }

    /* renamed from: a */
    public boolean m26605a(Intent intent, int i) {
        AbstractC7114j m2491c = AbstractC7114j.m2491c();
        String str = f1416v;
        boolean z = false;
        m2491c.mo2488a(str, String.format("Adding command %s (%s)", intent, Integer.valueOf(i)), new Throwable[0]);
        m26604b();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            AbstractC7114j.m2491c().mo2484h(str, "Unknown command. Ignoring", new Throwable[0]);
            return false;
        } else if ("ACTION_CONSTRAINTS_CHANGED".equals(action) && m26598i("ACTION_CONSTRAINTS_CHANGED")) {
            return false;
        } else {
            intent.putExtra("KEY_START_ID", i);
            synchronized (this.f1424s) {
                if (!this.f1424s.isEmpty()) {
                    z = true;
                }
                this.f1424s.add(intent);
                if (!z) {
                    m26595l();
                }
            }
            return true;
        }
    }

    /* renamed from: c */
    public void m26603c() {
        AbstractC7114j m2491c = AbstractC7114j.m2491c();
        String str = f1416v;
        m2491c.mo2488a(str, "Checking if commands are complete.", new Throwable[0]);
        m26604b();
        synchronized (this.f1424s) {
            if (this.f1425t != null) {
                AbstractC7114j.m2491c().mo2488a(str, String.format("Removing command %s", this.f1425t), new Throwable[0]);
                if (this.f1424s.remove(0).equals(this.f1425t)) {
                    this.f1425t = null;
                } else {
                    throw new IllegalStateException("Dequeue-d command is not the first.");
                }
            }
            ExecutorC3556i mo17406c = this.f1418b.mo17406c();
            if (!this.f1422q.m26611o() && this.f1424s.isEmpty() && !mo17406c.m18616a()) {
                AbstractC7114j.m2491c().mo2488a(str, "No more commands & intents.", new Throwable[0]);
                InterfaceC0402c interfaceC0402c = this.f1426u;
                if (interfaceC0402c != null) {
                    interfaceC0402c.mo26593a();
                }
            } else if (!this.f1424s.isEmpty()) {
                m26595l();
            }
        }
    }

    /* renamed from: i */
    public final boolean m26598i(String str) {
        m26604b();
        synchronized (this.f1424s) {
            for (Intent intent : this.f1424s) {
                if (str.equals(intent.getAction())) {
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: j */
    public void m26597j() {
        AbstractC7114j.m2491c().mo2488a(f1416v, "Destroying SystemAlarmDispatcher", new Throwable[0]);
        this.f1420k.m2202i(this);
        this.f1419d.m18611a();
        this.f1426u = null;
    }

    /* renamed from: l */
    public final void m26595l() {
        m26604b();
        PowerManager.WakeLock m18613b = C3560l.m18613b(this.f1417a, "ProcessCommand");
        try {
            m18613b.acquire();
            this.f1421p.m2158s().mo17407b(new RunnableC0400a());
        } finally {
            m18613b.release();
        }
    }
}
