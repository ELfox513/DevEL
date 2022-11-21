package p018b5;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* renamed from: b5.x2 */
/* loaded from: classes2.dex */
public final class C0949x2 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public final /* synthetic */ C0966y2 f2388a;

    public C0949x2(C0966y2 c0966y2) {
        this.f2388a = c0966y2;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        this.f2388a.m24937m(new C0813p2(this, bundle, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f2388a.m24937m(new C0932w2(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f2388a.m24937m(new C0864s2(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        this.f2388a.m24937m(new C0847r2(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        this.f2388a.m24937m(new C0830q2(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        this.f2388a.m24937m(new C0898u2(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        BinderC0574b1 binderC0574b1 = new BinderC0574b1();
        this.f2388a.m24937m(new C0915v2(this, activity, binderC0574b1));
        Bundle m26152o0 = binderC0574b1.m26152o0(50L);
        if (m26152o0 != null) {
            bundle.putAll(m26152o0);
        }
    }
}
