package p038d0;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.view.ViewConfiguration;
import java.lang.reflect.Method;
/* renamed from: d0.d1 */
/* loaded from: classes.dex */
public final class C3167d1 {

    /* renamed from: a */
    public static Method f15492a;

    static {
        if (Build.VERSION.SDK_INT == 25) {
            try {
                f15492a = ViewConfiguration.class.getDeclaredMethod("getScaledScrollFactor", new Class[0]);
            } catch (Exception unused) {
                Log.i("ViewConfigCompat", "Could not find method getScaledScrollFactor() on ViewConfiguration");
            }
        }
    }

    /* renamed from: a */
    public static int m19462a(ViewConfiguration viewConfiguration) {
        int scaledHoverSlop;
        if (Build.VERSION.SDK_INT >= 28) {
            scaledHoverSlop = viewConfiguration.getScaledHoverSlop();
            return scaledHoverSlop;
        }
        return viewConfiguration.getScaledTouchSlop() / 2;
    }

    /* renamed from: b */
    public static boolean m19461b(ViewConfiguration viewConfiguration, Context context) {
        boolean shouldShowMenuShortcutsWhenKeyboardPresent;
        if (Build.VERSION.SDK_INT >= 28) {
            shouldShowMenuShortcutsWhenKeyboardPresent = viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
            return shouldShowMenuShortcutsWhenKeyboardPresent;
        }
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", "android");
        if (identifier != 0 && resources.getBoolean(identifier)) {
            return true;
        }
        return false;
    }
}
