package p091j;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import p038d0.C3167d1;
import p038d0.C3218s0;
/* renamed from: j.w1 */
/* loaded from: classes.dex */
public class View$OnLongClickListenerC4257w1 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: u */
    public static View$OnLongClickListenerC4257w1 f18075u;

    /* renamed from: v */
    public static View$OnLongClickListenerC4257w1 f18076v;

    /* renamed from: a */
    public final View f18077a;

    /* renamed from: b */
    public final CharSequence f18078b;

    /* renamed from: d */
    public final int f18079d;

    /* renamed from: k */
    public final Runnable f18080k = new RunnableC4258a();

    /* renamed from: p */
    public final Runnable f18081p = new RunnableC4259b();

    /* renamed from: q */
    public int f18082q;

    /* renamed from: r */
    public int f18083r;

    /* renamed from: s */
    public C4264x1 f18084s;

    /* renamed from: t */
    public boolean f18085t;

    /* renamed from: j.w1$a */
    /* loaded from: classes.dex */
    public class RunnableC4258a implements Runnable {
        public RunnableC4258a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View$OnLongClickListenerC4257w1.this.m16910g(false);
        }
    }

    /* renamed from: j.w1$b */
    /* loaded from: classes.dex */
    public class RunnableC4259b implements Runnable {
        public RunnableC4259b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View$OnLongClickListenerC4257w1.this.m16914c();
        }
    }

    /* renamed from: a */
    public final void m16916a() {
        this.f18077a.removeCallbacks(this.f18080k);
    }

    /* renamed from: d */
    public final void m16913d() {
        this.f18077a.postDelayed(this.f18080k, ViewConfiguration.getLongPressTimeout());
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m16914c();
    }

    /* renamed from: e */
    public static void m16912e(View$OnLongClickListenerC4257w1 view$OnLongClickListenerC4257w1) {
        View$OnLongClickListenerC4257w1 view$OnLongClickListenerC4257w12 = f18075u;
        if (view$OnLongClickListenerC4257w12 != null) {
            view$OnLongClickListenerC4257w12.m16916a();
        }
        f18075u = view$OnLongClickListenerC4257w1;
        if (view$OnLongClickListenerC4257w1 != null) {
            view$OnLongClickListenerC4257w1.m16913d();
        }
    }

    /* renamed from: f */
    public static void m16911f(View view, CharSequence charSequence) {
        View$OnLongClickListenerC4257w1 view$OnLongClickListenerC4257w1 = f18075u;
        if (view$OnLongClickListenerC4257w1 != null && view$OnLongClickListenerC4257w1.f18077a == view) {
            m16912e(null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            View$OnLongClickListenerC4257w1 view$OnLongClickListenerC4257w12 = f18076v;
            if (view$OnLongClickListenerC4257w12 != null && view$OnLongClickListenerC4257w12.f18077a == view) {
                view$OnLongClickListenerC4257w12.m16914c();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new View$OnLongClickListenerC4257w1(view, charSequence);
    }

    /* renamed from: c */
    public void m16914c() {
        if (f18076v == this) {
            f18076v = null;
            C4264x1 c4264x1 = this.f18084s;
            if (c4264x1 != null) {
                c4264x1.m16895c();
                this.f18084s = null;
                m16915b();
                this.f18077a.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f18075u == this) {
            m16912e(null);
        }
        this.f18077a.removeCallbacks(this.f18081p);
    }

    /* renamed from: g */
    public void m16910g(boolean z) {
        long j;
        int longPressTimeout;
        long j2;
        if (!C3218s0.m19330v(this.f18077a)) {
            return;
        }
        m16912e(null);
        View$OnLongClickListenerC4257w1 view$OnLongClickListenerC4257w1 = f18076v;
        if (view$OnLongClickListenerC4257w1 != null) {
            view$OnLongClickListenerC4257w1.m16914c();
        }
        f18076v = this;
        this.f18085t = z;
        C4264x1 c4264x1 = new C4264x1(this.f18077a.getContext());
        this.f18084s = c4264x1;
        c4264x1.m16893e(this.f18077a, this.f18082q, this.f18083r, this.f18085t, this.f18078b);
        this.f18077a.addOnAttachStateChangeListener(this);
        if (this.f18085t) {
            j2 = 2500;
        } else {
            if ((C3218s0.m19333s(this.f18077a) & 1) == 1) {
                j = 3000;
                longPressTimeout = ViewConfiguration.getLongPressTimeout();
            } else {
                j = 15000;
                longPressTimeout = ViewConfiguration.getLongPressTimeout();
            }
            j2 = j - longPressTimeout;
        }
        this.f18077a.removeCallbacks(this.f18081p);
        this.f18077a.postDelayed(this.f18081p, j2);
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f18084s != null && this.f18085t) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f18077a.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                m16915b();
                m16914c();
            }
        } else if (this.f18077a.isEnabled() && this.f18084s == null && m16909h(motionEvent)) {
            m16912e(this);
        }
        return false;
    }

    public View$OnLongClickListenerC4257w1(View view, CharSequence charSequence) {
        this.f18077a = view;
        this.f18078b = charSequence;
        this.f18079d = C3167d1.m19462a(ViewConfiguration.get(view.getContext()));
        m16915b();
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    /* renamed from: b */
    public final void m16915b() {
        this.f18082q = Integer.MAX_VALUE;
        this.f18083r = Integer.MAX_VALUE;
    }

    /* renamed from: h */
    public final boolean m16909h(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (Math.abs(x - this.f18082q) <= this.f18079d && Math.abs(y - this.f18083r) <= this.f18079d) {
            return false;
        }
        this.f18082q = x;
        this.f18083r = y;
        return true;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f18082q = view.getWidth() / 2;
        this.f18083r = view.getHeight() / 2;
        m16910g(true);
        return true;
    }
}
