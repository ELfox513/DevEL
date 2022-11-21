package p208w;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: w.j */
/* loaded from: classes.dex */
public final class C7089j {

    /* renamed from: a */
    public static Method f36074a;

    /* renamed from: b */
    public static boolean f36075b;

    /* renamed from: c */
    public static Method f36076c;

    /* renamed from: d */
    public static boolean f36077d;

    @Deprecated
    /* renamed from: h */
    public static void m2549h(Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    /* renamed from: a */
    public static void m2556a(Drawable drawable, Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.applyTheme(theme);
        }
    }

    /* renamed from: b */
    public static boolean m2555b(Drawable drawable) {
        boolean canApplyTheme;
        if (Build.VERSION.SDK_INT >= 21) {
            canApplyTheme = drawable.canApplyTheme();
            return canApplyTheme;
        }
        return false;
    }

    /* renamed from: c */
    public static int m2554c(Drawable drawable) {
        int alpha;
        if (Build.VERSION.SDK_INT >= 19) {
            alpha = drawable.getAlpha();
            return alpha;
        }
        return 0;
    }

    /* renamed from: d */
    public static ColorFilter m2553d(Drawable drawable) {
        ColorFilter colorFilter;
        if (Build.VERSION.SDK_INT >= 21) {
            colorFilter = drawable.getColorFilter();
            return colorFilter;
        }
        return null;
    }

    /* renamed from: e */
    public static int m2552e(Drawable drawable) {
        int layoutDirection;
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            layoutDirection = drawable.getLayoutDirection();
            return layoutDirection;
        }
        if (i >= 17) {
            if (!f36077d) {
                try {
                    Method declaredMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
                    f36076c = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("DrawableCompat", "Failed to retrieve getLayoutDirection() method", e);
                }
                f36077d = true;
            }
            Method method = f36076c;
            if (method != null) {
                try {
                    return ((Integer) method.invoke(drawable, new Object[0])).intValue();
                } catch (Exception e2) {
                    Log.i("DrawableCompat", "Failed to invoke getLayoutDirection() via reflection", e2);
                    f36076c = null;
                }
            }
        }
        return 0;
    }

    /* renamed from: f */
    public static void m2551f(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
        } else {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        }
    }

    /* renamed from: g */
    public static boolean m2550g(Drawable drawable) {
        boolean isAutoMirrored;
        if (Build.VERSION.SDK_INT >= 19) {
            isAutoMirrored = drawable.isAutoMirrored();
            return isAutoMirrored;
        }
        return false;
    }

    /* renamed from: i */
    public static void m2548i(Drawable drawable, boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            drawable.setAutoMirrored(z);
        }
    }

    /* renamed from: j */
    public static void m2547j(Drawable drawable, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspot(f, f2);
        }
    }

    /* renamed from: k */
    public static void m2546k(Drawable drawable, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }
    }

    /* renamed from: l */
    public static boolean m2545l(Drawable drawable, int i) {
        boolean layoutDirection;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            layoutDirection = drawable.setLayoutDirection(i);
            return layoutDirection;
        }
        if (i2 >= 17) {
            if (!f36075b) {
                try {
                    Method declaredMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                    f36074a = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("DrawableCompat", "Failed to retrieve setLayoutDirection(int) method", e);
                }
                f36075b = true;
            }
            Method method = f36074a;
            if (method != null) {
                try {
                    method.invoke(drawable, Integer.valueOf(i));
                    return true;
                } catch (Exception e2) {
                    Log.i("DrawableCompat", "Failed to invoke setLayoutDirection(int) via reflection", e2);
                    f36074a = null;
                }
            }
        }
        return false;
    }

    /* renamed from: m */
    public static void m2544m(Drawable drawable, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTint(i);
        } else if (drawable instanceof InterfaceC7096q) {
            ((InterfaceC7096q) drawable).setTint(i);
        }
    }

    /* renamed from: n */
    public static void m2543n(Drawable drawable, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintList(colorStateList);
        } else if (drawable instanceof InterfaceC7096q) {
            ((InterfaceC7096q) drawable).setTintList(colorStateList);
        }
    }

    /* renamed from: o */
    public static void m2542o(Drawable drawable, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintMode(mode);
        } else if (drawable instanceof InterfaceC7096q) {
            ((InterfaceC7096q) drawable).setTintMode(mode);
        }
    }

    /* renamed from: p */
    public static Drawable m2541p(Drawable drawable) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            return drawable;
        }
        if (i >= 21) {
            if (!(drawable instanceof InterfaceC7096q)) {
                return new C7100u(drawable);
            }
            return drawable;
        } else if (!(drawable instanceof InterfaceC7096q)) {
            return new C7098s(drawable);
        } else {
            return drawable;
        }
    }
}
