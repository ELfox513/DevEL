package androidx.appcompat.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.C0162e;
import p021c.C1008a;
import p021c.C1013f;
import p021c.C1014g;
import p021c.C1017j;
import p038d0.C3208p1;
import p038d0.C3218s0;
import p073h.AbstractC3911b;
import p091j.AbstractC4154a;
import p091j.C4235t1;
import p091j.C4270z1;
/* loaded from: classes.dex */
public class ActionBarContextView extends AbstractC4154a {

    /* renamed from: A */
    public int f536A;

    /* renamed from: B */
    public int f537B;

    /* renamed from: C */
    public boolean f538C;

    /* renamed from: D */
    public int f539D;

    /* renamed from: t */
    public CharSequence f540t;

    /* renamed from: u */
    public CharSequence f541u;

    /* renamed from: v */
    public View f542v;

    /* renamed from: w */
    public View f543w;

    /* renamed from: x */
    public LinearLayout f544x;

    /* renamed from: y */
    public TextView f545y;

    /* renamed from: z */
    public TextView f546z;

    /* renamed from: androidx.appcompat.widget.ActionBarContextView$a */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC0178a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC3911b f547a;

        public View$OnClickListenerC0178a(AbstractC3911b abstractC3911b) {
            this.f547a = abstractC3911b;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f547a.mo17767c();
        }
    }

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    @Override // p091j.AbstractC4154a
    /* renamed from: f */
    public /* bridge */ /* synthetic */ C3208p1 mo17262f(int i, long j) {
        return super.mo17262f(i, j);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // p091j.AbstractC4154a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // p091j.AbstractC4154a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f541u;
    }

    public CharSequence getTitle() {
        return this.f540t;
    }

    /* renamed from: j */
    public boolean m27440j() {
        return this.f538C;
    }

    @Override // p091j.AbstractC4154a, android.view.View
    public /* bridge */ /* synthetic */ boolean onHoverEvent(MotionEvent motionEvent) {
        return super.onHoverEvent(motionEvent);
    }

    @Override // p091j.AbstractC4154a, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // p091j.AbstractC4154a
    public void setContentHeight(int i) {
        this.f17813p = i;
    }

    @Override // p091j.AbstractC4154a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1008a.f2514j);
    }

    /* renamed from: g */
    public void m27443g() {
        if (this.f542v == null) {
            m27439k();
        }
    }

    /* renamed from: h */
    public void m27442h(AbstractC3911b abstractC3911b) {
        View view = this.f542v;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.f539D, (ViewGroup) this, false);
            this.f542v = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.f542v);
        }
        this.f542v.findViewById(C1013f.f2622i).setOnClickListener(new View$OnClickListenerC0178a(abstractC3911b));
        C0162e c0162e = (C0162e) abstractC3911b.mo17765e();
        C0217a c0217a = this.f17812k;
        if (c0217a != null) {
            c0217a.m27273y();
        }
        C0217a c0217a2 = new C0217a(getContext());
        this.f17812k = c0217a2;
        c0217a2.m27291J(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        c0162e.m27522c(this.f17812k, this.f17810b);
        ActionMenuView actionMenuView = (ActionMenuView) this.f17812k.mo27282o(this);
        this.f17811d = actionMenuView;
        C3218s0.m19362I(actionMenuView, null);
        addView(this.f17811d, layoutParams);
    }

    /* renamed from: i */
    public final void m27441i() {
        int i;
        if (this.f544x == null) {
            LayoutInflater.from(getContext()).inflate(C1014g.f2640a, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f544x = linearLayout;
            this.f545y = (TextView) linearLayout.findViewById(C1013f.f2618e);
            this.f546z = (TextView) this.f544x.findViewById(C1013f.f2617d);
            if (this.f536A != 0) {
                this.f545y.setTextAppearance(getContext(), this.f536A);
            }
            if (this.f537B != 0) {
                this.f546z.setTextAppearance(getContext(), this.f537B);
            }
        }
        this.f545y.setText(this.f540t);
        this.f546z.setText(this.f541u);
        boolean z = !TextUtils.isEmpty(this.f540t);
        boolean z2 = !TextUtils.isEmpty(this.f541u);
        TextView textView = this.f546z;
        int i2 = 0;
        if (z2) {
            i = 0;
        } else {
            i = 8;
        }
        textView.setVisibility(i);
        LinearLayout linearLayout2 = this.f544x;
        if (!z && !z2) {
            i2 = 8;
        }
        linearLayout2.setVisibility(i2);
        if (this.f544x.getParent() == null) {
            addView(this.f544x);
        }
    }

    /* renamed from: l */
    public boolean m27438l() {
        C0217a c0217a = this.f17812k;
        if (c0217a != null) {
            return c0217a.m27290K();
        }
        return false;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f543w;
        if (view2 != null) {
            removeView(view2);
        }
        this.f543w = view;
        if (view != null && (linearLayout = this.f544x) != null) {
            removeView(linearLayout);
            this.f544x = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f541u = charSequence;
        m27441i();
    }

    public void setTitle(CharSequence charSequence) {
        this.f540t = charSequence;
        m27441i();
    }

    public void setTitleOptional(boolean z) {
        if (z != this.f538C) {
            requestLayout();
        }
        this.f538C = z;
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C4235t1 m16966u = C4235t1.m16966u(context, attributeSet, C1017j.f2911y, i, 0);
        C3218s0.m19362I(this, m16966u.m16981f(C1017j.f2916z));
        this.f536A = m16966u.m16974m(C1017j.f2691D, 0);
        this.f537B = m16966u.m16974m(C1017j.f2686C, 0);
        this.f17813p = m16966u.m16975l(C1017j.f2681B, 0);
        this.f539D = m16966u.m16974m(C1017j.f2676A, C1014g.f2643d);
        m16966u.m16965v();
    }

    /* renamed from: k */
    public void m27439k() {
        removeAllViews();
        this.f543w = null;
        this.f17811d = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0217a c0217a = this.f17812k;
        if (c0217a != null) {
            c0217a.m27299B();
            this.f17812k.m27298C();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 32) {
            accessibilityEvent.setSource(this);
            accessibilityEvent.setClassName(getClass().getName());
            accessibilityEvent.setPackageName(getContext().getPackageName());
            accessibilityEvent.setContentDescription(this.f540t);
            return;
        }
        super.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft;
        int paddingRight;
        int i5;
        int i6;
        boolean m16883b = C4270z1.m16883b(this);
        if (m16883b) {
            paddingLeft = (i3 - i) - getPaddingRight();
        } else {
            paddingLeft = getPaddingLeft();
        }
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.f542v;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f542v.getLayoutParams();
            if (m16883b) {
                i5 = marginLayoutParams.rightMargin;
            } else {
                i5 = marginLayoutParams.leftMargin;
            }
            if (m16883b) {
                i6 = marginLayoutParams.leftMargin;
            } else {
                i6 = marginLayoutParams.rightMargin;
            }
            int m17264d = AbstractC4154a.m17264d(paddingLeft, i5, m16883b);
            paddingLeft = AbstractC4154a.m17264d(m17264d + m17263e(this.f542v, m17264d, paddingTop, paddingTop2, m16883b), i6, m16883b);
        }
        int i7 = paddingLeft;
        LinearLayout linearLayout = this.f544x;
        if (linearLayout != null && this.f543w == null && linearLayout.getVisibility() != 8) {
            i7 += m17263e(this.f544x, i7, paddingTop, paddingTop2, m16883b);
        }
        int i8 = i7;
        View view2 = this.f543w;
        if (view2 != null) {
            m17263e(view2, i8, paddingTop, paddingTop2, m16883b);
        }
        if (m16883b) {
            paddingRight = getPaddingLeft();
        } else {
            paddingRight = (i3 - i) - getPaddingRight();
        }
        ActionMenuView actionMenuView = this.f17811d;
        if (actionMenuView != null) {
            m17263e(actionMenuView, paddingRight, paddingTop, paddingTop2, !m16883b);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int i4;
        int i5 = 1073741824;
        if (View.MeasureSpec.getMode(i) == 1073741824) {
            if (View.MeasureSpec.getMode(i2) != 0) {
                int size = View.MeasureSpec.getSize(i);
                int i6 = this.f17813p;
                if (i6 <= 0) {
                    i6 = View.MeasureSpec.getSize(i2);
                }
                int paddingTop = getPaddingTop() + getPaddingBottom();
                int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
                int i7 = i6 - paddingTop;
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE);
                View view = this.f542v;
                if (view != null) {
                    int m17265c = m17265c(view, paddingLeft, makeMeasureSpec, 0);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f542v.getLayoutParams();
                    paddingLeft = m17265c - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
                }
                ActionMenuView actionMenuView = this.f17811d;
                if (actionMenuView != null && actionMenuView.getParent() == this) {
                    paddingLeft = m17265c(this.f17811d, paddingLeft, makeMeasureSpec, 0);
                }
                LinearLayout linearLayout = this.f544x;
                if (linearLayout != null && this.f543w == null) {
                    if (this.f538C) {
                        this.f544x.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                        int measuredWidth = this.f544x.getMeasuredWidth();
                        if (measuredWidth <= paddingLeft) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            paddingLeft -= measuredWidth;
                        }
                        LinearLayout linearLayout2 = this.f544x;
                        if (z) {
                            i4 = 0;
                        } else {
                            i4 = 8;
                        }
                        linearLayout2.setVisibility(i4);
                    } else {
                        paddingLeft = m17265c(linearLayout, paddingLeft, makeMeasureSpec, 0);
                    }
                }
                View view2 = this.f543w;
                if (view2 != null) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    int i8 = layoutParams.width;
                    if (i8 != -2) {
                        i3 = 1073741824;
                    } else {
                        i3 = Integer.MIN_VALUE;
                    }
                    if (i8 >= 0) {
                        paddingLeft = Math.min(i8, paddingLeft);
                    }
                    int i9 = layoutParams.height;
                    if (i9 == -2) {
                        i5 = Integer.MIN_VALUE;
                    }
                    if (i9 >= 0) {
                        i7 = Math.min(i9, i7);
                    }
                    this.f543w.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i3), View.MeasureSpec.makeMeasureSpec(i7, i5));
                }
                if (this.f17813p <= 0) {
                    int childCount = getChildCount();
                    int i10 = 0;
                    for (int i11 = 0; i11 < childCount; i11++) {
                        int measuredHeight = getChildAt(i11).getMeasuredHeight() + paddingTop;
                        if (measuredHeight > i10) {
                            i10 = measuredHeight;
                        }
                    }
                    setMeasuredDimension(size, i10);
                    return;
                }
                setMeasuredDimension(size, i6);
                return;
            }
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
    }
}
