package p190u;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import p022c0.C1022e;
/* renamed from: u.h */
/* loaded from: classes.dex */
public final class C6820h {

    /* renamed from: a */
    public static final ThreadLocal<TypedValue> f35547a = new ThreadLocal<>();

    /* renamed from: b */
    public static final WeakHashMap<C6822b, SparseArray<C6821a>> f35548b = new WeakHashMap<>(0);

    /* renamed from: c */
    public static final Object f35549c = new Object();

    /* renamed from: u.h$c */
    /* loaded from: classes.dex */
    public static abstract class AbstractC6823c {

        /* renamed from: u.h$c$a */
        /* loaded from: classes.dex */
        public class RunnableC6824a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Typeface f35554a;

            public RunnableC6824a(Typeface typeface) {
                this.f35554a = typeface;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC6823c.this.mo3303e(this.f35554a);
            }
        }

        /* renamed from: u.h$c$b */
        /* loaded from: classes.dex */
        public class RunnableC6825b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ int f35556a;

            public RunnableC6825b(int i) {
                this.f35556a = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC6823c.this.mo3304d(this.f35556a);
            }
        }

        /* renamed from: c */
        public static Handler m3305c(Handler handler) {
            return handler == null ? new Handler(Looper.getMainLooper()) : handler;
        }

        /* renamed from: a */
        public final void m3307a(int i, Handler handler) {
            m3305c(handler).post(new RunnableC6825b(i));
        }

        /* renamed from: b */
        public final void m3306b(Typeface typeface, Handler handler) {
            m3305c(handler).post(new RunnableC6824a(typeface));
        }

        /* renamed from: d */
        public abstract void mo3304d(int i);

        /* renamed from: e */
        public abstract void mo3303e(Typeface typeface);
    }

    /* renamed from: u.h$d */
    /* loaded from: classes.dex */
    public static final class C6826d {

        /* renamed from: u.h$d$a */
        /* loaded from: classes.dex */
        public static class C6827a {

            /* renamed from: a */
            public static final Object f35558a = new Object();

            /* renamed from: b */
            public static Method f35559b;

            /* renamed from: c */
            public static boolean f35560c;

            /* renamed from: a */
            public static void m3301a(Resources.Theme theme) {
                synchronized (f35558a) {
                    if (!f35560c) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            f35559b = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException e) {
                            Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e);
                        }
                        f35560c = true;
                    }
                    Method method = f35559b;
                    if (method != null) {
                        try {
                            method.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException e2) {
                            Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e2);
                            f35559b = null;
                        }
                    }
                }
            }
        }

        /* renamed from: u.h$d$b */
        /* loaded from: classes.dex */
        public static class C6828b {
            /* renamed from: a */
            public static void m3300a(Resources.Theme theme) {
                theme.rebase();
            }
        }

        /* renamed from: a */
        public static void m3302a(Resources.Theme theme) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                C6828b.m3300a(theme);
            } else if (i >= 23) {
                C6827a.m3301a(theme);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00a6  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface m3308j(android.content.Context r15, android.content.res.Resources r16, android.util.TypedValue r17, int r18, int r19, p190u.C6820h.AbstractC6823c r20, android.os.Handler r21, boolean r22, boolean r23) {
        /*
            r0 = r16
            r1 = r17
            r4 = r18
            r5 = r19
            r9 = r20
            r10 = r21
            java.lang.String r11 = "ResourcesCompat"
            java.lang.CharSequence r2 = r1.string
            if (r2 == 0) goto Laa
            java.lang.String r12 = r2.toString()
            java.lang.String r1 = "res/"
            boolean r1 = r12.startsWith(r1)
            r13 = -3
            r14 = 0
            if (r1 != 0) goto L26
            if (r9 == 0) goto L25
            r9.m3307a(r13, r10)
        L25:
            return r14
        L26:
            android.graphics.Typeface r1 = p199v.C6952d.m2929f(r0, r4, r5)
            if (r1 == 0) goto L32
            if (r9 == 0) goto L31
            r9.m3306b(r1, r10)
        L31:
            return r1
        L32:
            if (r23 == 0) goto L35
            return r14
        L35:
            java.lang.String r1 = r12.toLowerCase()     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L8f
            java.lang.String r2 = ".xml"
            boolean r1 = r1.endsWith(r2)     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L8f
            if (r1 == 0) goto L68
            android.content.res.XmlResourceParser r1 = r0.getXml(r4)     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L8f
            u.d$a r2 = p190u.C6811d.m3343b(r1, r0)     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L8f
            if (r2 != 0) goto L56
            java.lang.String r0 = "Failed to find font-family tag"
            android.util.Log.e(r11, r0)     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L8f
            if (r9 == 0) goto L55
            r9.m3307a(r13, r10)     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L8f
        L55:
            return r14
        L56:
            r1 = r15
            r3 = r16
            r4 = r18
            r5 = r19
            r6 = r20
            r7 = r21
            r8 = r22
            android.graphics.Typeface r0 = p199v.C6952d.m2932c(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L8f
            return r0
        L68:
            r1 = r15
            android.graphics.Typeface r0 = p199v.C6952d.m2931d(r15, r0, r4, r12, r5)     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L8f
            if (r9 == 0) goto L78
            if (r0 == 0) goto L75
            r9.m3306b(r0, r10)     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L8f
            goto L78
        L75:
            r9.m3307a(r13, r10)     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L8f
        L78:
            return r0
        L79:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Failed to read xml resource "
            r1.append(r2)
            r1.append(r12)
            java.lang.String r1 = r1.toString()
            android.util.Log.e(r11, r1, r0)
            goto La4
        L8f:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Failed to parse xml resource "
            r1.append(r2)
            r1.append(r12)
            java.lang.String r1 = r1.toString()
            android.util.Log.e(r11, r1, r0)
        La4:
            if (r9 == 0) goto La9
            r9.m3307a(r13, r10)
        La9:
            return r14
        Laa:
            android.content.res.Resources$NotFoundException r2 = new android.content.res.Resources$NotFoundException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r5 = "Resource \""
            r3.append(r5)
            java.lang.String r0 = r0.getResourceName(r4)
            r3.append(r0)
            java.lang.String r0 = "\" ("
            r3.append(r0)
            java.lang.String r0 = java.lang.Integer.toHexString(r18)
            r3.append(r0)
            java.lang.String r0 = ") is not a Font: "
            r3.append(r0)
            r3.append(r1)
            java.lang.String r0 = r3.toString()
            r2.<init>(r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p190u.C6820h.m3308j(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, u.h$c, android.os.Handler, boolean, boolean):android.graphics.Typeface");
    }

    /* renamed from: u.h$a */
    /* loaded from: classes.dex */
    public static class C6821a {

        /* renamed from: a */
        public final ColorStateList f35550a;

        /* renamed from: b */
        public final Configuration f35551b;

        public C6821a(ColorStateList colorStateList, Configuration configuration) {
            this.f35550a = colorStateList;
            this.f35551b = configuration;
        }
    }

    /* renamed from: u.h$b */
    /* loaded from: classes.dex */
    public static final class C6822b {

        /* renamed from: a */
        public final Resources f35552a;

        /* renamed from: b */
        public final Resources.Theme f35553b;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C6822b.class != obj.getClass()) {
                return false;
            }
            C6822b c6822b = (C6822b) obj;
            return this.f35552a.equals(c6822b.f35552a) && C1022e.m24813a(this.f35553b, c6822b.f35553b);
        }

        public int hashCode() {
            return C1022e.m24812b(this.f35552a, this.f35553b);
        }

        public C6822b(Resources resources, Resources.Theme theme) {
            this.f35552a = resources;
            this.f35553b = theme;
        }
    }

    /* renamed from: a */
    public static void m3317a(C6822b c6822b, int i, ColorStateList colorStateList) {
        synchronized (f35549c) {
            WeakHashMap<C6822b, SparseArray<C6821a>> weakHashMap = f35548b;
            SparseArray<C6821a> sparseArray = weakHashMap.get(c6822b);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                weakHashMap.put(c6822b, sparseArray);
            }
            sparseArray.append(i, new C6821a(colorStateList, c6822b.f35552a.getConfiguration()));
        }
    }

    /* renamed from: b */
    public static ColorStateList m3316b(C6822b c6822b, int i) {
        C6821a c6821a;
        synchronized (f35549c) {
            SparseArray<C6821a> sparseArray = f35548b.get(c6822b);
            if (sparseArray != null && sparseArray.size() > 0 && (c6821a = sparseArray.get(i)) != null) {
                if (c6821a.f35551b.equals(c6822b.f35552a.getConfiguration())) {
                    return c6821a.f35550a;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }

    /* renamed from: c */
    public static ColorStateList m3315c(Resources resources, int i, Resources.Theme theme) {
        ColorStateList colorStateList;
        if (Build.VERSION.SDK_INT >= 23) {
            colorStateList = resources.getColorStateList(i, theme);
            return colorStateList;
        }
        C6822b c6822b = new C6822b(resources, theme);
        ColorStateList m3316b = m3316b(c6822b, i);
        if (m3316b != null) {
            return m3316b;
        }
        ColorStateList m3311g = m3311g(resources, i, theme);
        if (m3311g != null) {
            m3317a(c6822b, i, m3311g);
            return m3311g;
        }
        return resources.getColorStateList(i);
    }

    /* renamed from: d */
    public static Drawable m3314d(Resources resources, int i, Resources.Theme theme) {
        Drawable drawable;
        if (Build.VERSION.SDK_INT >= 21) {
            drawable = resources.getDrawable(i, theme);
            return drawable;
        }
        return resources.getDrawable(i);
    }

    /* renamed from: f */
    public static TypedValue m3312f() {
        ThreadLocal<TypedValue> threadLocal = f35547a;
        TypedValue typedValue = threadLocal.get();
        if (typedValue == null) {
            TypedValue typedValue2 = new TypedValue();
            threadLocal.set(typedValue2);
            return typedValue2;
        }
        return typedValue;
    }

    /* renamed from: e */
    public static Typeface m3313e(Context context, int i, TypedValue typedValue, int i2, AbstractC6823c abstractC6823c) {
        if (context.isRestricted()) {
            return null;
        }
        return m3309i(context, i, typedValue, i2, abstractC6823c, null, true, false);
    }

    /* renamed from: g */
    public static ColorStateList m3311g(Resources resources, int i, Resources.Theme theme) {
        if (m3310h(resources, i)) {
            return null;
        }
        try {
            return C6808a.m3365a(resources, resources.getXml(i), theme);
        } catch (Exception e) {
            Log.e("ResourcesCompat", "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    /* renamed from: h */
    public static boolean m3310h(Resources resources, int i) {
        TypedValue m3312f = m3312f();
        resources.getValue(i, m3312f, true);
        int i2 = m3312f.type;
        if (i2 >= 28 && i2 <= 31) {
            return true;
        }
        return false;
    }

    /* renamed from: i */
    public static Typeface m3309i(Context context, int i, TypedValue typedValue, int i2, AbstractC6823c abstractC6823c, Handler handler, boolean z, boolean z2) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface m3308j = m3308j(context, resources, typedValue, i, i2, abstractC6823c, handler, z, z2);
        if (m3308j == null && abstractC6823c == null && !z2) {
            throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
        }
        return m3308j;
    }
}
