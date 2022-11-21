package p168r4;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import java.lang.ref.WeakReference;
/* renamed from: r4.c1 */
/* loaded from: classes2.dex */
public final class View$OnAttachStateChangeListenerC5635c1 implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Application.ActivityLifecycleCallbacks {

    /* renamed from: x */
    public static final Handler f21290x = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    public final Context f21291a;

    /* renamed from: b */
    public Application f21292b;

    /* renamed from: d */
    public final PowerManager f21293d;

    /* renamed from: k */
    public final KeyguardManager f21294k;

    /* renamed from: p */
    public BroadcastReceiver f21295p;

    /* renamed from: q */
    public final C6079o0 f21296q;

    /* renamed from: r */
    public WeakReference<ViewTreeObserver> f21297r;

    /* renamed from: s */
    public WeakReference<View> f21298s;

    /* renamed from: t */
    public C5967l0 f21299t;

    /* renamed from: u */
    public byte f21300u = -1;

    /* renamed from: v */
    public int f21301v = -1;

    /* renamed from: w */
    public long f21302w = -3;

    /* renamed from: b */
    public final View m12670b() {
        WeakReference<View> weakReference = this.f21298s;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* renamed from: c */
    public final long m12669c() {
        if (this.f21302w <= -2 && m12670b() == null) {
            this.f21302w = -3L;
        }
        return this.f21302w;
    }

    /* renamed from: e */
    public final void m12667e() {
        f21290x.post(new RunnableC5562a1(this));
    }

    /* renamed from: i */
    public final void m12663i(View view) {
        try {
            WeakReference<ViewTreeObserver> weakReference = this.f21297r;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f21297r = null;
            }
        } catch (Exception unused) {
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception unused2) {
        }
        BroadcastReceiver broadcastReceiver = this.f21295p;
        if (broadcastReceiver != null) {
            try {
                this.f21291a.unregisterReceiver(broadcastReceiver);
            } catch (Exception unused3) {
            }
            this.f21295p = null;
        }
        Application application = this.f21292b;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.f21299t);
            } catch (Exception unused4) {
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m12666f(activity, 0);
        m12665g();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m12665g();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m12666f(activity, 4);
        m12665g();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m12666f(activity, 0);
        m12665g();
        m12667e();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m12665g();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m12666f(activity, 0);
        m12665g();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m12665g();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        m12665g();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        m12665g();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f21301v = -1;
        m12664h(view);
        m12665g();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f21301v = -1;
        m12665g();
        m12667e();
        m12663i(view);
    }

    /* renamed from: f */
    public final void m12666f(Activity activity, int i) {
        Window window;
        if (this.f21298s == null || (window = activity.getWindow()) == null) {
            return;
        }
        View peekDecorView = window.peekDecorView();
        View m12670b = m12670b();
        if (m12670b != null && peekDecorView != null && m12670b.getRootView() == peekDecorView.getRootView()) {
            this.f21301v = i;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x005c, code lost:
        if ((r5.flags & net.bytebuddy.jar.asm.Opcodes.ASM8) != 0) goto L36;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m12665g() {
        /*
            r7 = this;
            java.lang.ref.WeakReference<android.view.View> r0 = r7.f21298s
            if (r0 != 0) goto L5
            return
        L5:
            android.view.View r0 = r7.m12670b()
            r1 = -1
            r2 = -3
            if (r0 != 0) goto L13
            r7.f21302w = r2
            r7.f21300u = r1
            return
        L13:
            int r4 = r0.getVisibility()
            if (r4 == 0) goto L1b
            r4 = 1
            goto L1c
        L1b:
            r4 = 0
        L1c:
            boolean r5 = r0.isShown()
            if (r5 != 0) goto L24
            r4 = r4 | 2
        L24:
            android.os.PowerManager r5 = r7.f21293d
            if (r5 == 0) goto L30
            boolean r5 = r5.isScreenOn()
            if (r5 != 0) goto L30
            r4 = r4 | 4
        L30:
            r4.o0 r5 = r7.f21296q
            boolean r5 = r5.m8945a()
            if (r5 != 0) goto L60
            android.app.KeyguardManager r5 = r7.f21294k
            if (r5 == 0) goto L5e
            boolean r5 = r5.inKeyguardRestrictedInputMode()
            if (r5 == 0) goto L5e
            android.app.Activity r5 = p168r4.C6449y0.m4936i(r0)
            if (r5 != 0) goto L49
            goto L5e
        L49:
            android.view.Window r5 = r5.getWindow()
            if (r5 != 0) goto L51
            r5 = 0
            goto L55
        L51:
            android.view.WindowManager$LayoutParams r5 = r5.getAttributes()
        L55:
            if (r5 == 0) goto L5e
            int r5 = r5.flags
            r6 = 524288(0x80000, float:7.34684E-40)
            r5 = r5 & r6
            if (r5 != 0) goto L60
        L5e:
            r4 = r4 | 8
        L60:
            android.graphics.Rect r5 = new android.graphics.Rect
            r5.<init>()
            boolean r5 = r0.getGlobalVisibleRect(r5)
            if (r5 != 0) goto L6d
            r4 = r4 | 16
        L6d:
            android.graphics.Rect r5 = new android.graphics.Rect
            r5.<init>()
            boolean r5 = r0.getLocalVisibleRect(r5)
            if (r5 != 0) goto L7a
            r4 = r4 | 32
        L7a:
            int r0 = r0.getWindowVisibility()
            int r5 = r7.f21301v
            if (r5 == r1) goto L83
            r0 = r5
        L83:
            if (r0 == 0) goto L87
            r4 = r4 | 64
        L87:
            byte r0 = r7.f21300u
            if (r0 == r4) goto L9a
            byte r0 = (byte) r4
            r7.f21300u = r0
            if (r4 != 0) goto L95
            long r0 = android.os.SystemClock.elapsedRealtime()
            goto L98
        L95:
            long r0 = (long) r4
            long r0 = r2 - r0
        L98:
            r7.f21302w = r0
        L9a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.View$OnAttachStateChangeListenerC5635c1.m12665g():void");
    }

    public View$OnAttachStateChangeListenerC5635c1(Context context, C6079o0 c6079o0) {
        Context applicationContext = context.getApplicationContext();
        this.f21291a = applicationContext;
        this.f21296q = c6079o0;
        this.f21293d = (PowerManager) applicationContext.getSystemService("power");
        this.f21294k = (KeyguardManager) applicationContext.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            Application application = (Application) applicationContext;
            this.f21292b = application;
            this.f21299t = new C5967l0(application, this);
        }
        m12671a(null);
    }

    /* renamed from: a */
    public final void m12671a(View view) {
        long j;
        View m12670b = m12670b();
        if (m12670b != null) {
            m12670b.removeOnAttachStateChangeListener(this);
            m12663i(m12670b);
        }
        this.f21298s = new WeakReference<>(view);
        if (view != null) {
            if (view.getWindowToken() != null || view.getWindowVisibility() != 8) {
                m12664h(view);
            }
            view.addOnAttachStateChangeListener(this);
            j = -2;
        } else {
            j = -3;
        }
        this.f21302w = j;
    }

    /* renamed from: h */
    public final void m12664h(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f21297r = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f21295p == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            C5599b1 c5599b1 = new C5599b1(this);
            this.f21295p = c5599b1;
            this.f21291a.registerReceiver(c5599b1, intentFilter);
        }
        Application application = this.f21292b;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.f21299t);
            } catch (Exception unused) {
            }
        }
    }
}
