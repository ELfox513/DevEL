package p091j;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p055f.C3396c;
import p064g.C3537a;
import p145p.C5275d;
import p145p.C5276e;
import p145p.C5283g;
import p145p.C5284h;
import p172s.C6550a;
import p191u0.C6832b;
import p191u0.C6843i;
import p208w.C7089j;
/* renamed from: j.i1 */
/* loaded from: classes.dex */
public final class C4191i1 {

    /* renamed from: i */
    public static C4191i1 f17901i;

    /* renamed from: a */
    public WeakHashMap<Context, C5284h<ColorStateList>> f17903a;

    /* renamed from: b */
    public C5283g<String, InterfaceC4195d> f17904b;

    /* renamed from: c */
    public C5284h<String> f17905c;

    /* renamed from: d */
    public final WeakHashMap<Context, C5275d<WeakReference<Drawable.ConstantState>>> f17906d = new WeakHashMap<>(0);

    /* renamed from: e */
    public TypedValue f17907e;

    /* renamed from: f */
    public boolean f17908f;

    /* renamed from: g */
    public InterfaceC4196e f17909g;

    /* renamed from: h */
    public static final PorterDuff.Mode f17900h = PorterDuff.Mode.SRC_IN;

    /* renamed from: j */
    public static final C4194c f17902j = new C4194c(6);

    /* renamed from: j.i1$c */
    /* loaded from: classes.dex */
    public static class C4194c extends C5276e<Integer, PorterDuffColorFilter> {
        public C4194c(int i) {
            super(i);
        }

        /* renamed from: j */
        public static int m17146j(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }

        /* renamed from: k */
        public PorterDuffColorFilter m17145k(int i, PorterDuff.Mode mode) {
            return m13695c(Integer.valueOf(m17146j(i, mode)));
        }

        /* renamed from: l */
        public PorterDuffColorFilter m17144l(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return m13694d(Integer.valueOf(m17146j(i, mode)), porterDuffColorFilter);
        }
    }

    /* renamed from: j.i1$d */
    /* loaded from: classes.dex */
    public interface InterfaceC4195d {
        /* renamed from: a */
        Drawable mo17138a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* renamed from: j.i1$e */
    /* loaded from: classes.dex */
    public interface InterfaceC4196e {
        /* renamed from: a */
        Drawable mo17143a(C4191i1 c4191i1, Context context, int i);

        /* renamed from: b */
        boolean mo17142b(Context context, int i, Drawable drawable);

        /* renamed from: c */
        PorterDuff.Mode mo17141c(int i);

        /* renamed from: d */
        ColorStateList mo17140d(Context context, int i);

        /* renamed from: e */
        boolean mo17139e(Context context, int i, Drawable drawable);
    }

    /* renamed from: e */
    public static long m17166e(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    /* renamed from: b */
    public final synchronized boolean m17169b(Context context, long j, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            C5275d<WeakReference<Drawable.ConstantState>> c5275d = this.f17906d.get(context);
            if (c5275d == null) {
                c5275d = new C5275d<>();
                this.f17906d.put(context, c5275d);
            }
            c5275d.m13701l(j, new WeakReference<>(constantState));
            return true;
        }
        return false;
    }

    /* renamed from: i */
    public final synchronized Drawable m17162i(Context context, long j) {
        C5275d<WeakReference<Drawable.ConstantState>> c5275d = this.f17906d.get(context);
        if (c5275d == null) {
            return null;
        }
        WeakReference<Drawable.ConstantState> m13704h = c5275d.m13704h(j);
        if (m13704h != null) {
            Drawable.ConstantState constantState = m13704h.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            c5275d.m13700n(j);
        }
        return null;
    }

    /* renamed from: j */
    public synchronized Drawable m17161j(Context context, int i) {
        return m17160k(context, i, false);
    }

    /* renamed from: k */
    public synchronized Drawable m17160k(Context context, int i, boolean z) {
        Drawable m17153r;
        m17167d(context);
        m17153r = m17153r(context, i);
        if (m17153r == null) {
            m17153r = m17165f(context, i);
        }
        if (m17153r == null) {
            m17153r = C6550a.m3935e(context, i);
        }
        if (m17153r != null) {
            m17153r = m17149v(context, i, z, m17153r);
        }
        if (m17153r != null) {
            C4237u0.m16957b(m17153r);
        }
        return m17153r;
    }

    /* renamed from: m */
    public synchronized ColorStateList m17158m(Context context, int i) {
        ColorStateList m17157n;
        m17157n = m17157n(context, i);
        if (m17157n == null) {
            InterfaceC4196e interfaceC4196e = this.f17909g;
            if (interfaceC4196e == null) {
                m17157n = null;
            } else {
                m17157n = interfaceC4196e.mo17140d(context, i);
            }
            if (m17157n != null) {
                m17168c(context, i, m17157n);
            }
        }
        return m17157n;
    }

