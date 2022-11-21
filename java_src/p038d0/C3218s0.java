package p038d0;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.View$OnApplyWindowInsetsListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import p038d0.C3150a;
import p038d0.C3235t1;
import p154q.C5379b;
@SuppressLint({"PrivateConstructorForUtilityClass"})
/* renamed from: d0.s0 */
/* loaded from: classes.dex */
public class C3218s0 {

    /* renamed from: b */
    public static WeakHashMap<View, String> f15515b;

    /* renamed from: d */
    public static Field f15517d;

    /* renamed from: a */
    public static final AtomicInteger f15514a = new AtomicInteger(1);

    /* renamed from: c */
    public static WeakHashMap<View, C3208p1> f15516c = null;

    /* renamed from: e */
    public static boolean f15518e = false;

    /* renamed from: f */
    public static final int[] f15519f = {C5379b.f20008b, C5379b.f20009c, C5379b.f20020n, C5379b.f20031y, C5379b.f19990B, C5379b.f19991C, C5379b.f19992D, C5379b.f19993E, C5379b.f19994F, C5379b.f19995G, C5379b.f20010d, C5379b.f20011e, C5379b.f20012f, C5379b.f20013g, C5379b.f20014h, C5379b.f20015i, C5379b.f20016j, C5379b.f20017k, C5379b.f20018l, C5379b.f20019m, C5379b.f20021o, C5379b.f20022p, C5379b.f20023q, C5379b.f20024r, C5379b.f20025s, C5379b.f20026t, C5379b.f20027u, C5379b.f20028v, C5379b.f20029w, C5379b.f20030x, C5379b.f20032z, C5379b.f19989A};

    /* renamed from: g */
    public static final InterfaceC3259x f15520g = new C3219a();

    /* renamed from: h */
    public static ViewTreeObserver$OnGlobalLayoutListenerC3224f f15521h = new ViewTreeObserver$OnGlobalLayoutListenerC3224f();

    /* renamed from: d0.s0$a */
    /* loaded from: classes.dex */
    public class C3219a implements InterfaceC3259x {
    }

    /* renamed from: d0.s0$b */
    /* loaded from: classes.dex */
    public class C3220b extends AbstractC3225g<Boolean> {
        public C3220b(int i, Class cls, int i2) {
            super(i, cls, i2);
        }

        @Override // p038d0.C3218s0.AbstractC3225g
        /* renamed from: e */
        public Boolean mo19317c(View view) {
            boolean isScreenReaderFocusable;
            isScreenReaderFocusable = view.isScreenReaderFocusable();
            return Boolean.valueOf(isScreenReaderFocusable);
        }
    }

    /* renamed from: d0.s0$c */
    /* loaded from: classes.dex */
    public class C3221c extends AbstractC3225g<CharSequence> {
        public C3221c(int i, Class cls, int i2, int i3) {
            super(i, cls, i2, i3);
        }

        @Override // p038d0.C3218s0.AbstractC3225g
        /* renamed from: e */
        public CharSequence mo19317c(View view) {
            CharSequence accessibilityPaneTitle;
            accessibilityPaneTitle = view.getAccessibilityPaneTitle();
            return accessibilityPaneTitle;
        }
    }

    /* renamed from: d0.s0$d */
    /* loaded from: classes.dex */
    public class C3222d extends AbstractC3225g<CharSequence> {
        public C3222d(int i, Class cls, int i2, int i3) {
            super(i, cls, i2, i3);
        }

        @Override // p038d0.C3218s0.AbstractC3225g
        /* renamed from: e */
        public CharSequence mo19317c(View view) {
            CharSequence stateDescription;
            stateDescription = view.getStateDescription();
            return stateDescription;
        }
    }

    /* renamed from: d0.s0$e */
    /* loaded from: classes.dex */
    public class C3223e extends AbstractC3225g<Boolean> {
        public C3223e(int i, Class cls, int i2) {
            super(i, cls, i2);
        }

