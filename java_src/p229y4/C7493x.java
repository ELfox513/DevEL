package p229y4;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* renamed from: y4.x */
/* loaded from: classes2.dex */
public final class C7493x implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public final Activity f37301a;

    /* renamed from: b */
    public final /* synthetic */ C7499z f37302b;

    public C7493x(C7499z c7499z, Activity activity) {
        this.f37302b = c7499z;
        this.f37301a = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        if (activity != this.f37301a) {
            return;
        }
        this.f37302b.m1378e(new C7486u1(3, "Activity is destroyed."));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
