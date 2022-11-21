package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import net.bytebuddy.jar.asm.Opcodes;
import p021c.C1013f;
import p021c.C1017j;
import p038d0.C3218s0;
import p091j.C4159b;
/* loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: a */
    public boolean f526a;

    /* renamed from: b */
    public View f527b;

    /* renamed from: d */
    public View f528d;

    /* renamed from: k */
    public View f529k;

    /* renamed from: p */
    public Drawable f530p;

    /* renamed from: q */
    public Drawable f531q;

    /* renamed from: r */
    public Drawable f532r;

    /* renamed from: s */
    public boolean f533s;

    /* renamed from: t */
    public boolean f534t;

    /* renamed from: u */
    public int f535u;

    /* renamed from: b */
    public final boolean m27444b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    public View getTabContainer() {
        return this.f527b;
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f526a || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i) {
        if (i != 0) {
            return super.startActionModeForChild(view, callback, i);
        }
        return null;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        if (this.f528d == null && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && (i5 = this.f535u) >= 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(i5, View.MeasureSpec.getSize(i2)), Integer.MIN_VALUE);
        }
        super.onMeasure(i, i2);
        if (this.f528d == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        View view = this.f527b;
        if (view != null && view.getVisibility() != 8 && mode != 1073741824) {
            if (!m27444b(this.f528d)) {
                i3 = m27445a(this.f528d);
            } else if (!m27444b(this.f529k)) {
                i3 = m27445a(this.f529k);
            } else {
                i3 = 0;
            }
            if (mode == Integer.MIN_VALUE) {
                i4 = View.MeasureSpec.getSize(i2);
            } else {
                i4 = Integer.MAX_VALUE;
            }
            setMeasuredDimension(getMeasuredWidth(), Math.min(i3 + m27445a(this.f527b), i4));
        }
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f530p;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f530p);
        }
        this.f530p = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f528d;
            if (view != null) {
                this.f530p.setBounds(view.getLeft(), this.f528d.getTop(), this.f528d.getRight(), this.f528d.getBottom());
            }
        }
        boolean z = true;
        if (!this.f533s ? this.f530p != null || this.f531q != null : this.f532r != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f532r;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f532r);
        }
        this.f532r = drawable;
        boolean z = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f533s && (drawable2 = this.f532r) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!this.f533s ? !(this.f530p != null || this.f531q != null) : this.f532r == null) {
            z = true;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f531q;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f531q);
        }
        this.f531q = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f534t && (drawable2 = this.f531q) != null) {
                drawable2.setBounds(this.f527b.getLeft(), this.f527b.getTop(), this.f527b.getRight(), this.f527b.getBottom());
            }
        }
        boolean z = true;
        if (!this.f533s ? this.f530p != null || this.f531q != null : this.f532r != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setTabContainer(C0229d c0229d) {
        View view = this.f527b;
        if (view != null) {
            removeView(view);
        }
        this.f527b = c0229d;
        if (c0229d != null) {
            addView(c0229d);
            ViewGroup.LayoutParams layoutParams = c0229d.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            c0229d.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        int i;
        this.f526a = z;
        if (z) {
            i = Opcodes.ASM6;
        } else {
            i = 262144;
        }
        setDescendantFocusability(i);
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        if ((drawable == this.f530p && !this.f533s) || ((drawable == this.f531q && this.f534t) || ((drawable == this.f532r && this.f533s) || super.verifyDrawable(drawable)))) {
            return true;
        }
        return false;
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C3218s0.m19362I(this, new C4159b(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1017j.f2791a);
        this.f530p = obtainStyledAttributes.getDrawable(C1017j.f2796b);
        this.f531q = obtainStyledAttributes.getDrawable(C1017j.f2806d);
        this.f535u = obtainStyledAttributes.getDimensionPixelSize(C1017j.f2836j, -1);
        boolean z = true;
        if (getId() == C1013f.f2605H) {
            this.f533s = true;
            this.f532r = obtainStyledAttributes.getDrawable(C1017j.f2801c);
        }
        obtainStyledAttributes.recycle();
        if (!this.f533s ? this.f530p != null || this.f531q != null : this.f532r != null) {
            z = false;
        }
        setWillNotDraw(z);
    }

    /* renamed from: a */
    public final int m27445a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f530p;
        if (drawable != null && drawable.isStateful()) {
            this.f530p.setState(getDrawableState());
        }
        Drawable drawable2 = this.f531q;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f531q.setState(getDrawableState());
        }
        Drawable drawable3 = this.f532r;
        if (drawable3 != null && drawable3.isStateful()) {
            this.f532r.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f530p;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f531q;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f532r;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f528d = findViewById(C1013f.f2614a);
        this.f529k = findViewById(C1013f.f2619f);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        Drawable drawable;
        super.onLayout(z, i, i2, i3, i4);
        View view = this.f527b;
        boolean z3 = true;
        boolean z4 = false;
        if (view != null && view.getVisibility() != 8) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            int i5 = ((FrameLayout.LayoutParams) view.getLayoutParams()).bottomMargin;
            view.layout(i, (measuredHeight - view.getMeasuredHeight()) - i5, i3, measuredHeight - i5);
        }
        if (this.f533s) {
            Drawable drawable2 = this.f532r;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z3 = false;
            }
        } else {
            if (this.f530p != null) {
                if (this.f528d.getVisibility() == 0) {
                    this.f530p.setBounds(this.f528d.getLeft(), this.f528d.getTop(), this.f528d.getRight(), this.f528d.getBottom());
                } else {
                    View view2 = this.f529k;
                    if (view2 != null && view2.getVisibility() == 0) {
                        this.f530p.setBounds(this.f529k.getLeft(), this.f529k.getTop(), this.f529k.getRight(), this.f529k.getBottom());
                    } else {
                        this.f530p.setBounds(0, 0, 0, 0);
                    }
                }
                z4 = true;
            }
            this.f534t = z2;
            if (z2 && (drawable = this.f531q) != null) {
                drawable.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            } else {
                z3 = z4;
            }
        }
        if (z3) {
            invalidate();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        boolean z;
        super.setVisibility(i);
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        Drawable drawable = this.f530p;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f531q;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f532r;
        if (drawable3 != null) {
            drawable3.setVisible(z, false);
        }
    }
}
