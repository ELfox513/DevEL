package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.ref.WeakReference;
import p021c.C1017j;
/* loaded from: classes.dex */
public final class ViewStubCompat extends View {

    /* renamed from: a */
    public int f743a;

    /* renamed from: b */
    public int f744b;

    /* renamed from: d */
    public WeakReference<View> f745d;

    /* renamed from: k */
    public LayoutInflater f746k;

    /* renamed from: p */
    public InterfaceC0216a f747p;

    /* renamed from: androidx.appcompat.widget.ViewStubCompat$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0216a {
        /* renamed from: a */
        void m27301a(ViewStubCompat viewStubCompat, View view);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    public int getInflatedId() {
        return this.f744b;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f746k;
    }

    public int getLayoutResource() {
        return this.f743a;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i) {
        this.f744b = i;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f746k = layoutInflater;
    }

    public void setLayoutResource(int i) {
        this.f743a = i;
    }

    public void setOnInflateListener(InterfaceC0216a interfaceC0216a) {
        this.f747p = interfaceC0216a;
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f743a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1017j.f2715H3, i, 0);
        this.f744b = obtainStyledAttributes.getResourceId(C1017j.f2730K3, -1);
        this.f743a = obtainStyledAttributes.getResourceId(C1017j.f2725J3, 0);
        setId(obtainStyledAttributes.getResourceId(C1017j.f2720I3, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        WeakReference<View> weakReference = this.f745d;
        if (weakReference != null) {
            View view = weakReference.get();
            if (view != null) {
                view.setVisibility(i);
                return;
            }
            throw new IllegalStateException("setVisibility called on un-referenced view");
        }
        super.setVisibility(i);
        if (i == 0 || i == 4) {
            m27302a();
        }
    }

    /* renamed from: a */
    public View m27302a() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            if (this.f743a != 0) {
                ViewGroup viewGroup = (ViewGroup) parent;
                LayoutInflater layoutInflater = this.f746k;
                if (layoutInflater == null) {
                    layoutInflater = LayoutInflater.from(getContext());
                }
                View inflate = layoutInflater.inflate(this.f743a, viewGroup, false);
                int i = this.f744b;
                if (i != -1) {
                    inflate.setId(i);
                }
                int indexOfChild = viewGroup.indexOfChild(this);
                viewGroup.removeViewInLayout(this);
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                if (layoutParams != null) {
                    viewGroup.addView(inflate, indexOfChild, layoutParams);
                } else {
                    viewGroup.addView(inflate, indexOfChild);
                }
                this.f745d = new WeakReference<>(inflate);
                InterfaceC0216a interfaceC0216a = this.f747p;
                if (interfaceC0216a != null) {
                    interfaceC0216a.m27301a(this, inflate);
                }
                return inflate;
            }
            throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
        throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
    }
}
