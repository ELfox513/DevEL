package p038d0;

import android.annotation.SuppressLint;
import android.graphics.Insets;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import p022c0.C1021d;
import p022c0.C1022e;
import p022c0.C1024g;
import p199v.C6948b;
/* renamed from: d0.t1 */
/* loaded from: classes.dex */
public class C3235t1 {

    /* renamed from: b */
    public static final C3235t1 f15534b;

    /* renamed from: a */
    public final C3247l f15535a;

    /* renamed from: d0.t1$a */
    /* loaded from: classes.dex */
    public static class C3236a {

        /* renamed from: a */
        public static Field f15536a;

        /* renamed from: b */
        public static Field f15537b;

        /* renamed from: c */
        public static Field f15538c;

        /* renamed from: d */
        public static boolean f15539d;

        static {
            try {
                Field declaredField = View.class.getDeclaredField("mAttachInfo");
                f15536a = declaredField;
                declaredField.setAccessible(true);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                Field declaredField2 = cls.getDeclaredField("mStableInsets");
                f15537b = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("mContentInsets");
                f15538c = declaredField3;
                declaredField3.setAccessible(true);
                f15539d = true;
            } catch (ReflectiveOperationException e) {
                Log.w("WindowInsetsCompat", "Failed to get visible insets from AttachInfo " + e.getMessage(), e);
            }
        }

        /* renamed from: a */
        public static C3235t1 m19278a(View view) {
            boolean isAttachedToWindow;
            if (f15539d) {
                isAttachedToWindow = view.isAttachedToWindow();
                if (isAttachedToWindow) {
                    try {
                        Object obj = f15536a.get(view.getRootView());
                        if (obj != null) {
                            Rect rect = (Rect) f15537b.get(obj);
                            Rect rect2 = (Rect) f15538c.get(obj);
                            if (rect != null && rect2 != null) {
                                C3235t1 m19277a = new C3237b().m19276b(C6948b.m2952c(rect)).m19275c(C6948b.m2952c(rect2)).m19277a();
                                m19277a.m19283q(m19277a);
                                m19277a.m19296d(view.getRootView());
                                return m19277a;
                            }
                        }
                    } catch (IllegalAccessException e) {
                        Log.w("WindowInsetsCompat", "Failed to get insets from AttachInfo. " + e.getMessage(), e);
                    }
                }
            }
            return null;
        }
    }

    /* renamed from: d0.t1$c */
    /* loaded from: classes.dex */
    public static class C3238c extends C3241f {

        /* renamed from: e */
        public static Field f15541e = null;

        /* renamed from: f */
        public static boolean f15542f = false;

        /* renamed from: g */
        public static Constructor<WindowInsets> f15543g = null;

        /* renamed from: h */
        public static boolean f15544h = false;

        /* renamed from: c */
        public WindowInsets f15545c;

        /* renamed from: d */
        public C6948b f15546d;

        public C3238c() {
            this.f15545c = m19274h();
        }

        @Override // p038d0.C3235t1.C3241f
        /* renamed from: d */
        public void mo19270d(C6948b c6948b) {
            this.f15546d = c6948b;
        }

