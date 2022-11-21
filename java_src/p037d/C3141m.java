package p037d;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;
/* renamed from: d.m */
/* loaded from: classes.dex */
public class C3141m {

    /* renamed from: a */
    public static Field f15422a;

    /* renamed from: b */
    public static boolean f15423b;

    /* renamed from: c */
    public static Class<?> f15424c;

    /* renamed from: d */
    public static boolean f15425d;

    /* renamed from: e */
    public static Field f15426e;

    /* renamed from: f */
    public static boolean f15427f;

    /* renamed from: g */
    public static Field f15428g;

    /* renamed from: h */
    public static boolean f15429h;

    /* renamed from: a */
    public static void m19540a(Resources resources) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            return;
        }
        if (i >= 24) {
            m19537d(resources);
        } else if (i >= 23) {
            m19538c(resources);
        } else if (i >= 21) {
            m19539b(resources);
        }
    }

    /* renamed from: b */
    public static void m19539b(Resources resources) {
        if (!f15423b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f15422a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            f15423b = true;
        }
        Field field = f15422a;
        if (field != null) {
            Map map = null;
            try {
                map = (Map) field.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e2);
            }
            if (map != null) {
                map.clear();
            }
        }
    }

    /* renamed from: c */
    public static void m19538c(Resources resources) {
        if (!f15423b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f15422a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            f15423b = true;
        }
        Object obj = null;
        Field field = f15422a;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e2);
            }
        }
        if (obj == null) {
            return;
        }
        m19536e(obj);
    }

    /* renamed from: d */
    public static void m19537d(Resources resources) {
        Object obj;
        if (!f15429h) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                f15428g = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e);
            }
            f15429h = true;
        }
        Field field = f15428g;
        if (field == null) {
            return;
        }
        Object obj2 = null;
        try {
            obj = field.get(resources);
        } catch (IllegalAccessException e2) {
            Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e2);
            obj = null;
        }
        if (obj == null) {
            return;
        }
        if (!f15423b) {
            try {
                Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                f15422a = declaredField2;
                declaredField2.setAccessible(true);
            } catch (NoSuchFieldException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e3);
            }
            f15423b = true;
        }
        Field field2 = f15422a;
        if (field2 != null) {
            try {
                obj2 = field2.get(obj);
            } catch (IllegalAccessException e4) {
                Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", e4);
            }
        }
        if (obj2 != null) {
            m19536e(obj2);
        }
    }

    /* renamed from: e */
    public static void m19536e(Object obj) {
        if (!f15425d) {
            try {
                f15424c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e);
            }
            f15425d = true;
        }
        Class<?> cls = f15424c;
        if (cls == null) {
            return;
        }
        if (!f15427f) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f15426e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
            }
            f15427f = true;
        }
        Field field = f15426e;
        if (field == null) {
            return;
        }
        LongSparseArray longSparseArray = null;
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e3) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e3);
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }
}
