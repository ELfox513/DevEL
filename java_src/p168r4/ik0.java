package p168r4;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.lang.reflect.Method;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p016b3.C0543w1;
import p026c4.C1044e;
import p060f4.BinderC3514b;
import p185t3.C6756m;
import p203v3.C7013g1;
/* renamed from: r4.ik0 */
/* loaded from: classes2.dex */
public final class ik0 {

    /* renamed from: a */
    public final AtomicReference<ExecutorService> f25142a = new AtomicReference<>(null);

    /* renamed from: b */
    public final Object f25143b = new Object();

    /* renamed from: c */
    public String f25144c = null;

    /* renamed from: d */
    public String f25145d = null;

    /* renamed from: e */
    public final AtomicBoolean f25146e = new AtomicBoolean(false);

    /* renamed from: f */
    public final AtomicInteger f25147f = new AtomicInteger(-1);

    /* renamed from: g */
    public final AtomicReference<Object> f25148g = new AtomicReference<>(null);

    /* renamed from: h */
    public final AtomicReference<Object> f25149h = new AtomicReference<>(null);

    /* renamed from: i */
    public final ConcurrentMap<String, Method> f25150i = new ConcurrentHashMap(9);

    /* renamed from: j */
    public final AtomicReference<xt0> f25151j = new AtomicReference<>(null);

    /* renamed from: k */
    public final BlockingQueue<FutureTask<?>> f25152k = new ArrayBlockingQueue(20);

    /* renamed from: l */
    public final Object f25153l = new Object();

    /* renamed from: j */
    public final void m10619j(final Bundle bundle) {
        m10625d("setConsent", new gk0(bundle) { // from class: r4.qj0

            /* renamed from: a */
            public final Bundle f30159a;

            {
                this.f30159a = bundle;
            }

            @Override // p168r4.gk0
            /* renamed from: a */
            public final void mo4197a(xt0 xt0Var) {
                xt0Var.mo4993r0(this.f30159a);
            }
        });
    }

    /* renamed from: s */
    public final void m10610s(Context context, String str) {
        m10632B(context, "_ac", str, null);
    }

    /* renamed from: t */
    public final void m10609t(Context context, String str) {
        m10632B(context, "_ai", str, null);
    }

    /* renamed from: u */
    public final void m10608u(Context context, String str) {
        m10632B(context, "_aq", str, null);
    }

    /* renamed from: v */
    public final void m10607v(Context context, String str) {
        m10632B(context, "_aa", str, null);
    }

    /* renamed from: y */
    public final /* synthetic */ String m10604y(Context context) {
        return (String) m10629E("getAppInstanceId", context);
    }

    /* renamed from: z */
    public final /* synthetic */ String m10603z() {
        return (String) m10624e("getAppInstanceId", null, vj0.f32734a);
    }

