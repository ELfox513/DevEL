package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.appcompat.view.menu.InterfaceC0170i;
import p021c.C1008a;
import p021c.C1013f;
import p038d0.C3218s0;
import p038d0.C3235t1;
import p038d0.C3253v;
import p038d0.InterfaceC3217s;
import p038d0.InterfaceC3233t;
import p038d0.InterfaceC3250u;
import p091j.C4270z1;
import p091j.InterfaceC4231s0;
import p091j.InterfaceC4234t0;
import p199v.C6948b;
@SuppressLint({"UnknownNullness"})
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements InterfaceC4231s0, InterfaceC3250u, InterfaceC3217s, InterfaceC3233t {

    /* renamed from: Q */
    public static final int[] f549Q = {C1008a.f2506b, 16842841};

    /* renamed from: A */
    public final Rect f550A;

    /* renamed from: B */
    public final Rect f551B;

    /* renamed from: C */
    public final Rect f552C;

    /* renamed from: D */
    public final Rect f553D;

    /* renamed from: E */
    public final Rect f554E;

    /* renamed from: F */
    public C3235t1 f555F;

    /* renamed from: G */
    public C3235t1 f556G;

    /* renamed from: H */
    public C3235t1 f557H;

    /* renamed from: I */
    public C3235t1 f558I;

    /* renamed from: J */
    public InterfaceC0182d f559J;

    /* renamed from: K */
    public OverScroller f560K;

    /* renamed from: L */
    public ViewPropertyAnimator f561L;

    /* renamed from: M */
    public final AnimatorListenerAdapter f562M;

    /* renamed from: N */
    public final Runnable f563N;

    /* renamed from: O */
    public final Runnable f564O;

    /* renamed from: P */
    public final C3253v f565P;

    /* renamed from: a */
    public int f566a;

    /* renamed from: b */
    public int f567b;

    /* renamed from: d */
    public ContentFrameLayout f568d;

    /* renamed from: k */
    public ActionBarContainer f569k;

    /* renamed from: p */
    public InterfaceC4234t0 f570p;

    /* renamed from: q */
    public Drawable f571q;

    /* renamed from: r */
    public boolean f572r;

    /* renamed from: s */
    public boolean f573s;

    /* renamed from: t */
    public boolean f574t;

    /* renamed from: u */
    public boolean f575u;

    /* renamed from: v */
    public boolean f576v;

    /* renamed from: w */
    public int f577w;

    /* renamed from: x */
    public int f578x;

    /* renamed from: y */
    public final Rect f579y;

    /* renamed from: z */
    public final Rect f580z;

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$a */
    /* loaded from: classes.dex */
    public class C0179a extends AnimatorListenerAdapter {
        public C0179a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f561L = null;
            actionBarOverlayLayout.f576v = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f561L = null;
            actionBarOverlayLayout.f576v = false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$b */
    /* loaded from: classes.dex */
    public class RunnableC0180b implements Runnable {
        public RunnableC0180b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.m27430u();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f561L = actionBarOverlayLayout.f569k.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.f562M);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$c */
    /* loaded from: classes.dex */
    public class RunnableC0181c implements Runnable {
        public RunnableC0181c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.m27430u();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f561L = actionBarOverlayLayout.f569k.animate().translationY(-ActionBarOverlayLayout.this.f569k.getHeight()).setListener(ActionBarOverlayLayout.this.f562M);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$d */
    /* loaded from: classes.dex */
    public interface InterfaceC0182d {
        /* renamed from: a */
        void mo19515a();

        /* renamed from: b */
        void mo19514b();

        /* renamed from: c */
        void mo19513c(boolean z);

        /* renamed from: d */
        void mo19512d();

        /* renamed from: e */
        void mo19511e();

        void onWindowVisibilityChanged(int i);
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$e */
    /* loaded from: classes.dex */
    public static class C0183e extends ViewGroup.MarginLayoutParams {
        public C0183e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0183e(int i, int i2) {
            super(i, i2);
        }

        public C0183e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0183e;
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f569k;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f565P.m19238a();
    }

    @Override // p038d0.InterfaceC3233t
    /* renamed from: j */
    public void mo19301j(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        mo19375k(view, i, i2, i3, i4, i5);
    }

    @Override // p038d0.InterfaceC3217s
    /* renamed from: k */
    public void mo19375k(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // p038d0.InterfaceC3217s
    /* renamed from: l */
    public boolean mo19374l(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // p038d0.InterfaceC3217s
    /* renamed from: m */
    public void mo19373m(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // p038d0.InterfaceC3217s
    /* renamed from: n */
    public void mo19372n(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // p038d0.InterfaceC3217s
    /* renamed from: o */
    public void mo19371o(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p038d0.InterfaceC3250u
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p038d0.InterfaceC3250u
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup
    /* renamed from: r */
    public C0183e generateDefaultLayoutParams() {
        return new C0183e(-1, -1);
    }

    @Override // android.view.ViewGroup
    /* renamed from: s */
    public C0183e generateLayoutParams(AttributeSet attributeSet) {
        return new C0183e(getContext(), attributeSet);
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.f574t = z;
    }

    public void setIcon(int i) {
        m27425z();
        this.f570p.setIcon(i);
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* renamed from: w */
    public boolean m27428w() {
        return this.f573s;
    }

    /* renamed from: B */
    public final boolean m27436B(float f) {
        this.f560K.fling(0, 0, 0, (int) f, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        if (this.f560K.getFinalY() > this.f569k.getHeight()) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            return super.fitSystemWindows(rect);
        }
        m27425z();
        boolean m27434q = m27434q(this.f569k, rect, true, true, false, true);
        this.f551B.set(rect);
        C4270z1.m16884a(this, this.f551B, this.f579y);
        if (!this.f552C.equals(this.f551B)) {
            this.f552C.set(this.f551B);
            m27434q = true;
        }
        if (!this.f580z.equals(this.f579y)) {
            this.f580z.set(this.f579y);
            m27434q = true;
        }
        if (m27434q) {
            requestLayout();
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0183e(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p038d0.InterfaceC3250u
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (this.f575u && z) {
            if (m27436B(f2)) {
                m27435p();
            } else {
                m27437A();
            }
            this.f576v = true;
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p038d0.InterfaceC3250u
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.f577w + i2;
        this.f577w = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p038d0.InterfaceC3250u
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f565P.m19237b(view, view2, i);
        this.f577w = getActionBarHideOffset();
        m27430u();
        InterfaceC0182d interfaceC0182d = this.f559J;
        if (interfaceC0182d != null) {
            interfaceC0182d.mo19511e();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p038d0.InterfaceC3250u
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) != 0 && this.f569k.getVisibility() == 0) {
            return this.f575u;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p038d0.InterfaceC3250u
    public void onStopNestedScroll(View view) {
        if (this.f575u && !this.f576v) {
            if (this.f577w <= this.f569k.getHeight()) {
                m27426y();
            } else {
                m27427x();
            }
        }
        InterfaceC0182d interfaceC0182d = this.f559J;
        if (interfaceC0182d != null) {
            interfaceC0182d.mo19514b();
        }
    }

    public void setActionBarVisibilityCallback(InterfaceC0182d interfaceC0182d) {
        this.f559J = interfaceC0182d;
        if (getWindowToken() != null) {
            this.f559J.onWindowVisibilityChanged(this.f567b);
            int i = this.f578x;
            if (i != 0) {
                onWindowSystemUiVisibilityChanged(i);
                C3218s0.m19366E(this);
            }
        }
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.f575u) {
            this.f575u = z;
            if (!z) {
                m27430u();
                setActionBarHideOffset(0);
            }
        }
    }

    public void setOverlayMode(boolean z) {
        boolean z2;
        this.f573s = z;
        if (z && getContext().getApplicationInfo().targetSdkVersion < 19) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.f572r = z2;
    }

    /* renamed from: t */
    public final InterfaceC4234t0 m27431t(View view) {
        if (view instanceof InterfaceC4234t0) {
            return (InterfaceC4234t0) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    /* renamed from: u */
    public void m27430u() {
        removeCallbacks(this.f563N);
        removeCallbacks(this.f564O);
        ViewPropertyAnimator viewPropertyAnimator = this.f561L;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    /* renamed from: z */
    public void m27425z() {
        if (this.f568d == null) {
            this.f568d = (ContentFrameLayout) findViewById(C1013f.f2615b);
            this.f569k = (ActionBarContainer) findViewById(C1013f.f2616c);
            this.f570p = m27431t(findViewById(C1013f.f2614a));
        }
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f567b = 0;
        this.f579y = new Rect();
        this.f580z = new Rect();
        this.f550A = new Rect();
        this.f551B = new Rect();
        this.f552C = new Rect();
        this.f553D = new Rect();
        this.f554E = new Rect();
        C3235t1 c3235t1 = C3235t1.f15534b;
        this.f555F = c3235t1;
        this.f556G = c3235t1;
        this.f557H = c3235t1;
        this.f558I = c3235t1;
        this.f562M = new C0179a();
        this.f563N = new RunnableC0180b();
        this.f564O = new RunnableC0181c();
        m27429v(context);
        this.f565P = new C3253v(this);
    }

    /* renamed from: A */
    public final void m27437A() {
        m27430u();
        this.f563N.run();
    }

    @Override // p091j.InterfaceC4231s0
    /* renamed from: a */
    public void mo17016a(Menu menu, InterfaceC0170i.InterfaceC0171a interfaceC0171a) {
        m27425z();
        this.f570p.mo17007a(menu, interfaceC0171a);
    }

    @Override // p091j.InterfaceC4231s0
    /* renamed from: b */
    public boolean mo17015b() {
        m27425z();
        return this.f570p.mo17006b();
    }

    @Override // p091j.InterfaceC4231s0
    /* renamed from: c */
    public void mo17014c() {
        m27425z();
        this.f570p.mo17005c();
    }

    @Override // p091j.InterfaceC4231s0
    /* renamed from: d */
    public boolean mo17013d() {
        m27425z();
        return this.f570p.mo17004d();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        super.draw(canvas);
        if (this.f571q != null && !this.f572r) {
            if (this.f569k.getVisibility() == 0) {
                i = (int) (this.f569k.getBottom() + this.f569k.getTranslationY() + 0.5f);
            } else {
                i = 0;
            }
            this.f571q.setBounds(0, i, getWidth(), this.f571q.getIntrinsicHeight() + i);
            this.f571q.draw(canvas);
        }
    }

    @Override // p091j.InterfaceC4231s0
    /* renamed from: e */
    public boolean mo17012e() {
        m27425z();
        return this.f570p.mo17003e();
    }

    @Override // p091j.InterfaceC4231s0
    /* renamed from: f */
    public boolean mo17011f() {
        m27425z();
        return this.f570p.mo17002f();
    }

    @Override // p091j.InterfaceC4231s0
    /* renamed from: g */
    public boolean mo17010g() {
        m27425z();
        return this.f570p.mo17001g();
    }

    public CharSequence getTitle() {
        m27425z();
        return this.f570p.getTitle();
    }

    @Override // p091j.InterfaceC4231s0
    /* renamed from: h */
    public void mo17009h(int i) {
        m27425z();
        if (i != 2) {
            if (i != 5) {
                if (i == 109) {
                    setOverlayMode(true);
                    return;
                }
                return;
            }
            this.f570p.mo16988t();
            return;
        }
        this.f570p.mo16989s();
    }

    @Override // p091j.InterfaceC4231s0
    /* renamed from: i */
    public void mo17008i() {
        m27425z();
        this.f570p.mo17000h();
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        m27425z();
        C3235t1 m19280t = C3235t1.m19280t(windowInsets);
        boolean m27434q = m27434q(this.f569k, new Rect(m19280t.m19291i(), m19280t.m19289k(), m19280t.m19290j(), m19280t.m19292h()), true, true, false, true);
        C3218s0.m19349c(this, m19280t, this.f579y);
        Rect rect = this.f579y;
        C3235t1 m19288l = m19280t.m19288l(rect.left, rect.top, rect.right, rect.bottom);
        this.f555F = m19288l;
        boolean z = true;
        if (!this.f556G.equals(m19288l)) {
            this.f556G = this.f555F;
            m27434q = true;
        }
        if (!this.f580z.equals(this.f579y)) {
            this.f580z.set(this.f579y);
        } else {
            z = m27434q;
        }
        if (z) {
            requestLayout();
        }
        return m19280t.m19299a().m19297c().m19298b().m19281s();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m27429v(getContext());
        C3218s0.m19366E(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m27430u();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                C0183e c0183e = (C0183e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) c0183e).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) c0183e).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        boolean z;
        int measuredHeight;
        m27425z();
        measureChildWithMargins(this.f569k, i, 0, i2, 0);
        C0183e c0183e = (C0183e) this.f569k.getLayoutParams();
        int max = Math.max(0, this.f569k.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0183e).leftMargin + ((ViewGroup.MarginLayoutParams) c0183e).rightMargin);
        int max2 = Math.max(0, this.f569k.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0183e).topMargin + ((ViewGroup.MarginLayoutParams) c0183e).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f569k.getMeasuredState());
        if ((C3218s0.m19333s(this) & 256) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            measuredHeight = this.f566a;
            if (this.f574t && this.f569k.getTabContainer() != null) {
                measuredHeight += this.f566a;
            }
        } else {
            measuredHeight = this.f569k.getVisibility() != 8 ? this.f569k.getMeasuredHeight() : 0;
        }
        this.f550A.set(this.f579y);
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 21) {
            this.f557H = this.f555F;
        } else {
            this.f553D.set(this.f551B);
        }
        if (!this.f573s && !z) {
            Rect rect = this.f550A;
            rect.top += measuredHeight;
            rect.bottom += 0;
            if (i3 >= 21) {
                this.f557H = this.f557H.m19288l(0, measuredHeight, 0, 0);
            }
        } else if (i3 >= 21) {
            this.f557H = new C3235t1.C3237b(this.f557H).m19275c(C6948b.m2953b(this.f557H.m19291i(), this.f557H.m19289k() + measuredHeight, this.f557H.m19290j(), this.f557H.m19292h() + 0)).m19277a();
        } else {
            Rect rect2 = this.f553D;
            rect2.top += measuredHeight;
            rect2.bottom += 0;
        }
        m27434q(this.f568d, this.f550A, true, true, true, true);
        if (i3 >= 21 && !this.f558I.equals(this.f557H)) {
            C3235t1 c3235t1 = this.f557H;
            this.f558I = c3235t1;
            C3218s0.m19348d(this.f568d, c3235t1);
        } else if (i3 < 21 && !this.f554E.equals(this.f553D)) {
            this.f554E.set(this.f553D);
            this.f568d.m27401a(this.f553D);
        }
        measureChildWithMargins(this.f568d, i, 0, i2, 0);
        C0183e c0183e2 = (C0183e) this.f568d.getLayoutParams();
        int max3 = Math.max(max, this.f568d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0183e2).leftMargin + ((ViewGroup.MarginLayoutParams) c0183e2).rightMargin);
        int max4 = Math.max(max2, this.f568d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0183e2).topMargin + ((ViewGroup.MarginLayoutParams) c0183e2).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f568d.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i) {
        boolean z;
        super.onWindowSystemUiVisibilityChanged(i);
        m27425z();
        int i2 = this.f578x ^ i;
        this.f578x = i;
        boolean z2 = false;
        if ((i & 4) == 0) {
            z = true;
        } else {
            z = false;
        }
        if ((i & 256) != 0) {
            z2 = true;
        }
        InterfaceC0182d interfaceC0182d = this.f559J;
        if (interfaceC0182d != null) {
            interfaceC0182d.mo19513c(!z2);
            if (!z && z2) {
                this.f559J.mo19512d();
            } else {
                this.f559J.mo19515a();
            }
        }
        if ((i2 & 256) != 0 && this.f559J != null) {
            C3218s0.m19366E(this);
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f567b = i;
        InterfaceC0182d interfaceC0182d = this.f559J;
        if (interfaceC0182d != null) {
            interfaceC0182d.onWindowVisibilityChanged(i);
        }
    }

    /* renamed from: p */
    public final void m27435p() {
        m27430u();
        this.f564O.run();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0016  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m27434q(android.view.View r3, android.graphics.Rect r4, boolean r5, boolean r6, boolean r7, boolean r8) {
        /*
            r2 = this;
            android.view.ViewGroup$LayoutParams r3 = r3.getLayoutParams()
            androidx.appcompat.widget.ActionBarOverlayLayout$e r3 = (androidx.appcompat.widget.ActionBarOverlayLayout.C0183e) r3
            r0 = 1
            if (r5 == 0) goto L13
            int r5 = r3.leftMargin
            int r1 = r4.left
            if (r5 == r1) goto L13
            r3.leftMargin = r1
            r5 = 1
            goto L14
        L13:
            r5 = 0
        L14:
            if (r6 == 0) goto L1f
            int r6 = r3.topMargin
            int r1 = r4.top
            if (r6 == r1) goto L1f
            r3.topMargin = r1
            r5 = 1
        L1f:
            if (r8 == 0) goto L2a
            int r6 = r3.rightMargin
            int r8 = r4.right
            if (r6 == r8) goto L2a
            r3.rightMargin = r8
            r5 = 1
        L2a:
            if (r7 == 0) goto L35
            int r6 = r3.bottomMargin
            int r4 = r4.bottom
            if (r6 == r4) goto L35
            r3.bottomMargin = r4
            goto L36
        L35:
            r0 = r5
        L36:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.m27434q(android.view.View, android.graphics.Rect, boolean, boolean, boolean, boolean):boolean");
    }

    public void setActionBarHideOffset(int i) {
        m27430u();
        this.f569k.setTranslationY(-Math.max(0, Math.min(i, this.f569k.getHeight())));
    }

    public void setIcon(Drawable drawable) {
        m27425z();
        this.f570p.setIcon(drawable);
    }

    public void setLogo(int i) {
        m27425z();
        this.f570p.mo16996l(i);
    }

    @Override // p091j.InterfaceC4231s0
    public void setWindowCallback(Window.Callback callback) {
        m27425z();
        this.f570p.setWindowCallback(callback);
    }

    @Override // p091j.InterfaceC4231s0
    public void setWindowTitle(CharSequence charSequence) {
        m27425z();
        this.f570p.setWindowTitle(charSequence);
    }

    /* renamed from: v */
    public final void m27429v(Context context) {
        boolean z;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f549Q);
        boolean z2 = false;
        this.f566a = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f571q = drawable;
        if (drawable == null) {
            z = true;
        } else {
            z = false;
        }
        setWillNotDraw(z);
        obtainStyledAttributes.recycle();
        if (context.getApplicationInfo().targetSdkVersion < 19) {
            z2 = true;
        }
        this.f572r = z2;
        this.f560K = new OverScroller(context);
    }

    /* renamed from: x */
    public final void m27427x() {
        m27430u();
        postDelayed(this.f564O, 600L);
    }

    /* renamed from: y */
    public final void m27426y() {
        m27430u();
        postDelayed(this.f563N, 600L);
    }
}
