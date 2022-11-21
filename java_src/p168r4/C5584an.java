package p168r4;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* renamed from: r4.an */
/* loaded from: classes2.dex */
public final class C5584an implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public final Application f20543a;

    /* renamed from: b */
    public final WeakReference<Application.ActivityLifecycleCallbacks> f20544b;

    /* renamed from: d */
    public boolean f20545d = false;

    public C5584an(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f20544b = new WeakReference<>(activityLifecycleCallbacks);
        this.f20543a = application;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m12999a(new C6249sm(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m12999a(new C6471ym(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m12999a(new C6360vm(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m12999a(new C6323um(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m12999a(new C6434xm(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m12999a(new C6286tm(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m12999a(new C6397wm(this, activity));
    }

    /* renamed from: a */
    public final void m12999a(InterfaceC6508zm interfaceC6508zm) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f20544b.get();
            if (activityLifecycleCallbacks != null) {
                interfaceC6508zm.mo4186a(activityLifecycleCallbacks);
            } else if (!this.f20545d) {
                this.f20543a.unregisterActivityLifecycleCallbacks(this);
                this.f20545d = true;
            }
        } catch (Exception e) {
            cm0.m12439d("Error while dispatching lifecycle callback.", e);
        }
    }
}
