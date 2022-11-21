package p091j;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import p021c.C1017j;
import p199v.C6947a;
/* renamed from: j.o1 */
/* loaded from: classes.dex */
public class C4220o1 {

    /* renamed from: a */
    public static final ThreadLocal<TypedValue> f17987a = new ThreadLocal<>();

    /* renamed from: b */
    public static final int[] f17988b = {-16842910};

    /* renamed from: c */
    public static final int[] f17989c = {16842908};

    /* renamed from: d */
    public static final int[] f17990d = {16843518};

    /* renamed from: e */
    public static final int[] f17991e = {16842919};

    /* renamed from: f */
    public static final int[] f17992f = {16842912};

    /* renamed from: g */
    public static final int[] f17993g = {16842913};

    /* renamed from: h */
    public static final int[] f17994h = {-16842919, -16842908};

    /* renamed from: i */
    public static final int[] f17995i = new int[0];

    /* renamed from: j */
    public static final int[] f17996j = new int[1];

    /* renamed from: a */
    public static void m17033a(View view, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C1017j.f2917z0);
        try {
            if (!obtainStyledAttributes.hasValue(C1017j.f2697E0)) {
                Log.e("ThemeUtils", "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: c */
    public static int m17031c(Context context, int i) {
        int[] iArr = f17996j;
        iArr[0] = i;
        C4235t1 m16967t = C4235t1.m16967t(context, null, iArr);
        try {
            return m16967t.m16985b(0, 0);
        } finally {
            m16967t.m16965v();
        }
    }

    /* renamed from: e */
    public static ColorStateList m17029e(Context context, int i) {
        int[] iArr = f17996j;
        iArr[0] = i;
        C4235t1 m16967t = C4235t1.m16967t(context, null, iArr);
        try {
            return m16967t.m16984c(0);
        } finally {
            m16967t.m16965v();
        }
    }

    /* renamed from: f */
    public static TypedValue m17028f() {
        ThreadLocal<TypedValue> threadLocal = f17987a;
        TypedValue typedValue = threadLocal.get();
        if (typedValue == null) {
            TypedValue typedValue2 = new TypedValue();
            threadLocal.set(typedValue2);
            return typedValue2;
        }
        return typedValue;
    }

    /* renamed from: b */
    public static int m17032b(Context context, int i) {
        ColorStateList m17029e = m17029e(context, i);
        if (m17029e != null && m17029e.isStateful()) {
            return m17029e.getColorForState(f17988b, m17029e.getDefaultColor());
        }
        TypedValue m17028f = m17028f();
        context.getTheme().resolveAttribute(16842803, m17028f, true);
        return m17030d(context, i, m17028f.getFloat());
    }

    /* renamed from: d */
    public static int m17030d(Context context, int i, float f) {
        int m17031c = m17031c(context, i);
        return C6947a.m2955d(m17031c, Math.round(Color.alpha(m17031c) * f));
    }
}
