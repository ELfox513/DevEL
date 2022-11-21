package p091j;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import p082i.InterfaceC4080g;
/* renamed from: j.x0 */
/* loaded from: classes.dex */
public abstract class AbstractView$OnTouchListenerC4261x0 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: a */
    public final float f18088a;

    /* renamed from: b */
    public final int f18089b;

    /* renamed from: d */
    public final int f18090d;

    /* renamed from: k */
    public final View f18091k;

    /* renamed from: p */
    public Runnable f18092p;

    /* renamed from: q */
    public Runnable f18093q;

    /* renamed from: r */
    public boolean f18094r;

    /* renamed from: s */
    public int f18095s;

    /* renamed from: t */
    public final int[] f18096t = new int[2];

    /* renamed from: j.x0$a */
    /* loaded from: classes.dex */
    public class RunnableC4262a implements Runnable {
        public RunnableC4262a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = AbstractView$OnTouchListenerC4261x0.this.f18091k.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* renamed from: j.x0$b */
    /* loaded from: classes.dex */
    public class RunnableC4263b implements Runnable {
        public RunnableC4263b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractView$OnTouchListenerC4261x0.this.m16903e();
        }
    }

    /* renamed from: l */
    public static boolean m16900l(View view, float f, float f2, float f3) {
        float f4 = -f3;
        if (f >= f4 && f2 >= f4 && f < (view.getRight() - view.getLeft()) + f3 && f2 < (view.getBottom() - view.getTop()) + f3) {
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public abstract InterfaceC4080g mo16906b();

    /* renamed from: c */
    public abstract boolean mo16905c();

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f18094r = false;
        this.f18095s = -1;
        Runnable runnable = this.f18092p;
        if (runnable != null) {
            this.f18091k.removeCallbacks(runnable);
        }
    }

    /* renamed from: a */
    public final void m16907a() {
        Runnable runnable = this.f18093q;
        if (runnable != null) {
            this.f18091k.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f18092p;
        if (runnable2 != null) {
            this.f18091k.removeCallbacks(runnable2);
        }
    }

    /* renamed from: g */
    public final boolean m16902g(MotionEvent motionEvent) {
        C4254w0 c4254w0;
        boolean z;
        View view = this.f18091k;
        InterfaceC4080g mo16906b = mo16906b();
        if (mo16906b == null || !mo16906b.mo17241a() || (c4254w0 = (C4254w0) mo16906b.mo17237i()) == null || !c4254w0.isShown()) {
            return false;
        }
        MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
        m16899n(view, obtainNoHistory);
        m16898r(c4254w0, obtainNoHistory);
        boolean mo16926e = c4254w0.mo16926e(obtainNoHistory, this.f18095s);
        obtainNoHistory.recycle();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1 && actionMasked != 3) {
            z = true;
        } else {
            z = false;
        }
        if (!mo16926e || !z) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0017, code lost:
        if (r1 != 3) goto L13;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m16901j(android.view.MotionEvent r6) {
        /*
            r5 = this;
            android.view.View r0 = r5.f18091k
            boolean r1 = r0.isEnabled()
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            int r1 = r6.getActionMasked()
            if (r1 == 0) goto L41
            r3 = 1
            if (r1 == r3) goto L3d
            r4 = 2
            if (r1 == r4) goto L1a
            r6 = 3
            if (r1 == r6) goto L3d
            goto L6d
        L1a:
            int r1 = r5.f18095s
            int r1 = r6.findPointerIndex(r1)
            if (r1 < 0) goto L6d
            float r4 = r6.getX(r1)
            float r6 = r6.getY(r1)
            float r1 = r5.f18088a
            boolean r6 = m16900l(r0, r4, r6, r1)
            if (r6 != 0) goto L6d
            r5.m16907a()
            android.view.ViewParent r6 = r0.getParent()
            r6.requestDisallowInterceptTouchEvent(r3)
            return r3
        L3d:
            r5.m16907a()
            goto L6d
        L41:
            int r6 = r6.getPointerId(r2)
            r5.f18095s = r6
            java.lang.Runnable r6 = r5.f18092p
            if (r6 != 0) goto L52
            j.x0$a r6 = new j.x0$a
            r6.<init>()
            r5.f18092p = r6
        L52:
            java.lang.Runnable r6 = r5.f18092p
            int r1 = r5.f18089b
            long r3 = (long) r1
            r0.postDelayed(r6, r3)
            java.lang.Runnable r6 = r5.f18093q
            if (r6 != 0) goto L65
            j.x0$b r6 = new j.x0$b
            r6.<init>()
            r5.f18093q = r6
        L65:
            java.lang.Runnable r6 = r5.f18093q
            int r1 = r5.f18090d
            long r3 = (long) r1
            r0.postDelayed(r6, r3)
        L6d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p091j.AbstractView$OnTouchListenerC4261x0.m16901j(android.view.MotionEvent):boolean");
    }

    /* renamed from: n */
    public final boolean m16899n(View view, MotionEvent motionEvent) {
        int[] iArr = this.f18096t;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(iArr[0], iArr[1]);
        return true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2 = this.f18094r;
        if (z2) {
            if (!m16902g(motionEvent) && mo16904d()) {
                z = false;
            } else {
                z = true;
            }
        } else {
            if (m16901j(motionEvent) && mo16905c()) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                this.f18091k.onTouchEvent(obtain);
                obtain.recycle();
            }
        }
        this.f18094r = z;
        if (z || z2) {
            return true;
        }
        return false;
    }

    /* renamed from: r */
    public final boolean m16898r(View view, MotionEvent motionEvent) {
        int[] iArr = this.f18096t;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(-iArr[0], -iArr[1]);
        return true;
    }

    public AbstractView$OnTouchListenerC4261x0(View view) {
        this.f18091k = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f18088a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f18089b = tapTimeout;
        this.f18090d = (tapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    /* renamed from: d */
    public boolean mo16904d() {
        InterfaceC4080g mo16906b = mo16906b();
        if (mo16906b != null && mo16906b.mo17241a()) {
            mo16906b.dismiss();
            return true;
        }
        return true;
    }

    /* renamed from: e */
    public void m16903e() {
        m16907a();
        View view = this.f18091k;
        if (!view.isEnabled() || view.isLongClickable() || !mo16905c()) {
            return;
        }
        view.getParent().requestDisallowInterceptTouchEvent(true);
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        view.onTouchEvent(obtain);
        obtain.recycle();
        this.f18094r = true;
    }
}
