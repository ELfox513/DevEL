package p070g5;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
@TargetApi(14)
/* renamed from: g5.g7 */
/* loaded from: classes2.dex */
public final class C3673g7 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public final /* synthetic */ C3697i7 f16550a;

    public /* synthetic */ C3673g7(C3697i7 c3697i7, C3661f7 c3661f7) {
        this.f16550a = c3697i7;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        C3611b5 c3611b5;
        boolean z;
        String str;
        try {
            try {
                this.f16550a.f17008a.mo17858F().m18014q().m18042a("onActivityCreated");
                Intent intent = activity.getIntent();
                if (intent == null) {
                    c3611b5 = this.f16550a.f17008a;
                } else {
                    Uri data = intent.getData();
                    if (data != null && data.isHierarchical()) {
                        this.f16550a.f17008a.m18538K();
                        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                        boolean z2 = true;
                        if (!"android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) && !"https://www.google.com".equals(stringExtra) && !"android-app://com.google.appcrawler".equals(stringExtra)) {
                            z = false;
                        } else {
                            z = true;
                        }
                        if (true != z) {
                            str = "auto";
                        } else {
                            str = "gs";
                        }
                        String str2 = str;
                        String queryParameter = data.getQueryParameter("referrer");
                        if (bundle != null) {
                            z2 = false;
                        }
                        this.f16550a.f17008a.mo17855P().m17826u(new RunnableC3649e7(this, z2, data, str2, queryParameter));
                        c3611b5 = this.f16550a.f17008a;
                    }
                    c3611b5 = this.f16550a.f17008a;
                }
            } catch (RuntimeException e) {
                this.f16550a.f17008a.mo17858F().m18018m().m18041b("Throwable caught in onActivityCreated", e);
                c3611b5 = this.f16550a.f17008a;
            }
            c3611b5.m18541H().m17904u(activity, bundle);
        } catch (Throwable th) {
            this.f16550a.f17008a.m18541H().m17904u(activity, bundle);
            throw th;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f16550a.f17008a.m18541H().m17903v(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f16550a.f17008a.m18541H().m17902w(activity);
        C3747m9 m18539J = this.f16550a.f17008a.m18539J();
        m18539J.f17008a.mo17855P().m17826u(new RunnableC3651e9(m18539J, m18539J.f17008a.mo17854Q().mo24762b()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        C3747m9 m18539J = this.f16550a.f17008a.m18539J();
        m18539J.f17008a.mo17855P().m17826u(new RunnableC3639d9(m18539J, m18539J.f17008a.mo17854Q().mo24762b()));
        this.f16550a.f17008a.m18541H().m17901x(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f16550a.f17008a.m18541H().m17900y(activity, bundle);
    }
}
