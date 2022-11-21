package p163r;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
/* renamed from: r.d */
/* loaded from: classes.dex */
public final class C5451d {

    /* renamed from: a */
    public static final Class<?> f20137a;

    /* renamed from: b */
    public static final Field f20138b;

    /* renamed from: c */
    public static final Field f20139c;

    /* renamed from: d */
    public static final Method f20140d;

    /* renamed from: e */
    public static final Method f20141e;

    /* renamed from: f */
    public static final Method f20142f;

    /* renamed from: g */
    public static final Handler f20143g = new Handler(Looper.getMainLooper());

    /* renamed from: r.d$a */
    /* loaded from: classes.dex */
    public class RunnableC5452a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C5455d f20144a;

        /* renamed from: b */
        public final /* synthetic */ Object f20145b;

        public RunnableC5452a(C5455d c5455d, Object obj) {
            this.f20144a = c5455d;
            this.f20145b = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f20144a.f20150a = this.f20145b;
        }
    }

    /* renamed from: r.d$b */
    /* loaded from: classes.dex */
    public class RunnableC5453b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Application f20146a;

        /* renamed from: b */
        public final /* synthetic */ C5455d f20147b;

        public RunnableC5453b(Application application, C5455d c5455d) {
            this.f20146a = application;
            this.f20147b = c5455d;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f20146a.unregisterActivityLifecycleCallbacks(this.f20147b);
        }
    }

    /* renamed from: r.d$c */
    /* loaded from: classes.dex */
    public class RunnableC5454c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Object f20148a;

        /* renamed from: b */
        public final /* synthetic */ Object f20149b;

        public RunnableC5454c(Object obj, Object obj2) {
            this.f20148a = obj;
            this.f20149b = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Method method = C5451d.f20140d;
                if (method != null) {
                    method.invoke(this.f20148a, this.f20149b, Boolean.FALSE, "AppCompat recreation");
                } else {
                    C5451d.f20141e.invoke(this.f20148a, this.f20149b, Boolean.FALSE);
                }
            } catch (RuntimeException e) {
                if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                    throw e;
                }
            } catch (Throwable th) {
                Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
            }
        }
    }

    /* renamed from: r.d$d */
    /* loaded from: classes.dex */
    public static final class C5455d implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a */
        public Object f20150a;

        /* renamed from: b */
        public Activity f20151b;

        /* renamed from: d */
        public final int f20152d;

        /* renamed from: k */
        public boolean f20153k = false;

        /* renamed from: p */
        public boolean f20154p = false;

        /* renamed from: q */
        public boolean f20155q = false;

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f20151b == activity) {
                this.f20151b = null;
                this.f20154p = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (this.f20154p && !this.f20155q && !this.f20153k && C5451d.m13271h(this.f20150a, this.f20152d, activity)) {
                this.f20155q = true;
                this.f20150a = null;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f20151b == activity) {
                this.f20153k = true;
            }
        }

        public C5455d(Activity activity) {
            this.f20151b = activity;
            this.f20152d = activity.hashCode();
        }
    }

    /* renamed from: a */
    public static Class<?> m13278a() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: c */
    public static Method m13276c(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: d */
    public static Method m13275d(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE, String.class);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: g */
    public static boolean m13272g() {
        int i = Build.VERSION.SDK_INT;
        return i == 26 || i == 27;
    }

    /* renamed from: h */
    public static boolean m13271h(Object obj, int i, Activity activity) {
        try {
            Object obj2 = f20139c.get(activity);
            if (obj2 == obj && activity.hashCode() == i) {
                f20143g.postAtFrontOfQueue(new RunnableC5454c(f20138b.get(activity), obj2));
                return true;
            }
            return false;
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
            return false;
        }
    }

    static {
        Class<?> m13278a = m13278a();
        f20137a = m13278a;
        f20138b = m13277b();
        f20139c = m13273f();
        f20140d = m13275d(m13278a);
        f20141e = m13276c(m13278a);
        f20142f = m13274e(m13278a);
    }

    /* renamed from: b */
    public static Field m13277b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: f */
    public static Field m13273f() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: i */
    public static boolean m13270i(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        } else if (m13272g() && f20142f == null) {
            return false;
        } else {
            if (f20141e == null && f20140d == null) {
                return false;
            }
            try {
                Object obj2 = f20139c.get(activity);
                if (obj2 == null || (obj = f20138b.get(activity)) == null) {
                    return false;
                }
                Application application = activity.getApplication();
                C5455d c5455d = new C5455d(activity);
                application.registerActivityLifecycleCallbacks(c5455d);
                Handler handler = f20143g;
                handler.post(new RunnableC5452a(c5455d, obj2));
                if (m13272g()) {
                    Method method = f20142f;
                    Boolean bool = Boolean.FALSE;
                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                } else {
                    activity.recreate();
                }
                handler.post(new RunnableC5453b(application, c5455d));
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }
    }

    /* renamed from: e */
    public static Method m13274e(Class<?> cls) {
        if (m13272g() && cls != null) {
            try {
                Class<?> cls2 = Boolean.TYPE;
                Method declaredMethod = cls.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, cls2, Configuration.class, Configuration.class, cls2, cls2);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
