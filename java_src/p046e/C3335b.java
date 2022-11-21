package p046e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.util.WeakHashMap;
import p091j.C4191i1;
import p172s.C6550a;
import p190u.C6808a;
@SuppressLint({"RestrictedAPI"})
/* renamed from: e.b */
/* loaded from: classes.dex */
public final class C3335b {

    /* renamed from: a */
    public static final ThreadLocal<TypedValue> f15670a = new ThreadLocal<>();

    /* renamed from: b */
    public static final WeakHashMap<Context, SparseArray<C3336a>> f15671b = new WeakHashMap<>(0);

    /* renamed from: c */
    public static final Object f15672c = new Object();

    /* renamed from: d */
    public static Drawable m19101d(Context context, int i) {
        return C4191i1.m17163h().m17161j(context, i);
    }

    /* renamed from: e.b$a */
    /* loaded from: classes.dex */
    public static class C3336a {

        /* renamed from: a */
        public final ColorStateList f15673a;

        /* renamed from: b */
        public final Configuration f15674b;

        public C3336a(ColorStateList colorStateList, Configuration configuration) {
            this.f15673a = colorStateList;
            this.f15674b = configuration;
        }
    }

    /* renamed from: a */
    public static void m19104a(Context context, int i, ColorStateList colorStateList) {
        synchronized (f15672c) {
            WeakHashMap<Context, SparseArray<C3336a>> weakHashMap = f15671b;
            SparseArray<C3336a> sparseArray = weakHashMap.get(context);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                weakHashMap.put(context, sparseArray);
            }
            sparseArray.append(i, new C3336a(colorStateList, context.getResources().getConfiguration()));
        }
    }

    /* renamed from: b */
    public static ColorStateList m19103b(Context context, int i) {
        C3336a c3336a;
        synchronized (f15672c) {
            SparseArray<C3336a> sparseArray = f15671b.get(context);
            if (sparseArray != null && sparseArray.size() > 0 && (c3336a = sparseArray.get(i)) != null) {
                if (c3336a.f15674b.equals(context.getResources().getConfiguration())) {
                    return c3336a.f15673a;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }

    /* renamed from: c */
    public static ColorStateList m19102c(Context context, int i) {
        ColorStateList colorStateList;
        if (Build.VERSION.SDK_INT >= 23) {
            colorStateList = context.getColorStateList(i);
            return colorStateList;
        }
        ColorStateList m19103b = m19103b(context, i);
        if (m19103b != null) {
            return m19103b;
        }
        ColorStateList m19099f = m19099f(context, i);
        if (m19099f != null) {
            m19104a(context, i, m19099f);
            return m19099f;
        }
        return C6550a.m3936d(context, i);
    }

    /* renamed from: e */
    public static TypedValue m19100e() {
        ThreadLocal<TypedValue> threadLocal = f15670a;
        TypedValue typedValue = threadLocal.get();
        if (typedValue == null) {
            TypedValue typedValue2 = new TypedValue();
            threadLocal.set(typedValue2);
            return typedValue2;
        }
        return typedValue;
    }

    /* renamed from: f */
    public static ColorStateList m19099f(Context context, int i) {
        if (m19098g(context, i)) {
            return null;
        }
        Resources resources = context.getResources();
        try {
            return C6808a.m3365a(resources, resources.getXml(i), context.getTheme());
        } catch (Exception e) {
            Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    /* renamed from: g */
    public static boolean m19098g(Context context, int i) {
        Resources resources = context.getResources();
        TypedValue m19100e = m19100e();
        resources.getValue(i, m19100e, true);
        int i2 = m19100e.type;
        if (i2 >= 28 && i2 <= 31) {
            return true;
        }
        return false;
    }
}
