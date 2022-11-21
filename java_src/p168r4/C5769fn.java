package p168r4;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p016b3.C0497k2;
import p235z2.C7601t;
@TargetApi(14)
/* renamed from: r4.fn */
/* loaded from: classes2.dex */
public final class C5769fn implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public Activity f23561a;

    /* renamed from: b */
    public Context f23562b;

    /* renamed from: s */
    public Runnable f23568s;

    /* renamed from: u */
    public long f23570u;

    /* renamed from: d */
    public final Object f23563d = new Object();

    /* renamed from: k */
    public boolean f23564k = true;

    /* renamed from: p */
    public boolean f23565p = false;

    /* renamed from: q */
    public final List<InterfaceC5806gn> f23566q = new ArrayList();

    /* renamed from: r */
    public final List<InterfaceC6361vn> f23567r = new ArrayList();

    /* renamed from: t */
    public boolean f23569t = false;

    /* renamed from: i */
    public final Activity m11467i() {
        return this.f23561a;
    }

    /* renamed from: j */
    public final Context m11466j() {
        return this.f23562b;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m11465k(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    /* renamed from: f */
    public final void m11470f(Application application, Context context) {
        if (!this.f23569t) {
            application.registerActivityLifecycleCallbacks(this);
            if (context instanceof Activity) {
                m11465k((Activity) context);
            }
            this.f23562b = application;
            this.f23570u = ((Long) C5592av.m12935c().m8098c(C6225rz.f30783D0)).longValue();
            this.f23569t = true;
        }
    }

    /* renamed from: g */
    public final void m11469g(InterfaceC5806gn interfaceC5806gn) {
        synchronized (this.f23563d) {
            this.f23566q.add(interfaceC5806gn);
        }
    }

    /* renamed from: h */
    public final void m11468h(InterfaceC5806gn interfaceC5806gn) {
        synchronized (this.f23563d) {
            this.f23566q.remove(interfaceC5806gn);
        }
    }

    /* renamed from: k */
    public final void m11465k(Activity activity) {
        synchronized (this.f23563d) {
            if (!activity.getClass().getName().startsWith("com.google.android.gms.ads")) {
                this.f23561a = activity;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.f23563d) {
            Activity activity2 = this.f23561a;
            if (activity2 != null) {
                if (activity2.equals(activity)) {
                    this.f23561a = null;
                }
                Iterator<InterfaceC6361vn> it = this.f23567r.iterator();
                while (it.hasNext()) {
                    try {
                        if (it.next().zza()) {
                            it.remove();
                        }
                    } catch (Exception e) {
                        C7601t.m935h().m9056k(e, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                        cm0.m12439d("", e);
                    }
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m11465k(activity);
        synchronized (this.f23563d) {
            for (InterfaceC6361vn interfaceC6361vn : this.f23567r) {
                try {
                    interfaceC6361vn.m6084a();
                } catch (Exception e) {
                    C7601t.m935h().m9056k(e, "AppActivityTracker.ActivityListener.onActivityPaused");
                    cm0.m12439d("", e);
                }
            }
        }
        this.f23565p = true;
        Runnable runnable = this.f23568s;
        if (runnable != null) {
            C0497k2.f1630i.removeCallbacks(runnable);
        }
        c03 c03Var = C0497k2.f1630i;
        RunnableC5732en runnableC5732en = new RunnableC5732en(this);
        this.f23568s = runnableC5732en;
        c03Var.postDelayed(runnableC5732en, this.f23570u);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m11465k(activity);
        this.f23565p = false;
        boolean z = !this.f23564k;
        this.f23564k = true;
        Runnable runnable = this.f23568s;
        if (runnable != null) {
            C0497k2.f1630i.removeCallbacks(runnable);
        }
        synchronized (this.f23563d) {
            for (InterfaceC6361vn interfaceC6361vn : this.f23567r) {
                try {
                    interfaceC6361vn.m6083b();
                } catch (Exception e) {
                    C7601t.m935h().m9056k(e, "AppActivityTracker.ActivityListener.onActivityResumed");
                    cm0.m12439d("", e);
                }
            }
            if (z) {
                for (InterfaceC5806gn interfaceC5806gn : this.f23566q) {
                    try {
                        interfaceC5806gn.mo7475R(true);
                    } catch (Exception e2) {
                        cm0.m12439d("", e2);
                    }
                }
            } else {
                cm0.m12442a("App is still foreground.");
            }
        }
    }
}
