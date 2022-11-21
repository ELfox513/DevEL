package p091j;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import java.lang.reflect.Method;
import p021c.C1017j;
import p038d0.C3218s0;
import p056f0.C3452t;
import p082i.InterfaceC4080g;
/* renamed from: j.b1 */
/* loaded from: classes.dex */
public class C4161b1 implements InterfaceC4080g {

    /* renamed from: R */
    public static Method f17821R;

    /* renamed from: S */
    public static Method f17822S;

    /* renamed from: T */
    public static Method f17823T;

    /* renamed from: A */
    public View f17824A;

    /* renamed from: B */
    public int f17825B;

    /* renamed from: C */
    public DataSetObserver f17826C;

    /* renamed from: D */
    public View f17827D;

    /* renamed from: E */
    public Drawable f17828E;

    /* renamed from: F */
    public AdapterView.OnItemClickListener f17829F;

    /* renamed from: G */
    public AdapterView.OnItemSelectedListener f17830G;

    /* renamed from: H */
    public final RunnableC4168g f17831H;

    /* renamed from: I */
    public final View$OnTouchListenerC4167f f17832I;

    /* renamed from: J */
    public final C4166e f17833J;

    /* renamed from: K */
    public final RunnableC4164c f17834K;

    /* renamed from: L */
    public Runnable f17835L;

    /* renamed from: M */
    public final Handler f17836M;

    /* renamed from: N */
    public final Rect f17837N;

    /* renamed from: O */
    public Rect f17838O;

    /* renamed from: P */
    public boolean f17839P;

    /* renamed from: Q */
    public PopupWindow f17840Q;

    /* renamed from: a */
    public Context f17841a;

    /* renamed from: b */
    public ListAdapter f17842b;

    /* renamed from: d */
    public C4254w0 f17843d;

    /* renamed from: k */
    public int f17844k;

    /* renamed from: p */
    public int f17845p;

    /* renamed from: q */
    public int f17846q;

    /* renamed from: r */
    public int f17847r;

    /* renamed from: s */
    public int f17848s;

    /* renamed from: t */
    public boolean f17849t;

    /* renamed from: u */
    public boolean f17850u;

    /* renamed from: v */
    public boolean f17851v;

    /* renamed from: w */
    public int f17852w;

    /* renamed from: x */
    public boolean f17853x;

    /* renamed from: y */
    public boolean f17854y;

    /* renamed from: z */
    public int f17855z;

