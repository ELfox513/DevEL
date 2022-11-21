package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.AbstractC0317d;
import androidx.lifecycle.InterfaceC0320e;
import androidx.lifecycle.InterfaceC0322g;
import java.lang.reflect.Field;
/* loaded from: classes.dex */
final class ImmLeaksCleaner implements InterfaceC0320e {

    /* renamed from: b */
    public static int f196b;

    /* renamed from: c */
    public static Field f197c;

    /* renamed from: d */
    public static Field f198d;

    /* renamed from: e */
    public static Field f199e;

    /* renamed from: a */
    public Activity f200a;

    /* renamed from: h */
    public static void m27627h() {
        try {
            f196b = 2;
            Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
            f198d = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
            f199e = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
            f197c = declaredField3;
            declaredField3.setAccessible(true);
            f196b = 1;
        } catch (NoSuchFieldException unused) {
        }
    }

    @Override // androidx.lifecycle.InterfaceC0320e
    /* renamed from: c */
    public void mo26714c(InterfaceC0322g interfaceC0322g, AbstractC0317d.EnumC0318a enumC0318a) {
        boolean isAttachedToWindow;
        if (enumC0318a != AbstractC0317d.EnumC0318a.ON_DESTROY) {
            return;
        }
        if (f196b == 0) {
            m27627h();
        }
        if (f196b == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.f200a.getSystemService("input_method");
            try {
                Object obj = f197c.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        try {
                            View view = (View) f198d.get(inputMethodManager);
                            if (view == null) {
                                return;
                            }
                            isAttachedToWindow = view.isAttachedToWindow();
                            if (isAttachedToWindow) {
                                return;
                            }
                            try {
                                f199e.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            } catch (IllegalAccessException unused) {
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    } catch (ClassCastException unused2) {
                    } catch (IllegalAccessException unused3) {
                    }
                }
            } catch (IllegalAccessException unused4) {
            }
        }
    }

    public ImmLeaksCleaner(Activity activity) {
        this.f200a = activity;
    }
}
