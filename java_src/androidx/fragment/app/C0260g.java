package androidx.fragment.app;

import androidx.fragment.app.Fragment;
import java.lang.reflect.InvocationTargetException;
import p145p.C5283g;
/* renamed from: androidx.fragment.app.g */
/* loaded from: classes.dex */
public class C0260g {

    /* renamed from: a */
    public static final C5283g<String, Class<?>> f998a = new C5283g<>();

    /* renamed from: c */
    public static Class<?> m27051c(ClassLoader classLoader, String str) {
        C5283g<String, Class<?>> c5283g = f998a;
        Class<?> cls = c5283g.get(str);
        if (cls == null) {
            Class<?> cls2 = Class.forName(str, false, classLoader);
            c5283g.put(str, cls2);
            return cls2;
        }
        return cls;
    }

    /* renamed from: d */
    public static Class<? extends Fragment> m27050d(ClassLoader classLoader, String str) {
        try {
            return m27051c(classLoader, str);
        } catch (ClassCastException e) {
            throw new Fragment.C0247e("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e);
        } catch (ClassNotFoundException e2) {
            throw new Fragment.C0247e("Unable to instantiate fragment " + str + ": make sure class name exists", e2);
        }
    }

    /* renamed from: a */
    public Fragment mo26912a(ClassLoader classLoader, String str) {
        try {
            return m27050d(classLoader, str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (IllegalAccessException e) {
            throw new Fragment.C0247e("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (InstantiationException e2) {
            throw new Fragment.C0247e("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (NoSuchMethodException e3) {
            throw new Fragment.C0247e("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e3);
        } catch (InvocationTargetException e4) {
            throw new Fragment.C0247e("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e4);
        }
    }

    /* renamed from: b */
    public static boolean m27052b(ClassLoader classLoader, String str) {
        try {
            return Fragment.class.isAssignableFrom(m27051c(classLoader, str));
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }
}
