package p056f0;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.widget.CompoundButton;
import java.lang.reflect.Field;
/* renamed from: f0.f */
/* loaded from: classes.dex */
public final class C3432f {

    /* renamed from: a */
    public static Field f15875a;

    /* renamed from: b */
    public static boolean f15876b;

    /* renamed from: a */
    public static Drawable m18858a(CompoundButton compoundButton) {
        Drawable buttonDrawable;
        if (Build.VERSION.SDK_INT >= 23) {
            buttonDrawable = compoundButton.getButtonDrawable();
            return buttonDrawable;
        }
        if (!f15876b) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f15875a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", e);
            }
            f15876b = true;
        }
        Field field = f15875a;
        if (field != null) {
            try {
                return (Drawable) field.get(compoundButton);
            } catch (IllegalAccessException e2) {
                Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", e2);
                f15875a = null;
            }
        }
        return null;
    }

    /* renamed from: b */
    public static void m18857b(CompoundButton compoundButton, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintList(colorStateList);
        } else if (compoundButton instanceof InterfaceC3438h0) {
            ((InterfaceC3438h0) compoundButton).setSupportButtonTintList(colorStateList);
        }
    }

    /* renamed from: c */
    public static void m18856c(CompoundButton compoundButton, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintMode(mode);
        } else if (compoundButton instanceof InterfaceC3438h0) {
            ((InterfaceC3438h0) compoundButton).setSupportButtonTintMode(mode);
        }
    }
}
