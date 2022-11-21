package com.google.firebase.perf.metrics;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.firebase.perf.provider.FirebasePerfProvider;
import com.google.firebase.perf.session.SessionManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import p029c7.C1078a;
import p090i7.C4153k;
import p099j7.C4368a;
import p099j7.C4381h;
import p099j7.EnumC4370c;
import p108k7.C4521m;
import p108k7.EnumC4488d;
/* loaded from: classes2.dex */
public class AppStartTrace implements Application.ActivityLifecycleCallbacks {

    /* renamed from: w */
    public static final long f7842w = TimeUnit.MINUTES.toMicros(1);

    /* renamed from: x */
    public static volatile AppStartTrace f7843x;

    /* renamed from: b */
    public final C4153k f7845b;

    /* renamed from: d */
    public final C4368a f7846d;

    /* renamed from: k */
    public Context f7847k;

    /* renamed from: p */
    public WeakReference<Activity> f7848p;

    /* renamed from: q */
    public WeakReference<Activity> f7849q;

    /* renamed from: a */
    public boolean f7844a = false;

    /* renamed from: r */
    public boolean f7850r = false;

    /* renamed from: s */
    public C4381h f7851s = null;

    /* renamed from: t */
    public C4381h f7852t = null;

    /* renamed from: u */
    public C4381h f7853u = null;

    /* renamed from: v */
    public boolean f7854v = false;

    /* renamed from: com.google.firebase.perf.metrics.AppStartTrace$a */
    /* loaded from: classes2.dex */
    public static class RunnableC1429a implements Runnable {

        /* renamed from: a */
        public final AppStartTrace f7855a;

        @Override // java.lang.Runnable
        public void run() {
            if (this.f7855a.f7851s == null) {
                this.f7855a.f7854v = true;
            }
        }

        public RunnableC1429a(AppStartTrace appStartTrace) {
            this.f7855a = appStartTrace;
        }
    }

    /* renamed from: c */
    public static AppStartTrace m22951c() {
        return f7843x != null ? f7843x : m22950d(C4153k.m17283k(), new C4368a());
    }

    @Keep
    public static void setLauncherActivityOnCreateTime(String str) {
    }

    @Keep
    public static void setLauncherActivityOnResumeTime(String str) {
    }

    @Keep
    public static void setLauncherActivityOnStartTime(String str) {
    }

    /* renamed from: e */
    public synchronized void m22949e(Context context) {
        if (this.f7844a) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
            this.f7844a = true;
            this.f7847k = applicationContext;
        }
    }

    /* renamed from: f */
    public synchronized void m22948f() {
        if (!this.f7844a) {
            return;
        }
        ((Application) this.f7847k).unregisterActivityLifecycleCallbacks(this);
        this.f7844a = false;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityCreated(Activity activity, Bundle bundle) {
        if (!this.f7854v && this.f7851s == null) {
            this.f7848p = new WeakReference<>(activity);
            this.f7851s = this.f7846d.m16746a();
            if (FirebasePerfProvider.getAppStartTime().m16731j(this.f7851s) > f7842w) {
                this.f7850r = true;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityResumed(Activity activity) {
        if (!this.f7854v && this.f7853u == null && !this.f7850r) {
            this.f7849q = new WeakReference<>(activity);
            this.f7853u = this.f7846d.m16746a();
            C4381h appStartTime = FirebasePerfProvider.getAppStartTime();
            C1078a m24639e = C1078a.m24639e();
            m24639e.m24643a("onResume(): " + activity.getClass().getName() + ": " + appStartTime.m16731j(this.f7853u) + " microseconds");
            C4521m.C4523b m16076Z = C4521m.m16088v0().m16075a0(EnumC4370c.APP_START_TRACE_NAME.toString()).m16077Y(appStartTime.m16730l()).m16076Z(appStartTime.m16731j(this.f7853u));
            ArrayList arrayList = new ArrayList(3);
            arrayList.add(C4521m.m16088v0().m16075a0(EnumC4370c.ON_CREATE_TRACE_NAME.toString()).m16077Y(appStartTime.m16730l()).m16076Z(appStartTime.m16731j(this.f7851s)).build());
            C4521m.C4523b m16088v0 = C4521m.m16088v0();
            m16088v0.m16075a0(EnumC4370c.ON_START_TRACE_NAME.toString()).m16077Y(this.f7851s.m16730l()).m16076Z(this.f7851s.m16731j(this.f7852t));
            arrayList.add(m16088v0.build());
            C4521m.C4523b m16088v02 = C4521m.m16088v0();
            m16088v02.m16075a0(EnumC4370c.ON_RESUME_TRACE_NAME.toString()).m16077Y(this.f7852t.m16730l()).m16076Z(this.f7852t.m16731j(this.f7853u));
            arrayList.add(m16088v02.build());
            m16076Z.m16083S(arrayList).m16082T(SessionManager.getInstance().perfSession().m17798a());
            this.f7845b.m17299C(m16076Z.build(), EnumC4488d.FOREGROUND_BACKGROUND);
            if (this.f7844a) {
                m22948f();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityStarted(Activity activity) {
        if (!this.f7854v && this.f7852t == null && !this.f7850r) {
            this.f7852t = this.f7846d.m16746a();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityStopped(Activity activity) {
    }

    /* renamed from: d */
    public static AppStartTrace m22950d(C4153k c4153k, C4368a c4368a) {
        if (f7843x == null) {
            synchronized (AppStartTrace.class) {
                if (f7843x == null) {
                    f7843x = new AppStartTrace(c4153k, c4368a);
                }
            }
        }
        return f7843x;
    }

    public AppStartTrace(C4153k c4153k, C4368a c4368a) {
        this.f7845b = c4153k;
        this.f7846d = c4368a;
    }
}