    /* renamed from: o */
    public PorterDuff.Mode m17156o(int i) {
        InterfaceC4196e interfaceC4196e = this.f17909g;
        if (interfaceC4196e == null) {
            return null;
        }
        return interfaceC4196e.mo17141c(i);
    }

    /* renamed from: s */
    public synchronized void m17152s(Context context) {
        C5275d<WeakReference<Drawable.ConstantState>> c5275d = this.f17906d.get(context);
        if (c5275d != null) {
            c5275d.m13707b();
        }
    }

    /* renamed from: t */
    public synchronized Drawable m17151t(Context context, C4267y1 c4267y1, int i) {
        Drawable m17153r = m17153r(context, i);
        if (m17153r == null) {
            m17153r = c4267y1.m16887c(i);
        }
        if (m17153r != null) {
            return m17149v(context, i, false, m17153r);
        }
        return null;
    }

    /* renamed from: u */
    public synchronized void m17150u(InterfaceC4196e interfaceC4196e) {
        this.f17909g = interfaceC4196e;
    }

    /* renamed from: x */
    public boolean m17147x(Context context, int i, Drawable drawable) {
        InterfaceC4196e interfaceC4196e = this.f17909g;
        return interfaceC4196e != null && interfaceC4196e.mo17142b(context, i, drawable);
    }

    /* renamed from: j.i1$a */
    /* loaded from: classes.dex */
    public static class C4192a implements InterfaceC4195d {
        @Override // p091j.C4191i1.InterfaceC4195d
        /* renamed from: a */
        public Drawable mo17138a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C3396c.m18971m(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }

    /* renamed from: j.i1$b */
    /* loaded from: classes.dex */
    public static class C4193b implements InterfaceC4195d {
        @Override // p091j.C4191i1.InterfaceC4195d
        /* renamed from: a */
        public Drawable mo17138a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C6832b.m3286a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    /* renamed from: j.i1$f */
    /* loaded from: classes.dex */
    public static class C4197f implements InterfaceC4195d {
        @Override // p091j.C4191i1.InterfaceC4195d
        /* renamed from: a */
        public Drawable mo17138a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C6843i.m3252c(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    /* renamed from: g */
    public static PorterDuffColorFilter m17164g(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList != null && mode != null) {
            return m17159l(colorStateList.getColorForState(iArr, 0), mode);
        }
        return null;
    }

    /* renamed from: h */
    public static synchronized C4191i1 m17163h() {
        C4191i1 c4191i1;
        synchronized (C4191i1.class) {
            if (f17901i == null) {
                C4191i1 c4191i12 = new C4191i1();
                f17901i = c4191i12;
                m17155p(c4191i12);
            }
            c4191i1 = f17901i;
        }
        return c4191i1;
    }

    /* renamed from: l */
    public static synchronized PorterDuffColorFilter m17159l(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter m17145k;
        synchronized (C4191i1.class) {
            C4194c c4194c = f17902j;
            m17145k = c4194c.m17145k(i, mode);
            if (m17145k == null) {
                m17145k = new PorterDuffColorFilter(i, mode);
                c4194c.m17144l(i, mode, m17145k);
            }
        }
        return m17145k;
    }

    /* renamed from: p */
    public static void m17155p(C4191i1 c4191i1) {
        if (Build.VERSION.SDK_INT < 24) {
            c4191i1.m17170a("vector", new C4197f());
            c4191i1.m17170a("animated-vector", new C4193b());
            c4191i1.m17170a("animated-selector", new C4192a());
        }
    }

    /* renamed from: q */
    public static boolean m17154q(Drawable drawable) {
        if (!(drawable instanceof C6843i) && !"android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName())) {
            return false;
        }
        return true;
    }

    /* renamed from: a */
    public final void m17170a(String str, InterfaceC4195d interfaceC4195d) {
        if (this.f17904b == null) {
            this.f17904b = new C5283g<>();
        }
        this.f17904b.put(str, interfaceC4195d);
    }

    /* renamed from: c */
    public final void m17168c(Context context, int i, ColorStateList colorStateList) {
        if (this.f17903a == null) {
            this.f17903a = new WeakHashMap<>();
        }
        C5284h<ColorStateList> c5284h = this.f17903a.get(context);
        if (c5284h == null) {
            c5284h = new C5284h<>();
            this.f17903a.put(context, c5284h);
        }
        c5284h.m13655a(i, colorStateList);
    }

    /* renamed from: d */
    public final void m17167d(Context context) {
        if (this.f17908f) {
            return;
        }
        this.f17908f = true;
        Drawable m17161j = m17161j(context, C3537a.f16040a);
        if (m17161j != null && m17154q(m17161j)) {
            return;
        }
        this.f17908f = false;
        throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
    }