    /* renamed from: j.b1$a */
    /* loaded from: classes.dex */
    public class RunnableC4162a implements Runnable {
        public RunnableC4162a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View m17231s = C4161b1.this.m17231s();
            if (m17231s != null && m17231s.getWindowToken() != null) {
                C4161b1.this.show();
            }
        }
    }

    /* renamed from: j.b1$b */
    /* loaded from: classes.dex */
    public class C4163b implements AdapterView.OnItemSelectedListener {
        public C4163b() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            C4254w0 c4254w0;
            if (i != -1 && (c4254w0 = C4161b1.this.f17843d) != null) {
                c4254w0.setListSelectionHidden(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: j.b1$c */
    /* loaded from: classes.dex */
    public class RunnableC4164c implements Runnable {
        public RunnableC4164c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C4161b1.this.m17232q();
        }
    }

    /* renamed from: j.b1$d */
    /* loaded from: classes.dex */
    public class C4165d extends DataSetObserver {
        public C4165d() {
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            C4161b1.this.dismiss();
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (C4161b1.this.mo17241a()) {
                C4161b1.this.show();
            }
        }
    }

    /* renamed from: j.b1$e */
    /* loaded from: classes.dex */
    public class C4166e implements AbsListView.OnScrollListener {
        public C4166e() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 1 && !C4161b1.this.m17228v() && C4161b1.this.f17840Q.getContentView() != null) {
                C4161b1 c4161b1 = C4161b1.this;
                c4161b1.f17836M.removeCallbacks(c4161b1.f17831H);
                C4161b1.this.f17831H.run();
            }
        }
    }

    /* renamed from: j.b1$g */
    /* loaded from: classes.dex */
    public class RunnableC4168g implements Runnable {
        public RunnableC4168g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C4254w0 c4254w0 = C4161b1.this.f17843d;
            if (c4254w0 != null && C3218s0.m19330v(c4254w0) && C4161b1.this.f17843d.getCount() > C4161b1.this.f17843d.getChildCount()) {
                int childCount = C4161b1.this.f17843d.getChildCount();
                C4161b1 c4161b1 = C4161b1.this;
                if (childCount <= c4161b1.f17855z) {
                    c4161b1.f17840Q.setInputMethodMode(2);
                    C4161b1.this.show();
                }
            }
        }
    }

    public C4161b1(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    /* renamed from: B */
    public void m17252B(int i) {
        this.f17852w = i;
    }

    /* renamed from: C */
    public void m17251C(Rect rect) {
        this.f17838O = rect != null ? new Rect(rect) : null;
    }

    /* renamed from: D */
    public void m17250D(int i) {
        this.f17840Q.setInputMethodMode(i);
    }

    /* renamed from: F */
    public void m17248F(PopupWindow.OnDismissListener onDismissListener) {
        this.f17840Q.setOnDismissListener(onDismissListener);
    }

    /* renamed from: G */
    public void m17247G(AdapterView.OnItemClickListener onItemClickListener) {
        this.f17829F = onItemClickListener;
    }

    /* renamed from: H */
    public void m17246H(boolean z) {
        this.f17851v = true;
        this.f17850u = z;
    }

    /* renamed from: J */
    public void m17244J(int i) {
        this.f17825B = i;
    }

    /* renamed from: L */
    public void m17242L(int i) {
        this.f17845p = i;
    }

    @Override // p082i.InterfaceC4080g
    /* renamed from: a */
    public boolean mo17241a() {
        return this.f17840Q.isShowing();
    }

    /* renamed from: b */
    public int m17240b() {
        return this.f17846q;
    }

    /* renamed from: d */
    public void m17239d(int i) {
        this.f17846q = i;
    }

    /* renamed from: g */
    public Drawable m17238g() {
        return this.f17840Q.getBackground();
    }

    @Override // p082i.InterfaceC4080g
    /* renamed from: i */
    public ListView mo17237i() {
        return this.f17843d;
    }

    /* renamed from: j */
    public void m17236j(Drawable drawable) {
        this.f17840Q.setBackgroundDrawable(drawable);
    }

    /* renamed from: r */
    public C4254w0 mo17188r(Context context, boolean z) {
        return new C4254w0(context, z);
    }

    /* renamed from: s */
    public View m17231s() {
        return this.f17827D;
    }

    /* renamed from: u */
    public int m17229u() {
        return this.f17845p;
    }

    /* renamed from: v */
    public boolean m17228v() {
        return this.f17840Q.getInputMethodMode() == 2;
    }

    /* renamed from: w */
    public boolean m17227w() {
        return this.f17839P;
    }

    /* renamed from: y */
    public void m17225y(View view) {
        this.f17827D = view;
    }

    /* renamed from: z */
    public void m17224z(int i) {
        this.f17840Q.setAnimationStyle(i);
    }

    /* renamed from: j.b1$f */
    /* loaded from: classes.dex */
    public class View$OnTouchListenerC4167f implements View.OnTouchListener {
        public View$OnTouchListenerC4167f() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = C4161b1.this.f17840Q) != null && popupWindow.isShowing() && x >= 0 && x < C4161b1.this.f17840Q.getWidth() && y >= 0 && y < C4161b1.this.f17840Q.getHeight()) {
                C4161b1 c4161b1 = C4161b1.this;
                c4161b1.f17836M.postDelayed(c4161b1.f17831H, 250L);
                return false;
            } else if (action == 1) {
                C4161b1 c4161b12 = C4161b1.this;
                c4161b12.f17836M.removeCallbacks(c4161b12.f17831H);
                return false;
            } else {
                return false;
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                f17821R = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                f17823T = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                f17822S = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException unused3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public C4161b1(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f17844k = -2;
        this.f17845p = -2;
        this.f17848s = 1002;
        this.f17852w = 0;
        this.f17853x = false;
        this.f17854y = false;
        this.f17855z = Integer.MAX_VALUE;
        this.f17825B = 0;
        this.f17831H = new RunnableC4168g();
        this.f17832I = new View$OnTouchListenerC4167f();
        this.f17833J = new C4166e();
        this.f17834K = new RunnableC4164c();
        this.f17837N = new Rect();
        this.f17841a = context;
        this.f17836M = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1017j.f2863o1, i, i2);
        this.f17846q = obtainStyledAttributes.getDimensionPixelOffset(C1017j.f2868p1, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(C1017j.f2873q1, 0);
        this.f17847r = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f17849t = true;
        }
        obtainStyledAttributes.recycle();
        C4221p c4221p = new C4221p(context, attributeSet, i, i2);
        this.f17840Q = c4221p;
        c4221p.setInputMethodMode(1);
    }

    /* renamed from: A */
    public void m17253A(int i) {
        Drawable background = this.f17840Q.getBackground();
        if (background != null) {
            background.getPadding(this.f17837N);
            Rect rect = this.f17837N;
            this.f17845p = rect.left + rect.right + i;
            return;
        }
        m17242L(i);
    }

    /* renamed from: E */
    public void m17249E(boolean z) {
        this.f17839P = z;
        this.f17840Q.setFocusable(z);
    }

    /* renamed from: I */
    public final void m17245I(boolean z) {
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f17821R;
            if (method != null) {
                try {
                    method.invoke(this.f17840Q, Boolean.valueOf(z));
                    return;
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                    return;
                }
            }
            return;
        }
        this.f17840Q.setIsClippedToScreen(z);
    }

    /* renamed from: K */
    public void m17243K(int i) {
        C4254w0 c4254w0 = this.f17843d;
        if (mo17241a() && c4254w0 != null) {
            c4254w0.setListSelectionHidden(false);
            c4254w0.setSelection(i);
            if (c4254w0.getChoiceMode() != 0) {
                c4254w0.setItemChecked(i, true);
            }
        }
    }

    @Override // p082i.InterfaceC4080g
    public void dismiss() {
        this.f17840Q.dismiss();
        m17226x();
        this.f17840Q.setContentView(null);
        this.f17843d = null;
        this.f17836M.removeCallbacks(this.f17831H);
    }

    /* renamed from: k */
    public void m17235k(int i) {
        this.f17847r = i;
        this.f17849t = true;
    }

    /* renamed from: n */
    public int m17234n() {
        if (!this.f17849t) {
            return 0;
        }
        return this.f17847r;
    }

    /* renamed from: o */
    public void mo16934o(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.f17826C;
        if (dataSetObserver == null) {
            this.f17826C = new C4165d();
        } else {
            ListAdapter listAdapter2 = this.f17842b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f17842b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f17826C);
        }
        C4254w0 c4254w0 = this.f17843d;
        if (c4254w0 != null) {
            c4254w0.setAdapter(this.f17842b);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: p */
    public final int m17233p() {
        int i;
        int i2;
        int makeMeasureSpec;
        int i3;
        boolean z = true;
        if (this.f17843d == null) {
            Context context = this.f17841a;
            this.f17835L = new RunnableC4162a();
            C4254w0 mo17188r = mo17188r(context, !this.f17839P);
            this.f17843d = mo17188r;
            Drawable drawable = this.f17828E;
            if (drawable != null) {
                mo17188r.setSelector(drawable);
            }
            this.f17843d.setAdapter(this.f17842b);
            this.f17843d.setOnItemClickListener(this.f17829F);
            this.f17843d.setFocusable(true);
            this.f17843d.setFocusableInTouchMode(true);
            this.f17843d.setOnItemSelectedListener(new C4163b());
            this.f17843d.setOnScrollListener(this.f17833J);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f17830G;
            if (onItemSelectedListener != null) {
                this.f17843d.setOnItemSelectedListener(onItemSelectedListener);
            }
            C4254w0 c4254w0 = this.f17843d;
            View view = this.f17824A;
            if (view != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i4 = this.f17825B;
                if (i4 != 0) {
                    if (i4 != 1) {
                        Log.e("ListPopupWindow", "Invalid hint position " + this.f17825B);
                    } else {
                        linearLayout.addView(c4254w0, layoutParams);
                        linearLayout.addView(view);
                    }
                } else {
                    linearLayout.addView(view);
                    linearLayout.addView(c4254w0, layoutParams);
                }
                int i5 = this.f17845p;
                if (i5 >= 0) {
                    i3 = Integer.MIN_VALUE;
                } else {
                    i5 = 0;
                    i3 = 0;
                }
                view.measure(View.MeasureSpec.makeMeasureSpec(i5, i3), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view.getLayoutParams();
                i = view.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                c4254w0 = linearLayout;
            } else {
                i = 0;
            }
            this.f17840Q.setContentView(c4254w0);
        } else {
            ViewGroup viewGroup = (ViewGroup) this.f17840Q.getContentView();
            View view2 = this.f17824A;
            if (view2 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                i = view2.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                i = 0;
            }
        }
        Drawable background = this.f17840Q.getBackground();
        if (background != null) {
            background.getPadding(this.f17837N);
            Rect rect = this.f17837N;
            int i6 = rect.top;
            i2 = rect.bottom + i6;
            if (!this.f17849t) {
                this.f17847r = -i6;
            }
        } else {
            this.f17837N.setEmpty();
            i2 = 0;
        }
        if (this.f17840Q.getInputMethodMode() != 2) {
            z = false;
        }
        int m17230t = m17230t(m17231s(), this.f17847r, z);
        if (!this.f17853x && this.f17844k != -1) {
            int i7 = this.f17845p;
            if (i7 != -2) {
                if (i7 != -1) {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
                } else {
                    int i8 = this.f17841a.getResources().getDisplayMetrics().widthPixels;
                    Rect rect2 = this.f17837N;
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i8 - (rect2.left + rect2.right), 1073741824);
                }
            } else {
                int i9 = this.f17841a.getResources().getDisplayMetrics().widthPixels;
                Rect rect3 = this.f17837N;
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i9 - (rect3.left + rect3.right), Integer.MIN_VALUE);
            }
            int mo16927d = this.f17843d.mo16927d(makeMeasureSpec, 0, -1, m17230t - i, -1);
            if (mo16927d > 0) {
                i += i2 + this.f17843d.getPaddingTop() + this.f17843d.getPaddingBottom();
            }
            return mo16927d + i;
        }
        return m17230t + i2;
    }

    /* renamed from: q */
    public void m17232q() {
        C4254w0 c4254w0 = this.f17843d;
        if (c4254w0 != null) {
            c4254w0.setListSelectionHidden(true);
            c4254w0.requestLayout();
        }
    }

    /* renamed from: t */
    public final int m17230t(View view, int i, boolean z) {
        int maxAvailableHeight;
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = f17822S;
            if (method != null) {
                try {
                    return ((Integer) method.invoke(this.f17840Q, view, Integer.valueOf(i), Boolean.valueOf(z))).intValue();
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
                }
            }
            return this.f17840Q.getMaxAvailableHeight(view, i);
        }
        maxAvailableHeight = this.f17840Q.getMaxAvailableHeight(view, i, z);
        return maxAvailableHeight;
    }

    /* renamed from: x */
    public final void m17226x() {
        View view = this.f17824A;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f17824A);
            }
        }
    }

    @Override // p082i.InterfaceC4080g
    public void show() {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        int m17233p = m17233p();
        boolean m17228v = m17228v();
        C3452t.m18816b(this.f17840Q, this.f17848s);
        boolean z2 = true;
        if (this.f17840Q.isShowing()) {
            if (!C3218s0.m19330v(m17231s())) {
                return;
            }
            int i5 = this.f17845p;
            if (i5 == -1) {
                i5 = -1;
            } else if (i5 == -2) {
                i5 = m17231s().getWidth();
            }
            int i6 = this.f17844k;
            if (i6 == -1) {
                if (!m17228v) {
                    m17233p = -1;
                }
                if (m17228v) {
                    PopupWindow popupWindow = this.f17840Q;
                    if (this.f17845p == -1) {
                        i4 = -1;
                    } else {
                        i4 = 0;
                    }
                    popupWindow.setWidth(i4);
                    this.f17840Q.setHeight(0);
                } else {
                    PopupWindow popupWindow2 = this.f17840Q;
                    if (this.f17845p == -1) {
                        i3 = -1;
                    } else {
                        i3 = 0;
                    }
                    popupWindow2.setWidth(i3);
                    this.f17840Q.setHeight(-1);
                }
            } else if (i6 != -2) {
                m17233p = i6;
            }
            this.f17840Q.setOutsideTouchable((this.f17854y || this.f17853x) ? false : false);
            PopupWindow popupWindow3 = this.f17840Q;
            View m17231s = m17231s();
            int i7 = this.f17846q;
            int i8 = this.f17847r;
            if (i5 < 0) {
                i = -1;
            } else {
                i = i5;
            }
            if (m17233p < 0) {
                i2 = -1;
            } else {
                i2 = m17233p;
            }
            popupWindow3.update(m17231s, i7, i8, i, i2);
            return;
        }
        int i9 = this.f17845p;
        if (i9 == -1) {
            i9 = -1;
        } else if (i9 == -2) {
            i9 = m17231s().getWidth();
        }
        int i10 = this.f17844k;
        if (i10 == -1) {
            m17233p = -1;
        } else if (i10 != -2) {
            m17233p = i10;
        }
        this.f17840Q.setWidth(i9);
        this.f17840Q.setHeight(m17233p);
        m17245I(true);
        PopupWindow popupWindow4 = this.f17840Q;
        if (!this.f17854y && !this.f17853x) {
            z = true;
        } else {
            z = false;
        }
        popupWindow4.setOutsideTouchable(z);
        this.f17840Q.setTouchInterceptor(this.f17832I);
        if (this.f17851v) {
            C3452t.m18817a(this.f17840Q, this.f17850u);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f17823T;
            if (method != null) {
                try {
                    method.invoke(this.f17840Q, this.f17838O);
                } catch (Exception e) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e);
                }
            }
        } else {
            this.f17840Q.setEpicenterBounds(this.f17838O);
        }
        C3452t.m18815c(this.f17840Q, m17231s(), this.f17846q, this.f17847r, this.f17852w);
        this.f17843d.setSelection(-1);
        if (!this.f17839P || this.f17843d.isInTouchMode()) {
            m17232q();
        }
        if (!this.f17839P) {
            this.f17836M.post(this.f17834K);
        }
    }
}
