package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import p021c.C1013f;
import p021c.C1017j;
import p038d0.C3218s0;
/* loaded from: classes.dex */
public class ButtonBarLayout extends LinearLayout {

    /* renamed from: a */
    public boolean f604a;

    /* renamed from: b */
    public int f605b;

    /* renamed from: d */
    public int f606d;

    /* renamed from: b */
    public final boolean m27402b() {
        return getOrientation() == 1;
    }

    @Override // android.view.View
    public int getMinimumHeight() {
        return Math.max(this.f606d, super.getMinimumHeight());
    }

    public void setAllowStacking(boolean z) {
        if (this.f604a != z) {
            this.f604a = z;
            if (!z && getOrientation() == 1) {
                setStacked(false);
            }
            requestLayout();
        }
    }

    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f605b = -1;
        this.f606d = 0;
        int[] iArr = C1017j.f2744O0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        C3218s0.m19365F(this, context, iArr, attributeSet, obtainStyledAttributes, 0, 0);
        this.f604a = obtainStyledAttributes.getBoolean(C1017j.f2748P0, true);
        obtainStyledAttributes.recycle();
    }

    private void setStacked(boolean z) {
        int i;
        int i2;
        setOrientation(z ? 1 : 0);
        if (z) {
            i = 5;
        } else {
            i = 80;
        }
        setGravity(i);
        View findViewById = findViewById(C1013f.f2604G);
        if (findViewById != null) {
            if (z) {
                i2 = 8;
            } else {
                i2 = 4;
            }
            findViewById.setVisibility(i2);
        }
        for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
            bringChildToFront(getChildAt(childCount));
        }
    }

    /* renamed from: a */
    public final int m27403a(int i) {
        int childCount = getChildCount();
        while (i < childCount) {
            if (getChildAt(i).getVisibility() == 0) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        boolean z2;
        int size = View.MeasureSpec.getSize(i);
        int i4 = 0;
        if (this.f604a) {
            if (size > this.f605b && m27402b()) {
                setStacked(false);
            }
            this.f605b = size;
        }
        if (!m27402b() && View.MeasureSpec.getMode(i) == 1073741824) {
            i3 = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z = true;
        } else {
            i3 = i;
            z = false;
        }
        super.onMeasure(i3, i2);
        if (this.f604a && !m27402b()) {
            if ((getMeasuredWidthAndState() & (-16777216)) == 16777216) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                setStacked(true);
                z = true;
            }
        }
        if (z) {
            super.onMeasure(i, i2);
        }
        int m27403a = m27403a(0);
        if (m27403a >= 0) {
            View childAt = getChildAt(m27403a);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            int paddingTop = getPaddingTop() + childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin + 0;
            if (m27402b()) {
                int m27403a2 = m27403a(m27403a + 1);
                if (m27403a2 >= 0) {
                    paddingTop += getChildAt(m27403a2).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f));
                }
                i4 = paddingTop;
            } else {
                i4 = paddingTop + getPaddingBottom();
            }
        }
        if (C3218s0.m19337o(this) != i4) {
            setMinimumHeight(i4);
        }
    }
}