        @Override // p038d0.C3218s0.AbstractC3225g
        /* renamed from: e */
        public Boolean mo19317c(View view) {
            boolean isAccessibilityHeading;
            isAccessibilityHeading = view.isAccessibilityHeading();
            return Boolean.valueOf(isAccessibilityHeading);
        }
    }

    /* renamed from: d0.s0$f */
    /* loaded from: classes.dex */
    public static class ViewTreeObserver$OnGlobalLayoutListenerC3224f implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* renamed from: a */
        public WeakHashMap<View, Boolean> f15522a = new WeakHashMap<>();

        /* renamed from: b */
        public final void m19320b(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            m19320b(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 28) {
                for (Map.Entry<View, Boolean> entry : this.f15522a.entrySet()) {
                    m19321a(entry.getKey(), entry.getValue().booleanValue());
                }
            }
        }

        /* renamed from: a */
        public final void m19321a(View view, boolean z) {
            boolean z2;
            int i;
            if (view.getVisibility() == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z != z2) {
                if (z2) {
                    i = 16;
                } else {
                    i = 32;
                }
                C3218s0.m19327y(view, i);
                this.f15522a.put(view, Boolean.valueOf(z2));
            }
        }
    }

    /* renamed from: d0.s0$g */
    /* loaded from: classes.dex */
    public static abstract class AbstractC3225g<T> {

        /* renamed from: a */
        public final int f15523a;

        /* renamed from: b */
        public final Class<T> f15524b;

        /* renamed from: c */
        public final int f15525c;

        /* renamed from: d */
        public final int f15526d;

        public AbstractC3225g(int i, Class<T> cls, int i2) {
            this(i, cls, 0, i2);
        }

        /* renamed from: a */
        public final boolean m19319a() {
            return Build.VERSION.SDK_INT >= 19;
        }

        /* renamed from: b */
        public final boolean m19318b() {
            return Build.VERSION.SDK_INT >= this.f15525c;
        }

        /* renamed from: c */
        public abstract T mo19317c(View view);

        public AbstractC3225g(int i, Class<T> cls, int i2, int i3) {
            this.f15523a = i;
            this.f15524b = cls;
            this.f15526d = i2;
            this.f15525c = i3;
        }

        /* renamed from: d */
        public T m19316d(View view) {
            if (m19318b()) {
                return mo19317c(view);
            }
            if (m19319a()) {
                T t = (T) view.getTag(this.f15523a);
                if (this.f15524b.isInstance(t)) {
                    return t;
                }
                return null;
            }
            return null;
        }
    }

    /* renamed from: d0.s0$h */
    /* loaded from: classes.dex */
    public static class C3226h {

        /* renamed from: d0.s0$h$a */
        /* loaded from: classes.dex */
        public class View$OnApplyWindowInsetsListenerC3227a implements View$OnApplyWindowInsetsListener {

            /* renamed from: a */
            public C3235t1 f15527a = null;

            /* renamed from: b */
            public final /* synthetic */ View f15528b;

            /* renamed from: c */
            public final /* synthetic */ InterfaceC3256w f15529c;

            public View$OnApplyWindowInsetsListenerC3227a(View view, InterfaceC3256w interfaceC3256w) {
                this.f15528b = view;
                this.f15529c = interfaceC3256w;
            }

            @Override // android.view.View$OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                C3235t1 m19279u = C3235t1.m19279u(windowInsets, view);
                int i = Build.VERSION.SDK_INT;
                if (i < 30) {
                    C3226h.m19315a(windowInsets, this.f15528b);
                    if (m19279u.equals(this.f15527a)) {
                        return this.f15529c.mo19232a(view, m19279u).m19281s();
                    }
                }
                this.f15527a = m19279u;
                C3235t1 mo19232a = this.f15529c.mo19232a(view, m19279u);
                if (i >= 30) {
                    return mo19232a.m19281s();
                }
                C3218s0.m19366E(view);
                return mo19232a.m19281s();
            }
        }

        /* renamed from: c */
        public static C3235t1 m19313c(View view) {
            return C3235t1.C3236a.m19278a(view);
        }

        /* renamed from: a */
        public static void m19315a(WindowInsets windowInsets, View view) {
            View$OnApplyWindowInsetsListener view$OnApplyWindowInsetsListener = (View$OnApplyWindowInsetsListener) view.getTag(C5379b.f20006R);
            if (view$OnApplyWindowInsetsListener != null) {
                view$OnApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
            }
        }

        /* renamed from: d */
        public static void m19312d(View view, InterfaceC3256w interfaceC3256w) {
            if (Build.VERSION.SDK_INT < 30) {
                view.setTag(C5379b.f20000L, interfaceC3256w);
            }
            if (interfaceC3256w == null) {
                view.setOnApplyWindowInsetsListener((View$OnApplyWindowInsetsListener) view.getTag(C5379b.f20006R));
            } else {
                view.setOnApplyWindowInsetsListener(new View$OnApplyWindowInsetsListenerC3227a(view, interfaceC3256w));
            }
        }

        /* renamed from: b */
        public static C3235t1 m19314b(View view, C3235t1 c3235t1, Rect rect) {
            WindowInsets computeSystemWindowInsets;
            WindowInsets m19281s = c3235t1.m19281s();
            if (m19281s != null) {
                computeSystemWindowInsets = view.computeSystemWindowInsets(m19281s, rect);
                return C3235t1.m19279u(computeSystemWindowInsets, view);
            }
            rect.setEmpty();
            return c3235t1;
        }
    }

    /* renamed from: d0.s0$j */
    /* loaded from: classes.dex */
    public static class C3229j {
        /* renamed from: a */
        public static void m19310a(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i, int i2) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, i2);
        }
    }

    /* renamed from: d0.s0$k */
    /* loaded from: classes.dex */
    public interface InterfaceC3230k {
        boolean onUnhandledKeyEvent(View view, KeyEvent keyEvent);
    }

    /* renamed from: d0.s0$l */
    /* loaded from: classes.dex */
    public static class C3231l {

        /* renamed from: d */
        public static final ArrayList<WeakReference<View>> f15530d = new ArrayList<>();

        /* renamed from: a */
        public WeakHashMap<View, Boolean> f15531a = null;

        /* renamed from: b */
        public SparseArray<WeakReference<View>> f15532b = null;

        /* renamed from: c */
        public WeakReference<KeyEvent> f15533c = null;

        /* renamed from: a */
        public static C3231l m19309a(View view) {
            int i = C5379b.f20004P;
            C3231l c3231l = (C3231l) view.getTag(i);
            if (c3231l == null) {
                C3231l c3231l2 = new C3231l();
                view.setTag(i, c3231l2);
                return c3231l2;
            }
            return c3231l;
        }

        /* renamed from: c */
        public final View m19307c(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.f15531a;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        View m19307c = m19307c(viewGroup.getChildAt(childCount), keyEvent);
                        if (m19307c != null) {
                            return m19307c;
                        }
                    }
                }
                if (m19305e(view, keyEvent)) {
                    return view;
                }
            }
            return null;
        }

        /* renamed from: d */
        public final SparseArray<WeakReference<View>> m19306d() {
            if (this.f15532b == null) {
                this.f15532b = new SparseArray<>();
            }
            return this.f15532b;
        }

        /* renamed from: e */
        public final boolean m19305e(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(C5379b.f20005Q);
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (((InterfaceC3230k) arrayList.get(size)).onUnhandledKeyEvent(view, keyEvent)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        /* renamed from: f */
        public boolean m19304f(KeyEvent keyEvent) {
            int indexOfKey;
            WeakReference<KeyEvent> weakReference = this.f15533c;
            if (weakReference != null && weakReference.get() == keyEvent) {
                return false;
            }
            this.f15533c = new WeakReference<>(keyEvent);
            WeakReference<View> weakReference2 = null;
            SparseArray<WeakReference<View>> m19306d = m19306d();
            if (keyEvent.getAction() == 1 && (indexOfKey = m19306d.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                weakReference2 = m19306d.valueAt(indexOfKey);
                m19306d.removeAt(indexOfKey);
            }
            if (weakReference2 == null) {
                weakReference2 = m19306d.get(keyEvent.getKeyCode());
            }
            if (weakReference2 == null) {
                return false;
            }
            View view = weakReference2.get();
            if (view != null && C3218s0.m19330v(view)) {
                m19305e(view, keyEvent);
            }
            return true;
        }

        /* renamed from: g */
        public final void m19303g() {
            WeakHashMap<View, Boolean> weakHashMap = this.f15531a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList<WeakReference<View>> arrayList = f15530d;
            if (arrayList.isEmpty()) {
                return;
            }
            synchronized (arrayList) {
                if (this.f15531a == null) {
                    this.f15531a = new WeakHashMap<>();
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ArrayList<WeakReference<View>> arrayList2 = f15530d;
                    View view = arrayList2.get(size).get();
                    if (view == null) {
                        arrayList2.remove(size);
                    } else {
                        this.f15531a.put(view, Boolean.TRUE);
                        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                            this.f15531a.put((View) parent, Boolean.TRUE);
                        }
                    }
                }
            }
        }

        /* renamed from: b */
        public boolean m19308b(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                m19303g();
            }
            View m19307c = m19307c(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (m19307c != null && !KeyEvent.isModifierKey(keyCode)) {
                    m19306d().put(keyCode, new WeakReference<>(m19307c));
                }
            }
            if (m19307c != null) {
                return true;
            }
            return false;
        }
    }

    /* renamed from: A */
    public static AbstractC3225g<CharSequence> m19370A() {
        return new C3221c(C5379b.f19999K, CharSequence.class, 8, 28);
    }

    /* renamed from: B */
    public static void m19369B(View view) {
        view.postInvalidateOnAnimation();
    }

    /* renamed from: C */
    public static void m19368C(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }

    /* renamed from: D */
    public static void m19367D(View view, Runnable runnable, long j) {
        view.postOnAnimationDelayed(runnable, j);
    }

    /* renamed from: G */
    public static AbstractC3225g<Boolean> m19364G() {
        return new C3220b(C5379b.f20001M, Boolean.class, 28);
    }

    /* renamed from: I */
    public static void m19362I(View view, Drawable drawable) {
        view.setBackground(drawable);
    }

    /* renamed from: R */
    public static AbstractC3225g<CharSequence> m19353R() {
        return new C3222d(C5379b.f20002N, CharSequence.class, 64, 30);
    }

    /* renamed from: a */
    public static AbstractC3225g<Boolean> m19351a() {
        return new C3223e(C5379b.f19998J, Boolean.class, 28);
    }

    /* renamed from: j */
    public static CharSequence m19342j(View view) {
        return m19370A().m19316d(view);
    }

    /* renamed from: m */
    public static int m19339m(View view) {
        return view.getImportantForAccessibility();
    }

    /* renamed from: o */
    public static int m19337o(View view) {
        return view.getMinimumHeight();
    }

    /* renamed from: q */
    public static final CharSequence m19335q(View view) {
        return m19353R().m19316d(view);
    }

    /* renamed from: s */
    public static int m19333s(View view) {
        return view.getWindowSystemUiVisibility();
    }

    /* renamed from: t */
    public static boolean m19332t(View view) {
        return view.hasOnClickListeners();
    }

    /* renamed from: d0.s0$i */
    /* loaded from: classes.dex */
    public static class C3228i {
        /* renamed from: a */
        public static C3235t1 m19311a(View view) {
            WindowInsets rootWindowInsets;
            rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            C3235t1 m19280t = C3235t1.m19280t(rootWindowInsets);
            m19280t.m19283q(m19280t);
            m19280t.m19296d(view.getRootView());
            return m19280t;
        }
    }

    /* renamed from: E */
    public static void m19366E(View view) {
        if (Build.VERSION.SDK_INT >= 20) {
            view.requestApplyInsets();
        } else {
            view.requestFitSystemWindows();
        }
    }

    /* renamed from: F */
    public static void m19365F(View view, @SuppressLint({"ContextFirst"}) Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 29) {
            C3229j.m19310a(view, context, iArr, attributeSet, typedArray, i, i2);
        }
    }

    /* renamed from: H */
    public static void m19363H(View view, C3150a c3150a) {
        View.AccessibilityDelegate m19490d;
        if (c3150a == null && (m19345g(view) instanceof C3150a.C3151a)) {
            c3150a = new C3150a();
        }
        if (c3150a == null) {
            m19490d = null;
        } else {
            m19490d = c3150a.m19490d();
        }
        view.setAccessibilityDelegate(m19490d);
    }

    /* renamed from: J */
    public static void m19361J(View view, ColorStateList colorStateList) {
        ColorStateList backgroundTintList;
        boolean z;
        PorterDuff.Mode backgroundTintMode;
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            view.setBackgroundTintList(colorStateList);
            if (i == 21) {
                Drawable background = view.getBackground();
                backgroundTintList = view.getBackgroundTintList();
                if (backgroundTintList == null) {
                    backgroundTintMode = view.getBackgroundTintMode();
                    if (backgroundTintMode == null) {
                        z = false;
                        if (background == null && z) {
                            if (background.isStateful()) {
                                background.setState(view.getDrawableState());
                            }
                            view.setBackground(background);
                            return;
                        }
                    }
                }
                z = true;
                if (background == null) {
                }
            }
        } else if (view instanceof InterfaceC3265z) {
            ((InterfaceC3265z) view).setSupportBackgroundTintList(colorStateList);
        }
    }

    /* renamed from: K */
    public static void m19360K(View view, PorterDuff.Mode mode) {
        ColorStateList backgroundTintList;
        boolean z;
        PorterDuff.Mode backgroundTintMode;
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            view.setBackgroundTintMode(mode);
            if (i == 21) {
                Drawable background = view.getBackground();
                backgroundTintList = view.getBackgroundTintList();
                if (backgroundTintList == null) {
                    backgroundTintMode = view.getBackgroundTintMode();
                    if (backgroundTintMode == null) {
                        z = false;
                        if (background == null && z) {
                            if (background.isStateful()) {
                                background.setState(view.getDrawableState());
                            }
                            view.setBackground(background);
                            return;
                        }
                    }
                }
                z = true;
                if (background == null) {
                }
            }
        } else if (view instanceof InterfaceC3265z) {
            ((InterfaceC3265z) view).setSupportBackgroundTintMode(mode);
        }
    }

    /* renamed from: L */
    public static void m19359L(View view, float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setElevation(f);
        }
    }

    /* renamed from: M */
    public static void m19358M(View view, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.setImportantForAccessibility(i);
            return;
        }
        if (i == 4) {
            i = 2;
        }
        view.setImportantForAccessibility(i);
    }

    /* renamed from: N */
    public static void m19357N(View view, InterfaceC3256w interfaceC3256w) {
        if (Build.VERSION.SDK_INT >= 21) {
            C3226h.m19312d(view, interfaceC3256w);
        }
    }

    /* renamed from: O */
    public static void m19356O(View view, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.setScrollIndicators(i, i2);
        }
    }

    /* renamed from: P */
    public static void m19355P(View view, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTransitionName(str);
            return;
        }
        if (f15515b == null) {
            f15515b = new WeakHashMap<>();
        }
        f15515b.put(view, str);
    }

    /* renamed from: S */
    public static void m19352S(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.stopNestedScroll();
        } else if (view instanceof InterfaceC3211q) {
            ((InterfaceC3211q) view).stopNestedScroll();
        }
    }

    /* renamed from: b */
    public static C3208p1 m19350b(View view) {
        if (f15516c == null) {
            f15516c = new WeakHashMap<>();
        }
        C3208p1 c3208p1 = f15516c.get(view);
        if (c3208p1 == null) {
            C3208p1 c3208p12 = new C3208p1(view);
            f15516c.put(view, c3208p12);
            return c3208p12;
        }
        return c3208p1;
    }

    /* renamed from: c */
    public static C3235t1 m19349c(View view, C3235t1 c3235t1, Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            return C3226h.m19314b(view, c3235t1, rect);
        }
        return c3235t1;
    }

    /* renamed from: d */
    public static C3235t1 m19348d(View view, C3235t1 c3235t1) {
        WindowInsets m19281s;
        WindowInsets dispatchApplyWindowInsets;
        if (Build.VERSION.SDK_INT >= 21 && (m19281s = c3235t1.m19281s()) != null) {
            dispatchApplyWindowInsets = view.dispatchApplyWindowInsets(m19281s);
            if (!dispatchApplyWindowInsets.equals(m19281s)) {
                return C3235t1.m19279u(dispatchApplyWindowInsets, view);
            }
        }
        return c3235t1;
    }

    /* renamed from: e */
    public static boolean m19347e(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return C3231l.m19309a(view).m19308b(view, keyEvent);
    }

    /* renamed from: f */
    public static boolean m19346f(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return C3231l.m19309a(view).m19304f(keyEvent);
    }

    /* renamed from: g */
    public static View.AccessibilityDelegate m19345g(View view) {
        View.AccessibilityDelegate accessibilityDelegate;
        if (Build.VERSION.SDK_INT >= 29) {
            accessibilityDelegate = view.getAccessibilityDelegate();
            return accessibilityDelegate;
        }
        return m19344h(view);
    }

    /* renamed from: h */
    public static View.AccessibilityDelegate m19344h(View view) {
        if (f15518e) {
            return null;
        }
        if (f15517d == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f15517d = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f15518e = true;
                return null;
            }
        }
        try {
            Object obj = f15517d.get(view);
            if (!(obj instanceof View.AccessibilityDelegate)) {
                return null;
            }
            return (View.AccessibilityDelegate) obj;
        } catch (Throwable unused2) {
            f15518e = true;
            return null;
        }
    }

    /* renamed from: i */
    public static int m19343i(View view) {
        int accessibilityLiveRegion;
        if (Build.VERSION.SDK_INT >= 19) {
            accessibilityLiveRegion = view.getAccessibilityLiveRegion();
            return accessibilityLiveRegion;
        }
        return 0;
    }

    /* renamed from: k */
    public static ColorStateList m19341k(View view) {
        ColorStateList backgroundTintList;
        if (Build.VERSION.SDK_INT >= 21) {
            backgroundTintList = view.getBackgroundTintList();
            return backgroundTintList;
        } else if (view instanceof InterfaceC3265z) {
            return ((InterfaceC3265z) view).getSupportBackgroundTintList();
        } else {
            return null;
        }
    }

    /* renamed from: l */
    public static PorterDuff.Mode m19340l(View view) {
        PorterDuff.Mode backgroundTintMode;
        if (Build.VERSION.SDK_INT >= 21) {
            backgroundTintMode = view.getBackgroundTintMode();
            return backgroundTintMode;
        } else if (view instanceof InterfaceC3265z) {
            return ((InterfaceC3265z) view).getSupportBackgroundTintMode();
        } else {
            return null;
        }
    }

    /* renamed from: n */
    public static int m19338n(View view) {
        int layoutDirection;
        if (Build.VERSION.SDK_INT >= 17) {
            layoutDirection = view.getLayoutDirection();
            return layoutDirection;
        }
        return 0;
    }

    /* renamed from: p */
    public static C3235t1 m19336p(View view) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            return C3228i.m19311a(view);
        }
        if (i >= 21) {
            return C3226h.m19313c(view);
        }
        return null;
    }

    /* renamed from: r */
    public static String m19334r(View view) {
        String transitionName;
        if (Build.VERSION.SDK_INT >= 21) {
            transitionName = view.getTransitionName();
            return transitionName;
        }
        WeakHashMap<View, String> weakHashMap = f15515b;
        if (weakHashMap == null) {
            return null;
        }
        return weakHashMap.get(view);
    }

    /* renamed from: v */
    public static boolean m19330v(View view) {
        boolean isAttachedToWindow;
        if (Build.VERSION.SDK_INT >= 19) {
            isAttachedToWindow = view.isAttachedToWindow();
            return isAttachedToWindow;
        } else if (view.getWindowToken() != null) {
            return true;
        } else {
            return false;
        }
    }

    /* renamed from: w */
    public static boolean m19329w(View view) {
        boolean isLaidOut;
        if (Build.VERSION.SDK_INT >= 19) {
            isLaidOut = view.isLaidOut();
            return isLaidOut;
        } else if (view.getWidth() > 0 && view.getHeight() > 0) {
            return true;
        } else {
            return false;
        }
    }

    /* renamed from: z */
    public static C3235t1 m19326z(View view, C3235t1 c3235t1) {
        WindowInsets m19281s;
        WindowInsets onApplyWindowInsets;
        if (Build.VERSION.SDK_INT >= 21 && (m19281s = c3235t1.m19281s()) != null) {
            onApplyWindowInsets = view.onApplyWindowInsets(m19281s);
            if (!onApplyWindowInsets.equals(m19281s)) {
                return C3235t1.m19279u(onApplyWindowInsets, view);
            }
        }
        return c3235t1;
    }

    /* renamed from: Q */
    public static void m19354Q(View view) {
        if (m19339m(view) == 0) {
            m19358M(view, 1);
        }
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            if (m19339m((View) parent) == 4) {
                m19358M(view, 2);
                return;
            }
        }
    }

    /* renamed from: u */
    public static boolean m19331u(View view) {
        Boolean m19316d = m19351a().m19316d(view);
        if (m19316d == null) {
            return false;
        }
        return m19316d.booleanValue();
    }

    /* renamed from: x */
    public static boolean m19328x(View view) {
        Boolean m19316d = m19364G().m19316d(view);
        if (m19316d == null) {
            return false;
        }
        return m19316d.booleanValue();
    }

    /* renamed from: y */
    public static void m19327y(View view, int i) {
        boolean z;
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (!accessibilityManager.isEnabled()) {
            return;
        }
        if (m19342j(view) != null && view.getVisibility() == 0) {
            z = true;
        } else {
            z = false;
        }
        int i2 = 32;
        if (m19343i(view) == 0 && !z) {
            if (i == 32) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                view.onInitializeAccessibilityEvent(obtain);
                obtain.setEventType(32);
                obtain.setContentChangeTypes(i);
                obtain.setSource(view);
                view.onPopulateAccessibilityEvent(obtain);
                obtain.getText().add(m19342j(view));
                accessibilityManager.sendAccessibilityEvent(obtain);
                return;
            } else if (view.getParent() != null) {
                try {
                    view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i);
                    return;
                } catch (AbstractMethodError e) {
                    Log.e("ViewCompat", view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e);
                    return;
                }
            } else {
                return;
            }
        }
        AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
        if (!z) {
            i2 = 2048;
        }
        obtain2.setEventType(i2);
        obtain2.setContentChangeTypes(i);
        if (z) {
            obtain2.getText().add(m19342j(view));
            m19354Q(view);
        }
        view.sendAccessibilityEventUnchecked(obtain2);
    }
}
