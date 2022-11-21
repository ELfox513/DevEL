package p168r4;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* renamed from: r4.l0 */
/* loaded from: classes2.dex */
public final class C5967l0 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public final Application f27005a;

    /* renamed from: b */
    public final WeakReference<Application.ActivityLifecycleCallbacks> f27006b;

    /* renamed from: d */
    public boolean f27007d = false;

    public C5967l0(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f27006b = new WeakReference<>(activityLifecycleCallbacks);
        this.f27005a = application;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m9818a(new C5598b0(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m9818a(new C5893j0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m9818a(new C5783g0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m9818a(new C5746f0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m9818a(new C5857i0(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m9818a(new C5708e0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m9818a(new C5820h0(this, activity));
    }

    /* renamed from: a */
    public final void m9818a(InterfaceC5930k0 interfaceC5930k0) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f27006b.get();
            if (activityLifecycleCallbacks != null) {
                interfaceC5930k0.mo10126a(activityLifecycleCallbacks);
            } else if (!this.f27007d) {
                this.f27005a.unregisterActivityLifecycleCallbacks(this);
                this.f27007d = true;
            }
        } catch (Exception unused) {
        }
    }
}
