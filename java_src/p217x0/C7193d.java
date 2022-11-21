package p217x0;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.C0376a;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.C0407a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import p048e1.InterfaceC3359a;
import p066g1.C3560l;
import p084i1.InterfaceC4086a;
import p115l5.InterfaceFutureC4566a;
import p172s.C6550a;
import p209w0.AbstractC7114j;
import p209w0.C7108e;
import p217x0.RunnableC7200j;
/* renamed from: x0.d */
/* loaded from: classes.dex */
public class C7193d implements InterfaceC7191b, InterfaceC3359a {

    /* renamed from: w */
    public static final String f36474w = AbstractC7114j.m2489f("Processor");

    /* renamed from: b */
    public Context f36476b;

    /* renamed from: d */
    public C0376a f36477d;

    /* renamed from: k */
    public InterfaceC4086a f36478k;

    /* renamed from: p */
    public WorkDatabase f36479p;

    /* renamed from: s */
    public List<InterfaceC7195e> f36482s;

    /* renamed from: r */
    public Map<String, RunnableC7200j> f36481r = new HashMap();

    /* renamed from: q */
    public Map<String, RunnableC7200j> f36480q = new HashMap();

    /* renamed from: t */
    public Set<String> f36483t = new HashSet();

    /* renamed from: u */
    public final List<InterfaceC7191b> f36484u = new ArrayList();

    /* renamed from: a */
    public PowerManager.WakeLock f36475a = null;

    /* renamed from: v */
    public final Object f36485v = new Object();

    /* renamed from: x0.d$a */
    /* loaded from: classes.dex */
    public static class RunnableC7194a implements Runnable {

        /* renamed from: a */
        public InterfaceC7191b f36486a;

        /* renamed from: b */
        public String f36487b;

        /* renamed from: d */
        public InterfaceFutureC4566a<Boolean> f36488d;

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            try {
                z = this.f36488d.get().booleanValue();
            } catch (InterruptedException | ExecutionException unused) {
                z = true;
            }
            this.f36486a.mo1576d(this.f36487b, z);
        }

