package p168r4;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import p016b3.C0484h1;
import p016b3.C0497k2;
import p235z2.C7601t;
@TargetApi(14)
/* renamed from: r4.om */
/* loaded from: classes2.dex */
public final class View$OnAttachStateChangeListenerC6101om implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Application.ActivityLifecycleCallbacks {

    /* renamed from: A */
    public static final long f29052A = ((Long) C5592av.m12935c().m8098c(C6225rz.f30895R0)).longValue();

    /* renamed from: a */
    public final Context f29053a;

    /* renamed from: b */
    public Application f29054b;

    /* renamed from: d */
    public final WindowManager f29055d;

    /* renamed from: k */
    public final PowerManager f29056k;

    /* renamed from: p */
    public final KeyguardManager f29057p;

    /* renamed from: q */
    public BroadcastReceiver f29058q;

    /* renamed from: r */
    public WeakReference<ViewTreeObserver> f29059r;

    /* renamed from: s */
    public final WeakReference<View> f29060s;

    /* renamed from: t */
    public C5584an f29061t;

    /* renamed from: u */
    public final C0484h1 f29062u = new C0484h1(f29052A);

    /* renamed from: v */
    public boolean f29063v = false;

    /* renamed from: w */
    public int f29064w = -1;

    /* renamed from: x */
    public final HashSet<InterfaceC6064nm> f29065x = new HashSet<>();

    /* renamed from: y */
    public final DisplayMetrics f29066y;

    /* renamed from: z */
    public final Rect f29067z;

    /* renamed from: b */
    public final void m8769b(InterfaceC6064nm interfaceC6064nm) {
        this.f29065x.remove(interfaceC6064nm);
    }

    /* renamed from: e */
    public final void m8766e(long j) {
        this.f29062u.m26364b(j);
    }

    /* renamed from: f */
    public final void m8765f() {
        this.f29062u.m26364b(f29052A);
    }

    /* renamed from: g */
    public final /* synthetic */ void m8764g() {
        m8761j(3);
    }

    /* renamed from: h */
    public final void m8763h() {
        C0497k2.f1630i.post(new Runnable(this) { // from class: r4.km

            /* renamed from: a */
            public final View$OnAttachStateChangeListenerC6101om f26480a;

            {
                this.f26480a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f26480a.m8764g();
            }
        });
    }

    /* renamed from: k */
    public final int m8760k(int i) {
        return (int) (i / this.f29066y.density);
    }

    /* renamed from: m */
    public final void m8758m(View view) {
        try {
            WeakReference<ViewTreeObserver> weakReference = this.f29059r;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f29059r = null;
            }
        } catch (Exception e) {
            cm0.m12439d("Error while unregistering listeners from the last ViewTreeObserver.", e);
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e2) {
            cm0.m12439d("Error while unregistering listeners from the ViewTreeObserver.", e2);
        }
        if (this.f29058q != null) {
            try {
                C7601t.m918y().m26281c(this.f29053a, this.f29058q);
            } catch (IllegalStateException e3) {
                cm0.m12439d("Failed trying to unregister the receiver", e3);
            } catch (Exception e4) {
                C7601t.m935h().m9056k(e4, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.f29058q = null;
        }
        Application application = this.f29054b;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.f29061t);
            } catch (Exception e5) {
                cm0.m12439d("Error registering activity lifecycle callbacks.", e5);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m8762i(activity, 0);
        m8761j(3);
        m8763h();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m8761j(3);
        m8763h();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m8762i(activity, 4);
        m8761j(3);
        m8763h();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m8762i(activity, 0);
        m8761j(3);
        m8763h();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m8761j(3);
        m8763h();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m8762i(activity, 0);
        m8761j(3);
        m8763h();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m8761j(3);
        m8763h();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m8761j(2);
        m8763h();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m8761j(1);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f29064w = -1;
        m8759l(view);
        m8761j(3);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f29064w = -1;
        m8761j(3);
        m8763h();
        m8758m(view);
    }

    /* renamed from: a */
    public final void m8770a(InterfaceC6064nm interfaceC6064nm) {
        this.f29065x.add(interfaceC6064nm);
        m8761j(3);
    }

    /* renamed from: d */
    public final Rect m8767d(Rect rect) {
        return new Rect(m8760k(rect.left), m8760k(rect.top), m8760k(rect.right), m8760k(rect.bottom));
    }

    /* renamed from: i */
    public final void m8762i(Activity activity, int i) {
        Window window;
        if (this.f29060s == null || (window = activity.getWindow()) == null) {
            return;
        }
        View peekDecorView = window.peekDecorView();
        View view = this.f29060s.get();
        if (view != null && peekDecorView != null && view.getRootView() == peekDecorView.getRootView()) {
            this.f29064w = i;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0115, code lost:
        if (r11 == 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x012b, code lost:
        if (r11 == 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x012d, code lost:
        r3 = true;
        r11 = 0;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8761j(int r33) {
        /*
            Method dump skipped, instructions count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.View$OnAttachStateChangeListenerC6101om.m8761j(int):void");
    }

    public View$OnAttachStateChangeListenerC6101om(Context context, View view) {
        View view2;
        Context applicationContext = context.getApplicationContext();
        this.f29053a = applicationContext;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        this.f29055d = windowManager;
        this.f29056k = (PowerManager) applicationContext.getSystemService("power");
        this.f29057p = (KeyguardManager) context.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            Application application = (Application) applicationContext;
            this.f29054b = application;
            this.f29061t = new C5584an(application, this);
        }
        this.f29066y = context.getResources().getDisplayMetrics();
        Rect rect = new Rect();
        this.f29067z = rect;
        rect.right = windowManager.getDefaultDisplay().getWidth();
        rect.bottom = windowManager.getDefaultDisplay().getHeight();
        WeakReference<View> weakReference = this.f29060s;
        if (weakReference != null) {
            view2 = weakReference.get();
        } else {
            view2 = null;
        }
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            m8758m(view2);
        }
        this.f29060s = new WeakReference<>(view);
        if (view != null) {
            if (C7601t.m937f().mo26273g(view)) {
                m8759l(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    /* renamed from: l */
    public final void m8759l(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f29059r = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f29058q == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.f29058q = new C5989lm(this);
            C7601t.m918y().m26282b(this.f29053a, this.f29058q, intentFilter);
        }
        Application application = this.f29054b;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.f29061t);
            } catch (Exception e) {
                cm0.m12439d("Error registering activity lifecycle callbacks.", e);
            }
        }
    }
}
