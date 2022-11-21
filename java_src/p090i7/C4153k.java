package p090i7;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.firebase.perf.session.SessionManager;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import p029c7.C1078a;
import p029c7.C1079b;
import p054e7.AbstractC3393e;
import p058f2.InterfaceC3508g;
import p097j5.C4352l;
import p099j7.C4373f;
import p099j7.EnumC4369b;
import p108k7.C4478a;
import p108k7.C4484c;
import p108k7.C4497g;
import p108k7.C4500h;
import p108k7.C4510i;
import p108k7.C4521m;
import p108k7.EnumC4488d;
import p108k7.InterfaceC4513j;
import p124m5.C4638c;
import p161q6.InterfaceC5434b;
import p170r6.InterfaceC6538g;
import p223x6.C7391a;
import p223x6.C7393c;
import p231y6.C7515a;
import p239z6.C7873a;
/* renamed from: i7.k */
/* loaded from: classes2.dex */
public class C4153k implements C7515a.InterfaceC7517b {

    /* renamed from: C */
    public static final C1078a f17790C = C1078a.m24639e();

    /* renamed from: D */
    public static final C4153k f17791D = new C4153k();

    /* renamed from: A */
    public String f17792A;

    /* renamed from: a */
    public final Map<String, Integer> f17794a;

    /* renamed from: k */
    public C4638c f17797k;

    /* renamed from: p */
    public C7393c f17798p;

    /* renamed from: q */
    public InterfaceC6538g f17799q;

    /* renamed from: r */
    public InterfaceC5434b<InterfaceC3508g> f17800r;

    /* renamed from: s */
    public C4143b f17801s;

    /* renamed from: u */
    public Context f17803u;

    /* renamed from: v */
    public C7873a f17804v;

    /* renamed from: w */
    public C4145d f17805w;

    /* renamed from: x */
    public C7515a f17806x;

    /* renamed from: y */
    public C4484c.C4486b f17807y;

    /* renamed from: z */
    public String f17808z;

    /* renamed from: b */
    public final ConcurrentLinkedQueue<C4144c> f17795b = new ConcurrentLinkedQueue<>();

    /* renamed from: d */
    public final AtomicBoolean f17796d = new AtomicBoolean(false);

    /* renamed from: B */
    public boolean f17793B = false;

