package p037d;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p021c.C1017j;
import p038d0.C3218s0;
import p073h.C3914d;
import p091j.C4169c;
import p091j.C4175e;
import p091j.C4178f;
import p091j.C4181g;
import p091j.C4198j;
import p091j.C4203k0;
import p091j.C4205l;
import p091j.C4211n;
import p091j.C4215o;
import p091j.C4226q1;
import p091j.C4227r;
import p091j.C4228r0;
import p091j.C4230s;
import p091j.C4233t;
import p091j.C4239v;
import p145p.C5283g;
/* renamed from: d.l */
/* loaded from: classes.dex */
public class C3139l {

    /* renamed from: b */
    public static final Class<?>[] f15413b = {Context.class, AttributeSet.class};

    /* renamed from: c */
    public static final int[] f15414c = {16843375};

    /* renamed from: d */
    public static final String[] f15415d = {"android.widget.", "android.view.", "android.webkit."};

    /* renamed from: e */
    public static final C5283g<String, Constructor<? extends View>> f15416e = new C5283g<>();

    /* renamed from: a */
    public final Object[] f15417a = new Object[2];

    /* renamed from: d.l$a */
    /* loaded from: classes.dex */
    public static class View$OnClickListenerC3140a implements View.OnClickListener {

        /* renamed from: a */
        public final View f15418a;

        /* renamed from: b */
        public final String f15419b;

        /* renamed from: d */
        public Method f15420d;

        /* renamed from: k */
        public Context f15421k;