        /* renamed from: h */
        private static WindowInsets m19274h() {
            if (!f15542f) {
                try {
                    f15541e = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException e) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e);
                }
                f15542f = true;
            }
            Field field = f15541e;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException e2) {
                    Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e2);
                }
            }
            if (!f15544h) {
                try {
                    f15543g = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException e3) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e3);
                }
                f15544h = true;
            }
            Constructor<WindowInsets> constructor = f15543g;
            if (constructor != null) {
                try {
                    return constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException e4) {
                    Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e4);
                }
            }
            return null;
        }

        @Override // p038d0.C3235t1.C3241f
        /* renamed from: f */
        public void mo19268f(C6948b c6948b) {
            WindowInsets windowInsets = this.f15545c;
            if (windowInsets != null) {
                this.f15545c = windowInsets.replaceSystemWindowInsets(c6948b.f35822a, c6948b.f35823b, c6948b.f35824c, c6948b.f35825d);
            }
        }

        public C3238c(C3235t1 c3235t1) {
            super(c3235t1);
            this.f15545c = c3235t1.m19281s();
        }

        @Override // p038d0.C3235t1.C3241f
        /* renamed from: b */
        public C3235t1 mo19272b() {
            m19273a();
            C3235t1 m19280t = C3235t1.m19280t(this.f15545c);
            m19280t.m19285o(this.f15549b);
            m19280t.m19282r(this.f15546d);
            return m19280t;
        }
    }

    /* renamed from: d0.t1$e */
    /* loaded from: classes.dex */
    public static class C3240e extends C3239d {
        public C3240e() {
        }

        public C3240e(C3235t1 c3235t1) {
            super(c3235t1);
        }
    }

    /* renamed from: d0.t1$f */
    /* loaded from: classes.dex */
    public static class C3241f {

        /* renamed from: a */
        public final C3235t1 f15548a;

        /* renamed from: b */
        public C6948b[] f15549b;

        public C3241f() {
            this(new C3235t1((C3235t1) null));
        }

        /* renamed from: c */
        public void mo19271c(C6948b c6948b) {
        }

        /* renamed from: d */
        public void mo19270d(C6948b c6948b) {
        }

        /* renamed from: e */
        public void mo19269e(C6948b c6948b) {
        }

        /* renamed from: f */
        public void mo19268f(C6948b c6948b) {
        }

        /* renamed from: g */
        public void mo19267g(C6948b c6948b) {
        }

        public C3241f(C3235t1 c3235t1) {
            this.f15548a = c3235t1;
        }

        /* renamed from: a */
        public final void m19273a() {
            C6948b[] c6948bArr = this.f15549b;
            if (c6948bArr != null) {
                C6948b c6948b = c6948bArr[C3248m.m19242a(1)];
                C6948b c6948b2 = this.f15549b[C3248m.m19242a(2)];
                if (c6948b2 == null) {
                    c6948b2 = this.f15548a.m19294f(2);
                }
                if (c6948b == null) {
                    c6948b = this.f15548a.m19294f(1);
                }
                mo19268f(C6948b.m2954a(c6948b, c6948b2));
                C6948b c6948b3 = this.f15549b[C3248m.m19242a(16)];
                if (c6948b3 != null) {
                    mo19269e(c6948b3);
                }
                C6948b c6948b4 = this.f15549b[C3248m.m19242a(32)];
                if (c6948b4 != null) {
                    mo19271c(c6948b4);
                }
                C6948b c6948b5 = this.f15549b[C3248m.m19242a(64)];
                if (c6948b5 != null) {
                    mo19267g(c6948b5);
                }
            }
        }

        /* renamed from: b */
        public C3235t1 mo19272b() {
            m19273a();
            return this.f15548a;
        }
    }

    /* renamed from: d0.t1$g */
    /* loaded from: classes.dex */
    public static class C3242g extends C3247l {

        /* renamed from: h */
        public static boolean f15550h = false;

        /* renamed from: i */
        public static Method f15551i;

        /* renamed from: j */
        public static Class<?> f15552j;

        /* renamed from: k */
        public static Class<?> f15553k;

        /* renamed from: l */
        public static Field f15554l;

        /* renamed from: m */
        public static Field f15555m;

        /* renamed from: c */
        public final WindowInsets f15556c;

        /* renamed from: d */
        public C6948b[] f15557d;

        /* renamed from: e */
        public C6948b f15558e;

        /* renamed from: f */
        public C3235t1 f15559f;

        /* renamed from: g */
        public C6948b f15560g;

        public C3242g(C3235t1 c3235t1, WindowInsets windowInsets) {
            super(c3235t1);
            this.f15558e = null;
            this.f15556c = windowInsets;
        }

        @SuppressLint({"PrivateApi"})
        /* renamed from: x */
        private static void m19262x() {
            try {
                f15551i = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
                f15552j = Class.forName("android.view.ViewRootImpl");
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                f15553k = cls;
                f15554l = cls.getDeclaredField("mVisibleInsets");
                f15555m = f15552j.getDeclaredField("mAttachInfo");
                f15554l.setAccessible(true);
                f15555m.setAccessible(true);
            } catch (ReflectiveOperationException e) {
                Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
            }
            f15550h = true;
        }

        @Override // p038d0.C3235t1.C3247l
        /* renamed from: g */
        public C6948b mo19255g(int i) {
            return m19266t(i, false);
        }

        @Override // p038d0.C3235t1.C3247l
        /* renamed from: o */
        public boolean mo19247o() {
            return this.f15556c.isRound();
        }

        @Override // p038d0.C3235t1.C3247l
        /* renamed from: p */
        public void mo19246p(C6948b[] c6948bArr) {
            this.f15557d = c6948bArr;
        }

        @Override // p038d0.C3235t1.C3247l
        /* renamed from: q */
        public void mo19245q(C6948b c6948b) {
            this.f15560g = c6948b;
        }

        @Override // p038d0.C3235t1.C3247l
        /* renamed from: r */
        public void mo19244r(C3235t1 c3235t1) {
            this.f15559f = c3235t1;
        }

        /* renamed from: u */
        public C6948b m19265u(int i, boolean z) {
            int i2;
            C3161c mo19256f;
            if (i != 1) {
                C6948b c6948b = null;
                if (i != 2) {
                    if (i != 8) {
                        if (i != 16) {
                            if (i != 32) {
                                if (i != 64) {
                                    if (i != 128) {
                                        return C6948b.f35821e;
                                    }
                                    C3235t1 c3235t1 = this.f15559f;
                                    if (c3235t1 != null) {
                                        mo19256f = c3235t1.m19295e();
                                    } else {
                                        mo19256f = mo19256f();
                                    }
                                    if (mo19256f != null) {
                                        return C6948b.m2953b(mo19256f.m19471b(), mo19256f.m19469d(), mo19256f.m19470c(), mo19256f.m19472a());
                                    }
                                    return C6948b.f35821e;
                                }
                                return mo19250l();
                            }
                            return mo19254h();
                        }
                        return mo19252j();
                    }
                    C6948b[] c6948bArr = this.f15557d;
                    if (c6948bArr != null) {
                        c6948b = c6948bArr[C3248m.m19242a(8)];
                    }
                    if (c6948b != null) {
                        return c6948b;
                    }
                    C6948b mo19251k = mo19251k();
                    C6948b m19264v = m19264v();
                    int i3 = mo19251k.f35825d;
                    if (i3 > m19264v.f35825d) {
                        return C6948b.m2953b(0, 0, 0, i3);
                    }
                    C6948b c6948b2 = this.f15560g;
                    if (c6948b2 != null && !c6948b2.equals(C6948b.f35821e) && (i2 = this.f15560g.f35825d) > m19264v.f35825d) {
                        return C6948b.m2953b(0, 0, 0, i2);
                    }
                    return C6948b.f35821e;
                } else if (z) {
                    C6948b m19264v2 = m19264v();
                    C6948b mo19253i = mo19253i();
                    return C6948b.m2953b(Math.max(m19264v2.f35822a, mo19253i.f35822a), 0, Math.max(m19264v2.f35824c, mo19253i.f35824c), Math.max(m19264v2.f35825d, mo19253i.f35825d));
                } else {
                    C6948b mo19251k2 = mo19251k();
                    C3235t1 c3235t12 = this.f15559f;
                    if (c3235t12 != null) {
                        c6948b = c3235t12.m19293g();
                    }
                    int i4 = mo19251k2.f35825d;
                    if (c6948b != null) {
                        i4 = Math.min(i4, c6948b.f35825d);
                    }
                    return C6948b.m2953b(mo19251k2.f35822a, 0, mo19251k2.f35824c, i4);
                }
            } else if (z) {
                return C6948b.m2953b(0, Math.max(m19264v().f35823b, mo19251k().f35823b), 0, 0);
            } else {
                return C6948b.m2953b(0, mo19251k().f35823b, 0, 0);
            }
        }

        @SuppressLint({"WrongConstant"})
        /* renamed from: t */
        private C6948b m19266t(int i, boolean z) {
            C6948b c6948b = C6948b.f35821e;
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    c6948b = C6948b.m2954a(c6948b, m19265u(i2, z));
                }
            }
            return c6948b;
        }

        /* renamed from: v */
        private C6948b m19264v() {
            C3235t1 c3235t1 = this.f15559f;
            if (c3235t1 != null) {
                return c3235t1.m19293g();
            }
            return C6948b.f35821e;
        }

        /* renamed from: w */
        private C6948b m19263w(View view) {
            if (Build.VERSION.SDK_INT < 30) {
                if (!f15550h) {
                    m19262x();
                }
                Method method = f15551i;
                if (method != null && f15553k != null && f15554l != null) {
                    try {
                        Object invoke = method.invoke(view, new Object[0]);
                        if (invoke == null) {
                            Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                            return null;
                        }
                        Rect rect = (Rect) f15554l.get(f15555m.get(invoke));
                        if (rect == null) {
                            return null;
                        }
                        return C6948b.m2952c(rect);
                    } catch (ReflectiveOperationException e) {
                        Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
                    }
                }
                return null;
            }
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }

        @Override // p038d0.C3235t1.C3247l
        /* renamed from: e */
        public void mo19257e(C3235t1 c3235t1) {
            c3235t1.m19283q(this.f15559f);
            c3235t1.m19284p(this.f15560g);
        }

        @Override // p038d0.C3235t1.C3247l
        /* renamed from: k */
        public final C6948b mo19251k() {
            if (this.f15558e == null) {
                this.f15558e = C6948b.m2953b(this.f15556c.getSystemWindowInsetLeft(), this.f15556c.getSystemWindowInsetTop(), this.f15556c.getSystemWindowInsetRight(), this.f15556c.getSystemWindowInsetBottom());
            }
            return this.f15558e;
        }

        @Override // p038d0.C3235t1.C3247l
        /* renamed from: m */
        public C3235t1 mo19249m(int i, int i2, int i3, int i4) {
            C3237b c3237b = new C3237b(C3235t1.m19280t(this.f15556c));
            c3237b.m19275c(C3235t1.m19287m(mo19251k(), i, i2, i3, i4));
            c3237b.m19276b(C3235t1.m19287m(mo19253i(), i, i2, i3, i4));
            return c3237b.m19277a();
        }

        @Override // p038d0.C3235t1.C3247l
        /* renamed from: d */
        public void mo19258d(View view) {
            C6948b m19263w = m19263w(view);
            if (m19263w == null) {
                m19263w = C6948b.f35821e;
            }
            mo19245q(m19263w);
        }

        @Override // p038d0.C3235t1.C3247l
        public boolean equals(Object obj) {
            if (!super.equals(obj)) {
                return false;
            }
            return C1021d.m24814a(this.f15560g, ((C3242g) obj).f15560g);
        }

        public C3242g(C3235t1 c3235t1, C3242g c3242g) {
            this(c3235t1, new WindowInsets(c3242g.f15556c));
        }
    }

    /* renamed from: d0.t1$h */
    /* loaded from: classes.dex */
    public static class C3243h extends C3242g {

        /* renamed from: n */
        public C6948b f15561n;

        public C3243h(C3235t1 c3235t1, WindowInsets windowInsets) {
            super(c3235t1, windowInsets);
            this.f15561n = null;
        }

        @Override // p038d0.C3235t1.C3247l
        /* renamed from: b */
        public C3235t1 mo19260b() {
            WindowInsets consumeStableInsets;
            consumeStableInsets = this.f15556c.consumeStableInsets();
            return C3235t1.m19280t(consumeStableInsets);
        }

        @Override // p038d0.C3235t1.C3247l
        /* renamed from: c */
        public C3235t1 mo19259c() {
            return C3235t1.m19280t(this.f15556c.consumeSystemWindowInsets());
        }

        @Override // p038d0.C3235t1.C3247l
        /* renamed from: n */
        public boolean mo19248n() {
            boolean isConsumed;
            isConsumed = this.f15556c.isConsumed();
            return isConsumed;
        }

        @Override // p038d0.C3235t1.C3247l
        /* renamed from: s */
        public void mo19243s(C6948b c6948b) {
            this.f15561n = c6948b;
        }

        @Override // p038d0.C3235t1.C3247l
        /* renamed from: i */
        public final C6948b mo19253i() {
            int stableInsetLeft;
            int stableInsetTop;
            int stableInsetRight;
            int stableInsetBottom;
            if (this.f15561n == null) {
                stableInsetLeft = this.f15556c.getStableInsetLeft();
                stableInsetTop = this.f15556c.getStableInsetTop();
                stableInsetRight = this.f15556c.getStableInsetRight();
                stableInsetBottom = this.f15556c.getStableInsetBottom();
                this.f15561n = C6948b.m2953b(stableInsetLeft, stableInsetTop, stableInsetRight, stableInsetBottom);
            }
            return this.f15561n;
        }

        public C3243h(C3235t1 c3235t1, C3243h c3243h) {
            super(c3235t1, c3243h);
            this.f15561n = null;
            this.f15561n = c3243h.f15561n;
        }
    }

    /* renamed from: d0.t1$i */
    /* loaded from: classes.dex */
    public static class C3244i extends C3243h {
        public C3244i(C3235t1 c3235t1, WindowInsets windowInsets) {
            super(c3235t1, windowInsets);
        }

        @Override // p038d0.C3235t1.C3247l
        /* renamed from: a */
        public C3235t1 mo19261a() {
            WindowInsets consumeDisplayCutout;
            consumeDisplayCutout = this.f15556c.consumeDisplayCutout();
            return C3235t1.m19280t(consumeDisplayCutout);
        }

        @Override // p038d0.C3235t1.C3242g, p038d0.C3235t1.C3247l
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C3244i)) {
                return false;
            }
            C3244i c3244i = (C3244i) obj;
            return C1021d.m24814a(this.f15556c, c3244i.f15556c) && C1021d.m24814a(this.f15560g, c3244i.f15560g);
        }

        @Override // p038d0.C3235t1.C3247l
        /* renamed from: f */
        public C3161c mo19256f() {
            DisplayCutout displayCutout;
            displayCutout = this.f15556c.getDisplayCutout();
            return C3161c.m19468e(displayCutout);
        }

        @Override // p038d0.C3235t1.C3247l
        public int hashCode() {
            return this.f15556c.hashCode();
        }

        public C3244i(C3235t1 c3235t1, C3244i c3244i) {
            super(c3235t1, c3244i);
        }
    }

    /* renamed from: d0.t1$j */
    /* loaded from: classes.dex */
    public static class C3245j extends C3244i {

        /* renamed from: o */
        public C6948b f15562o;

        /* renamed from: p */
        public C6948b f15563p;

        /* renamed from: q */
        public C6948b f15564q;

        public C3245j(C3235t1 c3235t1, WindowInsets windowInsets) {
            super(c3235t1, windowInsets);
            this.f15562o = null;
            this.f15563p = null;
            this.f15564q = null;
        }

        @Override // p038d0.C3235t1.C3242g, p038d0.C3235t1.C3247l
        /* renamed from: m */
        public C3235t1 mo19249m(int i, int i2, int i3, int i4) {
            WindowInsets inset;
            inset = this.f15556c.inset(i, i2, i3, i4);
            return C3235t1.m19280t(inset);
        }

        @Override // p038d0.C3235t1.C3243h, p038d0.C3235t1.C3247l
        /* renamed from: s */
        public void mo19243s(C6948b c6948b) {
        }

        @Override // p038d0.C3235t1.C3247l
        /* renamed from: h */
        public C6948b mo19254h() {
            Insets mandatorySystemGestureInsets;
            if (this.f15563p == null) {
                mandatorySystemGestureInsets = this.f15556c.getMandatorySystemGestureInsets();
                this.f15563p = C6948b.m2951d(mandatorySystemGestureInsets);
            }
            return this.f15563p;
        }

        @Override // p038d0.C3235t1.C3247l
        /* renamed from: j */
        public C6948b mo19252j() {
            Insets systemGestureInsets;
            if (this.f15562o == null) {
                systemGestureInsets = this.f15556c.getSystemGestureInsets();
                this.f15562o = C6948b.m2951d(systemGestureInsets);
            }
            return this.f15562o;
        }

        @Override // p038d0.C3235t1.C3247l
        /* renamed from: l */
        public C6948b mo19250l() {
            Insets tappableElementInsets;
            if (this.f15564q == null) {
                tappableElementInsets = this.f15556c.getTappableElementInsets();
                this.f15564q = C6948b.m2951d(tappableElementInsets);
            }
            return this.f15564q;
        }

        public C3245j(C3235t1 c3235t1, C3245j c3245j) {
            super(c3235t1, c3245j);
            this.f15562o = null;
            this.f15563p = null;
            this.f15564q = null;
        }
    }

    /* renamed from: d0.t1$k */
    /* loaded from: classes.dex */
    public static class C3246k extends C3245j {

        /* renamed from: r */
        public static final C3235t1 f15565r = C3235t1.m19280t(WindowInsets.CONSUMED);

        public C3246k(C3235t1 c3235t1, WindowInsets windowInsets) {
            super(c3235t1, windowInsets);
        }

        @Override // p038d0.C3235t1.C3242g, p038d0.C3235t1.C3247l
        /* renamed from: d */
        public final void mo19258d(View view) {
        }

        public C3246k(C3235t1 c3235t1, C3246k c3246k) {
            super(c3235t1, c3246k);
        }

        @Override // p038d0.C3235t1.C3242g, p038d0.C3235t1.C3247l
        /* renamed from: g */
        public C6948b mo19255g(int i) {
            Insets insets;
            insets = this.f15556c.getInsets(C3249n.m19241a(i));
            return C6948b.m2951d(insets);
        }
    }

    /* renamed from: d0.t1$m */
    /* loaded from: classes.dex */
    public static final class C3248m {
        /* renamed from: a */
        public static int m19242a(int i) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 4) {
                        if (i != 8) {
                            if (i != 16) {
                                if (i != 32) {
                                    if (i != 64) {
                                        if (i != 128) {
                                            if (i == 256) {
                                                return 8;
                                            }
                                            throw new IllegalArgumentException("type needs to be >= FIRST and <= LAST, type=" + i);
                                        }
                                        return 7;
                                    }
                                    return 6;
                                }
                                return 5;
                            }
                            return 4;
                        }
                        return 3;
                    }
                    return 2;
                }
                return 1;
            }
            return 0;
        }
    }

    /* renamed from: d0.t1$n */
    /* loaded from: classes.dex */
    public static final class C3249n {
        /* renamed from: a */
        public static int m19241a(int i) {
            int statusBars;
            int i2 = 0;
            for (int i3 = 1; i3 <= 256; i3 <<= 1) {
                if ((i & i3) != 0) {
                    if (i3 != 1) {
                        if (i3 != 2) {
                            if (i3 != 4) {
                                if (i3 != 8) {
                                    if (i3 != 16) {
                                        if (i3 != 32) {
                                            if (i3 != 64) {
                                                if (i3 == 128) {
                                                    statusBars = WindowInsets.Type.displayCutout();
                                                }
                                            } else {
                                                statusBars = WindowInsets.Type.tappableElement();
                                            }
                                        } else {
                                            statusBars = WindowInsets.Type.mandatorySystemGestures();
                                        }
                                    } else {
                                        statusBars = WindowInsets.Type.systemGestures();
                                    }
                                } else {
                                    statusBars = WindowInsets.Type.ime();
                                }
                            } else {
                                statusBars = WindowInsets.Type.captionBar();
                            }
                        } else {
                            statusBars = WindowInsets.Type.navigationBars();
                        }
                    } else {
                        statusBars = WindowInsets.Type.statusBars();
                    }
                    i2 |= statusBars;
                }
            }
            return i2;
        }
    }

    public C3235t1(WindowInsets windowInsets) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            this.f15535a = new C3246k(this, windowInsets);
        } else if (i >= 29) {
            this.f15535a = new C3245j(this, windowInsets);
        } else if (i >= 28) {
            this.f15535a = new C3244i(this, windowInsets);
        } else if (i >= 21) {
            this.f15535a = new C3243h(this, windowInsets);
        } else if (i >= 20) {
            this.f15535a = new C3242g(this, windowInsets);
        } else {
            this.f15535a = new C3247l(this);
        }
    }

    /* renamed from: t */
    public static C3235t1 m19280t(WindowInsets windowInsets) {
        return m19279u(windowInsets, null);
    }

    @Deprecated
    /* renamed from: a */
    public C3235t1 m19299a() {
        return this.f15535a.mo19261a();
    }

    @Deprecated
    /* renamed from: b */
    public C3235t1 m19298b() {
        return this.f15535a.mo19260b();
    }

    @Deprecated
    /* renamed from: c */
    public C3235t1 m19297c() {
        return this.f15535a.mo19259c();
    }

    /* renamed from: d */
    public void m19296d(View view) {
        this.f15535a.mo19258d(view);
    }

    /* renamed from: e */
    public C3161c m19295e() {
        return this.f15535a.mo19256f();
    }

    /* renamed from: f */
    public C6948b m19294f(int i) {
        return this.f15535a.mo19255g(i);
    }

    @Deprecated
    /* renamed from: g */
    public C6948b m19293g() {
        return this.f15535a.mo19253i();
    }

    @Deprecated
    /* renamed from: h */
    public int m19292h() {
        return this.f15535a.mo19251k().f35825d;
    }

    public int hashCode() {
        C3247l c3247l = this.f15535a;
        if (c3247l == null) {
            return 0;
        }
        return c3247l.hashCode();
    }

    @Deprecated
    /* renamed from: i */
    public int m19291i() {
        return this.f15535a.mo19251k().f35822a;
    }

    @Deprecated
    /* renamed from: j */
    public int m19290j() {
        return this.f15535a.mo19251k().f35824c;
    }

    @Deprecated
    /* renamed from: k */
    public int m19289k() {
        return this.f15535a.mo19251k().f35823b;
    }

    /* renamed from: l */
    public C3235t1 m19288l(int i, int i2, int i3, int i4) {
        return this.f15535a.mo19249m(i, i2, i3, i4);
    }

    /* renamed from: o */
    public void m19285o(C6948b[] c6948bArr) {
        this.f15535a.mo19246p(c6948bArr);
    }

    /* renamed from: p */
    public void m19284p(C6948b c6948b) {
        this.f15535a.mo19245q(c6948b);
    }

    /* renamed from: q */
    public void m19283q(C3235t1 c3235t1) {
        this.f15535a.mo19244r(c3235t1);
    }

    /* renamed from: r */
    public void m19282r(C6948b c6948b) {
        this.f15535a.mo19243s(c6948b);
    }

    /* renamed from: s */
    public WindowInsets m19281s() {
        C3247l c3247l = this.f15535a;
        if (c3247l instanceof C3242g) {
            return ((C3242g) c3247l).f15556c;
        }
        return null;
    }

    /* renamed from: d0.t1$d */
    /* loaded from: classes.dex */
    public static class C3239d extends C3241f {

        /* renamed from: c */
        public final WindowInsets.Builder f15547c;

        public C3239d() {
            this.f15547c = new WindowInsets.Builder();
        }

        @Override // p038d0.C3235t1.C3241f
        /* renamed from: c */
        public void mo19271c(C6948b c6948b) {
            this.f15547c.setMandatorySystemGestureInsets(c6948b.m2950e());
        }

        @Override // p038d0.C3235t1.C3241f
        /* renamed from: d */
        public void mo19270d(C6948b c6948b) {
            this.f15547c.setStableInsets(c6948b.m2950e());
        }

        @Override // p038d0.C3235t1.C3241f
        /* renamed from: e */
        public void mo19269e(C6948b c6948b) {
            this.f15547c.setSystemGestureInsets(c6948b.m2950e());
        }

        @Override // p038d0.C3235t1.C3241f
        /* renamed from: f */
        public void mo19268f(C6948b c6948b) {
            this.f15547c.setSystemWindowInsets(c6948b.m2950e());
        }

        @Override // p038d0.C3235t1.C3241f
        /* renamed from: g */
        public void mo19267g(C6948b c6948b) {
            this.f15547c.setTappableElementInsets(c6948b.m2950e());
        }

        public C3239d(C3235t1 c3235t1) {
            super(c3235t1);
            WindowInsets.Builder builder;
            WindowInsets m19281s = c3235t1.m19281s();
            if (m19281s != null) {
                builder = new WindowInsets.Builder(m19281s);
            } else {
                builder = new WindowInsets.Builder();
            }
            this.f15547c = builder;
        }

        @Override // p038d0.C3235t1.C3241f
        /* renamed from: b */
        public C3235t1 mo19272b() {
            m19273a();
            C3235t1 m19280t = C3235t1.m19280t(this.f15547c.build());
            m19280t.m19285o(this.f15549b);
            return m19280t;
        }
    }

    /* renamed from: d0.t1$l */
    /* loaded from: classes.dex */
    public static class C3247l {

        /* renamed from: b */
        public static final C3235t1 f15566b = new C3237b().m19277a().m19299a().m19298b().m19297c();

        /* renamed from: a */
        public final C3235t1 f15567a;

        /* renamed from: a */
        public C3235t1 mo19261a() {
            return this.f15567a;
        }

        /* renamed from: b */
        public C3235t1 mo19260b() {
            return this.f15567a;
        }

        /* renamed from: c */
        public C3235t1 mo19259c() {
            return this.f15567a;
        }

        /* renamed from: d */
        public void mo19258d(View view) {
        }

        /* renamed from: e */
        public void mo19257e(C3235t1 c3235t1) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C3247l)) {
                return false;
            }
            C3247l c3247l = (C3247l) obj;
            return mo19247o() == c3247l.mo19247o() && mo19248n() == c3247l.mo19248n() && C1022e.m24813a(mo19251k(), c3247l.mo19251k()) && C1022e.m24813a(mo19253i(), c3247l.mo19253i()) && C1022e.m24813a(mo19256f(), c3247l.mo19256f());
        }

        /* renamed from: f */
        public C3161c mo19256f() {
            return null;
        }

        /* renamed from: g */
        public C6948b mo19255g(int i) {
            return C6948b.f35821e;
        }

        /* renamed from: h */
        public C6948b mo19254h() {
            return mo19251k();
        }

        public int hashCode() {
            return C1022e.m24812b(Boolean.valueOf(mo19247o()), Boolean.valueOf(mo19248n()), mo19251k(), mo19253i(), mo19256f());
        }

        /* renamed from: i */
        public C6948b mo19253i() {
            return C6948b.f35821e;
        }

        /* renamed from: j */
        public C6948b mo19252j() {
            return mo19251k();
        }

        /* renamed from: k */
        public C6948b mo19251k() {
            return C6948b.f35821e;
        }

        /* renamed from: l */
        public C6948b mo19250l() {
            return mo19251k();
        }

        /* renamed from: m */
        public C3235t1 mo19249m(int i, int i2, int i3, int i4) {
            return f15566b;
        }

        /* renamed from: n */
        public boolean mo19248n() {
            return false;
        }

        /* renamed from: o */
        public boolean mo19247o() {
            return false;
        }

        /* renamed from: p */
        public void mo19246p(C6948b[] c6948bArr) {
        }

        /* renamed from: q */
        public void mo19245q(C6948b c6948b) {
        }

        /* renamed from: r */
        public void mo19244r(C3235t1 c3235t1) {
        }

        /* renamed from: s */
        public void mo19243s(C6948b c6948b) {
        }

        public C3247l(C3235t1 c3235t1) {
            this.f15567a = c3235t1;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            f15534b = C3246k.f15565r;
        } else {
            f15534b = C3247l.f15566b;
        }
    }

    /* renamed from: m */
    public static C6948b m19287m(C6948b c6948b, int i, int i2, int i3, int i4) {
        int max = Math.max(0, c6948b.f35822a - i);
        int max2 = Math.max(0, c6948b.f35823b - i2);
        int max3 = Math.max(0, c6948b.f35824c - i3);
        int max4 = Math.max(0, c6948b.f35825d - i4);
        if (max == i && max2 == i2 && max3 == i3 && max4 == i4) {
            return c6948b;
        }
        return C6948b.m2953b(max, max2, max3, max4);
    }

    /* renamed from: u */
    public static C3235t1 m19279u(WindowInsets windowInsets, View view) {
        boolean isAttachedToWindow;
        C3235t1 c3235t1 = new C3235t1((WindowInsets) C1024g.m24809b(windowInsets));
        if (view != null) {
            isAttachedToWindow = view.isAttachedToWindow();
            if (isAttachedToWindow) {
                c3235t1.m19283q(C3218s0.m19336p(view));
                c3235t1.m19296d(view.getRootView());
            }
        }
        return c3235t1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3235t1)) {
            return false;
        }
        return C1022e.m24813a(this.f15535a, ((C3235t1) obj).f15535a);
    }

    @Deprecated
    /* renamed from: n */
    public C3235t1 m19286n(int i, int i2, int i3, int i4) {
        return new C3237b(this).m19275c(C6948b.m2953b(i, i2, i3, i4)).m19277a();
    }

    /* renamed from: d0.t1$b */
    /* loaded from: classes.dex */
    public static final class C3237b {

        /* renamed from: a */
        public final C3241f f15540a;

        public C3237b() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                this.f15540a = new C3240e();
            } else if (i >= 29) {
                this.f15540a = new C3239d();
            } else if (i >= 20) {
                this.f15540a = new C3238c();
            } else {
                this.f15540a = new C3241f();
            }
        }

        /* renamed from: a */
        public C3235t1 m19277a() {
            return this.f15540a.mo19272b();
        }

        @Deprecated
        /* renamed from: b */
        public C3237b m19276b(C6948b c6948b) {
            this.f15540a.mo19270d(c6948b);
            return this;
        }

        @Deprecated
        /* renamed from: c */
        public C3237b m19275c(C6948b c6948b) {
            this.f15540a.mo19268f(c6948b);
            return this;
        }

        public C3237b(C3235t1 c3235t1) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                this.f15540a = new C3240e(c3235t1);
            } else if (i >= 29) {
                this.f15540a = new C3239d(c3235t1);
            } else if (i >= 20) {
                this.f15540a = new C3238c(c3235t1);
            } else {
                this.f15540a = new C3241f(c3235t1);
            }
        }
    }

    public C3235t1(C3235t1 c3235t1) {
        if (c3235t1 != null) {
            C3247l c3247l = c3235t1.f15535a;
            int i = Build.VERSION.SDK_INT;
            if (i >= 30 && (c3247l instanceof C3246k)) {
                this.f15535a = new C3246k(this, (C3246k) c3247l);
            } else if (i >= 29 && (c3247l instanceof C3245j)) {
                this.f15535a = new C3245j(this, (C3245j) c3247l);
            } else if (i >= 28 && (c3247l instanceof C3244i)) {
                this.f15535a = new C3244i(this, (C3244i) c3247l);
            } else if (i >= 21 && (c3247l instanceof C3243h)) {
                this.f15535a = new C3243h(this, (C3243h) c3247l);
            } else if (i >= 20 && (c3247l instanceof C3242g)) {
                this.f15535a = new C3242g(this, (C3242g) c3247l);
            } else {
                this.f15535a = new C3247l(this);
            }
            c3247l.mo19257e(this);
            return;
        }
        this.f15535a = new C3247l(this);
    }
}
