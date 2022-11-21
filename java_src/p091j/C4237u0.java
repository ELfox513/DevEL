package p091j;

import android.annotation.SuppressLint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import p055f.C3417n;
import p208w.InterfaceC7097r;
@SuppressLint({"RestrictedAPI"})
/* renamed from: j.u0 */
/* loaded from: classes.dex */
public class C4237u0 {

    /* renamed from: a */
    public static final int[] f18026a = {16842912};

    /* renamed from: b */
    public static final int[] f18027b = new int[0];

    /* renamed from: c */
    public static final Rect f18028c = new Rect();

    /* renamed from: d */
    public static Class<?> f18029d;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                f18029d = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException unused) {
            }
        }
    }

    /* renamed from: d */
    public static PorterDuff.Mode m16955d(int i, PorterDuff.Mode mode) {
        if (i != 3) {
            if (i != 5) {
                if (i != 9) {
                    switch (i) {
                        case 14:
                            return PorterDuff.Mode.MULTIPLY;
                        case 15:
                            return PorterDuff.Mode.SCREEN;
                        case 16:
                            return PorterDuff.Mode.ADD;
                        default:
                            return mode;
                    }
                }
                return PorterDuff.Mode.SRC_ATOP;
            }
            return PorterDuff.Mode.SRC_IN;
        }
        return PorterDuff.Mode.SRC_OVER;
    }

    /* renamed from: a */
    public static boolean m16958a(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 17 && (drawable instanceof LayerDrawable)) {
            return false;
        }
        if (drawable instanceof DrawableContainer) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState instanceof DrawableContainer.DrawableContainerState) {
                for (Drawable drawable2 : ((DrawableContainer.DrawableContainerState) constantState).getChildren()) {
                    if (!m16958a(drawable2)) {
                        return false;
                    }
                }
                return true;
            }
            return true;
        } else if (drawable instanceof InterfaceC7097r) {
            return m16958a(((InterfaceC7097r) drawable).mo2533b());
        } else {
            if (drawable instanceof C3417n) {
                return m16958a(((C3417n) drawable).m18908a());
            }
            if (drawable instanceof ScaleDrawable) {
                return m16958a(((ScaleDrawable) drawable).getDrawable());
            }
            return true;
        }
    }

    /* renamed from: b */
    public static void m16957b(Drawable drawable) {
        if (Build.VERSION.SDK_INT == 21 && "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName())) {
            m16956c(drawable);
        }
    }

    /* renamed from: c */
    public static void m16956c(Drawable drawable) {
        int[] state = drawable.getState();
        if (state != null && state.length != 0) {
            drawable.setState(f18027b);
        } else {
            drawable.setState(f18026a);
        }
        drawable.setState(state);
    }
}