    /* renamed from: f */
    public final Drawable m17165f(Context context, int i) {
        Drawable mo17143a;
        if (this.f17907e == null) {
            this.f17907e = new TypedValue();
        }
        TypedValue typedValue = this.f17907e;
        context.getResources().getValue(i, typedValue, true);
        long m17166e = m17166e(typedValue);
        Drawable m17162i = m17162i(context, m17166e);
        if (m17162i != null) {
            return m17162i;
        }
        InterfaceC4196e interfaceC4196e = this.f17909g;
        if (interfaceC4196e == null) {
            mo17143a = null;
        } else {
            mo17143a = interfaceC4196e.mo17143a(this, context, i);
        }
        if (mo17143a != null) {
            mo17143a.setChangingConfigurations(typedValue.changingConfigurations);
            m17169b(context, m17166e, mo17143a);
        }
        return mo17143a;
    }

    /* renamed from: n */
    public final ColorStateList m17157n(Context context, int i) {
        C5284h<ColorStateList> c5284h;
        WeakHashMap<Context, C5284h<ColorStateList>> weakHashMap = this.f17903a;
        if (weakHashMap == null || (c5284h = weakHashMap.get(context)) == null) {
            return null;
        }
        return c5284h.m13651h(i);
    }

    /* renamed from: r */
    public final Drawable m17153r(Context context, int i) {
        int next;
        C5283g<String, InterfaceC4195d> c5283g = this.f17904b;
        if (c5283g == null || c5283g.isEmpty()) {
            return null;
        }
        C5284h<String> c5284h = this.f17905c;
        if (c5284h != null) {
            String m13651h = c5284h.m13651h(i);
            if ("appcompat_skip_skip".equals(m13651h) || (m13651h != null && this.f17904b.get(m13651h) == null)) {
                return null;
            }
        } else {
            this.f17905c = new C5284h<>();
        }
        if (this.f17907e == null) {
            this.f17907e = new TypedValue();
        }
        TypedValue typedValue = this.f17907e;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long m17166e = m17166e(typedValue);
        Drawable m17162i = m17162i(context, m17166e);
        if (m17162i != null) {
            return m17162i;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                while (true) {
                    next = xml.next();
                    if (next == 2 || next == 1) {
                        break;
                    }
                }
                if (next == 2) {
                    String name = xml.getName();
                    this.f17905c.m13655a(i, name);
                    InterfaceC4195d interfaceC4195d = this.f17904b.get(name);
                    if (interfaceC4195d != null) {
                        m17162i = interfaceC4195d.mo17138a(context, xml, asAttributeSet, context.getTheme());
                    }
                    if (m17162i != null) {
                        m17162i.setChangingConfigurations(typedValue.changingConfigurations);
                        m17169b(context, m17166e, m17162i);
                    }
                } else {
                    throw new XmlPullParserException("No start tag found");
                }
            } catch (Exception e) {
                Log.e("ResourceManagerInternal", "Exception while inflating drawable", e);
            }
        }
        if (m17162i == null) {
            this.f17905c.m13655a(i, "appcompat_skip_skip");
        }
        return m17162i;
    }

    /* renamed from: w */
    public static void m17148w(Drawable drawable, C4229r1 c4229r1, int[] iArr) {
        ColorStateList colorStateList;
        PorterDuff.Mode mode;
        if (C4237u0.m16958a(drawable) && drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        boolean z = c4229r1.f18013d;
        if (!z && !c4229r1.f18012c) {
            drawable.clearColorFilter();
        } else {
            if (z) {
                colorStateList = c4229r1.f18010a;
            } else {
                colorStateList = null;
            }
            if (c4229r1.f18012c) {
                mode = c4229r1.f18011b;
            } else {
                mode = f17900h;
            }
            drawable.setColorFilter(m17164g(colorStateList, mode, iArr));
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }

    /* renamed from: v */
    public final Drawable m17149v(Context context, int i, boolean z, Drawable drawable) {
        ColorStateList m17158m = m17158m(context, i);
        if (m17158m != null) {
            if (C4237u0.m16958a(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable m2541p = C7089j.m2541p(drawable);
            C7089j.m2543n(m2541p, m17158m);
            PorterDuff.Mode m17156o = m17156o(i);
            if (m17156o != null) {
                C7089j.m2542o(m2541p, m17156o);
                return m2541p;
            }
            return m2541p;
        }
        InterfaceC4196e interfaceC4196e = this.f17909g;
        if ((interfaceC4196e == null || !interfaceC4196e.mo17139e(context, i, drawable)) && !m17147x(context, i, drawable) && z) {
            return null;
        }
        return drawable;
    }
}
