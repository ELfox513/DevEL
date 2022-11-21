package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import p021c.C1017j;
import p038d0.C3218s0;
import p091j.C4235t1;
import p091j.C4270z1;
/* renamed from: androidx.appcompat.widget.c */
/* loaded from: classes.dex */
public class C0227c extends ViewGroup {

    /* renamed from: a */
    public boolean f777a;

    /* renamed from: b */
    public int f778b;

    /* renamed from: d */
    public int f779d;

    /* renamed from: k */
    public int f780k;

    /* renamed from: p */
    public int f781p;

    /* renamed from: q */
    public int f782q;

    /* renamed from: r */
    public float f783r;

    /* renamed from: s */
    public boolean f784s;

    /* renamed from: t */
    public int[] f785t;

    /* renamed from: u */
    public int[] f786u;

    /* renamed from: v */
    public Drawable f787v;

    /* renamed from: w */
    public int f788w;

    /* renamed from: x */
    public int f789x;

    /* renamed from: y */
    public int f790y;

    /* renamed from: z */
    public int f791z;

    public C0227c(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0228a;
    }

    public int getBaselineAlignedChildIndex() {
        return this.f778b;
    }

    public Drawable getDividerDrawable() {
        return this.f787v;
    }

    public int getDividerPadding() {
        return this.f791z;
    }

    public int getDividerWidth() {
        return this.f788w;
    }

    public int getGravity() {
        return this.f781p;
    }

    public int getOrientation() {
        return this.f780k;
    }

    public int getShowDividers() {
        return this.f790y;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f783r;
    }

    @Override // android.view.ViewGroup
    /* renamed from: j */
    public C0228a generateLayoutParams(AttributeSet attributeSet) {
        return new C0228a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    /* renamed from: k */
    public C0228a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0228a(layoutParams);
    }

    /* renamed from: l */
    public int m27258l(View view, int i) {
        return 0;
    }

    /* renamed from: m */
    public int m27257m(View view) {
        return 0;
    }

    /* renamed from: n */
    public int m27256n(View view) {
        return 0;
    }

    /* renamed from: o */
    public View m27255o(int i) {
        return getChildAt(i);
    }

    /* renamed from: p */
    public boolean m27254p(int i) {
        if (i == 0) {
            return (this.f790y & 1) != 0;
        } else if (i == getChildCount()) {
            return (this.f790y & 4) != 0;
        } else if ((this.f790y & 2) != 0) {
            for (int i2 = i - 1; i2 >= 0; i2--) {
                if (getChildAt(i2).getVisibility() != 8) {
                    return true;
                }
            }
            return false;
        } else {
            return false;
        }
    }

