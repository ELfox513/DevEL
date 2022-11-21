package p182t0;

import android.annotation.SuppressLint;
import android.os.Build;
import android.p010os.Trace;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: t0.b */
/* loaded from: classes.dex */
public final class C6643b {

    /* renamed from: a */
    public static long f35237a;

    /* renamed from: b */
    public static Method f35238b;

    /* renamed from: a */
    public static void m3718a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            C6644c.m3713a(str);
        }
    }

    /* renamed from: b */
    public static void m3717b() {
        if (Build.VERSION.SDK_INT >= 18) {
            C6644c.m3712b();
        }
    }

    /* renamed from: c */
    public static void m3716c(String str, Exception exc) {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = exc.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
        Log.v("Trace", "Unable to call " + str + " via reflection", exc);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: d */
    public static boolean m3715d() {
        boolean isEnabled;
        try {
            if (f35238b == null) {
                isEnabled = Trace.isEnabled();
                return isEnabled;
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        return m3714e();
    }

    /* renamed from: e */
    public static boolean m3714e() {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                if (f35238b == null) {
                    f35237a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                    f35238b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
                }
                return ((Boolean) f35238b.invoke(null, Long.valueOf(f35237a))).booleanValue();
            } catch (Exception e) {
                m3716c("isTagEnabled", e);
            }
        }
        return false;
    }
}
