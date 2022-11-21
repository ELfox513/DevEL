package androidx.core.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;
import com.prineside.tdi2.tiles.CoreTile;
import java.util.ArrayList;
import p038d0.C3150a;
import p038d0.C3214r;
import p038d0.C3218s0;
import p038d0.C3253v;
import p038d0.InterfaceC3211q;
import p038d0.InterfaceC3233t;
import p047e0.C3346j;
import p047e0.C3349l;
import p056f0.C3437h;
import p154q.C5378a;
/* loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements InterfaceC3233t, InterfaceC3211q {

    /* renamed from: L */
    public static final C0238a f855L = new C0238a();

    /* renamed from: M */
    public static final int[] f856M = {16843130};

    /* renamed from: A */
    public int f857A;

    /* renamed from: B */
    public int f858B;

    /* renamed from: C */
    public final int[] f859C;

    /* renamed from: D */
    public final int[] f860D;

    /* renamed from: E */
    public int f861E;

    /* renamed from: F */
    public int f862F;

    /* renamed from: G */
    public C0240c f863G;

    /* renamed from: H */
    public final C3253v f864H;

    /* renamed from: I */
    public final C3214r f865I;

    /* renamed from: J */
    public float f866J;

    /* renamed from: K */
    public InterfaceC0239b f867K;

    /* renamed from: a */
    public long f868a;

    /* renamed from: b */
    public final Rect f869b;

    /* renamed from: d */
    public OverScroller f870d;

    /* renamed from: k */
    public EdgeEffect f871k;

    /* renamed from: p */
    public EdgeEffect f872p;

    /* renamed from: q */
    public int f873q;

    /* renamed from: r */
    public boolean f874r;

    /* renamed from: s */
    public boolean f875s;

    /* renamed from: t */
    public View f876t;

    /* renamed from: u */
    public boolean f877u;

    /* renamed from: v */
    public VelocityTracker f878v;

    /* renamed from: w */
    public boolean f879w;

    /* renamed from: x */
    public boolean f880x;

    /* renamed from: y */
    public int f881y;

    /* renamed from: z */
    public int f882z;

    /* renamed from: androidx.core.widget.NestedScrollView$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0239b {
        /* renamed from: a */
        void mo27169a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4);
    }

    /* renamed from: androidx.core.widget.NestedScrollView$c */
    /* loaded from: classes.dex */
    public static class C0240c extends View.BaseSavedState {
        public static final Parcelable.Creator<C0240c> CREATOR = new C0241a();

        /* renamed from: a */
        public int f883a;

        /* renamed from: androidx.core.widget.NestedScrollView$c$a */
        /* loaded from: classes.dex */
        public class C0241a implements Parcelable.Creator<C0240c> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public C0240c createFromParcel(Parcel parcel) {
                return new C0240c(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public C0240c[] newArray(int i) {
                return new C0240c[i];
            }
        }

        public C0240c(Parcelable parcelable) {
            super(parcelable);
        }

        public C0240c(Parcel parcel) {
            super(parcel);
            this.f883a = parcel.readInt();
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f883a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f883a);
        }
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C5378a.f19988b);
    }

    /* renamed from: A */
    public static boolean m27206A(View view, View view2) {
        if (view == view2) {
            return true;
        }
        ViewParent parent = view.getParent();
        return (parent instanceof ViewGroup) && m27206A((View) parent, view2);
    }

    /* renamed from: d */
    public static int m27186d(int i, int i2, int i3) {
        if (i2 >= i3 || i < 0) {
            return 0;
        }
        return i2 + i > i3 ? i3 - i2 : i;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0083 A[ADDED_TO_REGION] */
    /* renamed from: E */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m27202E(int r13, int r14, int r15, int r16, int r17, int r18, int r19, int r20, boolean r21) {
        /*
            r12 = this;
            r0 = r12
            int r1 = r12.getOverScrollMode()
            int r2 = r12.computeHorizontalScrollRange()
            int r3 = r12.computeHorizontalScrollExtent()
            r4 = 0
            r5 = 1
            if (r2 <= r3) goto L13
            r2 = 1
            goto L14
        L13:
            r2 = 0
        L14:
            int r3 = r12.computeVerticalScrollRange()
            int r6 = r12.computeVerticalScrollExtent()
            if (r3 <= r6) goto L20
            r3 = 1
            goto L21
        L20:
            r3 = 0
        L21:
            if (r1 == 0) goto L2a
            if (r1 != r5) goto L28
            if (r2 == 0) goto L28
            goto L2a
        L28:
            r2 = 0
            goto L2b
        L2a:
            r2 = 1
        L2b:
            if (r1 == 0) goto L34
            if (r1 != r5) goto L32
            if (r3 == 0) goto L32
            goto L34
        L32:
            r1 = 0
            goto L35
        L34:
            r1 = 1
        L35:
            int r3 = r15 + r13
            if (r2 != 0) goto L3b
            r2 = 0
            goto L3d
        L3b:
            r2 = r19
        L3d:
            int r6 = r16 + r14
            if (r1 != 0) goto L43
            r1 = 0
            goto L45
        L43:
            r1 = r20
        L45:
            int r7 = -r2
            int r2 = r2 + r17
            int r8 = -r1
            int r1 = r1 + r18
            if (r3 <= r2) goto L50
            r3 = r2
        L4e:
            r2 = 1
            goto L55
        L50:
            if (r3 >= r7) goto L54
            r3 = r7
            goto L4e
        L54:
            r2 = 0
        L55:
            if (r6 <= r1) goto L5a
            r6 = r1
        L58:
            r1 = 1
            goto L5f
        L5a:
            if (r6 >= r8) goto L5e
            r6 = r8
            goto L58
        L5e:
            r1 = 0
        L5f:
            if (r1 == 0) goto L7e
            boolean r7 = r12.m27175u(r5)
            if (r7 != 0) goto L7e
            android.widget.OverScroller r7 = r0.f870d
            r8 = 0
            r9 = 0
            r10 = 0
            int r11 = r12.getScrollRange()
            r13 = r7
            r14 = r3
            r15 = r6
            r16 = r8
            r17 = r9
            r18 = r10
            r19 = r11
            r13.springBack(r14, r15, r16, r17, r18, r19)
        L7e:
            r12.onOverScrolled(r3, r6, r2, r1)
            if (r2 != 0) goto L85
            if (r1 == 0) goto L86
        L85:
            r4 = 1
        L86:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.m27202E(int, int, int, int, int, int, int, int, boolean):boolean");
    }

    /* renamed from: F */
    public boolean m27201F(int i) {
        boolean z;
        if (i == 130) {
            z = true;
        } else {
            z = false;
        }
        int height = getHeight();
        if (z) {
            this.f869b.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
                Rect rect = this.f869b;
                if (rect.top + height > bottom) {
                    rect.top = bottom - height;
                }
            }
        } else {
            this.f869b.top = getScrollY() - height;
            Rect rect2 = this.f869b;
            if (rect2.top < 0) {
                rect2.top = 0;
            }
        }
        Rect rect3 = this.f869b;
        int i2 = rect3.top;
        int i3 = height + i2;
        rect3.bottom = i3;
        return m27198I(i, i2, i3);
    }

    /* renamed from: H */
    public final void m27199H(boolean z) {
        if (z) {
            m27191P(2, 1);
        } else {
            m27190Q(1);
        }
        this.f862F = getScrollY();
        C3218s0.m19369B(this);
    }

    /* renamed from: L */
    public final void m27195L(int i, int i2) {
        m27194M(i, i2, 250, false);
    }

    /* renamed from: N */
    public void m27193N(int i, int i2, int i3, boolean z) {
        m27194M(i - getScrollX(), i2 - getScrollY(), i3, z);
    }

    /* renamed from: O */
    public void m27192O(int i, int i2, boolean z) {
        m27193N(i, i2, 250, z);
    }

    /* renamed from: P */
    public boolean m27191P(int i, int i2) {
        return this.f865I.m19378m(i, i2);
    }

    /* renamed from: Q */
    public void m27190Q(int i) {
        this.f865I.m19377n(i);
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (getChildCount() <= 0) {
            super.addView(view);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m27179q(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f865I.m19390a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f865I.m19389b(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return m27184f(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f865I.m19386e(i, i2, i3, i4, iArr);
    }

    /* renamed from: f */
    public boolean m27184f(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return this.f865I.m19388c(i, i2, iArr, iArr2, i3);
    }

    /* renamed from: g */
    public void m27183g(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        this.f865I.m19387d(i, i2, i3, i4, iArr, i5, iArr2);
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f864H.m19238a();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return m27175u(0);
    }

    /* renamed from: i */
    public final void m27181i() {
        this.f877u = false;
        m27200G();
        m27190Q(0);
        EdgeEffect edgeEffect = this.f871k;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            this.f872p.onRelease();
        }
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.f865I.m19381j();
    }

    @Override // p038d0.InterfaceC3233t
    /* renamed from: j */
    public void mo19301j(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        m27204C(i4, i5, iArr);
    }

    @Override // p038d0.InterfaceC3217s
    /* renamed from: k */
    public void mo19375k(View view, int i, int i2, int i3, int i4, int i5) {
        m27204C(i4, i5, null);
    }

    @Override // p038d0.InterfaceC3217s
    /* renamed from: l */
    public boolean mo19374l(View view, View view2, int i, int i2) {
        return (i & 2) != 0;
    }

    @Override // p038d0.InterfaceC3217s
    /* renamed from: o */
    public void mo19371o(View view, int i, int i2, int[] iArr, int i3) {
        m27184f(i, i2, iArr, null, i3);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p038d0.InterfaceC3250u
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p038d0.InterfaceC3250u
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo19371o(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p038d0.InterfaceC3250u
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        m27204C(i4, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p038d0.InterfaceC3250u
    public void onNestedScrollAccepted(View view, View view2, int i) {
        mo19373m(view, view2, i, 0);
    }

    @Override // android.view.View
    public void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.scrollTo(i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        View findNextFocusFromRect;
        if (i == 2) {
            i = 130;
        } else if (i == 1) {
            i = 33;
        }
        if (rect == null) {
            findNextFocusFromRect = FocusFinder.getInstance().findNextFocus(this, null, i);
        } else {
            findNextFocusFromRect = FocusFinder.getInstance().findNextFocusFromRect(this, rect, i);
        }
        if (findNextFocusFromRect == null || m27170z(findNextFocusFromRect)) {
            return false;
        }
        return findNextFocusFromRect.requestFocus(i, rect);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p038d0.InterfaceC3250u
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return mo19374l(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p038d0.InterfaceC3250u
    public void onStopNestedScroll(View view) {
        mo19372n(view, 0);
    }

    /* renamed from: r */
    public final View m27178r(boolean z, int i, int i2) {
        boolean z2;
        boolean z3;
        ArrayList<View> focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z4 = false;
        for (int i3 = 0; i3 < size; i3++) {
            View view2 = focusables.get(i3);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i < bottom && top < i2) {
                if (i < top && bottom < i2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (view == null) {
                    view = view2;
                    z4 = z2;
                } else {
                    if ((z && top < view.getTop()) || (!z && bottom > view.getBottom())) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (z4) {
                        if (z2) {
                            if (!z3) {
                            }
                            view = view2;
                        }
                    } else if (z2) {
                        view = view2;
                        z4 = true;
                    } else {
                        if (!z3) {
                        }
                        view = view2;
                    }
                }
            }
        }
        return view;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f874r = true;
        super.requestLayout();
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.f865I.m19380k(z);
    }

    public void setOnScrollChangeListener(InterfaceC0239b interfaceC0239b) {
        this.f867K = interfaceC0239b;
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.f880x = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return m27191P(i, 0);
    }

    @Override // android.view.View, p038d0.InterfaceC3211q
    public void stopNestedScroll() {
        m27190Q(0);
    }

    /* renamed from: t */
    public boolean m27176t(int i) {
        boolean z;
        int childCount;
        if (i == 130) {
            z = true;
        } else {
            z = false;
        }
        int height = getHeight();
        Rect rect = this.f869b;
        rect.top = 0;
        rect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.f869b.bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
            Rect rect2 = this.f869b;
            rect2.top = rect2.bottom - height;
        }
        Rect rect3 = this.f869b;
        return m27198I(i, rect3.top, rect3.bottom);
    }

    /* renamed from: u */
    public boolean m27175u(int i) {
        return this.f865I.m19382i(i);
    }

    /* renamed from: z */
    public final boolean m27170z(View view) {
        return !m27205B(view, 0, getHeight());
    }

    /* renamed from: androidx.core.widget.NestedScrollView$a */
    /* loaded from: classes.dex */
    public static class C0238a extends C3150a {
        @Override // p038d0.C3150a
        /* renamed from: f */
        public void mo19488f(View view, AccessibilityEvent accessibilityEvent) {
            boolean z;
            super.mo19488f(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            if (nestedScrollView.getScrollRange() > 0) {
                z = true;
            } else {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            C3349l.m19043a(accessibilityEvent, nestedScrollView.getScrollX());
            C3349l.m19042b(accessibilityEvent, nestedScrollView.getScrollRange());
        }

        @Override // p038d0.C3150a
        /* renamed from: g */
        public void mo19487g(View view, C3346j c3346j) {
            int scrollRange;
            super.mo19487g(view, c3346j);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            c3346j.m19081I(ScrollView.class.getName());
            if (nestedScrollView.isEnabled() && (scrollRange = nestedScrollView.getScrollRange()) > 0) {
                c3346j.m19077M(true);
                if (nestedScrollView.getScrollY() > 0) {
                    c3346j.m19073a(C3346j.C3347a.f15712r);
                    c3346j.m19073a(C3346j.C3347a.f15684C);
                }
                if (nestedScrollView.getScrollY() < scrollRange) {
                    c3346j.m19073a(C3346j.C3347a.f15711q);
                    c3346j.m19073a(C3346j.C3347a.f15686E);
                }
            }
        }

        @Override // p038d0.C3150a
        /* renamed from: j */
        public boolean mo19484j(View view, int i, Bundle bundle) {
            if (super.mo19484j(view, i, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            if (i != 4096) {
                if (i != 8192 && i != 16908344) {
                    if (i != 16908346) {
                        return false;
                    }
                } else {
                    int max = Math.max(nestedScrollView.getScrollY() - ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                    if (max == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.m27192O(0, max, true);
                    return true;
                }
            }
            int min = Math.min(nestedScrollView.getScrollY() + ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
            if (min == nestedScrollView.getScrollY()) {
                return false;
            }
            nestedScrollView.m27192O(0, min, true);
            return true;
        }
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f869b = new Rect();
        this.f874r = true;
        this.f875s = false;
        this.f876t = null;
        this.f877u = false;
        this.f880x = true;
        this.f858B = -1;
        this.f859C = new int[2];
        this.f860D = new int[2];
        m27172x();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f856M, i, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.f864H = new C3253v(this);
        this.f865I = new C3214r(this);
        setNestedScrollingEnabled(true);
        C3218s0.m19363H(this, f855L);
    }

    private float getVerticalScrollFactorCompat() {
        if (this.f866J == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                this.f866J = typedValue.getDimension(context.getResources().getDisplayMetrics());
            } else {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
        }
        return this.f866J;
    }

    /* renamed from: B */
    public final boolean m27205B(View view, int i, int i2) {
        view.getDrawingRect(this.f869b);
        offsetDescendantRectToMyCoords(view, this.f869b);
        if (this.f869b.bottom + i >= getScrollY() && this.f869b.top - i <= getScrollY() + i2) {
            return true;
        }
        return false;
    }

    /* renamed from: G */
    public final void m27200G() {
        VelocityTracker velocityTracker = this.f878v;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f878v = null;
        }
    }

    /* renamed from: J */
    public final void m27197J(View view) {
        view.getDrawingRect(this.f869b);
        offsetDescendantRectToMyCoords(view, this.f869b);
        int m27185e = m27185e(this.f869b);
        if (m27185e != 0) {
            scrollBy(0, m27185e);
        }
    }

    /* renamed from: a */
    public final void m27189a() {
        this.f870d.abortAnimation();
        m27190Q(1);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f870d.isFinished()) {
            return;
        }
        this.f870d.computeScrollOffset();
        int currY = this.f870d.getCurrY();
        int i = currY - this.f862F;
        this.f862F = currY;
        int[] iArr = this.f860D;
        boolean z = false;
        iArr[1] = 0;
        m27184f(0, i, iArr, null, 1);
        int i2 = i - this.f860D[1];
        int scrollRange = getScrollRange();
        if (i2 != 0) {
            int scrollY = getScrollY();
            m27202E(0, i2, getScrollX(), scrollY, 0, scrollRange, 0, 0, false);
            int scrollY2 = getScrollY() - scrollY;
            int i3 = i2 - scrollY2;
            int[] iArr2 = this.f860D;
            iArr2[1] = 0;
            m27183g(0, scrollY2, 0, i3, this.f859C, 1, iArr2);
            i2 = i3 - this.f860D[1];
        }
        if (i2 != 0) {
            int overScrollMode = getOverScrollMode();
            if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                z = true;
            }
            if (z) {
                m27180p();
                if (i2 < 0) {
                    if (this.f871k.isFinished()) {
                        this.f871k.onAbsorb((int) this.f870d.getCurrVelocity());
                    }
                } else if (this.f872p.isFinished()) {
                    this.f872p.onAbsorb((int) this.f870d.getCurrVelocity());
                }
            }
            m27189a();
        }
        if (!this.f870d.isFinished()) {
            C3218s0.m19369B(this);
        } else {
            m27190Q(1);
        }
    }

    /* renamed from: h */
    public final void m27182h(int i) {
        if (i != 0) {
            if (this.f880x) {
                m27195L(0, i);
            } else {
                scrollBy(0, i);
            }
        }
    }

    @Override // p038d0.InterfaceC3217s
    /* renamed from: m */
    public void mo19373m(View view, View view2, int i, int i2) {
        this.f864H.m19236c(view, view2, i, i2);
        m27191P(2, i2);
    }

    @Override // p038d0.InterfaceC3217s
    /* renamed from: n */
    public void mo19372n(View view, int i) {
        this.f864H.m19235d(view, i);
        m27190Q(i);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p038d0.InterfaceC3250u
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!z) {
            dispatchNestedFling(0.0f, f2, true);
            m27177s((int) f2);
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0240c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0240c c0240c = (C0240c) parcelable;
        super.onRestoreInstanceState(c0240c.getSuperState());
        this.f863G = c0240c;
        requestLayout();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        boolean z;
        m27171y();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f861E = 0;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(0.0f, this.f861E);
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked != 5) {
                            if (actionMasked == 6) {
                                m27203D(motionEvent);
                                this.f873q = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f858B));
                            }
                        } else {
                            int actionIndex = motionEvent.getActionIndex();
                            this.f873q = (int) motionEvent.getY(actionIndex);
                            this.f858B = motionEvent.getPointerId(actionIndex);
                        }
                    } else {
                        if (this.f877u && getChildCount() > 0 && this.f870d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                            C3218s0.m19369B(this);
                        }
                        this.f858B = -1;
                        m27181i();
                    }
                } else {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f858B);
                    if (findPointerIndex == -1) {
                        Log.e("NestedScrollView", "Invalid pointerId=" + this.f858B + " in onTouchEvent");
                    } else {
                        int y = (int) motionEvent.getY(findPointerIndex);
                        int i = this.f873q - y;
                        if (!this.f877u && Math.abs(i) > this.f881y) {
                            ViewParent parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                            this.f877u = true;
                            i = i > 0 ? i - this.f881y : i + this.f881y;
                        }
                        int i2 = i;
                        if (this.f877u) {
                            if (m27184f(0, i2, this.f860D, this.f859C, 0)) {
                                i2 -= this.f860D[1];
                                this.f861E += this.f859C[1];
                            }
                            int i3 = i2;
                            this.f873q = y - this.f859C[1];
                            int scrollY = getScrollY();
                            int scrollRange = getScrollRange();
                            int overScrollMode = getOverScrollMode();
                            if (overScrollMode != 0 && (overScrollMode != 1 || scrollRange <= 0)) {
                                z = false;
                            } else {
                                z = true;
                            }
                            if (m27202E(0, i3, 0, getScrollY(), 0, scrollRange, 0, 0, true) && !m27175u(0)) {
                                this.f878v.clear();
                            }
                            int scrollY2 = getScrollY() - scrollY;
                            int[] iArr = this.f860D;
                            iArr[1] = 0;
                            m27183g(0, scrollY2, 0, i3 - scrollY2, this.f859C, 0, iArr);
                            int i4 = this.f873q;
                            int i5 = this.f859C[1];
                            this.f873q = i4 - i5;
                            this.f861E += i5;
                            if (z) {
                                int i6 = i3 - this.f860D[1];
                                m27180p();
                                int i7 = scrollY + i6;
                                if (i7 < 0) {
                                    C3437h.m18834a(this.f871k, i6 / getHeight(), motionEvent.getX(findPointerIndex) / getWidth());
                                    if (!this.f872p.isFinished()) {
                                        this.f872p.onRelease();
                                    }
                                } else if (i7 > scrollRange) {
                                    C3437h.m18834a(this.f872p, i6 / getHeight(), 1.0f - (motionEvent.getX(findPointerIndex) / getWidth()));
                                    if (!this.f871k.isFinished()) {
                                        this.f871k.onRelease();
                                    }
                                }
                                EdgeEffect edgeEffect = this.f871k;
                                if (edgeEffect != null && (!edgeEffect.isFinished() || !this.f872p.isFinished())) {
                                    C3218s0.m19369B(this);
                                }
                            }
                        }
                    }
                }
            } else {
                VelocityTracker velocityTracker = this.f878v;
                velocityTracker.computeCurrentVelocity(CoreTile.FIXED_LEVEL_XP_REQUIREMENT, this.f857A);
                int yVelocity = (int) velocityTracker.getYVelocity(this.f858B);
                if (Math.abs(yVelocity) >= this.f882z) {
                    int i8 = -yVelocity;
                    float f = i8;
                    if (!dispatchNestedPreFling(0.0f, f)) {
                        dispatchNestedFling(0.0f, f, true);
                        m27177s(i8);
                    }
                } else if (this.f870d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    C3218s0.m19369B(this);
                }
                this.f858B = -1;
                m27181i();
            }
        } else if (getChildCount() == 0) {
            return false;
        } else {
            boolean z2 = !this.f870d.isFinished();
            this.f877u = z2;
            if (z2 && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f870d.isFinished()) {
                m27189a();
            }
            this.f873q = (int) motionEvent.getY();
            this.f858B = motionEvent.getPointerId(0);
            m27191P(2, 0);
        }
        VelocityTracker velocityTracker2 = this.f878v;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    /* renamed from: q */
    public boolean m27179q(KeyEvent keyEvent) {
        this.f869b.setEmpty();
        int i = 130;
        if (!m27187c()) {
            if (!isFocused() || keyEvent.getKeyCode() == 4) {
                return false;
            }
            View findFocus = findFocus();
            if (findFocus == this) {
                findFocus = null;
            }
            View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, 130);
            if (findNextFocus == null || findNextFocus == this || !findNextFocus.requestFocus(130)) {
                return false;
            }
            return true;
        } else if (keyEvent.getAction() != 0) {
            return false;
        } else {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 19) {
                if (keyCode != 20) {
                    if (keyCode != 62) {
                        return false;
                    }
                    if (keyEvent.isShiftPressed()) {
                        i = 33;
                    }
                    m27201F(i);
                    return false;
                } else if (!keyEvent.isAltPressed()) {
                    return m27188b(130);
                } else {
                    return m27176t(130);
                }
            } else if (!keyEvent.isAltPressed()) {
                return m27188b(33);
            } else {
                return m27176t(33);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f874r) {
            m27197J(view2);
        } else {
            this.f876t = view2;
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            m27200G();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    public void setFillViewport(boolean z) {
        if (z != this.f879w) {
            this.f879w = z;
            requestLayout();
        }
    }

    /* renamed from: w */
    public final void m27173w() {
        VelocityTracker velocityTracker = this.f878v;
        if (velocityTracker == null) {
            this.f878v = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    /* renamed from: x */
    public final void m27172x() {
        this.f870d = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f881y = viewConfiguration.getScaledTouchSlop();
        this.f882z = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f857A = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    /* renamed from: y */
    public final void m27171y() {
        if (this.f878v == null) {
            this.f878v = VelocityTracker.obtain();
        }
    }

    /* renamed from: C */
    public final void m27204C(int i, int i2, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f865I.m19387d(0, scrollY2, 0, i - scrollY2, null, i2, iArr);
    }

    /* renamed from: D */
    public final void m27203D(MotionEvent motionEvent) {
        int i;
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f858B) {
            if (actionIndex == 0) {
                i = 1;
            } else {
                i = 0;
            }
            this.f873q = (int) motionEvent.getY(i);
            this.f858B = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f878v;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* renamed from: I */
    public final boolean m27198I(int i, int i2, int i3) {
        boolean z;
        int i4;
        int height = getHeight();
        int scrollY = getScrollY();
        int i5 = height + scrollY;
        boolean z2 = false;
        if (i == 33) {
            z = true;
        } else {
            z = false;
        }
        View m27178r = m27178r(z, i2, i3);
        if (m27178r == null) {
            m27178r = this;
        }
        if (i2 < scrollY || i3 > i5) {
            if (z) {
                i4 = i2 - scrollY;
            } else {
                i4 = i3 - i5;
            }
            m27182h(i4);
            z2 = true;
        }
        if (m27178r != findFocus()) {
            m27178r.requestFocus(i);
        }
        return z2;
    }

    /* renamed from: K */
    public final boolean m27196K(Rect rect, boolean z) {
        boolean z2;
        int m27185e = m27185e(rect);
        if (m27185e != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            if (z) {
                scrollBy(0, m27185e);
            } else {
                m27195L(0, m27185e);
            }
        }
        return z2;
    }

    /* renamed from: M */
    public final void m27194M(int i, int i2, int i3, boolean z) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f868a > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int scrollY = getScrollY();
            OverScroller overScroller = this.f870d;
            int scrollX = getScrollX();
            overScroller.startScroll(scrollX, scrollY, 0, Math.max(0, Math.min(i2 + scrollY, Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom())))) - scrollY, i3);
            m27199H(z);
        } else {
            if (!this.f870d.isFinished()) {
                m27189a();
            }
            scrollBy(i, i2);
        }
        this.f868a = AnimationUtils.currentAnimationTimeMillis();
    }

    /* renamed from: b */
    public boolean m27188b(int i) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus != null && m27205B(findNextFocus, maxScrollAmount, getHeight())) {
            findNextFocus.getDrawingRect(this.f869b);
            offsetDescendantRectToMyCoords(findNextFocus, this.f869b);
            m27182h(m27185e(this.f869b));
            findNextFocus.requestFocus(i);
        } else {
            if (i == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getScrollY() + getHeight()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            m27182h(maxScrollAmount);
        }
        if (findFocus != null && findFocus.isFocused() && m27170z(findFocus)) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
            return true;
        }
        return true;
    }

    /* renamed from: c */
    public final boolean m27187c() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        if (childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin <= (getHeight() - getPaddingTop()) - getPaddingBottom()) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        if (scrollY < 0) {
            return bottom - scrollY;
        }
        if (scrollY > max) {
            return bottom + (scrollY - max);
        }
        return bottom;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int paddingLeft;
        super.draw(canvas);
        if (this.f871k != null) {
            int scrollY = getScrollY();
            int i = 0;
            if (!this.f871k.isFinished()) {
                int save = canvas.save();
                int width = getWidth();
                int height = getHeight();
                int min = Math.min(0, scrollY);
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 21 && !getClipToPadding()) {
                    paddingLeft = 0;
                } else {
                    width -= getPaddingLeft() + getPaddingRight();
                    paddingLeft = getPaddingLeft() + 0;
                }
                if (i2 >= 21 && getClipToPadding()) {
                    height -= getPaddingTop() + getPaddingBottom();
                    min += getPaddingTop();
                }
                canvas.translate(paddingLeft, min);
                this.f871k.setSize(width, height);
                if (this.f871k.draw(canvas)) {
                    C3218s0.m19369B(this);
                }
                canvas.restoreToCount(save);
            }
            if (!this.f872p.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = getHeight();
                int max = Math.max(getScrollRange(), scrollY) + height2;
                int i3 = Build.VERSION.SDK_INT;
                if (i3 < 21 || getClipToPadding()) {
                    width2 -= getPaddingLeft() + getPaddingRight();
                    i = 0 + getPaddingLeft();
                }
                if (i3 >= 21 && getClipToPadding()) {
                    height2 -= getPaddingTop() + getPaddingBottom();
                    max -= getPaddingBottom();
                }
                canvas.translate(i - width2, max);
                canvas.rotate(180.0f, width2, 0.0f);
                this.f872p.setSize(width2, height2);
                if (this.f872p.draw(canvas)) {
                    C3218s0.m19369B(this);
                }
                canvas.restoreToCount(save2);
            }
        }
    }

    /* renamed from: e */
    public int m27185e(Rect rect) {
        int i;
        int i2;
        int i3;
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        if (rect.bottom < childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin) {
            i = i4 - verticalFadingEdgeLength;
        } else {
            i = i4;
        }
        int i5 = rect.bottom;
        if (i5 > i && rect.top > scrollY) {
            if (rect.height() > height) {
                i3 = rect.top - scrollY;
            } else {
                i3 = rect.bottom - i;
            }
            return Math.min(i3 + 0, (childAt.getBottom() + layoutParams.bottomMargin) - i4);
        } else if (rect.top >= scrollY || i5 >= i) {
            return 0;
        } else {
            if (rect.height() > height) {
                i2 = 0 - (i - rect.bottom);
            } else {
                i2 = 0 - (scrollY - rect.top);
            }
            return Math.max(i2, -getScrollY());
        }
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // android.view.ViewGroup
    public void measureChild(View view, int i, int i2) {
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f875s = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8 && !this.f877u) {
            float axisValue = motionEvent.getAxisValue(9);
            if (axisValue != 0.0f) {
                int scrollRange = getScrollRange();
                int scrollY = getScrollY();
                int verticalScrollFactorCompat = scrollY - ((int) (axisValue * getVerticalScrollFactorCompat()));
                if (verticalScrollFactorCompat < 0) {
                    scrollRange = 0;
                } else if (verticalScrollFactorCompat <= scrollRange) {
                    scrollRange = verticalScrollFactorCompat;
                }
                if (scrollRange != scrollY) {
                    super.scrollTo(getScrollX(), scrollRange);
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 2 && this.f877u) {
            return true;
        }
        int i = action & 255;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 6) {
                            m27203D(motionEvent);
                        }
                    }
                } else {
                    int i2 = this.f858B;
                    if (i2 != -1) {
                        int findPointerIndex = motionEvent.findPointerIndex(i2);
                        if (findPointerIndex == -1) {
                            Log.e("NestedScrollView", "Invalid pointerId=" + i2 + " in onInterceptTouchEvent");
                        } else {
                            int y = (int) motionEvent.getY(findPointerIndex);
                            if (Math.abs(y - this.f873q) > this.f881y && (2 & getNestedScrollAxes()) == 0) {
                                this.f877u = true;
                                this.f873q = y;
                                m27171y();
                                this.f878v.addMovement(motionEvent);
                                this.f861E = 0;
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                            }
                        }
                    }
                }
            }
            this.f877u = false;
            this.f858B = -1;
            m27200G();
            if (this.f870d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                C3218s0.m19369B(this);
            }
            m27190Q(0);
        } else {
            int y2 = (int) motionEvent.getY();
            if (!m27174v((int) motionEvent.getX(), y2)) {
                this.f877u = false;
                m27200G();
            } else {
                this.f873q = y2;
                this.f858B = motionEvent.getPointerId(0);
                m27173w();
                this.f878v.addMovement(motionEvent);
                this.f870d.computeScrollOffset();
                this.f877u = !this.f870d.isFinished();
                m27191P(2, 0);
            }
        }
        return this.f877u;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = 0;
        this.f874r = false;
        View view = this.f876t;
        if (view != null && m27206A(view, this)) {
            m27197J(this.f876t);
        }
        this.f876t = null;
        if (!this.f875s) {
            if (this.f863G != null) {
                scrollTo(getScrollX(), this.f863G.f883a);
                this.f863G = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i5 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            int m27186d = m27186d(scrollY, paddingTop, i5);
            if (m27186d != scrollY) {
                scrollTo(getScrollX(), m27186d);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f875s = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f879w && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C0240c c0240c = new C0240c(super.onSaveInstanceState());
        c0240c.f883a = getScrollY();
        return c0240c;
    }

    @Override // android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        InterfaceC0239b interfaceC0239b = this.f867K;
        if (interfaceC0239b != null) {
            interfaceC0239b.mo27169a(this, i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus != null && this != findFocus && m27205B(findFocus, 0, i4)) {
            findFocus.getDrawingRect(this.f869b);
            offsetDescendantRectToMyCoords(findFocus, this.f869b);
            m27182h(m27185e(this.f869b));
        }
    }

    /* renamed from: p */
    public final void m27180p() {
        if (getOverScrollMode() != 2) {
            if (this.f871k == null) {
                Context context = getContext();
                this.f871k = new EdgeEffect(context);
                this.f872p = new EdgeEffect(context);
                return;
            }
            return;
        }
        this.f871k = null;
        this.f872p = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return m27196K(rect, z);
    }

    /* renamed from: s */
    public void m27177s(int i) {
        if (getChildCount() > 0) {
            this.f870d.fling(getScrollX(), getScrollY(), 0, i, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            m27199H(true);
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int m27186d = m27186d(i, (getWidth() - getPaddingLeft()) - getPaddingRight(), childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin);
            int m27186d2 = m27186d(i2, (getHeight() - getPaddingTop()) - getPaddingBottom(), childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin);
            if (m27186d != getScrollX() || m27186d2 != getScrollY()) {
                super.scrollTo(m27186d, m27186d2);
            }
        }
    }

    /* renamed from: v */
    public final boolean m27174v(int i, int i2) {
        if (getChildCount() <= 0) {
            return false;
        }
        int scrollY = getScrollY();
        View childAt = getChildAt(0);
        if (i2 < childAt.getTop() - scrollY || i2 >= childAt.getBottom() - scrollY || i < childAt.getLeft() || i >= childAt.getRight()) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i) {
        if (getChildCount() <= 0) {
            super.addView(view, i);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }
}