    /* renamed from: A */
    public static final boolean m10633A(Context context) {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30985c0)).booleanValue()) {
            return false;
        }
        if (DynamiteModule.m23007a(context, ModuleDescriptor.MODULE_ID) < ((Integer) C5592av.m12935c().m8098c(C6225rz.f30994d0)).intValue()) {
            return false;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31002e0)).booleanValue()) {
            try {
                context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                return false;
            } catch (ClassNotFoundException unused) {
            }
        }
        return true;
    }

    /* renamed from: B */
    public final void m10632B(Context context, final String str, String str2, Bundle bundle) {
        String str3;
        if (m10622g(context)) {
            final Bundle bundle2 = new Bundle();
            try {
                bundle2.putLong("_aeid", Long.parseLong(str2));
            } catch (NullPointerException | NumberFormatException e) {
                String valueOf = String.valueOf(str2);
                if (valueOf.length() != 0) {
                    str3 = "Invalid event ID: ".concat(valueOf);
                } else {
                    str3 = new String("Invalid event ID: ");
                }
                cm0.m12439d(str3, e);
            }
            if ("_ac".equals(str)) {
                bundle2.putInt("_r", 1);
            }
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            if (m10633A(context)) {
                m10625d("logEventInternal", new gk0(str, bundle2) { // from class: r4.tj0

                    /* renamed from: a */
                    public final String f31875a;

                    /* renamed from: b */
                    public final Bundle f31876b;

                    {
                        this.f31875a = str;
                        this.f31876b = bundle2;
                    }

                    @Override // p168r4.gk0
                    /* renamed from: a */
                    public final void mo4197a(xt0 xt0Var) {
                        xt0Var.mo4992u1("am", this.f31875a, this.f31876b);
                    }
                });
            } else if (m10626c(context, "com.google.android.gms.measurement.AppMeasurement", this.f25148g, true)) {
                Method method = this.f25150i.get("logEventInternal");
                if (method == null) {
                    try {
                        method = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
                        this.f25150i.put("logEventInternal", method);
                    } catch (Exception unused) {
                        m10628a("logEventInternal", true);
                        method = null;
                    }
                }
                try {
                    method.invoke(this.f25148g.get(), "am", str, bundle2);
                } catch (Exception unused2) {
                    m10628a("logEventInternal", true);
                }
            }
        }
    }

    /* renamed from: C */
    public final Method m10631C(Context context, String str) {
        Method method = this.f25150i.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
            this.f25150i.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception unused) {
            m10628a(str, false);
            return null;
        }
    }

    /* renamed from: D */
    public final void m10630D(Context context, String str, String str2) {
        if (m10626c(context, "com.google.android.gms.measurement.AppMeasurement", this.f25148g, true)) {
            Method method = this.f25150i.get(str2);
            if (method == null) {
                try {
                    method = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str2, String.class);
                    this.f25150i.put(str2, method);
                } catch (Exception unused) {
                    m10628a(str2, false);
                    method = null;
                }
            }
            try {
                method.invoke(this.f25148g.get(), str);
                StringBuilder sb = new StringBuilder(str2.length() + 37 + String.valueOf(str).length());
                sb.append("Invoke Firebase method ");
                sb.append(str2);
                sb.append(", Ad Unit Id: ");
                sb.append(str);
                C0543w1.m26251k(sb.toString());
            } catch (Exception unused2) {
                m10628a(str2, false);
            }
        }
    }

    /* renamed from: E */
    public final Object m10629E(String str, Context context) {
        if (!m10626c(context, "com.google.android.gms.measurement.AppMeasurement", this.f25148g, true)) {
            return null;
        }
        try {
            return m10631C(context, str).invoke(this.f25148g.get(), new Object[0]);
        } catch (Exception unused) {
            m10628a(str, true);
            return null;
        }
    }

    /* renamed from: a */
    public final void m10628a(String str, boolean z) {
        if (!this.f25146e.get()) {
            StringBuilder sb = new StringBuilder(str.length() + 30);
            sb.append("Invoke Firebase method ");
            sb.append(str);
            sb.append(" error.");
            cm0.m12437f(sb.toString());
            if (z) {
                cm0.m12437f("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
                this.f25146e.set(true);
            }
        }
    }

    /* renamed from: b */
    public final ExecutorService m10627b() {
        ExecutorService threadPoolExecutor;
        if (this.f25142a.get() == null) {
            if (C1044e.m24774a()) {
                threadPoolExecutor = a03.m13063a().mo4504a(((Integer) C5592av.m12935c().m8098c(C6225rz.f30976b0)).intValue(), new ek0(this), 2);
            } else {
                AbstractC5928jz<Integer> abstractC5928jz = C6225rz.f30976b0;
                threadPoolExecutor = new ThreadPoolExecutor(((Integer) C5592av.m12935c().m8098c(abstractC5928jz)).intValue(), ((Integer) C5592av.m12935c().m8098c(abstractC5928jz)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new ek0(this));
            }
            C7013g1.m2669a(this.f25142a, null, threadPoolExecutor);
        }
        return this.f25142a.get();
    }

    /* renamed from: c */
    public final boolean m10626c(Context context, String str, AtomicReference<Object> atomicReference, boolean z) {
        if (atomicReference.get() == null) {
            try {
                C7013g1.m2669a(atomicReference, null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
            } catch (Exception unused) {
                m10628a("getInstance", z);
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    public final void m10625d(final String str, final gk0 gk0Var) {
        synchronized (this.f25151j) {
            FutureTask<?> futureTask = new FutureTask<>(new Runnable(this, gk0Var, str) { // from class: r4.uj0

                /* renamed from: a */
                public final ik0 f32299a;

                /* renamed from: b */
                public final gk0 f32300b;

                /* renamed from: d */
                public final String f32301d;

                {
                    this.f32299a = this;
                    this.f32300b = gk0Var;
                    this.f32301d = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f32299a.m10605x(this.f32300b, this.f32301d);
                }
            }, null);
            if (this.f25151j.get() != null) {
                futureTask.run();
            } else {
                this.f25152k.offer(futureTask);
            }
        }
    }

    /* renamed from: e */
    public final <T> T m10624e(String str, T t, fk0<T> fk0Var) {
        synchronized (this.f25151j) {
            if (this.f25151j.get() != null) {
                try {
                    return fk0Var.mo4679a(this.f25151j.get());
                } catch (Exception unused) {
                    m10628a(str, false);
                }
            }
            return t;
        }
    }

    /* renamed from: f */
    public final boolean m10623f() {
        synchronized (this.f25153l) {
        }
        return false;
    }

    /* renamed from: g */
    public final boolean m10622g(Context context) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30926V)).booleanValue() && !this.f25146e.get()) {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31010f0)).booleanValue()) {
                return true;
            }
            if (this.f25147f.get() == -1) {
                C6479yu.m4568a();
                if (!vl0.m6116l(context, C6756m.f35427a)) {
                    C6479yu.m4568a();
                    if (vl0.m6115m(context)) {
                        cm0.m12437f("Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service.");
                        this.f25147f.set(0);
                    }
                }
                this.f25147f.set(1);
            }
            if (this.f25147f.get() == 1) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public final void m10620i(Context context, C6293tt c6293tt) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31026h0)).booleanValue() && m10622g(context) && m10633A(context)) {
            synchronized (this.f25153l) {
            }
        }
    }

    /* renamed from: m */
    public final String m10616m(Context context) {
        if (!m10622g(context)) {
            return "";
        }
        if (m10633A(context)) {
            return (String) m10624e("getCurrentScreenNameOrScreenClass", "", yj0.f34104a);
        }
        if (!m10626c(context, "com.google.android.gms.measurement.AppMeasurement", this.f25148g, true)) {
            return "";
        }
        try {
            String str = (String) m10631C(context, "getCurrentScreenName").invoke(this.f25148g.get(), new Object[0]);
            if (str == null) {
                str = (String) m10631C(context, "getCurrentScreenClass").invoke(this.f25148g.get(), new Object[0]);
            }
            if (str == null) {
                return "";
            }
            return str;
        } catch (Exception unused) {
            m10628a("getCurrentScreenName", false);
            return "";
        }
    }

    @Deprecated
    /* renamed from: n */
    public final void m10615n(final Context context, final String str) {
        if (!m10622g(context) || !(context instanceof Activity)) {
            return;
        }
        if (m10633A(context)) {
            m10625d("setScreenName", new gk0(context, str) { // from class: r4.zj0

                /* renamed from: a */
                public final Context f34649a;

                /* renamed from: b */
                public final String f34650b;

                {
                    this.f34649a = context;
                    this.f34650b = str;
                }

                @Override // p168r4.gk0
                /* renamed from: a */
                public final void mo4197a(xt0 xt0Var) {
                    Context context2 = this.f34649a;
                    xt0Var.mo4990z3(BinderC3514b.m18741L0(context2), this.f34650b, context2.getPackageName());
                }
            });
        } else if (m10626c(context, "com.google.firebase.analytics.FirebaseAnalytics", this.f25149h, false)) {
            Method method = this.f25150i.get("setCurrentScreen");
            if (method == null) {
                try {
                    method = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("setCurrentScreen", Activity.class, String.class, String.class);
                    this.f25150i.put("setCurrentScreen", method);
                } catch (Exception unused) {
                    m10628a("setCurrentScreen", false);
                    method = null;
                }
            }
            try {
                method.invoke(this.f25149h.get(), (Activity) context, str, context.getPackageName());
            } catch (Exception unused2) {
                m10628a("setCurrentScreen", false);
            }
        }
    }

    /* renamed from: x */
    public final /* synthetic */ void m10605x(gk0 gk0Var, String str) {
        if (this.f25151j.get() != null) {
            try {
                gk0Var.mo4197a(this.f25151j.get());
            } catch (Exception unused) {
                m10628a(str, false);
            }
        }
    }

    /* renamed from: h */
    public final void m10621h(Context context, C6261sy c6261sy) {
        jk0.m10256d(context).mo8790b().m10021c(c6261sy);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31026h0)).booleanValue() && m10622g(context) && m10633A(context)) {
            synchronized (this.f25153l) {
            }
        }
    }

    /* renamed from: k */
    public final void m10618k(Context context, final String str) {
        if (!m10622g(context)) {
            return;
        }
        if (m10633A(context)) {
            m10625d("beginAdUnitExposure", new gk0(str) { // from class: r4.wj0

                /* renamed from: a */
                public final String f33203a;

                {
                    this.f33203a = str;
                }

                @Override // p168r4.gk0
                /* renamed from: a */
                public final void mo4197a(xt0 xt0Var) {
                    xt0Var.mo5008B0(this.f33203a);
                }
            });
        } else {
            m10630D(context, str, "beginAdUnitExposure");
        }
    }

    /* renamed from: l */
    public final void m10617l(Context context, final String str) {
        if (!m10622g(context)) {
            return;
        }
        if (m10633A(context)) {
            m10625d("endAdUnitExposure", new gk0(str) { // from class: r4.xj0

                /* renamed from: a */
                public final String f33615a;

                {
                    this.f33615a = str;
                }

                @Override // p168r4.gk0
                /* renamed from: a */
                public final void mo4197a(xt0 xt0Var) {
                    xt0Var.mo5005J0(this.f33615a);
                }
            });
        } else {
            m10630D(context, str, "endAdUnitExposure");
        }
    }

    /* renamed from: o */
    public final String m10614o(Context context) {
        if (!m10622g(context)) {
            return null;
        }
        synchronized (this.f25143b) {
            String str = this.f25144c;
            if (str != null) {
                return str;
            }
            if (m10633A(context)) {
                this.f25144c = (String) m10624e("getGmpAppId", this.f25144c, ak0.f20520a);
            } else {
                this.f25144c = (String) m10629E("getGmpAppId", context);
            }
            return this.f25144c;
        }
    }

    /* renamed from: p */
    public final String m10613p(final Context context) {
        if (!m10622g(context)) {
            return null;
        }
        long longValue = ((Long) C5592av.m12935c().m8098c(C6225rz.f30967a0)).longValue();
        if (m10633A(context)) {
            try {
                if (longValue < 0) {
                    return (String) m10624e("getAppInstanceId", null, bk0.f21087a);
                }
                return (String) m10627b().submit(new Callable(this) { // from class: r4.ck0

                    /* renamed from: a */
                    public final ik0 f21568a;

                    {
                        this.f21568a = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f21568a.m10603z();
                    }
                }).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException unused) {
                return "TIME_OUT";
            } catch (Exception unused2) {
                return null;
            }
        } else if (longValue < 0) {
            return (String) m10629E("getAppInstanceId", context);
        } else {
            try {
                return (String) m10627b().submit(new Callable(this, context) { // from class: r4.dk0

                    /* renamed from: a */
                    public final ik0 f22305a;

                    /* renamed from: b */
                    public final Context f22306b;

                    {
                        this.f22305a = this;
                        this.f22306b = context;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f22305a.m10604y(this.f22306b);
                    }
                }).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException unused3) {
                return "TIME_OUT";
            } catch (Exception unused4) {
                return null;
            }
        }
    }

    /* renamed from: q */
    public final String m10612q(Context context) {
        if (!m10622g(context)) {
            return null;
        }
        if (m10633A(context)) {
            Long l = (Long) m10624e("getAdEventId", null, rj0.f30603a);
            if (l == null) {
                return null;
            }
            return Long.toString(l.longValue());
        }
        Object m10629E = m10629E("generateEventId", context);
        if (m10629E == null) {
            return null;
        }
        return m10629E.toString();
    }

    /* renamed from: r */
    public final String m10611r(Context context) {
        if (!m10622g(context)) {
            return null;
        }
        synchronized (this.f25143b) {
            String str = this.f25145d;
            if (str != null) {
                return str;
            }
            if (m10633A(context)) {
                this.f25145d = (String) m10624e("getAppIdOrigin", this.f25145d, sj0.f31379a);
            } else {
                this.f25145d = "fa";
            }
            return this.f25145d;
        }
    }

    /* renamed from: w */
    public final void m10606w(Context context, String str, String str2, String str3, int i) {
        if (!m10622g(context)) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_ai", str2);
        bundle.putString("reward_type", str3);
        bundle.putInt("reward_value", i);
        m10632B(context, "_ar", str, bundle);
        StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 75);
        sb.append("Log a Firebase reward video event, reward type: ");
        sb.append(str3);
        sb.append(", reward value: ");
        sb.append(i);
        C0543w1.m26251k(sb.toString());
    }
}
