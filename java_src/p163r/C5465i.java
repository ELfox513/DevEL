package p163r;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: r.i */
/* loaded from: classes.dex */
public final class C5465i {

    /* renamed from: r.i$a */
    /* loaded from: classes.dex */
    public static class C5466a {

        /* renamed from: a */
        public static Method f20156a;

        /* renamed from: b */
        public static boolean f20157b;

        /* renamed from: a */
        public static void m13258a(Bundle bundle, String str, IBinder iBinder) {
            if (!f20157b) {
                try {
                    Method method = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    f20156a = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve putIBinder method", e);
                }
                f20157b = true;
            }
            Method method2 = f20156a;
            if (method2 != null) {
                try {
                    method2.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    Log.i("BundleCompatBaseImpl", "Failed to invoke putIBinder via reflection", e2);
                    f20156a = null;
                }
            }
        }
    }

    /* renamed from: a */
    public static void m13259a(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            C5466a.m13258a(bundle, str, iBinder);
        }
    }
}
