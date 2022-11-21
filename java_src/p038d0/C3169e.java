package p038d0;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Build;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: d0.e */
/* loaded from: classes.dex */
public class C3169e {

    /* renamed from: a */
    public static boolean f15493a = false;

    /* renamed from: b */
    public static Method f15494b = null;

    /* renamed from: c */
    public static boolean f15495c = false;

    /* renamed from: d */
    public static Field f15496d;

    /* renamed from: d0.e$a */
    /* loaded from: classes.dex */
    public interface InterfaceC3170a {
        /* renamed from: e */
        boolean mo13256e(KeyEvent keyEvent);
    }

    /* renamed from: d */
    public static boolean m19456d(View view, KeyEvent keyEvent) {
        return C3218s0.m19346f(view, keyEvent);
    }

    /* renamed from: e */
    public static boolean m19455e(InterfaceC3170a interfaceC3170a, View view, Window.Callback callback, KeyEvent keyEvent) {
        if (interfaceC3170a == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return interfaceC3170a.mo13256e(keyEvent);
        }
        if (callback instanceof Activity) {
            return m19458b((Activity) callback, keyEvent);
        }
        if (callback instanceof Dialog) {
            return m19457c((Dialog) callback, keyEvent);
        }
        return (view != null && C3218s0.m19347e(view, keyEvent)) || interfaceC3170a.mo13256e(keyEvent);
    }

    /* renamed from: a */
    public static boolean m19459a(ActionBar actionBar, KeyEvent keyEvent) {
        if (!f15493a) {
            try {
                f15494b = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
            } catch (NoSuchMethodException unused) {
            }
            f15493a = true;
        }
        Method method = f15494b;
        if (method != null) {
            try {
                return ((Boolean) method.invoke(actionBar, keyEvent)).booleanValue();
            } catch (IllegalAccessException | InvocationTargetException unused2) {
            }
        }
        return false;
    }

    /* renamed from: f */
    public static DialogInterface.OnKeyListener m19454f(Dialog dialog) {
        if (!f15495c) {
            try {
                Field declaredField = Dialog.class.getDeclaredField("mOnKeyListener");
                f15496d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f15495c = true;
        }
        Field field = f15496d;
        if (field != null) {
            try {
                return (DialogInterface.OnKeyListener) field.get(dialog);
            } catch (IllegalAccessException unused2) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: b */
    public static boolean m19458b(Activity activity, KeyEvent keyEvent) {
        KeyEvent.DispatcherState dispatcherState;
        activity.onUserInteraction();
        Window window = activity.getWindow();
        if (window.hasFeature(8)) {
            ActionBar actionBar = activity.getActionBar();
            if (keyEvent.getKeyCode() == 82 && actionBar != null && m19459a(actionBar, keyEvent)) {
                return true;
            }
        }
        if (window.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView = window.getDecorView();
        if (C3218s0.m19347e(decorView, keyEvent)) {
            return true;
        }
        if (decorView != null) {
            dispatcherState = decorView.getKeyDispatcherState();
        } else {
            dispatcherState = null;
        }
        return keyEvent.dispatch(activity, dispatcherState, activity);
    }

    /* renamed from: c */
    public static boolean m19457c(Dialog dialog, KeyEvent keyEvent) {
        KeyEvent.DispatcherState dispatcherState;
        DialogInterface.OnKeyListener m19454f = m19454f(dialog);
        if (m19454f != null && m19454f.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
            return true;
        }
        Window window = dialog.getWindow();
        if (window.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView = window.getDecorView();
        if (C3218s0.m19347e(decorView, keyEvent)) {
            return true;
        }
        if (decorView != null) {
            dispatcherState = decorView.getKeyDispatcherState();
        } else {
            dispatcherState = null;
        }
        return keyEvent.dispatch(dialog, dispatcherState, dialog);
    }
}
