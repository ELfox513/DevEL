package p091j;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.C0217a;
import p021c.C1008a;
import p021c.C1017j;
import p038d0.C3208p1;
import p038d0.C3218s0;
import p038d0.InterfaceC3213q1;
/* renamed from: j.a */
/* loaded from: classes.dex */
public abstract class AbstractC4154a extends ViewGroup {

    /* renamed from: a */
    public final C4155a f17809a;

    /* renamed from: b */
    public final Context f17810b;

    /* renamed from: d */
    public ActionMenuView f17811d;

    /* renamed from: k */
    public C0217a f17812k;

    /* renamed from: p */
    public int f17813p;

    /* renamed from: q */
    public C3208p1 f17814q;

    /* renamed from: r */
    public boolean f17815r;

    /* renamed from: s */
    public boolean f17816s;

    /* renamed from: j.a$a */
    /* loaded from: classes.dex */
    public class C4155a implements InterfaceC3213q1 {

        /* renamed from: a */
        public boolean f17817a = false;

        /* renamed from: b */
        public int f17818b;

        @Override // p038d0.InterfaceC3213q1
        /* renamed from: a */
        public void mo17261a(View view) {
            this.f17817a = true;
        }

        public C4155a() {
        }

        @Override // p038d0.InterfaceC3213q1
        /* renamed from: b */
        public void mo17260b(View view) {
            if (this.f17817a) {
                return;
            }
            AbstractC4154a abstractC4154a = AbstractC4154a.this;
            abstractC4154a.f17814q = null;
            AbstractC4154a.super.setVisibility(this.f17818b);
        }

        @Override // p038d0.InterfaceC3213q1
        /* renamed from: c */
        public void mo17259c(View view) {
            AbstractC4154a.super.setVisibility(0);
            this.f17817a = false;
        }

        /* renamed from: d */
        public C4155a m17258d(C3208p1 c3208p1, int i) {
            AbstractC4154a.this.f17814q = c3208p1;
            this.f17818b = i;
            return this;
        }
    }

    public AbstractC4154a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* renamed from: d */
    public static int m17264d(int i, int i2, boolean z) {
        return z ? i - i2 : i + i2;
    }

    public int getContentHeight() {
        return this.f17813p;
    }

    public AbstractC4154a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f17809a = new C4155a();
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(C1008a.f2505a, typedValue, true) && typedValue.resourceId != 0) {
            this.f17810b = new ContextThemeWrapper(context, typedValue.resourceId);
        } else {
            this.f17810b = context;
        }
    }

    /* renamed from: c */
    public int m17265c(View view, int i, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - i3);
    }

    /* renamed from: f */
    public C3208p1 mo17262f(int i, long j) {
        C3208p1 c3208p1 = this.f17814q;
        if (c3208p1 != null) {
            c3208p1.m19401b();
        }
        if (i == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            C3208p1 m19402a = C3218s0.m19350b(this).m19402a(1.0f);
            m19402a.m19399d(j);
            m19402a.m19397f(this.f17809a.m17258d(m19402a, i));
            return m19402a;
        }
        C3208p1 m19402a2 = C3218s0.m19350b(this).m19402a(0.0f);
        m19402a2.m19399d(j);
        m19402a2.m19397f(this.f17809a.m17258d(m19402a2, i));
        return m19402a2;
    }

    public int getAnimatedVisibility() {
        if (this.f17814q != null) {
            return this.f17809a.f17818b;
        }
        return getVisibility();
    }

    public void setContentHeight(int i) {
        this.f17813p = i;
        requestLayout();
    }

    /* renamed from: e */
    public int m17263e(View view, int i, int i2, int i3, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = i2 + ((i3 - measuredHeight) / 2);
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        if (z) {
            return -measuredWidth;
        }
        return measuredWidth;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, C1017j.f2791a, C1008a.f2507c, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(C1017j.f2836j, 0));
        obtainStyledAttributes.recycle();
        C0217a c0217a = this.f17812k;
        if (c0217a != null) {
            c0217a.m27295F(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f17816s = false;
        }
        if (!this.f17816s) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f17816s = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f17816s = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f17815r = false;
        }
        if (!this.f17815r) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f17815r = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f17815r = false;
        }
        return true;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            C3208p1 c3208p1 = this.f17814q;
            if (c3208p1 != null) {
                c3208p1.m19401b();
            }
            super.setVisibility(i);
        }
    }
}
