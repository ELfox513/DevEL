package p184t2;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import p168r4.C6334ux;
import p168r4.InterfaceC5812gt;
import p168r4.cm0;
import p193u2.InterfaceC6882c;
/* renamed from: t2.k */
/* loaded from: classes.dex */
public abstract class AbstractC6714k extends ViewGroup {

    /* renamed from: a */
    public final C6334ux f35358a;

    /* renamed from: a */
    public void m3567a() {
        this.f35358a.m6318d();
    }

    /* renamed from: b */
    public void m3566b(@RecentlyNonNull C6708f c6708f) {
        this.f35358a.m6312j(c6708f.m3595a());
    }

    /* renamed from: c */
    public void m3565c() {
        this.f35358a.m6311k();
    }

    /* renamed from: d */
    public void m3564d() {
        this.f35358a.m6310l();
    }

    @RecentlyNonNull
    public AbstractC6704c getAdListener() {
        return this.f35358a.m6317e();
    }

    @RecentlyNullable
    public C6710g getAdSize() {
        return this.f35358a.m6316f();
    }

    @RecentlyNonNull
    public String getAdUnitId() {
        return this.f35358a.m6314h();
    }

    @RecentlyNullable
    public InterfaceC6720q getOnPaidEventListener() {
        return this.f35358a.m6300v();
    }

    @RecentlyNullable
    public C6725u getResponseInfo() {
        return this.f35358a.m6302t();
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

    public void setAdSize(@RecentlyNonNull C6710g c6710g) {
        this.f35358a.m6307o(c6710g);
    }

    public void setAdUnitId(@RecentlyNonNull String str) {
        this.f35358a.m6305q(str);
    }

    public void setOnPaidEventListener(InterfaceC6720q interfaceC6720q) {
        this.f35358a.m6301u(interfaceC6720q);
    }

    public void setAdListener(@RecentlyNonNull AbstractC6704c abstractC6704c) {
        this.f35358a.m6309m(abstractC6704c);
        if (abstractC6704c == null) {
            this.f35358a.m6308n(null);
            return;
        }
        if (abstractC6704c instanceof InterfaceC5812gt) {
            this.f35358a.m6308n((InterfaceC5812gt) abstractC6704c);
        }
        if (abstractC6704c instanceof InterfaceC6882c) {
            this.f35358a.m6304r((InterfaceC6882c) abstractC6704c);
        }
    }

    public AbstractC6714k(@RecentlyNonNull Context context, int i) {
        super(context);
        this.f35358a = new C6334ux(this, i);
    }
}
