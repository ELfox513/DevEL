package androidx.appcompat.widget;

import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.C0227c;
import p021c.C1008a;
import p037d.AbstractC3101a;
import p073h.C3910a;
import p091j.C4203k0;
import p091j.C4211n;
import p091j.C4239v;
import p091j.C4252v1;
/* renamed from: androidx.appcompat.widget.d */
/* loaded from: classes.dex */
public class C0229d extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* renamed from: u */
    public static final Interpolator f794u = new DecelerateInterpolator();

    /* renamed from: a */
    public Runnable f795a;

    /* renamed from: b */
    public View$OnClickListenerC0232c f796b;

    /* renamed from: d */
    public C0227c f797d;

    /* renamed from: k */
    public Spinner f798k;

    /* renamed from: p */
    public boolean f799p;

    /* renamed from: q */
    public int f800q;

    /* renamed from: r */
    public int f801r;

    /* renamed from: s */
    public int f802s;

    /* renamed from: t */
    public int f803t;

    /* renamed from: androidx.appcompat.widget.d$a */
    /* loaded from: classes.dex */
    public class RunnableC0230a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f804a;

        public RunnableC0230a(View view) {
            this.f804a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0229d.this.smoothScrollTo(this.f804a.getLeft() - ((C0229d.this.getWidth() - this.f804a.getWidth()) / 2), 0);
            C0229d.this.f795a = null;
        }
    }

    /* renamed from: androidx.appcompat.widget.d$b */
    /* loaded from: classes.dex */
    public class C0231b extends BaseAdapter {
        public C0231b() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return C0229d.this.f797d.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ((C0233d) C0229d.this.f797d.getChildAt(i)).m27239b();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                return C0229d.this.m27244c((AbstractC3101a.AbstractC3104c) getItem(i), true);
            }
            ((C0233d) view).m27240a((AbstractC3101a.AbstractC3104c) getItem(i));
            return view;
        }
    }

    /* renamed from: androidx.appcompat.widget.d$c */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC0232c implements View.OnClickListener {
        public View$OnClickListenerC0232c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z;
            ((C0233d) view).m27239b().m19695e();
            int childCount = C0229d.this.f797d.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = C0229d.this.f797d.getChildAt(i);
                if (childAt == view) {
                    z = true;
                } else {
                    z = false;
                }
                childAt.setSelected(z);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.d$d */
    /* loaded from: classes.dex */
    public class C0233d extends LinearLayout {

        /* renamed from: a */
        public final int[] f808a;

        /* renamed from: b */
        public AbstractC3101a.AbstractC3104c f809b;

        /* renamed from: d */
        public TextView f810d;

        /* renamed from: k */
        public ImageView f811k;

        /* renamed from: p */
        public View f812p;

        /* renamed from: b */
        public AbstractC3101a.AbstractC3104c m27239b() {
            return this.f809b;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C0233d(android.content.Context r6, p037d.AbstractC3101a.AbstractC3104c r7, boolean r8) {
            /*
                r4 = this;
                androidx.appcompat.widget.C0229d.this = r5
                int r5 = p021c.C1008a.f2508d
                r0 = 0
                r4.<init>(r6, r0, r5)
                r1 = 1
                int[] r1 = new int[r1]
                r2 = 16842964(0x10100d4, float:2.3694152E-38)
                r3 = 0
                r1[r3] = r2
                r4.f808a = r1
                r4.f809b = r7
                j.t1 r5 = p091j.C4235t1.m16966u(r6, r0, r1, r5, r3)
                boolean r6 = r5.m16969r(r3)
                if (r6 == 0) goto L26
                android.graphics.drawable.Drawable r6 = r5.m16981f(r3)
                r4.setBackgroundDrawable(r6)
            L26:
                r5.m16965v()
                if (r8 == 0) goto L31
                r5 = 8388627(0x800013, float:1.175497E-38)
                r4.setGravity(r5)
            L31:
                r4.m27238c()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0229d.C0233d.<init>(androidx.appcompat.widget.d, android.content.Context, d.a$c, boolean):void");
        }

        /* renamed from: a */
        public void m27240a(AbstractC3101a.AbstractC3104c abstractC3104c) {
            this.f809b = abstractC3104c;
            m27238c();
        }

        /* renamed from: c */
        public void m27238c() {
            AbstractC3101a.AbstractC3104c abstractC3104c = this.f809b;
            View m19698b = abstractC3104c.m19698b();
            CharSequence charSequence = null;
            if (m19698b != null) {
                ViewParent parent = m19698b.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(m19698b);
                    }
                    addView(m19698b);
                }
                this.f812p = m19698b;
                TextView textView = this.f810d;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f811k;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f811k.setImageDrawable(null);
                    return;
                }
                return;
            }
            View view = this.f812p;
            if (view != null) {
                removeView(view);
                this.f812p = null;
            }
            Drawable m19697c = abstractC3104c.m19697c();
            CharSequence m19696d = abstractC3104c.m19696d();
            if (m19697c != null) {
                if (this.f811k == null) {
                    C4211n c4211n = new C4211n(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    c4211n.setLayoutParams(layoutParams);
                    addView(c4211n, 0);
                    this.f811k = c4211n;
                }
                this.f811k.setImageDrawable(m19697c);
                this.f811k.setVisibility(0);
            } else {
                ImageView imageView2 = this.f811k;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f811k.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(m19696d);
            if (z) {
                if (this.f810d == null) {
                    C4203k0 c4203k0 = new C4203k0(getContext(), null, C1008a.f2509e);
                    c4203k0.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    c4203k0.setLayoutParams(layoutParams2);
                    addView(c4203k0);
                    this.f810d = c4203k0;
                }
                this.f810d.setText(m19696d);
                this.f810d.setVisibility(0);
            } else {
                TextView textView2 = this.f810d;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f810d.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.f811k;
            if (imageView3 != null) {
                imageView3.setContentDescription(abstractC3104c.m19699a());
            }
            if (!z) {
                charSequence = abstractC3104c.m19699a();
            }
            C4252v1.m16932a(this, charSequence);
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (C0229d.this.f800q > 0) {
                int measuredWidth = getMeasuredWidth();
                int i3 = C0229d.this.f800q;
                if (measuredWidth > i3) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
                }
            }
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2;
            if (isSelected() != z) {
                z2 = true;
            } else {
                z2 = false;
            }
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }
    }

    /* renamed from: d */
    public final boolean m27243d() {
        Spinner spinner = this.f798k;
        return spinner != null && spinner.getParent() == this;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z) {
        this.f799p = z;
    }

    /* renamed from: a */
    public void m27246a(int i) {
        View childAt = this.f797d.getChildAt(i);
        Runnable runnable = this.f795a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        RunnableC0230a runnableC0230a = new RunnableC0230a(childAt);
        this.f795a = runnableC0230a;
        post(runnableC0230a);
    }

    /* renamed from: b */
    public final Spinner m27245b() {
        C4239v c4239v = new C4239v(getContext(), null, C1008a.f2512h);
        c4239v.setLayoutParams(new C0227c.C0228a(-2, -1));
        c4239v.setOnItemSelectedListener(this);
        return c4239v;
    }

    /* renamed from: c */
    public C0233d m27244c(AbstractC3101a.AbstractC3104c abstractC3104c, boolean z) {
        C0233d c0233d = new C0233d(getContext(), abstractC3104c, z);
        if (z) {
            c0233d.setBackgroundDrawable(null);
            c0233d.setLayoutParams(new AbsListView.LayoutParams(-1, this.f802s));
        } else {
            c0233d.setFocusable(true);
            if (this.f796b == null) {
                this.f796b = new View$OnClickListenerC0232c();
            }
            c0233d.setOnClickListener(this.f796b);
        }
        return c0233d;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ((C0233d) view).m27239b().m19695e();
    }

    public void setContentHeight(int i) {
        this.f802s = i;
        requestLayout();
    }

    public void setTabSelected(int i) {
        boolean z;
        this.f803t = i;
        int childCount = this.f797d.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.f797d.getChildAt(i2);
            if (i2 == i) {
                z = true;
            } else {
                z = false;
            }
            childAt.setSelected(z);
            if (z) {
                m27246a(i);
            }
        }
        Spinner spinner = this.f798k;
        if (spinner != null && i >= 0) {
            spinner.setSelection(i);
        }
    }

    /* renamed from: e */
    public final void m27242e() {
        if (m27243d()) {
            return;
        }
        if (this.f798k == null) {
            this.f798k = m27245b();
        }
        removeView(this.f797d);
        addView(this.f798k, new ViewGroup.LayoutParams(-2, -1));
        if (this.f798k.getAdapter() == null) {
            this.f798k.setAdapter((SpinnerAdapter) new C0231b());
        }
        Runnable runnable = this.f795a;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.f795a = null;
        }
        this.f798k.setSelection(this.f803t);
    }

    /* renamed from: f */
    public final boolean m27241f() {
        if (!m27243d()) {
            return false;
        }
        removeView(this.f798k);
        addView(this.f797d, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f798k.getSelectedItemPosition());
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f795a;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C3910a m17784b = C3910a.m17784b(getContext());
        setContentHeight(m17784b.m17780f());
        this.f801r = m17784b.m17781e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f795a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        boolean z;
        int mode = View.MeasureSpec.getMode(i);
        boolean z2 = true;
        if (mode == 1073741824) {
            z = true;
        } else {
            z = false;
        }
        setFillViewport(z);
        int childCount = this.f797d.getChildCount();
        if (childCount > 1 && (mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            if (childCount > 2) {
                this.f800q = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.f800q = View.MeasureSpec.getSize(i) / 2;
            }
            this.f800q = Math.min(this.f800q, this.f801r);
        } else {
            this.f800q = -1;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f802s, 1073741824);
        if ((z || !this.f799p) ? false : false) {
            this.f797d.measure(0, makeMeasureSpec);
            if (this.f797d.getMeasuredWidth() > View.MeasureSpec.getSize(i)) {
                m27242e();
            } else {
                m27241f();
            }
        } else {
            m27241f();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, makeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (z && measuredWidth != measuredWidth2) {
            setTabSelected(this.f803t);
        }
    }
}
