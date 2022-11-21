package p038d0;

import android.os.Build;
import android.util.Log;
import android.view.LayoutInflater;
import java.lang.reflect.Field;
/* renamed from: d0.f */
/* loaded from: classes.dex */
public final class C3174f {

    /* renamed from: a */
    public static Field f15497a;

    /* renamed from: b */
    public static boolean f15498b;

    /* renamed from: a */
    public static void m19450a(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        if (!f15498b) {
            try {
                Field declaredField = LayoutInflater.class.getDeclaredField("mFactory2");
                f15497a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", e);
            }
            f15498b = true;
        }
        Field field = f15497a;
        if (field != null) {
            try {
                field.set(layoutInflater, factory2);
            } catch (IllegalAccessException e2) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 could not set the Factory2 on LayoutInflater " + layoutInflater + "; inflation may have unexpected results.", e2);
            }
        }
    }

    /* renamed from: b */
    public static void m19449b(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        layoutInflater.setFactory2(factory2);
        if (Build.VERSION.SDK_INT < 21) {
            LayoutInflater.Factory factory = layoutInflater.getFactory();
            if (factory instanceof LayoutInflater.Factory2) {
                m19450a(layoutInflater, (LayoutInflater.Factory2) factory);
            } else {
                m19450a(layoutInflater, factory2);
            }
        }
    }
}
