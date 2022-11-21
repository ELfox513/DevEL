package p203v3;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import p026c4.C1054o;
/* renamed from: v3.c */
/* loaded from: classes.dex */
public final class ComponentCallbacks2C6998c implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: p */
    public static final ComponentCallbacks2C6998c f35907p = new ComponentCallbacks2C6998c();

    /* renamed from: a */
    public final AtomicBoolean f35908a = new AtomicBoolean();

    /* renamed from: b */
    public final AtomicBoolean f35909b = new AtomicBoolean();

    /* renamed from: d */
    public final ArrayList<InterfaceC6999a> f35910d = new ArrayList<>();

    /* renamed from: k */
    public boolean f35911k = false;

    /* renamed from: v3.c$a */
    /* loaded from: classes.dex */
    public interface InterfaceC6999a {
        /* renamed from: a */
        void mo2586a(boolean z);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static ComponentCallbacks2C6998c m2767b() {
        return f35907p;
    }

    /* renamed from: d */
    public boolean m2765d() {
        return this.f35908a.get();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(@RecentlyNonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(@RecentlyNonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(@RecentlyNonNull Activity activity, @RecentlyNonNull Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(@RecentlyNonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(@RecentlyNonNull Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(@RecentlyNonNull Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    /* renamed from: c */
    public static void m2766c(@RecentlyNonNull Application application) {
        ComponentCallbacks2C6998c componentCallbacks2C6998c = f35907p;
        synchronized (componentCallbacks2C6998c) {
            if (!componentCallbacks2C6998c.f35911k) {
                application.registerActivityLifecycleCallbacks(componentCallbacks2C6998c);
                application.registerComponentCallbacks(componentCallbacks2C6998c);
                componentCallbacks2C6998c.f35911k = true;
            }
        }
    }

    /* renamed from: a */
    public void m2768a(@RecentlyNonNull InterfaceC6999a interfaceC6999a) {
        synchronized (f35907p) {
            this.f35910d.add(interfaceC6999a);
        }
    }

    @TargetApi(16)
    /* renamed from: e */
    public boolean m2764e(boolean z) {
        if (!this.f35909b.get()) {
            if (C1054o.m24738c()) {
                ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                ActivityManager.getMyMemoryState(runningAppProcessInfo);
                if (!this.f35909b.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                    this.f35908a.set(true);
                }
            } else {
                return z;
            }
        }
        return m2765d();
    }

    /* renamed from: f */
    public final void m2763f(boolean z) {
        synchronized (f35907p) {
            Iterator<InterfaceC6999a> it = this.f35910d.iterator();
            while (it.hasNext()) {
                it.next().mo2586a(z);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(@RecentlyNonNull Activity activity, Bundle bundle) {
        boolean compareAndSet = this.f35908a.compareAndSet(true, false);
        this.f35909b.set(true);
        if (compareAndSet) {
            m2763f(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(@RecentlyNonNull Activity activity) {
        boolean compareAndSet = this.f35908a.compareAndSet(true, false);
        this.f35909b.set(true);
        if (compareAndSet) {
            m2763f(false);
        }
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        if (i == 20 && this.f35908a.compareAndSet(false, true)) {
            this.f35909b.set(true);
            m2763f(true);
        }
    }
}
