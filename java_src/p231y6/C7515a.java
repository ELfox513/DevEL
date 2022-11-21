package p231y6;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.SparseIntArray;
import com.google.firebase.perf.metrics.Trace;
import com.google.firebase.perf.session.SessionManager;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import p029c7.C1078a;
import p090i7.C4153k;
import p099j7.C4368a;
import p099j7.C4381h;
import p099j7.C4385k;
import p099j7.EnumC4369b;
import p099j7.EnumC4370c;
import p108k7.C4521m;
import p108k7.EnumC4488d;
import p163r.C5472l;
import p239z6.C7873a;
/* renamed from: y6.a */
/* loaded from: classes2.dex */
public class C7515a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: B */
    public static final C1078a f37362B = C1078a.m24639e();

    /* renamed from: C */
    public static volatile C7515a f37363C;

    /* renamed from: A */
    public boolean f37364A;

    /* renamed from: r */
    public final C4153k f37371r;

    /* renamed from: t */
    public final C4368a f37373t;

    /* renamed from: u */
    public C5472l f37374u;

    /* renamed from: v */
    public C4381h f37375v;

    /* renamed from: w */
    public C4381h f37376w;

    /* renamed from: a */
    public final WeakHashMap<Activity, Boolean> f37365a = new WeakHashMap<>();

    /* renamed from: b */
    public final WeakHashMap<Activity, Trace> f37366b = new WeakHashMap<>();

    /* renamed from: d */
    public final Map<String, Long> f37367d = new HashMap();

    /* renamed from: k */
    public final Set<WeakReference<InterfaceC7517b>> f37368k = new HashSet();

    /* renamed from: p */
    public Set<InterfaceC7516a> f37369p = new HashSet();

    /* renamed from: q */
    public final AtomicInteger f37370q = new AtomicInteger(0);

    /* renamed from: x */
    public EnumC4488d f37377x = EnumC4488d.BACKGROUND;

    /* renamed from: y */
    public boolean f37378y = false;

    /* renamed from: z */
    public boolean f37379z = true;

    /* renamed from: s */
    public final C7873a f37372s = C7873a.m75f();

    /* renamed from: y6.a$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC7516a {
        /* renamed from: a */
        void mo1311a();
    }

    /* renamed from: y6.a$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC7517b {
        void onUpdateAppState(EnumC4488d enumC4488d);
    }

    /* renamed from: c */
    public static String m1325c(Activity activity) {
        return "_st_" + activity.getClass().getSimpleName();
    }

    /* renamed from: a */
    public EnumC4488d m1327a() {
        return this.f37377x;
    }

    /* renamed from: d */
    public final boolean m1324d() {
        return true;
    }

    /* renamed from: f */
    public void m1322f(int i) {
        this.f37370q.addAndGet(i);
    }

    /* renamed from: g */
    public boolean m1321g() {
        return this.f37379z;
    }

    /* renamed from: h */
    public final boolean m1320h(Activity activity) {
        return this.f37364A;
    }

    /* renamed from: i */
    public synchronized void m1319i(Context context) {
        if (this.f37378y) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
            this.f37378y = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityResumed(Activity activity) {
        if (this.f37365a.isEmpty()) {
            this.f37375v = this.f37373t.m16746a();
            this.f37365a.put(activity, Boolean.TRUE);
            m1312p(EnumC4488d.FOREGROUND);
            if (this.f37379z) {
                m1316l();
                this.f37379z = false;
            } else {
                m1314n(EnumC4370c.BACKGROUND_TRACE_NAME.toString(), this.f37376w, this.f37375v);
            }
        } else {
            this.f37365a.put(activity, Boolean.TRUE);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityStarted(Activity activity) {
        if (m1320h(activity) && this.f37372s.m87I()) {
            this.f37374u.m13252a(activity);
            Trace trace = new Trace(m1325c(activity), this.f37371r, this.f37373t, this);
            trace.start();
            this.f37366b.put(activity, trace);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityStopped(Activity activity) {
        if (m1320h(activity)) {
            m1315m(activity);
        }
        if (this.f37365a.containsKey(activity)) {
            this.f37365a.remove(activity);
            if (this.f37365a.isEmpty()) {
                this.f37376w = this.f37373t.m16746a();
                m1312p(EnumC4488d.BACKGROUND);
                m1314n(EnumC4370c.FOREGROUND_TRACE_NAME.toString(), this.f37375v, this.f37376w);
            }
        }
    }

    /* renamed from: b */
    public static C7515a m1326b() {
        if (f37363C == null) {
            synchronized (C7515a.class) {
                if (f37363C == null) {
                    f37363C = new C7515a(C4153k.m17283k(), new C4368a());
                }
            }
        }
        return f37363C;
    }

    /* renamed from: e */
    public void m1323e(String str, long j) {
        synchronized (this.f37367d) {
            Long l = this.f37367d.get(str);
            if (l == null) {
                this.f37367d.put(str, Long.valueOf(j));
            } else {
                this.f37367d.put(str, Long.valueOf(l.longValue() + j));
            }
        }
    }

    /* renamed from: j */
    public void m1318j(InterfaceC7516a interfaceC7516a) {
        synchronized (this.f37368k) {
            this.f37369p.add(interfaceC7516a);
        }
    }

    /* renamed from: k */
    public void m1317k(WeakReference<InterfaceC7517b> weakReference) {
        synchronized (this.f37368k) {
            this.f37368k.add(weakReference);
        }
    }

    /* renamed from: l */
    public final void m1316l() {
        synchronized (this.f37368k) {
            for (InterfaceC7516a interfaceC7516a : this.f37369p) {
                if (interfaceC7516a != null) {
                    interfaceC7516a.mo1311a();
                }
            }
        }
    }

    /* renamed from: m */
    public final void m1315m(Activity activity) {
        Trace trace;
        int i;
        int i2;
        SparseIntArray sparseIntArray;
        if (!this.f37366b.containsKey(activity) || (trace = this.f37366b.get(activity)) == null) {
            return;
        }
        this.f37366b.remove(activity);
        SparseIntArray[] m13251b = this.f37374u.m13251b();
        int i3 = 0;
        if (m13251b != null && (sparseIntArray = m13251b[0]) != null) {
            int i4 = 0;
            i = 0;
            i2 = 0;
            while (i3 < sparseIntArray.size()) {
                int keyAt = sparseIntArray.keyAt(i3);
                int valueAt = sparseIntArray.valueAt(i3);
                i4 += valueAt;
                if (keyAt > 700) {
                    i2 += valueAt;
                }
                if (keyAt > 16) {
                    i += valueAt;
                }
                i3++;
            }
            i3 = i4;
        } else {
            i = 0;
            i2 = 0;
        }
        if (i3 > 0) {
            trace.putMetric(EnumC4369b.FRAMES_TOTAL.toString(), i3);
        }
        if (i > 0) {
            trace.putMetric(EnumC4369b.FRAMES_SLOW.toString(), i);
        }
        if (i2 > 0) {
            trace.putMetric(EnumC4369b.FRAMES_FROZEN.toString(), i2);
        }
        if (C4385k.m16723b(activity.getApplicationContext())) {
            C1078a c1078a = f37362B;
            c1078a.m24643a("sendScreenTrace name:" + m1325c(activity) + " _fr_tot:" + i3 + " _fr_slo:" + i + " _fr_fzn:" + i2);
        }
        trace.stop();
    }

    /* renamed from: n */
    public final void m1314n(String str, C4381h c4381h, C4381h c4381h2) {
        if (!this.f37372s.m87I()) {
            return;
        }
        C4521m.C4523b m16082T = C4521m.m16088v0().m16075a0(str).m16077Y(c4381h.m16730l()).m16076Z(c4381h.m16731j(c4381h2)).m16082T(SessionManager.getInstance().perfSession().m17798a());
        int andSet = this.f37370q.getAndSet(0);
        synchronized (this.f37367d) {
            m16082T.m16080V(this.f37367d);
            if (andSet != 0) {
                m16082T.m16078X(EnumC4369b.TRACE_STARTED_NOT_STOPPED.toString(), andSet);
            }
            this.f37367d.clear();
        }
        this.f37371r.m17299C(m16082T.build(), EnumC4488d.FOREGROUND_BACKGROUND);
    }

    /* renamed from: o */
    public void m1313o(WeakReference<InterfaceC7517b> weakReference) {
        synchronized (this.f37368k) {
            this.f37368k.remove(weakReference);
        }
    }

    /* renamed from: p */
    public final void m1312p(EnumC4488d enumC4488d) {
        this.f37377x = enumC4488d;
        synchronized (this.f37368k) {
            Iterator<WeakReference<InterfaceC7517b>> it = this.f37368k.iterator();
            while (it.hasNext()) {
                InterfaceC7517b interfaceC7517b = it.next().get();
                if (interfaceC7517b != null) {
                    interfaceC7517b.onUpdateAppState(this.f37377x);
                } else {
                    it.remove();
                }
            }
        }
    }

    public C7515a(C4153k c4153k, C4368a c4368a) {
        this.f37364A = false;
        this.f37371r = c4153k;
        this.f37373t = c4368a;
        boolean m1324d = m1324d();
        this.f37364A = m1324d;
        if (m1324d) {
            this.f37374u = new C5472l();
        }
    }
}