    /* renamed from: s */
    public void m27251s(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    public void setBaselineAligned(boolean z) {
        this.f777a = z;
    }

    public void setDividerPadding(int i) {
        this.f791z = i;
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.f784s = z;
    }

    public void setWeightSum(float f) {
        this.f783r = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* renamed from: u */
    public int m27249u(int i) {
        return 0;
    }

    /* renamed from: w */
    public final void m27247w(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    public C0227c(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* renamed from: e */
    public void m27265e(Canvas canvas, int i) {
        this.f787v.setBounds(getPaddingLeft() + this.f791z, i, (getWidth() - getPaddingRight()) - this.f791z, this.f789x + i);
        this.f787v.draw(canvas);
    }

    /* renamed from: f */
    public void m27264f(Canvas canvas, int i) {
        this.f787v.setBounds(i, getPaddingTop() + this.f791z, this.f788w + i, (getHeight() - getPaddingBottom()) - this.f791z);
        this.f787v.draw(canvas);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.f778b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.f778b;
        if (childCount > i2) {
            View childAt = getChildAt(i2);
            int baseline = childAt.getBaseline();
            if (baseline == -1) {
                if (this.f778b == 0) {
                    return -1;
                }
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
            int i3 = this.f779d;
            if (this.f780k == 1 && (i = this.f781p & 112) != 48) {
                if (i != 16) {
                    if (i == 80) {
                        i3 = ((getBottom() - getTop()) - getPaddingBottom()) - this.f782q;
                    }
                } else {
                    i3 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f782q) / 2;
                }
            }
            return i3 + ((ViewGroup.MarginLayoutParams) ((C0228a) childAt.getLayoutParams())).topMargin + baseline;
        }
        throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
    }

    @Override // android.view.ViewGroup
    /* renamed from: i */
    public C0228a generateDefaultLayoutParams() {
        int i = this.f780k;
        if (i == 0) {
            return new C0228a(-2, -2);
        }
        if (i == 1) {
            return new C0228a(-1, -2);
        }
        return null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f787v == null) {
            return;
        }
        if (this.f780k == 1) {
            m27266d(canvas);
        } else {
            m27267c(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f780k == 1) {
            m27252r(i, i2, i3, i4);
        } else {
            m27253q(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f780k == 1) {
            m27248v(i, i2);
        } else {
            m27250t(i, i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f7  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m27253q(int r25, int r26, int r27, int r28) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0227c.m27253q(int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009f  */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m27252r(int r18, int r19, int r20, int r21) {
        /*
            r17 = this;
            r6 = r17
            int r7 = r17.getPaddingLeft()
            int r0 = r20 - r18
            int r1 = r17.getPaddingRight()
            int r8 = r0 - r1
            int r0 = r0 - r7
            int r1 = r17.getPaddingRight()
            int r9 = r0 - r1
            int r10 = r17.getVirtualChildCount()
            int r0 = r6.f781p
            r1 = r0 & 112(0x70, float:1.57E-43)
            r2 = 8388615(0x800007, float:1.1754953E-38)
            r11 = r0 & r2
            r0 = 16
            if (r1 == r0) goto L3b
            r0 = 80
            if (r1 == r0) goto L2f
            int r0 = r17.getPaddingTop()
            goto L47
        L2f:
            int r0 = r17.getPaddingTop()
            int r0 = r0 + r21
            int r0 = r0 - r19
            int r1 = r6.f782q
            int r0 = r0 - r1
            goto L47
        L3b:
            int r0 = r17.getPaddingTop()
            int r1 = r21 - r19
            int r2 = r6.f782q
            int r1 = r1 - r2
            int r1 = r1 / 2
            int r0 = r0 + r1
        L47:
            r1 = 0
            r12 = 0
        L49:
            if (r12 >= r10) goto Lc8
            android.view.View r13 = r6.m27255o(r12)
            r14 = 1
            if (r13 != 0) goto L59
            int r1 = r6.m27249u(r12)
            int r0 = r0 + r1
            goto Lc5
        L59:
            int r1 = r13.getVisibility()
            r2 = 8
            if (r1 == r2) goto Lc5
            int r4 = r13.getMeasuredWidth()
            int r15 = r13.getMeasuredHeight()
            android.view.ViewGroup$LayoutParams r1 = r13.getLayoutParams()
            r5 = r1
            androidx.appcompat.widget.c$a r5 = (androidx.appcompat.widget.C0227c.C0228a) r5
            int r1 = r5.f793b
            if (r1 >= 0) goto L75
            r1 = r11
        L75:
            int r2 = p038d0.C3218s0.m19338n(r17)
            int r1 = p038d0.C3165d.m19464a(r1, r2)
            r1 = r1 & 7
            if (r1 == r14) goto L8d
            r2 = 5
            if (r1 == r2) goto L88
            int r1 = r5.leftMargin
            int r1 = r1 + r7
            goto L98
        L88:
            int r1 = r8 - r4
            int r2 = r5.rightMargin
            goto L97
        L8d:
            int r1 = r9 - r4
            int r1 = r1 / 2
            int r1 = r1 + r7
            int r2 = r5.leftMargin
            int r1 = r1 + r2
            int r2 = r5.rightMargin
        L97:
            int r1 = r1 - r2
        L98:
            r2 = r1
            boolean r1 = r6.m27254p(r12)
            if (r1 == 0) goto La2
            int r1 = r6.f789x
            int r0 = r0 + r1
        La2:
            int r1 = r5.topMargin
            int r16 = r0 + r1
            int r0 = r6.m27257m(r13)
            int r3 = r16 + r0
            r0 = r17
            r1 = r13
            r14 = r5
            r5 = r15
            r0.m27247w(r1, r2, r3, r4, r5)
            int r0 = r14.bottomMargin
            int r15 = r15 + r0
            int r0 = r6.m27256n(r13)
            int r15 = r15 + r0
            int r16 = r16 + r15
            int r0 = r6.m27258l(r13, r12)
            int r12 = r12 + r0
            r0 = r16
        Lc5:
            r1 = 1
            int r12 = r12 + r1
            goto L49
        Lc8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0227c.m27252r(int, int, int, int):void");
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.f778b = i;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f787v) {
            return;
        }
        this.f787v = drawable;
        boolean z = false;
        if (drawable != null) {
            this.f788w = drawable.getIntrinsicWidth();
            this.f789x = drawable.getIntrinsicHeight();
        } else {
            this.f788w = 0;
            this.f789x = 0;
        }
        if (drawable == null) {
            z = true;
        }
        setWillNotDraw(z);
        requestLayout();
    }

    public void setGravity(int i) {
        if (this.f781p != i) {
            if ((8388615 & i) == 0) {
                i |= 8388611;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.f781p = i;
            requestLayout();
        }
    }

    public void setOrientation(int i) {
        if (this.f780k != i) {
            this.f780k = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.f790y) {
            requestLayout();
        }
        this.f790y = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.f781p;
        if ((i3 & 112) != i2) {
            this.f781p = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:197:0x044c  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01d4  */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m27250t(int r38, int r39) {
        /*
            Method dump skipped, instructions count: 1285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0227c.m27250t(int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:150:0x0323  */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m27248v(int r34, int r35) {
        /*
            Method dump skipped, instructions count: 911
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0227c.m27248v(int, int):void");
    }

    public C0227c(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f777a = true;
        this.f778b = -1;
        this.f779d = 0;
        this.f781p = 8388659;
        int[] iArr = C1017j.f2798b1;
        C4235t1 m16966u = C4235t1.m16966u(context, attributeSet, iArr, i, 0);
        C3218s0.m19365F(this, context, iArr, attributeSet, m16966u.m16970q(), i, 0);
        int m16977j = m16966u.m16977j(C1017j.f2808d1, -1);
        if (m16977j >= 0) {
            setOrientation(m16977j);
        }
        int m16977j2 = m16966u.m16977j(C1017j.f2803c1, -1);
        if (m16977j2 >= 0) {
            setGravity(m16977j2);
        }
        boolean m16986a = m16966u.m16986a(C1017j.f2813e1, true);
        if (!m16986a) {
            setBaselineAligned(m16986a);
        }
        this.f783r = m16966u.m16979h(C1017j.f2823g1, -1.0f);
        this.f778b = m16966u.m16977j(C1017j.f2818f1, -1);
        this.f784s = m16966u.m16986a(C1017j.f2838j1, false);
        setDividerDrawable(m16966u.m16981f(C1017j.f2828h1));
        this.f790y = m16966u.m16977j(C1017j.f2843k1, 0);
        this.f791z = m16966u.m16982e(C1017j.f2833i1, 0);
        m16966u.m16965v();
    }

    /* renamed from: c */
    public void m27267c(Canvas canvas) {
        int right;
        int left;
        int i;
        int left2;
        int virtualChildCount = getVirtualChildCount();
        boolean m16883b = C4270z1.m16883b(this);
        for (int i2 = 0; i2 < virtualChildCount; i2++) {
            View m27255o = m27255o(i2);
            if (m27255o != null && m27255o.getVisibility() != 8 && m27254p(i2)) {
                C0228a c0228a = (C0228a) m27255o.getLayoutParams();
                if (m16883b) {
                    left2 = m27255o.getRight() + ((ViewGroup.MarginLayoutParams) c0228a).rightMargin;
                } else {
                    left2 = (m27255o.getLeft() - ((ViewGroup.MarginLayoutParams) c0228a).leftMargin) - this.f788w;
                }
                m27264f(canvas, left2);
            }
        }
        if (m27254p(virtualChildCount)) {
            View m27255o2 = m27255o(virtualChildCount - 1);
            if (m27255o2 == null) {
                if (m16883b) {
                    right = getPaddingLeft();
                } else {
                    left = getWidth() - getPaddingRight();
                    i = this.f788w;
                    right = left - i;
                }
            } else {
                C0228a c0228a2 = (C0228a) m27255o2.getLayoutParams();
                if (m16883b) {
                    left = m27255o2.getLeft() - ((ViewGroup.MarginLayoutParams) c0228a2).leftMargin;
                    i = this.f788w;
                    right = left - i;
                } else {
                    right = m27255o2.getRight() + ((ViewGroup.MarginLayoutParams) c0228a2).rightMargin;
                }
            }
            m27264f(canvas, right);
        }
    }

    /* renamed from: d */
    public void m27266d(Canvas canvas) {
        int bottom;
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View m27255o = m27255o(i);
            if (m27255o != null && m27255o.getVisibility() != 8 && m27254p(i)) {
                m27265e(canvas, (m27255o.getTop() - ((ViewGroup.MarginLayoutParams) ((C0228a) m27255o.getLayoutParams())).topMargin) - this.f789x);
            }
        }
        if (m27254p(virtualChildCount)) {
            View m27255o2 = m27255o(virtualChildCount - 1);
            if (m27255o2 == null) {
                bottom = (getHeight() - getPaddingBottom()) - this.f789x;
            } else {
                bottom = m27255o2.getBottom() + ((ViewGroup.MarginLayoutParams) ((C0228a) m27255o2.getLayoutParams())).bottomMargin;
            }
            m27265e(canvas, bottom);
        }
    }

    /* renamed from: g */
    public final void m27263g(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View m27255o = m27255o(i3);
            if (m27255o.getVisibility() != 8) {
                C0228a c0228a = (C0228a) m27255o.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) c0228a).height == -1) {
                    int i4 = ((ViewGroup.MarginLayoutParams) c0228a).width;
                    ((ViewGroup.MarginLayoutParams) c0228a).width = m27255o.getMeasuredWidth();
                    measureChildWithMargins(m27255o, i2, 0, makeMeasureSpec, 0);
                    ((ViewGroup.MarginLayoutParams) c0228a).width = i4;
                }
            }
        }
    }

    /* renamed from: h */
    public final void m27262h(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View m27255o = m27255o(i3);
            if (m27255o.getVisibility() != 8) {
                C0228a c0228a = (C0228a) m27255o.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) c0228a).width == -1) {
                    int i4 = ((ViewGroup.MarginLayoutParams) c0228a).height;
                    ((ViewGroup.MarginLayoutParams) c0228a).height = m27255o.getMeasuredHeight();
                    measureChildWithMargins(m27255o, makeMeasureSpec, 0, i2, 0);
                    ((ViewGroup.MarginLayoutParams) c0228a).height = i4;
                }
            }
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.f781p;
        if ((8388615 & i3) != i2) {
            this.f781p = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    /* renamed from: androidx.appcompat.widget.c$a */
    /* loaded from: classes.dex */
    public static class C0228a extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public float f792a;

        /* renamed from: b */
        public int f793b;

        public C0228a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f793b = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1017j.f2848l1);
            this.f792a = obtainStyledAttributes.getFloat(C1017j.f2858n1, 0.0f);
            this.f793b = obtainStyledAttributes.getInt(C1017j.f2853m1, -1);
            obtainStyledAttributes.recycle();
        }

        public C0228a(int i, int i2) {
            super(i, i2);
            this.f793b = -1;
            this.f792a = 0.0f;
        }

        public C0228a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f793b = -1;
        }
    }
}
