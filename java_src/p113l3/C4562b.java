package p113l3;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import p168r4.C6334ux;
import p168r4.cm0;
import p184t2.AbstractC6704c;
import p184t2.C6710g;
/* renamed from: l3.b */
/* loaded from: classes.dex */
public final class C4562b extends ViewGroup {

    /* renamed from: a */
    public final C6334ux f18605a;

    @RecentlyNonNull
    public AbstractC6704c getAdListener() {
        return this.f18605a.m6317e();
    }

    @RecentlyNullable
    public C6710g getAdSize() {
        return this.f18605a.m6316f();
    }

    @RecentlyNonNull
    public String getAdUnitId() {
        return this.f18605a.m6314h();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt != null && childAt.getVisibility() != 8) {
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = ((i3 - i) - measuredWidth) / 2;
            int i6 = ((i4 - i2) - measuredHeight) / 2;
            childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        C6710g c6710g;
        int i3;
        int i4 = 0;
        View childAt = getChildAt(0);
        if (childAt != null && childAt.getVisibility() != 8) {
            measureChild(childAt, i, i2);
            i4 = childAt.getMeasuredWidth();
            i3 = childAt.getMeasuredHeight();
        } else {
            try {
                c6710g = getAdSize();
            } catch (NullPointerException e) {
                cm0.m12439d("Unable to retrieve ad size.", e);
                c6710g = null;
            }
            if (c6710g != null) {
                Context context = getContext();
                int m3582d = c6710g.m3582d(context);
                i3 = c6710g.m3584b(context);
                i4 = m3582d;
            } else {
                i3 = 0;
            }
        }
        setMeasuredDimension(View.resolveSize(Math.max(i4, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(i3, getSuggestedMinimumHeight()), i2));
    }

    public void setAdListener(@RecentlyNonNull AbstractC6704c abstractC6704c) {
        this.f18605a.m6309m(abstractC6704c);
    }

    public void setAdSize(@RecentlyNonNull C6710g c6710g) {
        this.f18605a.m6307o(c6710g);
    }

    public void setAdUnitId(@RecentlyNonNull String str) {
        this.f18605a.m6305q(str);
    }
}