    /* renamed from: t */
    public ExecutorService f17802t = new ThreadPoolExecutor(0, 1, 10, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: k */
    public static C4153k m17283k() {
        return f17791D;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public /* synthetic */ void m17272v(C4144c c4144c) {
        m17296F(c4144c.f17758a, c4144c.f17759b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w */
    public /* synthetic */ void m17271w(C4521m c4521m, EnumC4488d enumC4488d) {
        m17296F(C4510i.m16149X().m16141U(c4521m), enumC4488d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y */
    public /* synthetic */ void m17269y(C4497g c4497g, EnumC4488d enumC4488d) {
        m17296F(C4510i.m16149X().m16143S(c4497g), enumC4488d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public /* synthetic */ void m17268z() {
        this.f17805w.m17315a(this.f17793B);
    }

    /* renamed from: A */
    public void m17301A(final C4497g c4497g, final EnumC4488d enumC4488d) {
        this.f17802t.execute(new Runnable() { // from class: i7.i
            @Override // java.lang.Runnable
            public final void run() {
                C4153k.this.m17269y(c4497g, enumC4488d);
            }
        });
    }

    /* renamed from: B */
    public void m17300B(final C4500h c4500h, final EnumC4488d enumC4488d) {
        this.f17802t.execute(new Runnable() { // from class: i7.g
            @Override // java.lang.Runnable
            public final void run() {
                C4153k.this.m17270x(c4500h, enumC4488d);
            }
        });
    }

    /* renamed from: C */
    public void m17299C(final C4521m c4521m, final EnumC4488d enumC4488d) {
        this.f17802t.execute(new Runnable() { // from class: i7.e
            @Override // java.lang.Runnable
            public final void run() {
                C4153k.this.m17271w(c4521m, enumC4488d);
            }
        });
    }

    /* renamed from: u */
    public boolean m17273u() {
        return this.f17796d.get();
    }

    /* renamed from: l */
    public static String m17282l(C4497g c4497g) {
        return String.format(Locale.ENGLISH, "gauges (hasMetadata: %b, cpuGaugeCount: %d, memoryGaugeCount: %d)", Boolean.valueOf(c4497g.m16237d0()), Integer.valueOf(c4497g.m16240a0()), Integer.valueOf(c4497g.m16241Z()));
    }

    /* renamed from: p */
    public static String m17278p(Context context) {
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            return str == null ? "" : str;
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }

    /* renamed from: E */
    public final void m17297E() {
        Context m15899h = this.f17797k.m15899h();
        this.f17803u = m15899h;
        this.f17808z = m15899h.getPackageName();
        this.f17804v = C7873a.m75f();
        this.f17805w = new C4145d(this.f17803u, new C4373f(100L, 1L, TimeUnit.MINUTES), 500L);
        this.f17806x = C7515a.m1326b();
        this.f17801s = new C4143b(this.f17800r, this.f17804v.m80a());
        m17286h();
    }

    /* renamed from: G */
    public final void m17295G() {
        if (this.f17804v.m87I()) {
            if (this.f17807y.m16286Q() && !this.f17793B) {
                return;
            }
            String str = null;
            try {
                str = (String) C4352l.m16770a(this.f17799q.getId(), 60000L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                f17790C.m24640d("Task to retrieve Installation Id is interrupted: %s", e.getMessage());
            } catch (ExecutionException e2) {
                f17790C.m24640d("Unable to retrieve Installation Id: %s", e2.getMessage());
            } catch (TimeoutException e3) {
                f17790C.m24640d("Task to retrieve Installation Id is timed out: %s", e3.getMessage());
            }
            if (!TextUtils.isEmpty(str)) {
                this.f17807y.m16283U(str);
            } else {
                f17790C.m24635i("Firebase Installation Id is empty, contact Firebase Support for debugging.");
            }
        }
    }

    /* renamed from: H */
    public final void m17294H() {
        if (this.f17798p == null && m17273u()) {
            this.f17798p = C7393c.m1585c();
        }
    }

    /* renamed from: h */
    public final void m17286h() {
        this.f17806x.m1317k(new WeakReference<>(f17791D));
        C4484c.C4486b m16291e0 = C4484c.m16291e0();
        this.f17807y = m16291e0;
        m16291e0.m16281W(this.f17797k.m15896k().m15876c()).m16284T(C4478a.m16320X().m16316Q(this.f17808z).m16315S(C7391a.f36985b).m16314T(m17278p(this.f17803u)));
        this.f17796d.set(true);
        while (!this.f17795b.isEmpty()) {
            final C4144c poll = this.f17795b.poll();
            if (poll != null) {
                this.f17802t.execute(new Runnable() { // from class: i7.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        C4153k.this.m17272v(poll);
                    }
                });
            }
        }
    }

    @Override // p231y6.C7515a.InterfaceC7517b
    public void onUpdateAppState(EnumC4488d enumC4488d) {
        boolean z;
        if (enumC4488d == EnumC4488d.FOREGROUND) {
            z = true;
        } else {
            z = false;
        }
        this.f17793B = z;
        if (m17273u()) {
            this.f17802t.execute(new Runnable() { // from class: i7.h
                @Override // java.lang.Runnable
                public final void run() {
                    C4153k.this.m17268z();
                }
            });
        }
    }

    /* renamed from: r */
    public void m17276r(C4638c c4638c, InterfaceC6538g interfaceC6538g, InterfaceC5434b<InterfaceC3508g> interfaceC5434b) {
        this.f17797k = c4638c;
        this.f17792A = c4638c.m15896k().m15874e();
        this.f17799q = interfaceC6538g;
        this.f17800r = interfaceC5434b;
        this.f17802t.execute(new Runnable() { // from class: i7.f
            @Override // java.lang.Runnable
            public final void run() {
                C4153k.this.m17297E();
            }
        });
    }

    /* renamed from: s */
    public final boolean m17275s(InterfaceC4513j interfaceC4513j) {
        int intValue = this.f17794a.get("KEY_AVAILABLE_TRACES_FOR_CACHING").intValue();
        int intValue2 = this.f17794a.get("KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING").intValue();
        int intValue3 = this.f17794a.get("KEY_AVAILABLE_GAUGES_FOR_CACHING").intValue();
        if (interfaceC4513j.mo16139i() && intValue > 0) {
            this.f17794a.put("KEY_AVAILABLE_TRACES_FOR_CACHING", Integer.valueOf(intValue - 1));
            return true;
        } else if (interfaceC4513j.mo16137n() && intValue2 > 0) {
            this.f17794a.put("KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING", Integer.valueOf(intValue2 - 1));
            return true;
        } else if (interfaceC4513j.mo16140b() && intValue3 > 0) {
            this.f17794a.put("KEY_AVAILABLE_GAUGES_FOR_CACHING", Integer.valueOf(intValue3 - 1));
            return true;
        } else {
            f17790C.m24642b("%s is not allowed to cache. Cache exhausted the limit (availableTracesForCaching: %d, availableNetworkRequestsForCaching: %d, availableGaugesForCaching: %d).", m17280n(interfaceC4513j), Integer.valueOf(intValue), Integer.valueOf(intValue2), Integer.valueOf(intValue3));
            return false;
        }
    }

    /* renamed from: t */
    public final boolean m17274t(C4510i c4510i) {
        if (!this.f17804v.m87I()) {
            f17790C.m24637g("Performance collection is not enabled, dropping %s", m17280n(c4510i));
            return false;
        } else if (!c4510i.m16151V().m16295a0()) {
            f17790C.m24634j("App Instance ID is null or empty, dropping %s", m17280n(c4510i));
            return false;
        } else if (!AbstractC3393e.m18979b(c4510i, this.f17803u)) {
            f17790C.m24634j("Unable to process the PerfMetric (%s) due to missing or invalid values. See earlier log statements for additional information on the specific missing/invalid values.", m17280n(c4510i));
            return false;
        } else if (this.f17805w.m17314b(c4510i)) {
            return true;
        } else {
            m17277q(c4510i);
            if (c4510i.mo16139i()) {
                f17790C.m24637g("Rate Limited - %s", m17279o(c4510i.mo16138j()));
            } else if (c4510i.mo16137n()) {
                f17790C.m24637g("Rate Limited - %s", m17281m(c4510i.mo16136o()));
            }
            return false;
        }
    }

    public C4153k() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f17794a = concurrentHashMap;
        concurrentHashMap.put("KEY_AVAILABLE_TRACES_FOR_CACHING", 50);
        concurrentHashMap.put("KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING", 50);
        concurrentHashMap.put("KEY_AVAILABLE_GAUGES_FOR_CACHING", 50);
    }

    /* renamed from: m */
    public static String m17281m(C4500h c4500h) {
        long j;
        String str;
        if (c4500h.m16180z0()) {
            j = c4500h.m16189q0();
        } else {
            j = 0;
        }
        if (c4500h.m16184v0()) {
            str = String.valueOf(c4500h.m16195k0());
        } else {
            str = "UNKNOWN";
        }
        Locale locale = Locale.ENGLISH;
        double d = j;
        Double.isNaN(d);
        return String.format(locale, "network request trace: %s (responseCode: %s, responseTime: %.4fms)", c4500h.m16187s0(), str, Double.valueOf(d / 1000.0d));
    }

    /* renamed from: n */
    public static String m17280n(InterfaceC4513j interfaceC4513j) {
        if (interfaceC4513j.mo16139i()) {
            return m17279o(interfaceC4513j.mo16138j());
        }
        if (interfaceC4513j.mo16137n()) {
            return m17281m(interfaceC4513j.mo16136o());
        }
        if (interfaceC4513j.mo16140b()) {
            return m17282l(interfaceC4513j.mo16135t());
        }
        return "log";
    }

    /* renamed from: o */
    public static String m17279o(C4521m c4521m) {
        long m16099k0 = c4521m.m16099k0();
        Locale locale = Locale.ENGLISH;
        double d = m16099k0;
        Double.isNaN(d);
        return String.format(locale, "trace metric: %s (duration: %.4fms)", c4521m.m16096n0(), Double.valueOf(d / 1000.0d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public /* synthetic */ void m17270x(C4500h c4500h, EnumC4488d enumC4488d) {
        m17296F(C4510i.m16149X().m16142T(c4500h), enumC4488d);
    }

    /* renamed from: D */
    public final C4510i m17298D(C4510i.C4512b c4512b, EnumC4488d enumC4488d) {
        m17295G();
        C4484c.C4486b m16282V = this.f17807y.m16282V(enumC4488d);
        if (c4512b.mo16139i()) {
            m16282V = m16282V.clone().m16285S(m17284j());
        }
        return c4512b.m16144Q(m16282V).build();
    }

    /* renamed from: F */
    public final void m17296F(C4510i.C4512b c4512b, EnumC4488d enumC4488d) {
        if (!m17273u()) {
            if (m17275s(c4512b)) {
                f17790C.m24642b("Transport is not initialized yet, %s will be queued for to be dispatched later", m17280n(c4512b));
                this.f17795b.add(new C4144c(c4512b, enumC4488d));
                return;
            }
            return;
        }
        C4510i m17298D = m17298D(c4512b, enumC4488d);
        if (m17274t(m17298D)) {
            m17287g(m17298D);
            SessionManager.getInstance().updatePerfSessionIfExpired();
        }
    }

    /* renamed from: g */
    public final void m17287g(C4510i c4510i) {
        if (c4510i.mo16139i()) {
            f17790C.m24637g("Logging %s. In a minute, visit the Firebase console to view your data: %s", m17280n(c4510i), m17285i(c4510i.mo16138j()));
        } else {
            f17790C.m24637g("Logging %s", m17280n(c4510i));
        }
        this.f17801s.m17316b(c4510i);
    }

    /* renamed from: i */
    public final String m17285i(C4521m c4521m) {
        String m16096n0 = c4521m.m16096n0();
        if (m16096n0.startsWith("_st_")) {
            return C1079b.m24631c(this.f17792A, this.f17808z, m16096n0);
        }
        return C1079b.m24633a(this.f17792A, this.f17808z, m16096n0);
    }

    /* renamed from: j */
    public final Map<String, String> m17284j() {
        m17294H();
        C7393c c7393c = this.f17798p;
        if (c7393c != null) {
            return c7393c.m1586b();
        }
        return Collections.emptyMap();
    }

    /* renamed from: q */
    public final void m17277q(C4510i c4510i) {
        if (c4510i.mo16139i()) {
            this.f17806x.m1323e(EnumC4369b.TRACE_EVENT_RATE_LIMITED.toString(), 1L);
        } else if (c4510i.mo16137n()) {
            this.f17806x.m1323e(EnumC4369b.NETWORK_TRACE_EVENT_RATE_LIMITED.toString(), 1L);
        }
    }
}