        public RunnableC7194a(InterfaceC7191b interfaceC7191b, String str, InterfaceFutureC4566a<Boolean> interfaceFutureC4566a) {
            this.f36486a = interfaceC7191b;
            this.f36487b = str;
            this.f36488d = interfaceFutureC4566a;
        }
    }

    /* renamed from: e */
    public static boolean m2206e(String str, RunnableC7200j runnableC7200j) {
        if (runnableC7200j != null) {
            runnableC7200j.m2147d();
            AbstractC7114j.m2491c().mo2488a(f36474w, String.format("WorkerWrapper interrupted for %s", str), new Throwable[0]);
            return true;
        }
        AbstractC7114j.m2491c().mo2488a(f36474w, String.format("WorkerWrapper could not be found for %s", str), new Throwable[0]);
        return false;
    }

    /* renamed from: j */
    public boolean m2201j(String str) {
        return m2200k(str, null);
    }

    @Override // p048e1.InterfaceC3359a
    /* renamed from: a */
    public void mo2209a(String str, C7108e c7108e) {
        synchronized (this.f36485v) {
            AbstractC7114j.m2491c().mo2486d(f36474w, String.format("Moving WorkSpec (%s) to the foreground", str), new Throwable[0]);
            RunnableC7200j remove = this.f36481r.remove(str);
            if (remove != null) {
                if (this.f36475a == null) {
                    PowerManager.WakeLock m18613b = C3560l.m18613b(this.f36476b, "ProcessorForegroundLck");
                    this.f36475a = m18613b;
                    m18613b.acquire();
                }
                this.f36480q.put(str, remove);
                C6550a.m3932h(this.f36476b, C0407a.m26589c(this.f36476b, str, c7108e));
            }
        }
    }

    @Override // p048e1.InterfaceC3359a
    /* renamed from: b */
    public void mo2208b(String str) {
        synchronized (this.f36485v) {
            this.f36480q.remove(str);
            m2198m();
        }
    }

    /* renamed from: c */
    public void m2207c(InterfaceC7191b interfaceC7191b) {
        synchronized (this.f36485v) {
            this.f36484u.add(interfaceC7191b);
        }
    }

    @Override // p217x0.InterfaceC7191b
    /* renamed from: d */
    public void mo1576d(String str, boolean z) {
        synchronized (this.f36485v) {
            this.f36481r.remove(str);
            AbstractC7114j.m2491c().mo2488a(f36474w, String.format("%s %s executed; reschedule = %s", getClass().getSimpleName(), str, Boolean.valueOf(z)), new Throwable[0]);
            for (InterfaceC7191b interfaceC7191b : this.f36484u) {
                interfaceC7191b.mo1576d(str, z);
            }
        }
    }

    /* renamed from: f */
    public boolean m2205f(String str) {
        boolean contains;
        synchronized (this.f36485v) {
            contains = this.f36483t.contains(str);
        }
        return contains;
    }

    /* renamed from: g */
    public boolean m2204g(String str) {
        boolean z;
        synchronized (this.f36485v) {
            if (!this.f36481r.containsKey(str) && !this.f36480q.containsKey(str)) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    /* renamed from: h */
    public boolean m2203h(String str) {
        boolean containsKey;
        synchronized (this.f36485v) {
            containsKey = this.f36480q.containsKey(str);
        }
        return containsKey;
    }

    /* renamed from: i */
    public void m2202i(InterfaceC7191b interfaceC7191b) {
        synchronized (this.f36485v) {
            this.f36484u.remove(interfaceC7191b);
        }
    }

    /* renamed from: k */
    public boolean m2200k(String str, WorkerParameters.C0375a c0375a) {
        synchronized (this.f36485v) {
            if (m2204g(str)) {
                AbstractC7114j.m2491c().mo2488a(f36474w, String.format("Work %s is already enqueued for processing", str), new Throwable[0]);
                return false;
            }
            RunnableC7200j m2135a = new RunnableC7200j.C7203c(this.f36476b, this.f36477d, this.f36478k, this, this.f36479p, str).m2133c(this.f36482s).m2134b(c0375a).m2135a();
            InterfaceFutureC4566a<Boolean> m2149b = m2135a.m2149b();
            m2149b.mo15990d(new RunnableC7194a(this, str, m2149b), this.f36478k.mo17408a());
            this.f36481r.put(str, m2135a);
            this.f36478k.mo17406c().execute(m2135a);
            AbstractC7114j.m2491c().mo2488a(f36474w, String.format("%s: processing %s", getClass().getSimpleName(), str), new Throwable[0]);
            return true;
        }
    }

    /* renamed from: l */
    public boolean m2199l(String str) {
        boolean m2206e;
        synchronized (this.f36485v) {
            boolean z = true;
            AbstractC7114j.m2491c().mo2488a(f36474w, String.format("Processor cancelling %s", str), new Throwable[0]);
            this.f36483t.add(str);
            RunnableC7200j remove = this.f36480q.remove(str);
            if (remove == null) {
                z = false;
            }
            if (remove == null) {
                remove = this.f36481r.remove(str);
            }
            m2206e = m2206e(str, remove);
            if (z) {
                m2198m();
            }
        }
        return m2206e;
    }

    /* renamed from: m */
    public final void m2198m() {
        synchronized (this.f36485v) {
            if (!(!this.f36480q.isEmpty())) {
                this.f36476b.startService(C0407a.m26588e(this.f36476b));
                PowerManager.WakeLock wakeLock = this.f36475a;
                if (wakeLock != null) {
                    wakeLock.release();
                    this.f36475a = null;
                }
            }
        }
    }

    /* renamed from: n */
    public boolean m2197n(String str) {
        boolean m2206e;
        synchronized (this.f36485v) {
            AbstractC7114j.m2491c().mo2488a(f36474w, String.format("Processor stopping foreground work %s", str), new Throwable[0]);
            m2206e = m2206e(str, this.f36480q.remove(str));
        }
        return m2206e;
    }

    /* renamed from: o */
    public boolean m2196o(String str) {
        boolean m2206e;
        synchronized (this.f36485v) {
            AbstractC7114j.m2491c().mo2488a(f36474w, String.format("Processor stopping background work %s", str), new Throwable[0]);
            m2206e = m2206e(str, this.f36481r.remove(str));
        }
        return m2206e;
    }

    public C7193d(Context context, C0376a c0376a, InterfaceC4086a interfaceC4086a, WorkDatabase workDatabase, List<InterfaceC7195e> list) {
        this.f36476b = context;
        this.f36477d = c0376a;
        this.f36478k = interfaceC4086a;
        this.f36479p = workDatabase;
        this.f36482s = list;
    }
}