        /* renamed from: a */
        public final void m19541a(Context context) {
            int id;
            String str;
            Method method;
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.f15419b, View.class)) != null) {
                        this.f15420d = method;
                        this.f15421k = context;
                        return;
                    }
                } catch (NoSuchMethodException unused) {
                }
                if (context instanceof ContextWrapper) {
                    context = ((ContextWrapper) context).getBaseContext();
                } else {
                    context = null;
                }
            }
            if (this.f15418a.getId() == -1) {
                str = "";
            } else {
                str = " with id '" + this.f15418a.getContext().getResources().getResourceEntryName(id) + "'";
            }
            throw new IllegalStateException("Could not find method " + this.f15419b + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f15418a.getClass() + str);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f15420d == null) {
                m19541a(this.f15418a.getContext());
            }
            try {
                this.f15420d.invoke(this.f15421k, view);
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
            } catch (InvocationTargetException e2) {
                throw new IllegalStateException("Could not execute method for android:onClick", e2);
            }
        }

        public View$OnClickListenerC3140a(View view, String str) {
            this.f15418a = view;
            this.f15419b = str;
        }
    }

    /* renamed from: b */
    public C4169c m19561b(Context context, AttributeSet attributeSet) {
        return new C4169c(context, attributeSet);
    }

    /* renamed from: c */
    public C4175e m19560c(Context context, AttributeSet attributeSet) {
        return new C4175e(context, attributeSet);
    }

    /* renamed from: d */
    public C4178f m19559d(Context context, AttributeSet attributeSet) {
        return new C4178f(context, attributeSet);
    }

    /* renamed from: e */
    public C4181g m19558e(Context context, AttributeSet attributeSet) {
        return new C4181g(context, attributeSet);
    }

    /* renamed from: f */
    public C4198j m19557f(Context context, AttributeSet attributeSet) {
        return new C4198j(context, attributeSet);
    }

    /* renamed from: g */
    public C4205l m19556g(Context context, AttributeSet attributeSet) {
        return new C4205l(context, attributeSet);
    }

    /* renamed from: h */
    public C4211n m19555h(Context context, AttributeSet attributeSet) {
        return new C4211n(context, attributeSet);
    }

    /* renamed from: i */
    public C4215o m19554i(Context context, AttributeSet attributeSet) {
        return new C4215o(context, attributeSet);
    }

    /* renamed from: j */
    public C4227r m19553j(Context context, AttributeSet attributeSet) {
        return new C4227r(context, attributeSet);
    }

    /* renamed from: k */
    public C4230s m19552k(Context context, AttributeSet attributeSet) {
        return new C4230s(context, attributeSet);
    }

    /* renamed from: l */
    public C4233t m19551l(Context context, AttributeSet attributeSet) {
        return new C4233t(context, attributeSet);
    }

    /* renamed from: m */
    public C4239v m19550m(Context context, AttributeSet attributeSet) {
        return new C4239v(context, attributeSet);
    }

    /* renamed from: n */
    public C4203k0 m19549n(Context context, AttributeSet attributeSet) {
        return new C4203k0(context, attributeSet);
    }

    /* renamed from: o */
    public C4228r0 m19548o(Context context, AttributeSet attributeSet) {
        return new C4228r0(context, attributeSet);
    }

    /* renamed from: p */
    public View m19547p(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    /* renamed from: q */
    public final View m19546q(View view, String str, Context context, AttributeSet attributeSet, boolean z, boolean z2, boolean z3, boolean z4) {
        View m19552k;
        Context context2 = (!z || view == null) ? context : view.getContext();
        if (z2 || z3) {
            context2 = m19543t(context2, attributeSet, z2, z3);
        }
        if (z4) {
            context2 = C4226q1.m17018b(context2);
        }
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1946472170:
                if (str.equals("RatingBar")) {
                    c = 0;
                    break;
                }
                break;
            case -1455429095:
                if (str.equals("CheckedTextView")) {
                    c = 1;
                    break;
                }
                break;
            case -1346021293:
                if (str.equals("MultiAutoCompleteTextView")) {
                    c = 2;
                    break;
                }
                break;
            case -938935918:
                if (str.equals("TextView")) {
                    c = 3;
                    break;
                }
                break;
            case -937446323:
                if (str.equals("ImageButton")) {
                    c = 4;
                    break;
                }
                break;
            case -658531749:
                if (str.equals("SeekBar")) {
                    c = 5;
                    break;
                }
                break;
            case -339785223:
                if (str.equals("Spinner")) {
                    c = 6;
                    break;
                }
                break;
            case 776382189:
                if (str.equals("RadioButton")) {
                    c = 7;
                    break;
                }
                break;
            case 799298502:
                if (str.equals("ToggleButton")) {
                    c = '\b';
                    break;
                }
                break;
            case 1125864064:
                if (str.equals("ImageView")) {
                    c = '\t';
                    break;
                }
                break;
            case 1413872058:
                if (str.equals("AutoCompleteTextView")) {
                    c = '\n';
                    break;
                }
                break;
            case 1601505219:
                if (str.equals("CheckBox")) {
                    c = 11;
                    break;
                }
                break;
            case 1666676343:
                if (str.equals("EditText")) {
                    c = '\f';
                    break;
                }
                break;
            case 2001146706:
                if (str.equals("Button")) {
                    c = '\r';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                m19552k = m19552k(context2, attributeSet);
                m19542u(m19552k, str);
                break;
            case 1:
                m19552k = m19558e(context2, attributeSet);
                m19542u(m19552k, str);
                break;
            case 2:
                m19552k = m19554i(context2, attributeSet);
                m19542u(m19552k, str);
                break;
            case 3:
                m19552k = m19549n(context2, attributeSet);
                m19542u(m19552k, str);
                break;
            case 4:
                m19552k = m19556g(context2, attributeSet);
                m19542u(m19552k, str);
                break;
            case 5:
                m19552k = m19551l(context2, attributeSet);
                m19542u(m19552k, str);
                break;
            case 6:
                m19552k = m19550m(context2, attributeSet);
                m19542u(m19552k, str);
                break;
            case 7:
                m19552k = m19553j(context2, attributeSet);
                m19542u(m19552k, str);
                break;
            case '\b':
                m19552k = m19548o(context2, attributeSet);
                m19542u(m19552k, str);
                break;
            case '\t':
                m19552k = m19555h(context2, attributeSet);
                m19542u(m19552k, str);
                break;
            case '\n':
                m19552k = m19561b(context2, attributeSet);
                m19542u(m19552k, str);
                break;
            case 11:
                m19552k = m19559d(context2, attributeSet);
                m19542u(m19552k, str);
                break;
            case '\f':
                m19552k = m19557f(context2, attributeSet);
                m19542u(m19552k, str);
                break;
            case '\r':
                m19552k = m19560c(context2, attributeSet);
                m19542u(m19552k, str);
                break;
            default:
                m19552k = m19547p(context2, str, attributeSet);
                break;
        }
        if (m19552k == null && context != context2) {
            m19552k = m19544s(context2, str, attributeSet);
        }
        if (m19552k != null) {
            m19562a(m19552k, attributeSet);
        }
        return m19552k;
    }

    /* renamed from: u */
    public final void m19542u(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }

    /* renamed from: t */
    public static Context m19543t(Context context, AttributeSet attributeSet, boolean z, boolean z2) {
        int i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1017j.f2680A3, 0, 0);
        if (z) {
            i = obtainStyledAttributes.getResourceId(C1017j.f2685B3, 0);
        } else {
            i = 0;
        }
        if (z2 && i == 0 && (i = obtainStyledAttributes.getResourceId(C1017j.f2690C3, 0)) != 0) {
            Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        obtainStyledAttributes.recycle();
        if (i != 0) {
            if (!(context instanceof C3914d) || ((C3914d) context).m17772c() != i) {
                return new C3914d(context, i);
            }
            return context;
        }
        return context;
    }

    /* renamed from: r */
    public final View m19545r(Context context, String str, String str2) {
        String str3;
        C5283g<String, Constructor<? extends View>> c5283g = f15416e;
        Constructor<? extends View> constructor = c5283g.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    str3 = str2 + str;
                } catch (Exception unused) {
                    return null;
                }
            } else {
                str3 = str;
            }
            constructor = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f15413b);
            c5283g.put(str, constructor);
        }
        constructor.setAccessible(true);
        return constructor.newInstance(this.f15417a);
    }

    /* renamed from: s */
    public final View m19544s(Context context, String str, AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        try {
            Object[] objArr = this.f15417a;
            objArr[0] = context;
            objArr[1] = attributeSet;
            if (-1 == str.indexOf(46)) {
                int i = 0;
                while (true) {
                    String[] strArr = f15415d;
                    if (i >= strArr.length) {
                        return null;
                    }
                    View m19545r = m19545r(context, str, strArr[i]);
                    if (m19545r != null) {
                        return m19545r;
                    }
                    i++;
                }
            } else {
                return m19545r(context, str, null);
            }
        } catch (Exception unused) {
            return null;
        } finally {
            Object[] objArr2 = this.f15417a;
            objArr2[0] = null;
            objArr2[1] = null;
        }
    }

    /* renamed from: a */
    public final void m19562a(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if ((context instanceof ContextWrapper) && C3218s0.m19332t(view)) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f15414c);
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                view.setOnClickListener(new View$OnClickListenerC3140a(view, string));
            }
            obtainStyledAttributes.recycle();
        }
    }
}
